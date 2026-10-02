# RagnaGT-Patch
Tudo que o patcher baixa. O `RagnaGT Patcher.exe` lê `patchlist.txt` e aplica os patches novos.

- `patchlist.txt` — `ID arquivo sha256` (gerado por `make_patch.py`)
- `news.txt` — `dd/MM|Título` (painel de notícias)
- `patcher_version.txt` — versão do patcher (maior que a instalada = auto-update; coloque também `RagnaGT Patcher.exe` na raiz)
- `patches/` — `.gpf` (mesclado no coresnovas.grf) ou arquivos soltos (copiados p/ a pasta do cliente)
- `novos/` — pasta de trabalho: coloque `data\...` aqui e rode `python make_patch.py novos --name itens`

Limites do GitHub: 100 MB por arquivo; manter patches pequenos. Nunca colocar senhas/configs do servidor aqui (repo público).
