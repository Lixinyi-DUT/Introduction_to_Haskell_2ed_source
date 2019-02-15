romeNotation :: [String]
romeNotation= ["M","CM","D","CD","C","XC","L","XL","X","IX","V","IV","I"]

romeAmount :: [Int]
romeAmount = [1000,900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]

pair :: [(Int, String)]
pair = zip romeAmount romeNotation

subtrahend  :: String -> (Int, String)
subtrahend (x1:x2:xs) = head (x1x2match++x1match)
 where (_, x1x2match)=break (\(_,a) -> a==x1:[x2]) pair
       (_,x1match)=break (\(_,a) -> a==[x1]) pair

subtrahend (x1:xs)= head xmatch
                      where
                        (_,xmatch)=break (\(_,a) -> a==[x1]) pair

convert :: String -> Int

convert "" = 0
convert s = rome + convert res
             where (rome,m) = subtrahend s
                   res = drop (length m) s
