#!/usr/bin/env python3
"""Gera um patch e registra na patchlist.txt.

  python make_patch.py novos              -> empacota a pasta novos (data/...) em patches/AAAA-MM-DD_nome.gpf
  python make_patch.py arquivo.exe        -> copia o arquivo solto para patches/ (vai para a pasta do cliente)
  opcoes: --name nome   (padrao: nome da pasta/arquivo)

Depois: git add -A && git commit && git push  (o patcher le direto do repositorio).
"""
import sys, os, struct, zlib, hashlib, shutil, datetime, argparse

ROOT = os.path.dirname(os.path.abspath(__file__))

def build_gpf(folder, out):
    entries, blob = [], bytearray()
    for dp, _, fns in os.walk(folder):
        for fn in sorted(fns):
            full = os.path.join(dp, fn)
            rel = os.path.relpath(full, folder).replace('/', chr(92))
            data = open(full, 'rb').read()
            comp = zlib.compress(data, 9)
            entries.append((rel.encode('cp949'), len(comp), len(data), len(blob)))
            blob += comp
    if not entries: sys.exit("pasta vazia: " + folder)
    table = b''.join(n + b'\0' + struct.pack('<IIIBI', c, c, r, 1, off) for n, c, r, off in entries)
    z = zlib.compress(table, 9)
    with open(out, 'wb') as f:
        f.write(b'Master of Magic\0' + bytes(range(1, 15)))
        f.write(struct.pack('<IIII', len(blob), 0, len(entries) + 7, 0x200))
        f.write(blob)
        f.write(struct.pack('<II', len(z), len(table)) + z)
    return len(entries)

def main():
    ap = argparse.ArgumentParser(); ap.add_argument('src'); ap.add_argument('--name')
    a = ap.parse_args()
    os.makedirs(os.path.join(ROOT, 'patches'), exist_ok=True)
    name = a.name or os.path.splitext(os.path.basename(os.path.abspath(a.src)))[0]
    day = datetime.date.today().isoformat()
    if os.path.isdir(a.src):
        fn = f"{day}_{name}.gpf"; dest = os.path.join(ROOT, 'patches', fn)
        print(build_gpf(a.src, dest), "arquivos empacotados")
    else:
        fn = f"{day}_{os.path.basename(a.src)}"; dest = os.path.join(ROOT, 'patches', fn)
        shutil.copy(a.src, dest)
    sha = hashlib.sha256(open(dest, 'rb').read()).hexdigest()
    pl = os.path.join(ROOT, 'patchlist.txt')
    ids = [int(l.split()[0]) for l in open(pl, encoding='utf-8') if l.strip() and l.split()[0].isdigit()]
    nid = max(ids, default=0) + 1
    with open(pl, 'a', encoding='utf-8', newline='\n') as f: f.write(f"{nid} {fn} {sha}\n")
    print(f"patch {nid}: {fn} ({os.path.getsize(dest)/1e6:.1f} MB)")

main()
