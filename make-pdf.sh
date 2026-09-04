#!/usr/bin/env bash
# Render index.html to a print-quality A4 PDF using headless Chrome.
#
#   ./make-pdf.sh                      -> RaffaeleSollecito-Resume.pdf
#   ./make-pdf.sh /tmp/out.pdf         -> custom output path
#
# Uses the same @media print stylesheet the browser's Cmd+P / "Download PDF"
# button uses, so the CLI output and the manual export are identical.

set -euo pipefail

cd "$(dirname "$0")"
OUT="${1:-RaffaeleSollecito-Resume.pdf}"

CHROME=""
for c in \
  "/Applications/Google Chrome.app/Contents/MacOS/Google Chrome" \
  "/Applications/Chromium.app/Contents/MacOS/Chromium" \
  "$(command -v google-chrome || true)" \
  "$(command -v chromium || true)"; do
  [ -n "$c" ] && [ -x "$c" ] && CHROME="$c" && break
done

if [ -z "$CHROME" ]; then
  echo "No Chrome/Chromium found. Open index.html and use Cmd+P -> Save as PDF." >&2
  exit 1
fi

# Serve locally so relative assets and web fonts resolve the same as in production.
python3 -m http.server 8765 --bind 127.0.0.1 >/dev/null 2>&1 &
SRV=$!
trap 'kill "$SRV" 2>/dev/null || true' EXIT
sleep 1

"$CHROME" \
  --headless \
  --disable-gpu \
  --no-pdf-header-footer \
  --virtual-time-budget=10000 \
  --print-to-pdf="$OUT" \
  "http://127.0.0.1:8765/index.html" 2>/dev/null

echo "Wrote $OUT"
