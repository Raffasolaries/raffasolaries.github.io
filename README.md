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
- `./make-pdf.sh [out.pdf]` — headless Chrome, A4, identical stylesheet.

## Content source

Facts derived from `source-flowcv-2026-09-04.pdf` (FlowCV export), authoritative for roles, dates,
education, certifications and client engagements.

## Open decisions

- Simon & Schuster authorship (*Honour Bound*, 2012–2013) is present on LinkedIn but
  intentionally **omitted** from this professional page. Add back only on explicit request.
- Deliberately omitted from the public page: phone numbers, street address, date of birth,
  and named references (replaced with "available on request"). These remain in the FlowCV PDF.
- Single page for now; split into `/about`, `/work`, `/writing` only if content grows.
