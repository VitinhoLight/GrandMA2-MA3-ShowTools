# MA2 Patch & Invert Tools

Pacote de macros utilitárias para grandMA2 criado para simplificar processos de patch, alinhamento de fixtures e correção de inversões de Pan/Tilt durante programação e montagem de rigs.

![MA2 Patch & Invert Tools](Screenshots/MA2-Patch-And-Invert-Tools.Png)

## Macros Inclusas

- Patch Selection
- ResetDMX+EncInvert
- PanDMX Invert
- TiltDMX Invert
- PanEnc Invert
- TiltEnc Invert

# Compatibilidade

- grandMA2 onPC
- grandMA2 Console
- Desenvolvido na versão 3.9.61.5

## Patch Selection

Realiza o patch dos fixtures selecionados diretamente através do layout.

A macro permite definir rapidamente:
- Universo DMX
- Endereço DMX

dos fixtures selecionados diretamente pelo layout.

### Como usar

1. Selecione os fixtures desejados no layout
2. Execute a macro
3. Informe:
   - Universo
   - Endereço inicial
4. A grandMA2 realizará o patch automaticamente nos aparelhos selecionados

## PanDMX Invert

Ativa o parâmetro **Pan DMX Invert** nos fixtures selecionados no layout.

Usado para corrigir aparelhos montados invertidos fisicamente ou rigs espelhados.

---

## TiltDMX Invert

Ativa o parâmetro **Tilt DMX Invert** nos fixtures selecionados no layout.

Permite corrigir rapidamente o comportamento de Tilt dos aparelhos selecionados.

---

## PanEnc Invert

Ativa o parâmetro **Pan Encoder Invert** nos fixtures selecionados.

Altera apenas o comportamento do encoder da console, sem modificar o sinal DMX do fixture.

---

## TiltEnc Invert

Ativa o parâmetro **Tilt Encoder Invert** nos fixtures selecionados.

Altera apenas o comportamento do encoder da console.

---

## ResetDMX+EncInvert

Reseta todos os parâmetros de:
- Pan DMX Invert
- Tilt DMX Invert
- Pan Encoder Invert
- Tilt Encoder Invert

A macro ResetDMX+EncInvert atua em todos os aparelhos do show, independentemente da seleção atual.

# Agradecimentos

Gostaria de agradecer à comunidade e à equipe da MA Lighting pelas informações e discussões técnicas compartilhadas no fórum oficial da MA Lighting, que contribuíram para o desenvolvimento destas macros.

## Referência:
- pan tilt invert macro for selected fixture
  https://forum.malighting.com/forum/thread/64726-pan-tilt-invert-macro-for-selected-fixture/
- Macro PAN & TILT Attributes Inverted
  https://forum.malighting.com/forum/thread/65776-macro-pan-tilt-attributes-inverted/?postID=76416&highlight=pan%2Btilt%2Binvert#post76416