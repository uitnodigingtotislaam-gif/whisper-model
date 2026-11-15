# faster-whisper model (small)

Opslag voor het faster-whisper "small"-model (Systran/faster-whisper-small), in stukken van 45 MB.

Klaarzetten in een nieuwe Claude-werkruimte:

```
bash setup.sh
```

Daarna laden met:
`WhisperModel('/home/claude/models/faster-whisper', device='cpu', compute_type='int8')`

Let op: faster-whisper 1.2.1 werkt alleen met PyAV lager dan versie 16 (`av<16`).
