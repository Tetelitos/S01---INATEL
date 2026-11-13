pesoMaximo :: Double
pesoMaximo = 5.0

data Encomenda = Encomenda
  { destinatario :: String
  , peso :: Double
  , frete :: Double
  }
descrever :: Encomenda -> String
descrever e =
  destinatario e ++ " - " ++ show (peso e) ++ " kg - R$ " ++ show (frete e)

cabemNaVassoura :: [Encomenda] -> [Encomenda]
cabemNaVassoura encomendas =
  filter (\e -> peso e <= pesoMaximo) encomendas

totalDeFretes :: [Encomenda] -> Double
totalDeFretes encomendas =
  sum (map frete encomendas)

main :: IO ()
main = do
  let e1 = Encomenda "Osono" 2.0 15.0
  let e2 = Encomenda "Ursula" 6.0 25.0
  let e3 = Encomenda "Tombo" 3.5 20.0
  let e4 = Encomenda "Madame" 8.0 30.0

  let encomendas = [e1, e2, e3, e4]
  let possiveis = cabemNaVassoura encomendas

  putStrLn "Todas as encomendas:"
  mapM_ putStrLn (map descrever encomendas)

  putStrLn "Encomendas que cabem:"
  mapM_ putStrLn (map descrever possiveis)

  putStrLn "Total de fretes:"
  print (totalDeFretes possiveis)
