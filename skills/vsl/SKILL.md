---
name: vsl
description: Use quando for construir uma VSL (video sales letter) do zero ou reconstruir uma que não converte — roteiro de vídeo de vendas, página de front-end, funil perpétuo, lançamento —, quando precisar definir o mecanismo do problema e o mecanismo da solução de uma oferta, quando faltar briefing do expert para escrever copy, quando precisar de variações de lead pra testar, ou quando o pedido for "escreve a VSL", "faz o roteiro de vendas", "qual o mecanismo dessa oferta", "a lead tá fraca", "a retenção cai no primeiro minuto".
---

# VSL — do briefing ao roteiro pronto pra gravar

## Princípio

**A VSL não começa na lead. A lead é a última coisa que se escreve.**

Uma VSL é *derivada*: do que o expert realmente sabe, do estado real do mercado e do mecanismo
escolhido. Agente que começa pela lead produz copy bonita, genérica e sem hipótese — e quando ela
não converte, ninguém sabe qual peça estava errada.

Esta skill impõe a ordem inversa: **entrevistar → diagnosticar → travar o mecanismo → escrever a
oferta → subir até a lead**.

## As 6 fases

| # | Fase | Leia | Só termina quando |
|---|---|---|---|
| 0 | Ingestão do material que já existe | `01-intake.md` §0 | inventário feito, briefing pré-preenchido |
| 1 | Entrevista completa com quem sabe | `01-intake.md` | `00-briefing.md` fechado — ou com as lacunas **declaradas e aceitas** pelo humano |
| 2 | Diagnóstico de mercado (Schwartz) | `02-diagnostico.md` | 🚦 **GATE 1** — humano confirma |
| 3 | Mecanismos: 5 do problema × 5 da solução | `03-mecanismos.md` | 🚦 **GATE 2** — humano escolhe 1+1 |
| 4 | Escrita, de trás pra frente | `04-oferta.md` → `05-blocos.md` → `06-leads.md` | oferta + 3 blocos + 5 leads escritos |
| 5 | Montagem, QA e plano de teste | `07-montagem-qa.md` | checklist fechado |

O nicho muda tom, tipo de prova, preço e compliance em **todas** as fases: `08-nichos.md`.

**Nunca pule fase.** Se o usuário disser "já sei o mecanismo, escreve logo a VSL", rode a Fase 1
enxuta e o GATE 2 em 5 minutos registrando o mecanismo que ele já tem — mas registre. O arquivo
existir é o que permite auditar depois por que a VSL converteu ou não.

## Os dois GATES (invioláveis)

**GATE 1 — Diagnóstico confirmado.** Nível de consciência e estágio de sofisticação errados
condenam tudo que vem depois. Apresente sua leitura *com a evidência do briefing que a sustenta* e
espere o humano confirmar ou corrigir.

**GATE 2 — Mecanismos aprovados.** A VSL inteira é derivada do mecanismo. Errar aqui é regravar o
vídeo inteiro. Apresente o documento 5×5, o humano escolhe **1 mecanismo-mestre do problema + 1 da
solução**, e só então a Fase 4 começa.

Registre os dois no `manifest.json` (campos no schema abaixo). Antes de escrever qualquer linha da
VSL, **leia o manifest e verifique**. Campo vazio = pare e volte pra fase que falta.

**Gate reabre quando a base muda.** Se o briefing, a oferta ou o preço mudarem depois do GATE 2,
zere `gate2_aprovado_em`, diga o que mudou e reapresente. Aprovação é sobre um estado específico
dos fatos, não um carimbo permanente.

## Regra inviolável: nunca inventar

Copy de resposta direta que inventa é copy que gera reembolso, processo e ban de plataforma.

- **Nunca invente** depoimento, número, estudo, caso de aluno, credencial, data ou história.
- Informação que falta vira marcador explícito no texto: `[DEPOIMENTO]`, `[NÚMERO A CONFIRMAR]`,
  `[A DEFINIR]` — nunca um placeholder plausível que passe por verdade.
- **Rastreabilidade:** se o material de origem (call, questionário, material do expert) já traz o
  mecanismo, a história ou o número, ele é a fonte-mestra. Cite de onde veio (arquivo + timestamp/
  linha). Síntese sua **nunca** substitui o que a fonte disse — entra no máximo como variação
  marcada `🆕 proposta nova (não veio da fonte)`.

| Racionalização | Realidade |
|---|---|
| "É só um exemplo ilustrativo de depoimento" | Vai pro vídeo gravado do jeito que está. Use `[DEPOIMENTO]`. |
| "Esse número é plausível pro nicho" | Plausível não é verificável. O expert responde ou fica `[NÚMERO A CONFIRMAR]`. |
| "A minha metáfora ficou melhor que a dele" | Talvez. Marque como proposta nova e deixe o humano escolher no GATE 2. |
| "Falta pouca coisa, dá pra começar a escrever" | Falta = a lead vai apoiar em ar. Feche a lacuna ou registre e diga em voz alta o que está faltando. |
| "O expert não respondeu, eu deduzo pelo nicho" | Dedução de nicho é hipótese, não briefing. Marque `[LACUNA]`. |

**Red flags — pare:** você está escrevendo um número que ninguém te deu · você está contando uma
história que não estava no material · você está no bloco da oferta sem saber o preço · você está
escrevendo a lead antes da oferta.

## Estrutura de saída

Crie no diretório do projeto (ou `vsl-<slug>/` se não houver um):

```
00-briefing.md            respostas da entrevista, com fonte de cada uma
01-diagnostico.md         desejo de massa, consciência, sofisticação + evidência
02-mecanismos-5x5.md      10 propostas + recomendação (documento de decisão)
03-vsl-principal.md       a VSL completa, na ordem de apresentação
03-leads/                 lead-01-negativa.md ... lead-05-comparacao.md
04-qa.md                  checklist + plano de teste A/B + métricas-alvo
manifest.json             estado das fases e os dois gates
```

**Onde criar:** se você já está no diretório do projeto/expert, escreva ali. Se não, crie
`vsl-<slug-do-expert-ou-produto>/`. Se já existirem várias pastas `vsl-*`, **pergunte em qual
trabalhar** — nunca escolha sozinho.

Crie o `manifest.json` logo na Fase 0 com os campos que já souber (o resto fica `null` e você
completa ao fim da Fase 1). Atualize `fases` a cada transição:

```json
{
  "expert": "<nome>",
  "produto": "<nome do produto>",
  "nicho": "financeiro|saude|mudanca-de-vida|profissional|volume",
  "criado_em": "AAAA-MM-DD",
  "fases": { "intake": "pendente", "diagnostico": "pendente", "mecanismos": "pendente",
             "escrita": "pendente", "qa": "pendente" },
  "gate1_confirmado_em": null, "consciencia": null, "sofisticacao": null,
  "gate2_aprovado_em": null, "aprovado_por": null,
  "mecanismo_problema": null, "mecanismo_solucao": null, "camadas": []
}
```

## Retomar um trabalho começado

Ao ser invocada, **antes de perguntar qualquer coisa**: procure um `manifest.json` no diretório.
Se existir, leia-o e o `00-briefing.md`, diga em uma linha onde o trabalho parou e retome da
primeira fase pendente. Reentrevistar quem já respondeu é o jeito mais rápido de perder a
confiança de um expert ocupado.

## Ordem de escrita vs. ordem de apresentação

| Escreve nesta ordem | O espectador vê nesta ordem |
|---|---|
| 1. Oferta (pitch) | 1. Lead (~2 min) |
| 2. Mecanismo da solução | 2. Mecanismo do problema |
| 3. Mecanismo do problema | 3. História |
| 4. História | 4. Mecanismo da solução |
| 5. **Lead (5 variações)** | 5. Oferta (pitch, ~min 14) |

Escrever a oferta primeiro é o que faz a lead prometer exatamente o que a oferta entrega. Escrever
a lead primeiro é o que faz a VSL prometer o que ela não cumpre.

## Composição com outras skills

- **`/ba`** (Breakthrough Advertising — github.com/yuribranco/breakthrough-advertising-skill): se
  estiver instalada, use na Fase 2 e na revisão da lead. Se não estiver, `02-diagnostico.md` traz o
  essencial — esta skill é autossuficiente.
- Revisão adversarial da Fase 3 e da lead: peça a um agente **diferente** do que escreveu
  (maker ≠ checker). Quem escreveu o mecanismo é o pior juiz dele. Entregue ao checker o
  diagnóstico + o documento 5×5 e peça um parecer no formato *mata / mantém com ressalva /
  mantém* por proposta, com uma linha de justificativa. **Divergência entre maker e checker não
  se resolve entre eles** — vai pro humano no GATE 2, com os dois pareceres lado a lado.

## Quando NÃO usar

Anúncio isolado, e-mail, página de captura, post — não têm 4 blocos nem pitch aos 14 minutos.
Use uma skill de copy geral. Esta aqui é para **vídeo de vendas de 12–20 minutos**.
