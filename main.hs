main :: IO ()
main = do
    putStrLn "Enter coefficients a, b, and c. Add a :"
    input1 <- getLine
    putStrLn "Add b:"
    input2 <- getLine
    putStrLn "Add c:"
    input3 <- getLine

    let a = read input1 :: Double
        b = read input2 :: Double
        c = read input3 :: Double
        
    let discriminant = b^2 - 4*a*c
    if discriminant > 0 then
        let root1 = (-b + sqrt discriminant) / (2*a)
            root2 = (-b - sqrt discriminant) / (2*a)
        in putStrLn $ "Roots are real and different: " ++ show root1 ++ " and " ++ show root2
    else if discriminant == 0 then
        let root = -b / (2*a)
        in putStrLn $ "Roots are real and the same: " ++ show root
    else
        putStrLn "Roots are complex and different."

