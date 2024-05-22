#!/bin/bash

# Skaičių spėjimo žaidimas

# Generuojamas atsitiktinis skaičius tarp 1 ir 100
target=$(( RANDOM % 100 + 1 ))

# Inicializuojami kintamieji
spejimas=0
bandymai=0

echo "Sveiki atvyke i Skaiciu Spejimo Zaidima!"
echo "As pasirinkau skaiciu tarp 1 ir 100. Ar galite ji atspeti?"

# Ciklas, kol vartotojas atspės teisingą skaičių
while [ $spejimas -ne $target ]; do
    # Nuskaitomas vartotojo įvestis
    read -p "Iveskite savo spejima: " spejimas

    # Padidinamas bandymų skaitiklis
    bandymai=$(( bandymai + 1 ))

    # Patikrinama, ar spėjimas teisingas
    if [ $spejimas -lt $target ]; then
        echo "Per mazas! Bandykite dar karta."
    elif [ $spejimas -gt $target ]; then
        echo "Per didelis! Bandykite dar karta."
    else
        echo "Sveikiname! Jus atspejote teisinga skaiciu per $bandymai bandymus."
    fi
done
