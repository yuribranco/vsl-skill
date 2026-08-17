# Fase 2 — Diagnóstico de mercado (Schwartz)

> Três perguntas, nesta ordem, **antes** de qualquer mecanismo ou lead. Errar aqui é escrever uma
> VSL tecnicamente correta que fala com um mercado que não existe.
>
> Se a skill `/ba` estiver instalada, invoque-a e use o output dela. Este arquivo é o essencial
> para quem não a tem.

---

## 1. Qual é o desejo de massa?

Copy não cria desejo. **Canaliza um desejo que já existe** e o direciona ao produto. Se o desejo
não existe no mercado, nenhuma headline salva.

Escolha **UM** desejo dominante — não três. Copy que persegue vários não move nenhum. Meça cada
candidato em três eixos:

| Eixo | Pergunta | Por que importa |
|---|---|---|
| **Urgência** | Com que força ela sente isso *hoje*? | Desejo urgente compra agora |
| **Permanência** | Sente há anos ou é moda? | Desejo permanente sustenta funil perpétuo |
| **Alcance** | Quantas pessoas do público compartilham? | Alcance define o teto de escala |

Vence o de maior produto dos três — não o mais nobre nem o que o expert prefere.

**Teste:** se o desejo que você escolheu pudesse ser satisfeito por um concorrente amanhã, o
público compraria dele? Se sim, você achou o desejo certo (e o mecanismo é que vai te diferenciar).

## 2. Em que nível de consciência o mercado está?

| Nível | O público… | O que a LEAD precisa fazer |
|---|---|---|
| **1. Inconsciente** | não sabe que tem o problema | Contar história / dramatizar uma cena até ele se reconhecer. Nada de produto. |
| **2. Consciente do problema** | sente a dor, não sabe que existe solução | **Nomear a dor com precisão cirúrgica.** A lead é o problema, não a promessa. |
| **3. Consciente da solução** | sabe que existe solução, não conhece a sua | Prometer o resultado + insinuar que existe um caminho diferente |
| **4. Consciente do produto** | conhece seu produto, não comprou | Ir ao mecanismo/diferencial e à quebra da objeção real |
| **5. Totalmente consciente** | conhece e quer, falta empurrão | Oferta, preço, prazo. Copy curta. |

**Regra da VSL:** front-end de tráfego frio quase sempre roda em **2 ou 3**. Se sua lead está
explicando "por que emagrecer é importante" para um público nível 3, você perdeu a retenção do
primeiro minuto — e é isso que o gráfico do player vai mostrar.

Sinal de erro de leitura: retenção no 1º minuto abaixo de 60%.

## 3. Em que estágio de sofisticação o mercado está?

Sofisticação mede **quantas promessas o mercado já ouviu**, não quanto ele sabe.

| Estágio | Estado | O que ainda funciona |
|---|---|---|
| **1** | Ninguém prometeu nada ainda | Promessa direta e simples. "Emagreça." Raríssimo hoje. |
| **2** | Alguém já prometeu | Amplie a promessa. "Emagreça em 30 dias, sem dieta." |
| **3** | Todo mundo promete a mesma coisa | **Mecanismo novo.** Não *o quê*, mas *como*. É aqui que a VSL brilha. |
| **4** | Todo mundo tem mecanismo | **Elabore o mecanismo:** mais fácil, mais rápido, mais garantido, removendo a limitação antiga. |
| **5** | O mercado não acredita em mais nada | **Identificação.** Pare de vender o resultado, venda quem a pessoa vira. Prova e experiência acima da promessa. |

**Consciência e sofisticação são eixos independentes.** Um mercado pode conhecer seu produto
(consciência 4) e ainda assim ser imune a qualquer promessa (sofisticação 5).

Como ler pelo briefing: o **Bloco 8** é a evidência. Se o expert lista 5 concorrentes prometendo o
mesmo com mecanismos nomeados, você está em 4. Se o público "já ouviu isso mil vezes e não
acredita mais", você está em 5.

---

## A tabela que governa o resto da VSL

| Consciência × Sofisticação | O que a VSL precisa |
|---|---|
| 2 × 3 | Lead nomeia a dor · mecanismo do problema é o coração · mecanismo da solução novo e nomeado |
| 2 × 4-5 | Lead nomeia a dor **por um ângulo que ninguém usou** · mecanismo elaborado + prova pesada cedo |
| 3 × 3 | Lead promete resultado + insinua caminho diferente · mecanismo do problema curto, solução longa |
| 3 × 4 | Lead contraintuitiva (contradiz o mecanismo esperado) · mecanismo com limitação removida |
| 3-4 × 5 | Lead de identificação/história · prova social e demonstração substituem a promessa |
| 4-5 × qualquer | VSL curta ou nem VSL — vá de página de oferta |

---

## Output da Fase 2 — `01-diagnostico.md`

```markdown
# Diagnóstico de mercado

## Desejo de massa dominante
**<desejo em uma frase>**
- Urgência: <alta/média/baixa> — porque <evidência do briefing>
- Permanência: … | Alcance: …
- Descartados: <outros desejos candidatos e por que perderam>

## Nível de consciência: <1-5>
**Evidência:** <citação literal do briefing/call que sustenta>
**Implicação para a lead:** …

## Estágio de sofisticação: <1-5>
**Evidência:** <o que o mercado já promete, segundo o Bloco 8>
**Implicação para o mecanismo:** <novo / elaborado / identificação>

## O que isso proíbe
- <ex: promessa direta de resultado está morta neste mercado>
- <ex: a palavra "personalizado" já é mecanismo gasto aqui>
```

**Regra de honestidade:** se você não consegue citar uma evidência do briefing para o nível que
atribuiu, o diagnóstico é chute. Diga isso em voz alta em vez de fabricar confiança.

---

## 🚦 GATE 1

Apresente o diagnóstico ao humano com as evidências e pergunte explicitamente:

> "Confirma consciência **N** e sofisticação **M**? Se você acha que o mercado está em outro
> ponto, me diga — isso muda o mecanismo inteiro."

Só depois de confirmado, grave no `manifest.json`:

```json
{ "gate1_confirmado_em": "AAAA-MM-DD", "consciencia": 3, "sofisticacao": 4 }
```
