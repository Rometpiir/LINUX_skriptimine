#!/bin/bash

# Funktsiooni defineerimine
süsteemi_info() {
    echo "======================"
    echo "   SÜSTEEMI INFO"
    echo "======================"
    echo "Kasutaja: $(whoami)"
    echo "Arvuti:   $(hostname)"
    echo "Kernel:   $(uname -r)"
}

# Funktsiooni väljakutsumine
süsteemi_info
