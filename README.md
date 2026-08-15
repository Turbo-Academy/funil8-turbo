# Funil 8 Turbo

Agente de Claude Code dedicado ao **Funil 8** — o funil de produto de entrada low ticket (R$35-98) da Turbo Academy, desenhado pra captar leads a custo zero: o faturamento do funil paga o tráfego, e a base de **compradores** que fica é o ativo real. O lucro vem do backend.

Este pacote roda sozinho. Você não precisa do Squad Turbo completo para usar.

## O que vem dentro

**1 agente** (`agents/funil8-turbo.md`) que opera o funil de ponta a ponta:

- **Produto**: nome com promessa embutida · 4 peças · ~10 aulas de até 10min (ou aulão de 1-2h) · preço R$35-98
- **Order bumps**: 3 a 4, o mais caro primeiro + upsell (benchmark: bump vale ≥20% do faturamento)
- **Checkout primeiro**: valida a oferta no checkout; a página entra depois, pra escalar
- **Página de vendas** low ticket: diagnóstico → copy → build → LCP < 1.5s
- **VSL curta** no modelo low ticket (entrega valor durante a própria VSL)
- **Criativos**: 10 estáticos + 5 vídeos — o criativo É a segmentação
- **Campanha** com configuração exata (gerenciador com cost cap **ou** botão Impulsionar) — tudo nasce **pausado**, ativar é decisão sua
- **Otimização**: criativo primeiro sempre · order bump · escala por janela de 7 dias, com kill rules

**12 skills** (`skills/`):

| Skill | Pra quê |
|---|---|
| `funil-8-turbo` | O método completo do Funil 8 (estrutura, campanha passo a passo, otimização, IA) |
| `criador-paginas-low-ticket-turbo` | Copy da página de vendas pra tráfego frio (diagnostic-first) |
| `criador-vsl-turbo` | Roteiro de VSL (RMBC · microleads · compliance Meta · teleprompter) |
| `criador-criativos-turbo` | Copy de anúncio (hooks, body, estrutura invisível) |
| `criativos-lpsg-turbo` | Formato e produção da batelada de criativos |
| `meta-ads-cli-setup-turbo` | Conectar a Meta Ads CLI do zero (token, permissões, 1ª chamada) |
| `meta-ads-cli-turbo` | Operação avançada via CLI/Graph API (batelada, stop-loss, escala) |
| `designer-senior-turbo` | Implementação HTML/React da página |
| `design-tokens-turbo` | Tokens visuais (paleta, tipografia, espaçamento) |
| `lovable-style-turbo` | Estilo de build das páginas em React |
| `page-optimizer-turbo` | Performance da página (LCP < 1.5s · Lighthouse ≥ 95) |
| `protocolo-conversa-turbo` | Protocolo de conversa do agente (carregada sempre primeiro) |

> **Versão do método:** este pacote reflete a **regravação de 04/08/2026**, que substitui partes da versão
> anterior. Principais trocas: campanha **ASC → Vendas com meta de custo por resultado (cost cap)** · preço de
> teste **R$17 → R$35** · verba mínima **R$100 → R$50/dia** · destino do anúncio **página → checkout**.
> O que ainda não foi reconfirmado está isolado e marcado `[v2025]` dentro da skill.

## Requisitos

- [Claude Code](https://claude.com/claude-code) instalado

## Instalação

> 🚀 **Nunca usou o Claude Code?** Siga o **[INSTALACAO-DO-ZERO.md](INSTALACAO-DO-ZERO.md)** — tudo pelo app Claude Desktop: você cola `instale o funil 8 github.com/Turbo-Academy/funil8-turbo` no Code e o próprio Claude instala. Versão bonita: [ta.turboacademy.com.br/funil8turbo](https://ta.turboacademy.com.br/funil8turbo/).


```bash
git clone https://github.com/Turbo-Academy/funil8-turbo.git
cd funil8-turbo
./install.sh
```

Depois reinicie o Claude Code.

## Como usar

```
Use o agente funil8-turbo para estruturar meu funil de entrada
```

Ou vá direto ao ponto com os comandos do agente:

| Comando | O que faz |
|---|---|
| `*produto` | Estrutura o produto de entrada (nome · 4 peças · formato · preço) |
| `*escadinha` | 3-4 order bumps (mais caro primeiro) + upsell, com projeção de AOV |
| `*pagina` | Checkout personalizado pra validar + página de vendas pra escalar |
| `*vsl` | VSL curta no modelo low ticket |
| `*criativos` | Batelada de criativos (10 estáticos + 5 vídeos) |
| `*subir-campanha` | Campanha de Vendas com cost cap, ou Impulsionar (nasce PAUSADA) |
| `*otimizar` | Diagnóstico por frente + UMA ação recomendada |
| `*diagnostico` | Auditoria do funil inteiro contra os benchmarks |

## O que este agente NÃO faz

- Evento pago 5+1 de ticket alto (isso é o método LPSG / Squad Turbo completo)
- Conteúdo orgânico em camadas C0-C3 (o Funil 8 se alimenta dele, mas não o opera)
- Ciclo de venda de 14 dias em grupo de WhatsApp
- Ativar campanha sozinho — tudo nasce pausado, quem ativa é você

## Skills externas (opcionais)

O agente referencia `deploy-to-vercel` (plugin Vercel) e `webapp-testing` (Anthropic) para deploy e teste da página. Sem elas, ele entrega instruções manuais — nada quebra.

## Licença

Ver [LICENSE](LICENSE).

---

**Turbo Academy** · [Squad Turbo LPSG completo](https://github.com/Turbo-Academy/squad-turbo-lpsg-7.0) · [Gestor de Tráfego Turbo](https://github.com/Turbo-Academy/gestor-trafego-turbo)
