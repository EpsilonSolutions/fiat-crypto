#!/bin/sh
set -eu

/usr/bin/env python3 "$@" -Dq='2**243 - 9' -Dmodulus_bytes='64' -Da24='121665'
