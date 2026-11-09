# Työohje pilviagentille (työnhaku)

*Päivitetty: 2026-11-09 · Esimerkki. Koskee ajastettua aamuhakua ja hakemuskohtaisia pilvisessioita.*

Repo on ainoa totuuden lähde. Kaikki mikä pitää muistaa, tallennetaan tänne.

## Joka kerta
1. Aloita: `git pull`.
2. Lue ennen kuin teet mitään: [hakukriteerit.md](hakukriteerit.md), [faktapankki.md](faktapankki.md),
   [kirjoitusohjeet.md](kirjoitusohjeet.md), [hakemukset.md](hakemukset.md), [ehdotukset.md](ehdotukset.md).
3. Muokkaa vain `alueet/tyo-ura/`-kansiota.
4. Lopeta: `git add -A && git commit -m "<viesti>" && git push`. Jos push epäonnistuu, `git pull --rebase`
   ja yritä kerran uudelleen; muuten kerro virhe.

## Mihin mikin tallennetaan
| Mitä | Minne |
|---|---|
| Aamuhaun raportti | `aamuhaut/YYYY-MM-DD.md` |
| Uusi ehdotus | rivi [ehdotukset.md](ehdotukset.md):hen |
| Aino päättää hakea / olla hakematta | rivi [hakemukset.md](hakemukset.md):hen, poista ehdotuksista |
| Hakemusluonnos | `luonnokset/<tyonantaja>-<tehtava>/hakemus.md` |
| Puheluvalmistelu | `valmistelu/<tyonantaja>-<tehtava>.md` |
| Uusi vahvistettu fakta | [faktapankki.md](faktapankki.md), vain Ainon vahvistamana |

## Säännöt
- Faktat vain faktapankista tai Ainolta. Älä keksi lukuja.
- Päivämäärät absoluuttisina.
- Ei henkilötunnuksia, tilinumeroita tai salasanoja.
- Luonnos ei lähde minnekään: Aino lähettää hakemuksen itse.
