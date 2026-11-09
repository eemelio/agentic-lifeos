---
name: viikkokatselmointi
description: Viikkokatselmointi ja seuraavan viikon suunnittelu agentic-lifeos-repossa. Käytä kun käyttäjä pyytää viikkokatselmointia, viikkosuunnitelmaa, "weekly review", tai haluaa käydä viikon läpi / suunnitella ensi viikon.
---

# Viikkokatselmointi

Tavoite: sulkea mennyt viikko, tyhjentää inbox ja tehdä realistinen suunnitelma seuraavalle viikolle
PESTE-kehikon kymmenen elämänalueen pohjalta – kaikki arvioidaan, mutta tekemistä suunnitellaan
vain 2–3 painopistealueelle. Kesto keskustelussa noin 15–20 minuuttia. Kysy asiat **yksi vaihe
kerrallaan**, älä kaikkea kerralla.

## 0. Valmistelu (hiljaa, ennen ensimmäistä kysymystä)

0. `git pull`, jotta pilviagenttien viikon aikana tekemät muutokset ovat mukana.
   Käy läpi `alueet/tyo-ura/tyonhaku/hakemukset.md`, `ehdotukset.md` ja viikon `aamuhaut/`-raportit:
   ne kuuluvat Työ / ura -alueen katselmointiin. Tarkista myös, onko viikon hylkäyksistä palaute pyytämättä
   tai retro (`alueet/tyo-ura/tyonhaku/retrot/`) tekemättä, ja ehdota ne viikon tehtäviksi.
1. Selvitä päivämäärä ja ISO-viikot: `date +%G-W%V` (kuluva) ja
   `date -v+7d +%G-W%V` (seuraava, macOS). Jos on maanantai–keskiviikko, katselmoitava viikko on
   todennäköisesti edellinen – varmista Ainolta.
2. Lue: `suunnitelmat/viikot/<katselmoitava viikko>.md` (jos on), `inbox/inbox.md`,
   `tavoitteet/2026.md` (tai kuluvan vuoden tiedosto), kaikki `alueet/*/README.md`, sekä
   `lokit/paivat/` -merkinnät katselmoitavalta viikolta.
3. Jos kalenteriliitin on käytettävissä, hae katselmoitavan ja seuraavan viikon tapahtumat.

## 1. Mennyt viikko

- Näytä tiivis yhteenveto: mitkä suunnitelman tehtävät on merkitty tehdyiksi, mitkä ei.
- Kysy: *Mikä meni hyvin? Mikä jäi tekemättä ja miksi?*
- Tarkista rutiinit (Ti kuoro, Ke uinti, La metsälenkki – katso ajantasainen lista
  `alueet/fyysinen-hyvinvointi/README.md`): toteutuivatko?
- Pyydä nopea arvio 1–5 kaikille kymmenelle alueelle **yhdellä kertaa** (näytä taulukko, jonka
  Aino täyttää yhdellä viestillä, esim. `perhe 4, sos 3, ...`). Älä kysy alue kerrallaan.
- Kun huomioit tehtyjä asioita, käytä alueiden "Linkittyy"-osioita: esim. kuoro näkyy
  Harrastusten, Sosiaalisten suhteiden ja Henkisen hyvinvoinnin kohdalla.
- Kirjaa vastaukset viikkotiedoston "Viikkokatselmointi"-osioon (luo tiedosto pohjasta
  `pohjat/viikkosuunnitelma.md`, jos sitä ei ole).

## 2. Inbox nollaan

Käy jokainen `inbox/inbox.md`:n rivi läpi ja ehdota jokaiselle yksi: **ensi viikolle**,
**alueen projektiksi/ideaksi** (`alueet/<alue>/README.md`), **tee heti** (< 2 min) tai **poista**.
Aino hyväksyy, sitten siirrä rivit ja tyhjennä inbox (jätä otsikko ja ohjeteksti).

## 3. Alueet ja tavoitteet

- Käy alueet läpi nopeasti: onko jokin alue jäänyt usean viikon ajan huomiotta (arvio ≤ 2 tai ei
  tehtäviä)? Nosta se esiin.
- Tarkista, etenevätkö vuoden tavoitteet. Päivitä alueiden projektien "Seuraava askel" -sarakkeet.
- Jos viikon aikana on syntynyt uusia päätöksiä tai tavoitteita, päivitä oikeat tiedostot.

## 4. Seuraava viikko

1. Ehdota viikon teemaa ja **korkeintaan 3 pääprioriteettia**, jotka liittyvät tavoitteisiin.
2. Ehdota **2–3 painopistealuetta** viikolle (huomioi matalat arviot ja pitkään huomiotta jääneet
   alueet) ja 1–3 tehtävää kullekin. Suosi tekoja, jotka edistävät useaa aluetta kerralla
   ("Linkittyy"). Rutiinit tulevat mukaan automaattisesti omana osionaan.
3. Listaa kalenterin kiintopisteet. Jos viikko näyttää ylibuukatulta, sano se suoraan ja ehdota
   mitä siirretään.
4. Kun Aino hyväksyy, kirjoita `suunnitelmat/viikot/<seuraava viikko>.md` pohjasta.

## 5. Lopetus

- Näytä lyhyt yhteenveto: viikon top 3 ja mitä tiedostoja muutit.
- Commitoi: `git add -A && git commit -m "Viikkokatselmointi <katselmoitu viikko>, suunnitelma <seuraava viikko>"`
  ja pushaa `git push`. Jos push epäonnistuu, kerro virhe – älä yritä kiertää sitä.
- Kysy lopuksi yksi kysymys: *Onko jotain, mitä haluat tehdä ensi viikolla toisin?* ja kirjaa vastaus
  "Opit ja muutokset" -kohtaan.
