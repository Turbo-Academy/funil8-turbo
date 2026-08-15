# Funil 8 Turbo — instruções pro Claude

## Se te pediram pra INSTALAR o funil 8 nesta máquina

**Baixar o repositório (se ainda não estiver baixado):** git NÃO é pré-requisito. Se `command -v git` falhar, **não dispare a instalação do Xcode Command Line Tools** (popup de ~2 GB que trava o fluxo) — baixe o ZIP com o curl nativo do macOS:

```bash
curl -L https://github.com/Turbo-Academy/funil8-turbo/archive/refs/heads/main.zip -o funil8.zip
unzip -q funil8.zip && rm funil8.zip
# cria a pasta funil8-turbo-main — trabalhe dentro dela
```

Com git presente, `git clone https://github.com/Turbo-Academy/funil8-turbo.git` é equivalente.

**Instalar:** rode `bash install.sh` (idempotente — copia o agente `funil8-turbo` e as 12 skills pra `~/.claude/`). Não precisa de senha nem de Homebrew.

**No fim, avise o usuário:** skills e agente só carregam em **sessão nova** do Claude Code — a sessão da instalação não enxerga o que ela mesma instalou. Conferir: `/skills` lista as skills e o agente responde a "Use o agente funil8-turbo…".

O manual humano dessa instalação é o [INSTALACAO-DO-ZERO.md](INSTALACAO-DO-ZERO.md).

## Sobre este repositório

- Agente dedicado ao **Funil 8** (produto de entrada low ticket R$ 35-98 · campanha de Vendas com cost cap · order bumps · upsell) da Turbo Academy: 1 agente + 12 skills, roda **sem** o Squad Turbo completo. Comece pelo [README](README.md).
- Regras do método: o funil capta comprador a custo zero — o lucro vem do backend; toda campanha nasce **PAUSED**; token da Meta **nunca** entra no repo.
- O repo é público. As skills são cópias das canônicas do Squad Turbo (repo squad-turbo-lpsg-7.0) — melhorias entram por lá e são sincronizadas pra cá; não edite as cópias daqui à mão.
