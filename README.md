# agentic-lifeos

**A personal AI infrastructure for planning life across ten areas, built on Claude Code, plain Markdown and Git.**

> This is a public example. *Aino Esimerkki* is a fictional person and every file here is test data.
> My own instance runs in a private repository with the same structure.

## What it does

- **Ten life areas** (family, friends, personal growth, hobbies, finances, work, physical and mental
  wellbeing, health, relationship), each with short- and long-term goals and explicit links to the
  other areas. One activity often serves several areas, so they are planned together, not against each other.
- **Weekly review as a Claude Code skill**: rate all ten areas 1–5, empty the inbox, pick at most
  three priorities and 2–3 focus areas, write next week's plan, commit and push.
- **Scheduled cloud agents** that run on weekday mornings, research new information against
  criteria written in the repo, and push a report before 8 am.
- **A job search module** ([alueet/tyo-ura/tyonhaku/](alueet/tyo-ura/tyonhaku/README.md)): the morning agent screens
  new openings against the criteria, prepares questions for calls with recruiters and drafts applications
  from a fact bank of confirmed facts (including a list of things *not* to claim). **The person discusses each
  draft, decides what the application says and stands behind it.** Nothing is sent by the agent.
- **Inspect and adapt.** When an application does not lead to an offer, the person asks the recruiter for feedback
  and runs a short retrospective. Each retro ends in at least one concrete change to the search criteria, the fact bank,
  the writing guidelines or the system itself.
- **The repo is the single source of truth.** Every session starts with `git pull`, reads the files
  and writes decisions back as commits. Nothing important lives only in a chat.

See [docs/arkkitehtuuri.md](docs/arkkitehtuuri.md) for the architecture diagram.

## Structure

| Path | Purpose |
|---|---|
| [`CLAUDE.md`](CLAUDE.md) | Operating principles for the AI assistant |
| [`.claude/skills/`](.claude/skills/) | Repeatable routines (weekly review) |
| [`alueet/`](alueet/) | One folder per life area: goals, links, status, projects, routines |
| [`tavoitteet/`](tavoitteet/) | Vision (3–5 years) and this year's goals |
| [`suunnitelmat/viikot/`](suunnitelmat/viikot/) | Weekly plans and reviews |
| [`lokit/paivat/`](lokit/paivat/) | Optional daily log |
| [`pohjat/`](pohjat/) | Templates |
| [`tyokalut/`](tyokalut/) | Privacy check run before every publish |
| `private/` | Local only, never committed |

The working language of the files is Finnish.

## Use it yourself

1. Fork or copy the repo and **make your copy private**.
2. Replace the example person in `CLAUDE.md` and clear `alueet/`, `tavoitteet/`, `suunnitelmat/` and `lokit/`.
3. Open the folder in Claude Code and ask for a weekly review (*"tehdään viikkokatselmointi"*).

---

## Suomeksi

Henkilökohtainen tekoälyinfrastruktuuri elämän kymmenen alueen suunnitteluun (PESTE-kehikko).
Rakennettu Claude Codella, Markdown-tiedostoilla ja Gitillä. Tämä on julkinen malli, jossa on
keksityn henkilön testidata; oma versioni on yksityisessä repossa samalla rakenteella.

*Tekijä: Eemeli Ollila*

## License

© 2026 Eemeli Ollila. Licensed under [Creative Commons Attribution 4.0 International (CC BY 4.0)](LICENSE).
You may copy, adapt and use this, also commercially, as long as you credit the source, for example:
*"Based on agentic-lifeos by Eemeli Ollila (github.com/eemelio/agentic-lifeos), CC BY 4.0."*

Vapaasti käytettävissä ja muokattavissa, myös kaupallisesti, kun lähde mainitaan (CC BY 4.0).
