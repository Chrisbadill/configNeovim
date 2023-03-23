require 'nvim-treesitter.configs'.setup {
    -- Una lista de nombres de analizadores, o todos con "all"
    ensure_installed = { "c", "cpp", "javascript", "python", "json", "lua"},

    -- Instalar analizadores sincrónicamente (solo se aplica a `ensure_installed`)
    sync_install = false,

    -- Instala automáticamente los analizadores faltantes al ingresar al búfer
    -- Recomendación: establezca en falso si no tiene la CLI `tree-sitter` instalada localmente
    auto_install = true,

    highlight = {
        -- `false` deshabilitará toda la extensión
        enable = true,
        -- Establecer esto en true ejecutará `:h syntax` y tree-sitter al mismo tiempo.
        -- Establézcalo en `true` si depende de que la 'sintaxis' esté habilitada (como para la identacion).
        -- El uso de esta opción puede ralentizar el editor y es posible que vea algunos aspectos destacados duplicados.
        -- En lugar de cierto, también puede ser una lista de idiomas

        additional_vim_regex_highlighting = false,
    },
}
