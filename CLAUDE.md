# agentic-lifeos – Ainon henkilökohtainen AI-infrastruktuuri

> **Esimerkki.** Tämä repo on malli. Aino Esimerkki on keksitty henkilö ja kaikki data on testidataa.
> Ota repo omaan käyttöön vaihtamalla nimi ja tyhjentämällä `alueet/`, `tavoitteet/`, `suunnitelmat/` ja `lokit/`.

Tämä repo on Ainon elämän suunnittelun ja toteutuksen "käyttöjärjestelmä". Claude toimii tässä
henkilökohtaisena suunnitteluavustajana: auttaa asettamaan tavoitteita, suunnittelemaan viikkoja,
pitämään kirjaa ja katselmoimaan edistymistä kymmenellä elämänalueella (PESTE-kehikko).

Kieli: suomi (ellei Aino kirjoita muulla kielellä).

## Rakenne

| Kansio | Sisältö |
|---|---|
| `inbox/inbox.md` | Nopea kirjauspaikka ajatuksille, ideoille ja tehtäville. Käsitellään viikkokatselmoinnissa. |
| `tavoitteet/visio.md` | Arvot ja pitkän aikavälin tavoitteet (3–5 v) alueittain. Muuttuu harvoin. |
| `tavoitteet/YYYY.md` | Lyhyen aikavälin (vuoden) tavoitteet alueittain + neljännesvuosien painopisteet. |
| `alueet/<alue>/README.md` | Alueen tarkoitus, lyhyen ja pitkän aikavälin tavoitteet, linkitykset muihin alueisiin, nykytila, projektit ja rutiinit. **Alueen tiedosto on tarkin lähde**; `tavoitteet/`-tiedostot ovat yhteenvetoja. |
| `suunnitelmat/viikot/YYYY-Www.md` | Viikkosuunnitelma ja sen lopussa viikkokatselmointi (ISO-viikko, esim. `2026-W46.md`). |
| `lokit/paivat/YYYY-MM-DD.md` | Vapaamuotoinen päiväloki (energia, tehdyt asiat, havainnot). |
| `pohjat/` | Pohjat viikkosuunnitelmalle, päivälokille ja alueen README:lle. |
| `private/` | **Ei Gitissä** (`.gitignore`). Vain omalla koneella säilytettävä arkaluonteinen tieto. |
| `.claude/skills/` | Toistuvat rutiinit skilleinä (esim. `viikkokatselmointi`). |
| `docs/` | Arkkitehtuurin kuvaus. |

## Elämänalueet (PESTE-kehikko)

Kehikon kysymys: *Miltä haluat että sinun elämä näyttää? Mitä tavoittelet elämässäsi?*
Jokaisella alueella on **lyhyen** ja **pitkän aikavälin** tavoitteet.

| Alue | Kansio |
|---|---|
| Perhe / suku | `alueet/perhe-suku` |
| Sosiaaliset suhteet / yhteisö | `alueet/sosiaaliset-suhteet` |
| Omat kehitystavoitteet | `alueet/kehitys` |
| Harrastukset / vapaa-aika | `alueet/harrastukset-vapaa-aika` |
| Talous | `alueet/talous` |
| Työ / ura | `alueet/tyo-ura` |
| Fyysinen hyvinvointi | `alueet/fyysinen-hyvinvointi` (liikunta, uni, ravinto) |
| Henkinen hyvinvointi | `alueet/henkinen-hyvinvointi` |
| Terveys | `alueet/terveys` (tarkastukset, hoidot, sairaudet) |
| Parisuhde | `alueet/parisuhde` |

**Alueet linkittyvät toisiinsa.** Jokaisen alueen README:ssä on "Linkittyy"-osio. Kun yksi teko
edistää useaa aluetta (esim. kuorolaulu = harrastukset + sosiaaliset suhteet + henkinen hyvinvointi),
kirjaa se kaikille niille, äläkä käsittele niitä erillisinä asioina, jotka kilpailevat ajasta.

Kun Aino kertoo uutta alueesta, päivitä ensin alueen README ja sitten yhteenvedot
`tavoitteet/visio.md` (pitkä aikaväli) ja `tavoitteet/YYYY.md` (lyhyt aikaväli).

## Toimintaperiaatteet Claudelle

1. **Tiedostot ovat totuus.** Lue aina asiaan liittyvät tiedostot ennen kuin ehdotat jotain;
   älä luota muistiin aiemmista keskusteluista.
2. **Kirjaa, älä vain keskustele.** Kun Aino päättää jotain (tavoite, projekti, muutos rutiiniin),
   päivitä oikea tiedosto ja kerro mitä muutit.
3. **Pidä yhteys tavoitteisiin.** Viikon tehtävien pitää näkyä alueiden tavoitteissa ja vuoden
   tavoitteissa. Jos jokin ei liity mihinkään, kysy kuuluuko se mukaan.
4. **Realistisuus.** Ehdota korkeintaan 3 viikon pääprioriteettia. Huomauta, jos viikko on ylibuukattu.
5. **Tasapaino ilman ylikuormaa.** Viikkokatselmoinnissa arvioidaan kaikki kymmenen aluetta
   nopeasti (1–5), mutta tehtäviä suunnitellaan vain 2–3 painopistealueelle viikossa. Nosta esiin
   alue, joka on jäänyt pitkään huomiotta.
6. **Pienet muutokset.** Älä rakenna uusia järjestelmiä, kansioita tai rutiineja kysymättä.
7. **Päivämäärät absoluuttisina.** Kirjoita aina `2026-11-10`, ei "eilen" tai "ensi viikolla".

## Tietosuoja

- **Älä koskaan kirjoita** repoon tilinumeroita, korttinumeroita, henkilötunnusta, salasanoja,
  API-avaimia tai raakoja terveysasiakirjoja.
- Talous: kirjaa tavoitteet, budjettikategoriat ja summat pyöristettyinä/yhteenvetoina.
- Terveys: kirjaa tavoitteet, tottumukset ja omat havainnot; lääketieteelliset asiakirjat → `private/`.
- Jos jokin tieto vaikuttaa liian arkaluonteiselta Gitiin, ehdota `private/`-kansiota.
- Oikeassa käytössä repo on **yksityinen**. Vain tämä keksityllä datalla täytetty malli on julkinen.

## Git

- **Aloita aina `git pull`**, koska ajastettu pilviagentti voi kirjoittaa samaan repoon.
- Commitoi selkeillä suomenkielisillä viesteillä, esim. `Viikko 2026-W46: suunnitelma`.
- Pushaa `origin main` -haaraan, kun Aino pyytää tai rutiini (skill) niin ohjeistaa.

## Kaksi työtilaa: oma kone ja pilviagentit

Repo on **ainoa totuuden lähde**. Sitä käyttää kaksi työtilaa (tarkemmin [docs/arkkitehtuuri.md](docs/arkkitehtuuri.md)):

| Työtila | Tehtävä |
|---|---|
| **Claude Code omalla koneella** | Viikkokatselmointi, suunnittelu yli elämänalueiden, paperilta tuonti, `private/`. |
| **Claude Code -pilvisessiot** | Ajastettu aamuhaku ja hakemuskohtaiset sessiot työnhaussa. Kirjoittavat vain `alueet/tyo-ura/`-kansioon ja pushaavat itse. |

Pilvisessioiden työohje: [alueet/tyo-ura/tyonhaku/pilvisessio.md](alueet/tyo-ura/tyonhaku/pilvisessio.md).
