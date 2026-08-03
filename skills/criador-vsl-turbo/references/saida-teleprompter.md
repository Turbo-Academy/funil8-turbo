# Saída teleprompter — formato e geração

Quando a VSL é talking head (rosto falando), a entrega-rosto é um `.docx` pronto pra rolar no teleprompter. Ele NÃO é o documento de trabalho — é o que o expert lê na hora de gravar.

## Regras do formato (o que faz um teleprompter funcionar)

| Elemento | Regra |
|---|---|
| **Conteúdo** | SÓ o texto falado. Nada de brief, tabela, hooks, direção dentro do fluxo de leitura. |
| **Fonte** | Sem serifa (Arial/Helvetica), **28–32pt**. Padrão: 30pt. |
| **Espaçamento** | Linha 1.4–1.5 · espaço entre parágrafos. Frases curtas, uma ideia por linha. |
| **Marcadores de bloco** | Discretos, em dourado/cinza, ~15pt (ex: `▌ 4 · O MECANISMO`). Servem de âncora visual, não se leem. |
| **Direções** | Cinza pequeno, itálico, entre parênteses, com aviso "não fale" no cabeçalho (ex: prints, escassez a confirmar). |
| **Margens** | Enxutas (~0.6") — mais texto por tela = menos rolagem. |
| **Placeholders** | O que falta verdade (data de escassez, nomes de depoimento) fica em `[MAIÚSCULA entre colchetes]` pra saltar à vista antes de gravar. |

## Como gerar

1. Use o roteiro JÁ revisado pelo `@revisor-copy-turbo` (a versão corrigida, não o rascunho).
2. Copie `scripts/build-teleprompter.py` pra pasta do projeto (`02-entregaveis-finais/vsl/`).
3. Preencha as constantes `TITULO`/`SUBTITULO` e a lista `BLOCOS` com o texto falado, bloco a bloco. Cada bloco = `("MARCADOR", [parágrafos falados], "direção opcional ou None")`.
4. python-docx não roda no Python do sistema (PEP 668) — use um venv:
   ```bash
   python3 -m venv /tmp/vsl-venv && /tmp/vsl-venv/bin/pip install -q python-docx
   /tmp/vsl-venv/bin/python build-teleprompter.py
   ```
5. Valide: `unzip -t <arquivo>.docx` (íntegro) e confira a 1ª fala.

## Por que python-docx e não pandoc
O `.docx` de trabalho sai do `.md` via pandoc (rápido, fiel ao conteúdo). Mas teleprompter precisa de controle fino de fonte/tamanho/cor/espaçamento que o pandoc não dá sem reference-doc. O `build-teleprompter.py` resolve isso de forma reproduzível — versionado junto do entregável.

> Quem quiser teleprompter dark (texto claro em fundo escuro) troca as cores no script (`INK` → claro, e adiciona shading de página). O default é preto-no-branco, que imprime e lê bem em qualquer app de teleprompter.
