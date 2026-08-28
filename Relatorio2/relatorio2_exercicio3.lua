n = tonumber(io.read())

tabela = {}

for i = 1, n do
    tabela[i] = tonumber(io.read())
end

k = tonumber(io.read())

function filtrarMaiores(tabela, k)

    novaTabela = {}

    for i = 1, n do

        if tabela[i] > k then
            table.insert(novaTabela, tabela[i])
        end

    end

    return novaTabela
end

resultado = filtrarMaiores(tabela, k)

for i = 1, #resultado do
    print(resultado[i])
end
