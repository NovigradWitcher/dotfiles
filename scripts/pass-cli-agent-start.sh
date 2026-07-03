#!/usr/bin/env bash
set -euo pipefail

PAT=$(kwallet-query kdewallet -f proton-pass-cli -r PAT)
if [ -z "$PAT" ]; then
    echo "Could not retrieve PAT from KWallet" >&2
    exit 1
fi

set +e
LOGIN_OUTPUT=$(PROTON_PASS_PERSONAL_ACCESS_TOKEN="$PAT" pass-cli login 2>&1)
LOGIN_STATUS=$?
set -e

if [ "$LOGIN_STATUS" -ne 0 ] && [[ "$LOGIN_OUTPUT" != *"Already authenticated"* ]]; then
    echo "$LOGIN_OUTPUT" >&2
    exit 1
fi

exec pass-cli ssh-agent start
