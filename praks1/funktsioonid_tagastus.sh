#!/bin/bash

# Funktsioon kahe arvu liitmiseks
liida() {
    local a="$1"
    local b="$2"
    echo "$((a + b))"
}

# Funktsioon faili olemasolu kontrollimiseks
kontrolli_faili() {
    local fail="$1"
    if [ -f "$fail" ]; then
        return 0  # Edu
    else
        return 1  # Viga
    fi
}

# 1. Liitmise tulemuse salvestamine muutujasse
tulemus=$(liida 15 25)
echo "Arvude 15 ja 25 summa on: $tulemus"

# 2. Oleku kontrollimine if-tingimuses
kONTROLLITAV_FAIL="/etc/passwd"

if kontrolli_faili "$kONTROLLITAV_FAIL"; then
    echo "Fail $kONTROLLITAV_FAIL on süsteemis olemas."
else
    echo "Faili $kONTROLLITAV_FAIL ei leitud."
fi
