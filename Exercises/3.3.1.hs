nand, nor, xor :: Bool -> Bool -> Bool
nand True True = False
nand _ _       = True

nor False False = True
nor _ _         = False

-- https://en.wikipedia.org/wiki/NOR_logic#XOR
xor b1 b2 = nor (nor anora bnorb) anorb
 where anora=nor b1 b1
       bnorb=nor b2 b2
       anorb=nor b1 b2

-- https://en.wikipedia.org/wiki/NAND_logic#XNOR
xnor b1 b2 = nand (nand ananda bnandb) anandb
 where ananda=nand b1 b1
       bnandb=nand b2 b2
       anandb=nand b1 b2
