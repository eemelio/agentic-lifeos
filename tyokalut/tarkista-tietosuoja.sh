#!/bin/bash
# Tarkistaa ennen julkaisua, ettei repoon ole päätynyt henkilötietoja.
# Käyttö: tyokalut/tarkista-tietosuoja.sh [kieltolista.txt]
# Kieltolista (yksi termi per rivi, #-rivit ohitetaan) pidetään yksityisessä repossa, koska se sisältää oikeita nimiä.
cd "$(dirname "$0")/.." || exit 2
FILES=$(git ls-files --cached --others --exclude-standard | grep -v '^tyokalut/tarkista-tietosuoja.sh$')
fail=0
check() { # $1 = kuvaus, $2 = grep -E -lauseke
  hits=$(echo "$FILES" | xargs grep -nEI "$2" 2>/dev/null)
  if [ -n "$hits" ]; then echo "✗ $1:"; echo "$hits" | sed 's/^/    /'; fail=1; else echo "✓ $1"; fi
}
check "puhelinnumerot"   '(\+358|\b0[0-9]{1,2})[ -]?[0-9]{3}[ -]?[0-9]{3,4}\b'
check "sähköpostiosoitteet" '[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}'
check "henkilötunnukset" '\b[0-9]{6}[-+A-FU-Y][0-9]{3}[0-9A-Y]\b'
check "tilinumerot (IBAN)" '\bFI[0-9]{2}( ?[0-9]{4}){3}'
check "avaimet ja tokenit" '(sk-[A-Za-z0-9]{20,}|ghp_[A-Za-z0-9]{20,}|AKIA[0-9A-Z]{16})'
check "Claude-sessioiden tunnisteet" 'session_[0-9A-Za-z]{10,}'
if [ -n "$1" ]; then
  if [ ! -f "$1" ]; then echo "Kieltolistaa ei löydy: $1"; exit 2; fi
  terms=$(grep -v '^#' "$1" | sed '/^[[:space:]]*$/d')
  hits=$(echo "$FILES" | xargs grep -nIiwF -f <(echo "$terms") 2>/dev/null)
  if [ -n "$hits" ]; then echo "✗ kieltolistan termit:"; echo "$hits" | sed 's/^/    /'; fail=1; else echo "✓ kieltolista ($(echo "$terms" | wc -l | tr -d ' ') termiä)"; fi
else
  echo "! Kieltolistaa ei annettu: oikeita nimiä ei tarkistettu."
fi
[ $fail -eq 0 ] && echo "OK: ei löydöksiä." || { echo "LÖYDÖKSIÄ: korjaa ennen julkaisua."; exit 1; }
