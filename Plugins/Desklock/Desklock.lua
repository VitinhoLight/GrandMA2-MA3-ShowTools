return function()

    local cmd = gma.cmd
    local text = gma.textinput
    local feedback = gma.feedback

    -------- Pergunta número da image pool --------------
    
    local img_index_str = text("Image Pool", "14")
    local img_index = tonumber(img_index_str)

    if not img_index then
        feedback("Número inválido")
        return
    end

    cmd('SelectDrive 1')

    --------- Cria a imagem -------------------
    
    local base64 = [[
    ---- cole sua imagem aqui ----
    ]]

    --------- Cria XML ------------------------
    
    local xml = [[<?xml version="1.0" encoding="utf-8"?>
    <MA xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns="http://schemas.malighting.de/grandma2/xml/MA">
    <UserImage index="]] .. img_index .. [[" name="desklock.png" hasTransparency="false">
        <Image>
]] .. base64 .. [[
        </Image>
    </UserImage>
</MA>]]

    -------- Caminho temporário -------------
    local path = gma.show.getvar("PATH") .. "/importexport/temp_img.xml"

    -------- Escreve arquivo ---------------
    
    local file = io.open(path, "w")
    file:write(xml)
    file:close()

    -------- Importa imagem ----------------
    cmd('Import "temp_img" at Image ' .. img_index .. ' /nc')

    -------- Dá label ----------------------
    cmd('Label Image ' .. img_index .. ' "DeskLock"')

    -- Remove arquivo temporário ----------
    
    os.remove(path)

end