data Cafe = Cafe String Double Int

descrever :: Cafe -> String
descrever (Cafe nome preco _) =
  nome ++ " - R$ " ++ show preco

forca :: Cafe -> String
forca (Cafe _ _ intensidade)
  | intensidade >= 8 = "Forte"
  | intensidade >= 5 = "Equilibrado"
  | otherwise = "Suave"

precoDoPedido :: Bool -> Cafe -> Double
precoDoPedido a (Cafe _ preco _) =
  if a
    then preco + 2.0
    else preco

main :: IO ()
main = do
  let c1 = Cafe "Cafe Leblanc" 12.0 9
  let c2 = Cafe "Cafe Especial" 10.0 6
  let c3 = Cafe "Cafe Suave" 8.0 3

  putStrLn (descrever c1)
  putStrLn (forca c1)

  putStrLn (descrever c2)
  putStrLn (forca c2)

  putStrLn (descrever c3)
  putStrLn (forca c3)

  print (precoDoPedido True c1)
  print (precoDoPedido False c1)
