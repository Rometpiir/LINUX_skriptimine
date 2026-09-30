#!/bin/bash

# Pealkirja vormindamise funktsioon
kuva_pealkiri() {
    local tekst="$1"
    echo "========================================"
    echo "   $tekst"
    echo "========================================"
}

# Kasutaja ja süsteemi põhiandmed
kuva_süsteem() {
    echo "Kasutaja: $(whoami)"
    echo "Arvuti:   $(hostname)"
    echo "Aeg:      $(date '+%Y-%m-%d %H:%M:%S')"
}

# Kettakasutuse kontroll
kuva_ketas() {
    echo "Juurkausta kettakasutus:"
    df -h / | awk 'NR==2 {print "Vaba ruumi: " $4 " (" $5 " kasutatud)"}'
}
