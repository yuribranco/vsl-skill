# /vsl — construir uma VSL inteira dentro do Claude Code

> **A lead é a última coisa que se escreve.**

Essa skill não é um "prompt de copywriter de VSL". É um **processo com entrevista e gates**: antes
de escrever uma linha, o Claude é obrigado a te entrevistar até ter briefing completo, diagnosticar
o mercado, e **travar com você o mecanismo do problema e o mecanismo da solução**. Só depois ele
escreve — e escreve de trás pra frente: oferta primeiro, lead por último.

É a diferença entre pedir "escreve uma VSL" e receber 15 minutos de texto genérico, versus receber:

> *"Seu mercado está em consciência 3 / sofisticação 4 — promessa direta está morta aqui. Te trago
> 5 mecanismos de problema e 5 de solução, com o hook de cada um e o risco de cada um. Escolhe 1+1
> e eu escrevo a VSL inteira em cima da sua escolha."*

---

## Instalação

### Opção 1 — como plugin (recomendado)

Dentro do Claude Code:

```
/plugin marketplace add yuribranco/vsl-skill
/plugin install vsl@yuri-vsl
```

### Opção 2 — script

```bash
git clone https://github.com/yuribranco/vsl-skill.git
cd vsl-skill
./install.sh              # global: ~/.claude/skills/vsl
./install.sh --project    # só no projeto atual
```

### Opção 3 — na mão

```bash
cp -r skills/vsl ~/.claude/skills/vsl
```

---

## Como usar

Rode `/vsl` e responda. Se você já tem material — transcrição de call, questionário preenchido,
página antiga, aulas gravadas —, entregue os caminhos logo no começo: a skill lê tudo antes de
perguntar e só te pergunta o que **falta**.

| Você tem | O que acontece |
|---|---|
| Uma call gravada com o expert | Ele extrai perfil, método, história e provas com timestamp, e entrevista só as lacunas |
| Nada, só a ideia | Entrevista em 11 blocos, um por vez, em linguagem de gente |
| Uma VSL que não converte | Diagnostica pelo gráfico de retenção e reescreve o bloco culpado |
| O mecanismo já definido | Registra no gate e vai direto pra escrita |

### O fluxo

```
0. Ingestão      lê o material que já existe
1. Entrevista    11 blocos → 00-briefing.md, com fonte em cada resposta
2. Diagnóstico   desejo de massa · consciência (1-5) · sofisticação (1-5)   🚦 GATE 1
3. Mecanismos    5 propostas do problema × 5 da solução, com risco e hook   🚦 GATE 2
4. Escrita       oferta → mec. solução → mec. problema → história → 5 leads
5. QA            checklist, métricas-alvo e plano de teste A/B
```

Os dois gates são humanos e obrigatórios: consciência/sofisticação erradas e mecanismo errado são
os dois erros que só aparecem depois do vídeo gravado.

### O que sai no fim

```
00-briefing.md          tudo que se sabe, com a fonte de cada resposta
01-diagnostico.md       o diagnóstico, com a evidência que o sustenta
02-mecanismos-5x5.md    10 propostas + recomendação (documento de decisão)
03-vsl-principal.md     a VSL completa, ~15 min, na ordem de apresentação
03-leads/               5 leads em ângulos diferentes, prontas pra teste
04-qa.md                checklist fechado + plano de teste
manifest.json           estado das fases e registro dos dois gates
```

---

## O que tem dentro

| Arquivo | Conteúdo |
|---|---|
| `SKILL.md` | As 6 fases, os 2 gates, a regra de não inventar, a ordem invertida de escrita |
| `01-intake.md` | A entrevista completa: 11 blocos, o mapa de cada resposta pro seu destino na VSL |
| `02-diagnostico.md` | Desejo de massa, 5 níveis de consciência, 5 estágios de sofisticação, tabela de decisão |
| `03-mecanismos.md` | Como construir mecanismo de problema e de solução, o formato 5×5, o stress-test |
| `04-oferta.md` | Os 15 passos do pitch, a Tríade, a equação de valor, as regras de página |
| `05-blocos.md` | Mecanismo da solução, do problema e história — e como não soar como IA |
| `06-leads.md` | Os 7 ângulos, a estrutura obrigatória, arquétipos e 40 hooks |
| `07-montagem-qa.md` | Montagem final, checklist de QA, métricas-alvo, plano de teste |
| `08-nichos.md` | Tom, prova, preço e compliance por nicho |

Os arquivos são lidos **sob demanda** — o Claude só abre `06-leads.md` quando chega nas leads,
o que mantém o contexto leve numa sessão longa.

---

## Quatro regras que essa skill impõe

1. **Nunca inventar.** Depoimento, número, estudo, caso de aluno, credencial — nada é fabricado.
   O que falta vira `[DEPOIMENTO]`, `[NÚMERO A CONFIRMAR]`, `[LACUNA]` no roteiro.
2. **Rastreabilidade.** Se a call já traz o mecanismo, ele é o mestre. A síntese do agente entra
   marcada como proposta nova, nunca substituindo silenciosamente o que o expert disse.
3. **A oferta é escrita antes da lead.** É o que garante que a lead prometa exatamente o que a
   oferta entrega.
4. **Compliance vence copy.** As proibições do conselho de classe, do regulador e da plataforma
   viram LEI no topo do roteiro e não são negociáveis por nenhuma técnica daqui.

---

## Combina com

- **[`/ba`](https://github.com/yuribranco/breakthrough-advertising-skill)** — Breakthrough
  Advertising (Eugene Schwartz). Se estiver instalada, a Fase 2 usa o diagnóstico dela. Se não
  estiver, esta skill é autossuficiente.
- Qualquer agente diferente para revisar a Fase 3 — **quem escreveu o mecanismo é o pior juiz
  dele** (maker ≠ checker).

---

## Atribuição

Ver [NOTICE.md](NOTICE.md). Código e texto original deste repositório: [MIT](LICENSE).
