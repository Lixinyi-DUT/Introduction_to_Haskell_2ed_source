convert:: Int -> String

convert 0="0"
convert 1="1"
convert n= convert q ++ show r
            where r= mod n 2
                  q= div n 2
