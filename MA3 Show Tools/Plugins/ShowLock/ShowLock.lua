-- Persistent Lock Screen MA3
-- Autor: VitinhoLight
-- Data: 02/05/2026
-- Descrição:
-- Plugin de bloqueio persistente para grandMA3.
-- Solicita senha ao usuário e, caso a senha esteja incorreta,
-- carrega automaticamente um show vazio chamado "ShowLocked".
-- Se o show não existir, ele é criado automaticamente.

local PASSWORD = "1234"
local LOCK_SHOW = "ShowLocked"

return function()

    while true do

        coroutine.yield(0.1)

        local senha = TextInput("SHOW LOCKED - Digite a senha", "")

        if senha then

            if tostring(senha) == PASSWORD then

                Echo("DESBLOQUEADO")
                return

            else

                ErrPrintf("Senha incorreta")

                -- tenta carregar o show
                local result = CmdIndirectWait('LoadShow "' .. LOCK_SHOW .. '" /nc')

                -- se não existir, cria um show novo e salva
                if result ~= "OK" then

                    Echo("ShowLocked nao encontrado. Criando show vazio...")

                    Cmd('NewShow /nc')
                    coroutine.yield(1)

                    Cmd('SaveShow "' .. LOCK_SHOW .. '" /nc')
                    coroutine.yield(1)

                    Cmd('LoadShow "' .. LOCK_SHOW .. '" /nc')
                end

                return
            end
        end
    end
end