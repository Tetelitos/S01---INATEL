data Esboco = Esboco
  { titulo :: String
  , tecnica :: String
  , horas :: Int
  }
esbocoMaisRecente :: [Esboco] -> String
esbocoMaisRecente [] = "Caderno vazio"
esbocoMaisRecente (e:_) =
  titulo e ++ " - " ++ tecnica e

contarEsbocos :: [Esboco] -> Int
contarEsbocos [] = 0
contarEsbocos (_:xs) = 1 + contarEsbocos xs

horasDesenhando :: [Esboco] -> Int
horasDesenhando [] = 0
horasDesenhando (e:xs) = horas e + horasDesenhando xs

main :: IO ()
main = do
  let e1 = Esboco "Dragao" "Grafite" 4
  let e2 = Esboco "Castelo" "Nanquim" 3
  let e3 = Esboco "Floresta" "Carvao" 2
  let e4 = Esboco "Cavaleiro" "Grafite" 5

  let caderno = [e1, e2, e3]

  putStrLn (esbocoMaisRecente caderno)
  print (contarEsbocos caderno)
  print (horasDesenhando caderno)
  putStrLn (esbocoMaisRecente [])

  let novoCaderno = e4 : caderno

  putStrLn (esbocoMaisRecente caderno)
  print (contarEsbocos caderno)
  putStrLn (esbocoMaisRecente novoCaderno)
  print (contarEsbocos novoCaderno)
