# Fase 5 — Montagem, QA e plano de teste

---

## Montagem: da ordem de escrita para a ordem de apresentação

Você escreveu oferta → solução → problema → história → leads. Agora remonte na ordem que o
espectador vê:

```
[GUARDRAIL — LEI]  (cabeçalho interno, não vai pro vídeo)

LEAD (default: <qual e por quê>)          ~2 min      (~300 palavras)
MECANISMO DO PROBLEMA                     ~3-4 min    (~500 palavras)
HISTÓRIA                                  ~3 min      (~430 palavras)
MECANISMO DA SOLUÇÃO                      ~4-5 min    (~650 palavras)
OFERTA / PITCH                            ~4-6 min    ← entra na virada dos 12-14
```

Confira a soma: fala natural roda a ~140-150 palavras/minuto, então a janela de 12-14 min pede
**1.750 a 2.000 palavras** nos quatro primeiros blocos. Abaixo disso o pitch cai cedo demais — e o
problema é bloco raso, não pitch adiantado.

Duração-alvo: **16 a 20 minutos** — os quatro blocos acima somam 12-14 e o pitch leva mais 4-6.
Depois do botão aparecer, tudo é lucro. (Definição canônica em `SKILL.md`.)

Na costura, verifique as **transições**: cada bloco tem que terminar puxando o próximo. Corte
qualquer recapitulação ("como eu falei lá no começo") — em vídeo isso é permissão pra sair.

### Marcações no roteiro (use as que se aplicam)

| Marcação | Onde |
|---|---|
| `[DEPOIMENTO]` | onde entra prova social (nunca escreva o depoimento) |
| `[BOTÃO APARECE AQUI]` | no passo 8 do pitch, quando o preço é revelado (uma vez só) |
| `[CRONÔMETRO 60s]` | no bônus de urgência, **se ele existir** |
| `[A DEFINIR]` / `[NÚMERO A CONFIRMAR]` | qualquer dado que o briefing não trouxe |
| `[B-ROLL: …]` | sugestão de imagem/tela, se o expert for usar |

### Cabeçalho do arquivo

```markdown
# VSL — <produto> (DRAFT v1)

> **Duração alvo:** 16-20 min (os 4 blocos somam 12-14; o pitch entra nessa virada).
> **Lead default:** <qual> — testar as 5 de `03-leads/`.
> **Mecanismos aprovados (GATE 2, <data>):** problema = <P_> · solução = <S_>
> **Diagnóstico:** consciência N / sofisticação M
> **GUARDRAIL (LEI):** <as proibições do Bloco 9 do briefing>
> **Voz:** <resumo do Bloco 10>
> **Fontes:** `00-briefing.md` (com timestamps)
```

---

## Checklist de QA — feche todos antes de entregar

**Estrutura**
- [ ] Oferta escrita primeiro, com os 15 passos percorridos (os que não se aplicam ao produto,
      registrados como ausentes em vez de inventados)
- [ ] Mecanismo da solução traz o *quê* + *por quê*, e **não** entrega o *como*
- [ ] Mecanismo do problema segue a fórmula (tentativas + por que falharam = causa raiz)
- [ ] Bloco de problema termina com "existe uma saída"
- [ ] História no formato certo (persona transformada ou expert externo)
- [ ] Sem jornada do herói / "dia do basta"
- [ ] 5+ leads, ângulos diferentes, cada uma com teaser
- [ ] Pitch começa na virada dos 12-14 min; VSL total entre 16 e 20

**Oferta**
- [ ] Tríade comunicada (conhecimento / recomendação / acompanhamento) — camada que não existe é
      sinalizada ao humano como fraqueza de oferta, nunca inventada
- [ ] Módulos descritos por benefício, não por nome
- [ ] Ancoragem antes do preço
- [ ] Bônus com cronômetro de 60s — **ou** registrado que não existe e por quê
- [ ] Cada bônus com sua história de origem
- [ ] Empilhamento express com valores
- [ ] Garantia clara
- [ ] Presente surpresa mencionado — **ou** registrado que não existe
- [ ] Fecho emocional + CTA único

**Integridade**
- [ ] Zero depoimento, número, estudo ou caso inventado
- [ ] Todo dado tem fonte rastreável no briefing
- [ ] Nomes de terceiros só com autorização registrada
- [ ] GUARDRAIL de compliance respeitado linha a linha
- [ ] Nenhuma promessa que a oferta não entrega

**Voz e forma**
- [ ] Linguagem falada, lida em voz alta sem tropeço
- [ ] Vocabulário do público, não da profissão
- [ ] Sem palavras de IA (fundamental, jornada, desbloquear, transformador…)
- [ ] Segunda pessoa, direta — salvo onde o GUARDRAIL de compliance exigir terceira

**Página e player**
- [ ] Sem headline em cima do vídeo
- [ ] Sem formulário antes da VSL
- [ ] Sem botão/cupom de desconto
- [ ] Delay do botão configurado para depois do preço

---

## Métricas-alvo (calibração interna, VSL de front-end)

> Faixas de referência **sem fonte pública auditável** — servem pra você decidir o que otimizar
> primeiro. Nunca entram na VSL, num anúncio, nem numa conversa com o cliente como fato de
> mercado. A regra de não inventar número vale contra este repositório também.

| Métrica | Alvo | Se estiver abaixo |
|---|---|---|
| Play rate | 50-60% | Problema é a página ou a fonte de tráfego, não a copy |
| Retenção no 1º minuto | 60-70% | **A lead está fraca.** Troque a lead antes de qualquer coisa |
| Retenção até o pitch | 85-95% **dos que ainda estavam no min 1** | Um bloco do meio está perdendo gente — ache a queda no gráfico |
| Conversão do front | 3,8-4% típico · 8% excepcional | Oferta, preço ou promessa desalinhada |

**Atenção ao denominador:** play rate e retenção do 1º minuto são sobre o total de visitas; a
retenção até o pitch é sobre quem sobreviveu ao 1º minuto. Comparar as duas na mesma base leva a
conclusão errada sobre qual bloco está sangrando.

Interprete sempre **na ordem**: play rate → retenção 1º min → retenção até o pitch → conversão.
Otimizar a oferta enquanto a lead sangra é desperdício.

---

## Plano de teste

- Rode **controle + challengers simultâneos**: o controle é a melhor VSL atual; os challengers são
  as variações em teste na rodada.
- A maioria das variações testadas deve ser **na lead** — é o maior ponto de alavanca.
- Distribuição típica: **90% controle / 10% dividido entre as leads em teste** — o que dá 2 ou 3
  challengers por rodada (3-5% cada). Não jogue as 5 leads na mesma rodada: cada uma ficaria com
  volume insuficiente pra decidir qualquer coisa.
- **Mínimo de 500-1.000 visualizações únicas por variante** antes de declarar vencedor. Abaixo
  disso é ruído — diferença de 10% em 100 views não significa nada.
- Challenger que vence vira o novo controle. Recomeça o ciclo.

Registre em `04-qa.md`: o que está sendo testado, contra o quê, qual métrica decide e qual o
volume mínimo. Teste sem critério de decisão definido antes vira discussão de opinião depois.
