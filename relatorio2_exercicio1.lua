m = tonumber(io.read())
n = tonumber(io.read())
base = tonumber(io.read())

function gerarTabelaPotencias(m, n, base)

    for i = m, n do
        print(base .. " ^ " .. i .. " = " .. base^i)
    end

end

gerarTabelaPotencias(m, n, base)
