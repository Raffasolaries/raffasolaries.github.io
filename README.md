# raffasolaries.github.io

Live: https://resume.raffaelesollecito.org (GitHub Pages user site, HTTPS enforced).

Personal résumé / profile page for Raffaele Sollecito — Cloud Architect, AWS SME.

## Local preview

```bash
python3 -m http.server 8080
# open http://localhost:8080
```

## Publishing

Push to `main`. GitHub Pages serves the repo root; `CNAME` pins the custom domain.
DNS: Route 53 zone `raffaelesollecito.org` (personal AWS account, profile `iamadmin`),
record `resume` CNAME -> `raffasolaries.github.io`.

## PDF export

- **Download PDF** button in the toolbar, or Cmd+P in any browser.
- `./make-pdf.sh [out.pdf]` — headless Chrome, A4, identical stylesheet. Defaults to
  `Raffaele-Sollecito-Resume.pdf`, the file linked from the page. Set `CHROME=/path/to/chrome`
  to use a specific binary (e.g. a Playwright Chromium on Linux).
- Keep the print layout at **3 pages**: jobs and engagements never split across pages, so a
  longer entry on page 1 can push *Selected Engagements* and *References* onto a fourth page.

## Content source

Facts derived from `source-flowcv-2026-09-04.pdf` (FlowCV export), authoritative for roles, dates,
education, certifications and client engagements. Updated 2026-10-23 for Kumokage GmbH, following the
fact register of the Kumokage launch kit: four AWS certifications plus two AWS badges (SME, Partner
accreditation), canonical Credly badge links, 10+ years in software engineering / 7+ on AWS. Education as
recorded by AlmaLaurea: Verona MSc Computer Engineering (LM-32 Ingegneria e Scienze Informatiche), enrolled
2008, graduated 15 July 2014; Perugia BSc Informatica (class 26), enrolled 2003, graduated 16 February 2008.

## Content rules

- Current clients are described, never named (contract clauses): "via a consulting partner",
  "via a UK engineering-staffing partner", "FCA-regulated fintech group". Past clients and employers
  (ReeVo, AWAKE Mobility, PwC, Volkswagen, ITnet, Tantosvago) may be named.
- Public contact details: kumokage.com email and the Swiss mobile (also WhatsApp). Street address and
  date of birth stay off the page.
- Five named references with LinkedIn links; *Honor Bound* and *Un passo fuori dalla notte* under Publications.

## Open decisions

- When the client contracts have moved to Kumokage GmbH (planned 1 Nov 2026), set an end date on the
  Aspect Solutions entry.
- Single page for now; split into `/about`, `/work`, `/writing` only if content grows.
