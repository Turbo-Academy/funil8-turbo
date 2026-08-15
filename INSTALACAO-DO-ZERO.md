# 🚀 Instalação do zero — um comando no Claude e o Funil 8 instalado

> 🌐 **Versão bonita deste manual:** baixe o repositório e abra [`instalacao-do-zero.html`](instalacao-do-zero.html) no navegador — com botão de copiar em cada comando.

> **Para quem nunca usou o Claude Code.** Tudo pelo **app Claude Desktop**: você cola **um comando com o link do GitHub** e o próprio Claude baixa e instala. Sem Terminal, sem ZIP, sem git, sem senha.
>
> Em **~10 minutos**: app instalado · conta conectada · agente do Funil 8 + 12 skills respondendo.

---

## ✅ O que você precisa antes de começar

- [ ] Um computador **Mac** (Windows funciona também — veja a caixa no fim)
- [ ] Uma **conta Claude paga** (plano Pro ou Max) — crie em [claude.ai](https://claude.ai)
- [ ] ~200 MB de espaço livre
- [ ] 10 minutos sem interrupção

---

## Etapa 1 · Instalar o app Claude Desktop (5 min)

1. Baixe o app em **[claude.ai/download](https://claude.ai/download)**
2. Abra o arquivo baixado e **arraste o Claude pra pasta Aplicativos**
3. Abra o Claude (Cmd + Espaço → digite `Claude` → Enter)
4. **Entre na sua conta** claude.ai — a conta **paga** (Pro ou Max)

✅ **Checkpoint:** o app abre e mostra o chat do Claude com seu nome/conta.

---

## Etapa 2 · Abrir uma sessão no Code (2 min)

O **Code** é a área do app em que o Claude tem mãos: lê arquivos e executa comandos numa pasta que você escolher.

1. No app Claude, clique em **Code** (na barra lateral)
2. Crie uma **nova sessão** e, quando ele pedir a pasta, escolha onde o funil vai morar — **Documentos** serve perfeitamente
3. Abre um chat normal — a diferença é que esse chat trabalha dentro da pasta escolhida

✅ **Checkpoint:** sessão aberta mostrando o nome da pasta (ex.: `Documentos`).

---

## Etapa 3 · Colar o comando de instalação (2-5 min)

Cole isto no chat e aperte Enter:

```
instale o funil 8 github.com/Turbo-Academy/funil8-turbo
```

Só isso. O Claude baixa o repositório, lê as instruções que estão nele e roda o `install.sh` — o agente `funil8-turbo` e as 12 skills entram no lugar certo.

O que esperar durante a execução:

- **Não precisa ter git instalado** nem digitar senha em momento nenhum — o repo é público e a instalação só copia arquivos.
- **O app pede permissão** antes de cada comando (botão *Permitir/Allow*). É o comportamento normal — leia e autorize.

✅ **Checkpoint:** o Claude mostra a lista de skills instaladas com ✓ e avisa pra reiniciar.

---

## Etapa 4 · Conferir se funcionou (2 min)

**Tudo que acabou de ser instalado — skills e agente — só carrega quando uma sessão nova abre.** A sessão da instalação não enxerga o que ela mesma instalou. Então:

1. **Feche a sessão e abra uma nova** — desta vez escolhendo a pasta `funil8-turbo` (dentro de Documentos)
2. Digite `/skills` → a lista deve mostrar as skills (`funil-8-turbo`, `meta-ads-cli-turbo`, `criador-vsl-turbo`…)
3. Teste o agente — cole:

```
Use o agente funil8-turbo e se apresenta em 2 linhas
```

✅ **Checkpoint final:** o agente respondeu. **O Funil 8 está instalado e funcionando.** 🎉

---

## 💪 O que ele é capaz de fazer

O Funil 8 é o funil de **produto de entrada low ticket (R$ 35-98)** da Turbo Academy — desenhado pra captar compradores a custo zero: o faturamento paga o tráfego, e a base de **compradores** é o ativo. O agente monta e opera o funil inteiro:

- **Estrutura do produto**: nome, as 4 peças, formato das aulas
- **Order bumps em escadinha e upsell** — onde o funil vira lucro
- **Checkout primeiro, página depois**: a sequência que o método manda
- **Página de vendas e VSL curta** (copy completa, com compliance Meta)
- **Criativos** de anúncio pro funil
- **Campanha de Vendas com cost cap** (meta de custo por resultado) — configuração exata, do botão impulsionar ao gerenciador, com toda campanha nascendo **pausada**
- **Otimização em 3 frentes**: criativo, checkout e ROAS — com benchmarks do método

Comando típico: `*subir-campanha` (o agente guia os inputs antes de subir qualquer coisa).

---

## 😵 Deu errado?

| Sintoma | Causa provável | Solução |
|---|---|---|
| Não acho o Code no app | Versão antiga do app | Atualize o Claude Desktop ([claude.ai/download](https://claude.ai/download)) |
| O Claude diz que não pode rodar comandos | Sessão aberta no chat comum, não no Code | Refaça a Etapa 2 — tem que ser uma sessão do **Code**, com pasta escolhida |
| O Claude não conseguiu baixar o repositório | Sem git ou rede bloqueou | Cole: `baixe o ZIP do branch main desse repositório com curl e descompacte` |
| Pediu permissão e eu neguei sem querer | — | Peça: `tenta de novo o último comando` e autorize |
| `/skills` não mostra as skills · o agente não responde | Sessão aberta antes do fim da instalação — nada recém-instalado carrega nela | Feche e abra uma sessão nova (Etapa 4) |
| Travou em qualquer outra coisa | — | Cole no chat: `estou seguindo o INSTALACAO-DO-ZERO.md e travei nesta etapa: [descreva]` — ele mesmo te destrava |

---

## 🪟 E no Windows?

O app Claude Desktop também existe pra Windows — Etapas 1 e 2 são iguais. No Windows, o Claude Code pode pedir o **Git for Windows** na primeira execução (ele avisa e aponta o download; instale com as opções padrão). Depois cole o mesmo comando da Etapa 3 acrescentando: `estou no Windows — adapte a instalação pro meu sistema`.

---

## 👉 Próximos passos

1. **[README](README.md)** — as 12 skills, o fluxo do funil e as regras de segurança (campanha nasce pausada · token nunca no repo)
2. Conectar a **Meta Ads CLI**: peça ao agente `me guia no setup da Meta Ads CLI` (a skill `meta-ads-cli-setup-turbo` conduz — o token fica fora do repo)
3. Quer o método completo (lançamento inteiro, 13 agentes)? **[Squad Turbo LPSG](https://github.com/Turbo-Academy/squad-turbo-lpsg-7.0)**
