# raffasolaries.github.io

Personal résumé / profile page for Raffaele Sollecito — Cloud Architect, AWS SME.

## Status

Draft. Not yet published.

## Local preview

```bash
python3 -m http.server 8080
# open http://localhost:8080
```

## Publish (GitHub Pages, user site)

1. Create a **public** repo on the `Raffasolaries` account named exactly
   `Raffasolaries.github.io`.
2. Push this directory to `main`.
3. Settings → Pages → Source: *Deploy from a branch* → `main` / `/ (root)`.
4. Live at `https://raffasolaries.github.io`.

### Optional custom domain

`www.raffaelesollecito.org` is already listed on the LinkedIn profile. To point it here,
add a `CNAME` file containing the hostname and set the DNS records GitHub Pages requires.

## Content source

Facts derived from `../RaffaeleSollecito_LinkedIn.pdf` (generated 30 Jul 2026),
which is the authoritative source for roles, dates and education.

## Open decisions

- Simon & Schuster authorship (*Honour Bound*, 2012–2013) is present on LinkedIn but
  intentionally **omitted** from this professional page. Add back only on explicit request.
- No photo, no phone number on the page. Email is exposed in plain text — consider a
  contact form or obfuscation if scraping is a concern.
- Single page for now; split into `/about`, `/work`, `/writing` only if content grows.
