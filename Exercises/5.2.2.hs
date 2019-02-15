drop' :: Int -> [a] -> [a]

drop' _ []     = []
drop' 0 lst    = lst
drop' n (x:xs) = drop' (n-1) xs
