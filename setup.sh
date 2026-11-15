#!/bin/bash
# Zet faster-whisper (small) klaar in de werkruimte.
set -e
DIR="$(cd "$(dirname "$0")" && pwd)"
pip install --break-system-packages -q faster-whisper "av<16"
OUT=/home/claude/models/faster-whisper
mkdir -p "$OUT"
cp "$DIR"/small/config.json "$DIR"/small/tokenizer.json "$DIR"/small/vocabulary.txt "$OUT"/
cat "$DIR"/small/model.bin.part* > "$OUT"/model.bin
echo "$(cat "$DIR"/small/model.bin.sha256)  $OUT/model.bin" | sha256sum -c -
python3 -c "from faster_whisper import WhisperModel; WhisperModel('$OUT', device='cpu', compute_type='int8'); print('faster-whisper klaar:', '$OUT')"
