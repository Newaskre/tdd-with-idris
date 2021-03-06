module Ex5 

data NPair : Type where
  MkNPair : Nat -> Nat -> NPair

Show NPair where
  show (MkNPair n m) = "(" ++ show n ++ "," ++ show m ++ ")"

sortAndShow : (Ord a, Show a) => List a -> String 
sortAndShow xs = show $ sort xs

[myShowNat] Show Nat where 
  show Z = "z"
  show (S k) = strCons 's' (show k)

f : Show a => a -> String 
f a = "Result: " ++ show a
