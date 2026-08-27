n = tonumber(io.read())

tabela = {}

for i = 1, n do
    tabela[i] = tonumber(io.read())
end

x = tonumber(io.read())

function contarOcorrencias(tabela, x)

    a = 0

    for i = 1, n do

        if tabela[i] == x then
            a = a + 1
        end

    end

    return a
end

print(contarOcorrencias(tabela, x))
