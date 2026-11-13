data Etapa = NaFila | NoBanho | Concluido
  deriving (Show, Eq)

data Atendimento = Atendimento
  { cliente :: String
  , servico :: String
  , valor :: Double
  , etapa :: Etapa
  }

descrever :: Atendimento -> String
descrever a =
  cliente a ++ " - " ++ servico a ++ " - " ++ show (etapa a)

concluir :: Atendimento -> Atendimento
concluir a = a { etapa = Concluido }

arrecadado :: [Atendimento] -> Double
arrecadado atendimentos =
  sum (map valor (filter (\a -> etapa a == Concluido) atendimentos))

main :: IO ()
main = do
  let a1 = Atendimento "Sem Rosto" "Banho Especial" 50.0 NaFila
  let a2 = Atendimento "Deus do Rio" "Banho Completo" 100.0 NoBanho
  let a3 = Atendimento "Haku" "Banho Simples" 30.0 NaFila

  let atendimentos = [a1, a2, a3]
  let novos = [concluir a1, concluir a2, a3]

  putStrLn "Atendimentos originais:"
  mapM_ putStrLn (map descrever atendimentos)
  print (arrecadado atendimentos)

  putStrLn "Novos atendimentos:"
  mapM_ putStrLn (map descrever novos)
  print (arrecadado novos)
