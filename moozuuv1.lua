-- moozu loader
-- coloque este arquivo no github (nao contem nada util pra quem copiar)
-- o script real fica no pastebin unlisted abaixo

local RAW_URL = "https://pastebin.com/raw/7sPFfUeu"

local function load()
    local ok, err = pcall(function()
        local src = game:HttpGet(RAW_URL, true)
        assert(type(src) == "string" and #src > 100, "resposta invalida")
        loadstring(src)()
    end)
    if not ok then
        -- nao revela a URL no erro
        warn("[moozu] falha ao inicializar. verifique sua conexao.")
    end
end

load()
