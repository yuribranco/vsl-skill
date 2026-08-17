# Fase 5 — Montagem, QA e plano de teste

---

## Montagem: da ordem de escrita para a ordem de apresentação

Você escreveu oferta → solução → problema → história → leads. Agora remonte na ordem que o
espectador vê:

```
[GUARDRAIL — LEI]  (cabeçalho interno, não vai pro vídeo)

LEAD (default: <qual e por quê>)          ~2 min
MECANISMO DO PROBLEMA                     ~2-3 min
HISTÓRIA                                  ~2-3 min
MECANISMO DA SOLUÇÃO                      ~3 min
OFERTA / PITCH                            ~4-6 min   ← começa ~min 14
```

Duração-alvo: **~15 minutos**, podendo esticar até 20. Depois do botão aparecer, tudo é lucro.

Na costura, verifique as **transições**: cada bloco tem que terminar puxando o próximo. Corte
qualquer recapitulação ("como eu falei lá no começo") — em vídeo isso é permissão pra sair.

### Marcações obrigatórias no roteiro

| Marcação | Onde |
|---|---|
| `[DEPOIMENTO]` | onde entra prova social (nunca escreva o depoimento) |
| `[BOTÃO APARECE AQUI]` | logo após a revelação do preço |
| `[CRONÔMETRO 60s]` | no bônus de urgência |
| `[A DEFINIR]` / `[NÚMERO A CONFIRMAR]` | qualquer dado que o briefing não trouxe |
| `[B-ROLL: …]` | sugestão de imagem/tela, se o expert for usar |

### Cabeçalho do arquivo

```markdown
# VSL — <produto> (DRAFT v1)

> **Duração alvo:** ~15 min (pitch entra ~14min).
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
- [ ] Oferta escrita primeiro, com os 15 passos
- [ ] Mecanismo da solução traz o *quê* + *por quê*, e **não** entrega o *como*
- [ ] Mecanismo do problema segue a fórmula (tentativas + por que falharam = causa raiz)
- [ ] Bloco de problema termina com "existe uma saída"
- [ ] História no formato certo (persona transformada ou expert externo)
- [ ] Sem jornada do herói / "dia do basta"
- [ ] 5+ leads, ângulos diferentes, cada uma com teaser
- [ ] Pitch começa por volta do minuto 14

**Oferta**
- [ ] Tríade comunicada (conhecimento / recomendação / acompanhamento)
- [ ] Módulos descritos por benefício, não por nome
- [ ] Ancoragem antes do preço
- [ ] Bônus com cronômetro de 60s
- [ ] Cada bônus com sua história de origem
- [ ] Empilhamento express com valores
- [ ] Garantia clara
- [ ] Presente surpresa mencionado
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
- [ ] Segunda pessoa, direta

**Página e player**
- [ ] Sem headline em cima do vídeo
- [ ] Sem formulário antes da VSL
- [ ] Sem botão/cupom de desconto
- [ ] Delay do botão configurado para depois do preço

---

## Métricas-alvo (referência de mercado, VSL de front-end)

| Métrica | Alvo | Se estiver abaixo |
|---|---|---|
| Play rate | 50-60% | Problema é a página ou a fonte de tráfego, não a copy |
| Retenção no 1º minuto | 60-70% | **A lead está fraca.** Troque a lead antes de qualquer coisa |
| Retenção até o pitch | 85-95% | Um bloco do meio está perdendo gente — ache a queda no gráfico |
| Conversão do front | 3,8-4% típico · 8% excepcional | Oferta, preço ou promessa desalinhada |

Interprete sempre **na ordem**: play rate → retenção 1º min → retenção até o pitch → conversão.
Otimizar a oferta enquanto a lead sangra é desperdício.

---

## Plano de teste

- Rode **duas VSLs simultâneas**: controle (a melhor atual) + challenger.
- A maioria das variações testadas deve ser **na lead** — é o maior ponto de alavanca.
- Distribuição típica: **90% controle / 10% dividido entre as leads em teste** (3-5% cada).
- **Mínimo de 500-1.000 visualizações únicas** antes de declarar vencedor. Abaixo disso é ruído.
- Challenger que vence vira o novo controle. Recomeça o ciclo.

Registre em `04-qa.md`: o que está sendo testado, contra o quê, qual métrica decide e qual o
volume mínimo. Teste sem critério de decisão definido antes vira discussão de opinião depois.
