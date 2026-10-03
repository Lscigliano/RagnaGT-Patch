# RagnaGT-Patch
**Jogadores:** baixe o patcher em [Releases](../../releases/latest) (`RagnaGT-Patcher.zip`), extraia na pasta do cliente e abra `RagnaGT Patcher.exe`.

Tudo que o patcher baixa. O `RagnaGT Patcher.exe` lê `patchlist.txt` e aplica os patches novos.

- `patchlist.txt` — `ID arquivo sha256` (gerado por `make_patch.py`)
- `episode.txt` — uma linha com o episódio atual, mostrada no patcher (ex.: `Episódio atual: Ayothaya`)
- `news.txt` — `dd/MM|Título` (painel de notícias)
- `patcher_version.txt` — versão do patcher (maior que a instalada = auto-update; coloque também `RagnaGT Patcher.exe` na raiz)
- `patches/` — `.gpf` (mesclado no coresnovas.grf) ou arquivos soltos (copiados p/ a pasta do cliente)
- `novos/` — pasta de trabalho: coloque `data\...` aqui e rode `python make_patch.py novos --name itens`

Limites do GitHub: 100 MB por arquivo; manter patches pequenos. Nunca colocar senhas/configs do servidor aqui (repo público).

## Publicar nova versão do patcher
`dotnet publish -c Release -r win-x64 --self-contained -p:PublishSingleFile=true -p:EnableCompressionInSingleFile=true`, aumentar `<Version>` no csproj e `patcher_version.txt`, e criar um release novo com `RagnaGT.Patcher.exe` (auto-update) e o zip.
