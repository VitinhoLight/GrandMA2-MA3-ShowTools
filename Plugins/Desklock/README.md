# Desklock

Plugin para grandMA2 que permite criar uma imagem diretamente na pool de imagens a partir de uma string em base64, sem necessidade de arquivos externos.

---

## Descrição

O Desklock incorpora uma imagem no próprio código do plugin em formato base64 e recria essa imagem automaticamente dentro da grandMA2.

O processo é feito gerando um arquivo XML temporário que é importado pela console.

---

## Funcionamento

Ao executar o plugin:

1. O usuário informa o número da pool de imagens
2. O plugin utiliza uma string base64 definida no código
3. Um arquivo XML temporário é gerado no diretório `/importexport`
4. A grandMA2 importa esse XML como uma imagem
5. A imagem é criada na pool selecionada
6. A imagem recebe o nome **DeskLock**
7. O arquivo temporário é removido automaticamente

---

## Como preparar a imagem (Base64)

Para utilizar o plugin com uma imagem personalizada:

1. Escolha a imagem desejada
2. Converta a imagem para base64 (utilizando ferramentas externas)
3. Copie toda a string gerada
4. No arquivo `Desklock.lua`, localize o bloco:

```lua
local base64 = [[
---- cole sua imagem aqui ----
]]
```

5. Substitua o conteúdo pelo base64 da sua imagem

---

## Como usar

1. Importe o plugin para a grandMA2
2. Execute o plugin
3. Informe o número da pool de imagens
4. A imagem será criada automaticamente na posição escolhida

---

## Estrutura do plugin

* `Desklock.lua` → Código do plugin + imagem em base64
* `Desklock.xml` → Metadados para importação na grandMA2

---

## Considerações técnicas

* O plugin não reduz o tamanho da imagem — base64 aumenta o tamanho do conteúdo
* O objetivo é portabilidade e independência de arquivos externos
* Um arquivo XML temporário é criado durante a execução e removido ao final
* O caminho utilizado é baseado na variável interna `PATH` da grandMA2

---

## Quando usar

Este método é recomendado quando:

* Não há acesso a pendrive ou arquivos externos
* É necessário um sistema totalmente portátil
* A imagem é essencial para o funcionamento do setup
* Deseja-se evitar erros de importação manual

---

## Quando não usar

Evite este método quando:

* Há muitas imagens envolvidas
* As imagens são grandes
* O fluxo de trabalho permite importação manual
* O foco é simplicidade de manutenção

---

## Objetivo técnico

Transformar uma imagem externa em um recurso embutido no plugin, permitindo:

* Distribuição simplificada
* Setup rápido em qualquer console
* Redução de dependências externas
* Maior consistência entre shows

---

## Uso futuro

Este conceito pode ser reutilizado para:

* Color pickers
* Interfaces customizadas
* Sistemas portáteis de show
* Plugins com assets embutidos

---

## Status

Versão inicial em uso prático.
