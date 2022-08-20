#!/usr/bin/env bash
BINARY="${1:?Binary file to analyse missing}"
FUNCTION="${2:-main}"

if ! OBJDUMP="$(which objdump)"; then
    echo -e "You need to install objdump." >&2
    exit 1
fi

get_function_pattern='(?s)[^\n]*<'"${FUNCTION}"'>:.*?(?=\n\n)'

${OBJDUMP} -M intel -d ${BINARY} | grep -oPz "${get_function_pattern}"
