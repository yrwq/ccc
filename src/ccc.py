#!/usr/bin/env python3
import sys
import os

if len(sys.argv) > 1:
    symbol = sys.argv[1]
else:
    if "CCC_SYMBOL" in os.environ:
        symbol = os.getenv("CCC_SYMBOL")
    else:
        symbol = ""

sys.stdout.write("\n")

for i in range(0, 8):
    sys.stdout.write(f" \033[{30 + i}m {symbol} \033[m")

sys.stdout.write("\n")

for i in range(0, 8):
    sys.stdout.write(f" \033[{90 + i}m {symbol} \033[m")

sys.stdout.write("\n\n")

sys.stdout.flush()
