#!/bin/bash

# Funktsioon, mis tervitab argumentidena antud nime ja vanust
kasutaja_info() {
    local nimi="$1"
    local vanus="$2"

    # Kontrollime, kas argumendid on antud
    if [ $# -ne 2 ]; then
        echo "Viga: palun sisesta nii nimi kui ka vanus!"
        return 1
    fi

    echo "Tere, $nimi!"
    echo "Teie vanuseks on sisestatud $vanus aastat."
    return 0
}

# Väljakutsed
kasutaja_info "Mari" 18
echo "---"
kasutaja_info "Jüri" 25
