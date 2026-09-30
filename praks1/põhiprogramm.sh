#!/bin/bash

# Tuvasta skripti asukoha kaust ja lae funktsioonid sisse
ASUKOHT="$(dirname "$0")"
source "$ASUKOHT/functions.sh"

# Käivita funktsioonid
kuva_pealkiri "SÜSTEEMI KOKKUVÕTE"
kuva_süsteem
echo ""
kuva_ketas
kuva_pealkiri "LÕPP"
