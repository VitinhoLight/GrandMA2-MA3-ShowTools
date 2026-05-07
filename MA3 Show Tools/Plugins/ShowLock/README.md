# ShowLock

Plugin de bloqueio persistente para grandMA3.

## Descrição

O ShowLock foi desenvolvido para aumentar a segurança de showfiles na grandMA3, criando uma tela de bloqueio protegida por senha.

Quando o plugin é executado, uma janela solicita a senha de acesso ao showfile. Enquanto a senha correta não for digitada, o sistema permanece bloqueado.

Caso a senha esteja incorreta, o plugin pode automaticamente carregar um show vazio chamado `ShowLocked`, impedindo acesso ao showfile original.

Se o show `ShowLocked` não existir, o plugin cria automaticamente um novo show vazio e salva com esse nome.

## Configuração Inicial

No início do plugin existem duas variáveis principais:

```lua
local PASSWORD = "1234"
local LOCK_SHOW = "ShowLocked"
```

### PASSWORD

Define a senha utilizada para desbloquear o showfile.

A senha padrão do plugin é:

```text
1234
```

Recomenda-se alterar essa senha antes da utilização.

### LOCK_SHOW

Define o nome do show vazio que será carregado caso a senha seja digitada incorretamente.

Por padrão:

```text
ShowLocked
```

Esse show é criado automaticamente pelo plugin caso não exista.

## Recursos

* Sistema de bloqueio por senha
* Lock screen persistente
* Carregamento automático de show seguro
* Criação automática do show `ShowLocked`
* Compatível com grandMA3
* Estrutura simples e leve em Lua

## Funcionamento

1. O plugin inicia uma tela de bloqueio.
2. O usuário deve inserir a senha correta.
3. Se a senha estiver correta:

   * o plugin libera o acesso ao show.
4. Se a senha estiver incorreta:

   * o show atual é fechado;
   * o plugin carrega o show `ShowLocked`;
   * caso o show não exista, ele é criado automaticamente.

## Inicialização Automática no Startup do Show

A grandMA3 não possui um sistema nativo de auto start de plugins ao abrir um showfile.

Para contornar isso, o ShowLock utiliza um sistema baseado em Sequence + DMX Remote.

## Como Configurar

### 1. Criar Fixture de Trigger

Crie um fixture simples de dimmer no patch.

Esse fixture será utilizado apenas como gatilho do sistema.

---

### 2. Criar o DMX Remote

Acesse:

```text
Setup → In & Out → DMX Remotes
```

Crie um novo Remote utilizando o fixture de dimmer criado anteriormente.

Esse Remote deverá disparar uma macro responsável por executar o plugin.

---

### 3. Criar a Macro

Crie uma macro contendo o comando:

```text
Plugin "ShowLock"
```

---

### 4. Criar a Sequence de Inicialização

Crie uma Sequence com 2 cues:

#### Cue 1

* Não grave nenhum valor.
* Configure apenas:

  * Trigger: Time
  * Time: 60 segundos

#### Cue 2

* Configure:

  * Trigger: Follow
* Grave o fixture de dimmer em Full.

Quando o Cue 2 for executado:

* o fixture será ativado;
* o DMX Remote será acionado;
* a macro será executada;
* o plugin ShowLock será iniciado automaticamente.

---

### 5. Ativar o Sistema

Após criar a Sequence:

1. Execute a Sequence.
2. Salve o showfile.
3. Feche o showfile.

Ao abrir o show novamente:

* a grandMA3 ignora o tempo restante do Cue 1;
* a Sequence avança diretamente para o Cue 2;
* o fixture dispara o Remote;
* o Remote executa a macro;
* o plugin inicia automaticamente.

## Compatibilidade

Plugin desenvolvido e testado para:

* grandMA3 v2.3.2.0

## Objetivo

O objetivo do ShowLock é dificultar acesso não autorizado a showfiles, plugins e programações desenvolvidas na plataforma grandMA3.

## Autor

Vitor Augusto

## Status

🚧 Projeto em desenvolvimento 🚧
