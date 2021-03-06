#!/usr/bin/env bash

### Test printer 

# Needed for evm printer
pip install evm-cfg-builder

if ! slither "tests/*.json" --print all --json -; then
    echo "Printer tests failed"
    exit 1
fi

slither examples/scripts/test_evm_api.sol --print evm --solc solc-0.5.1
