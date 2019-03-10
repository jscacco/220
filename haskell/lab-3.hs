chatbot [] = return ()
chatbot input = putStrLn $ "Why do ye think " ++ (unwords . parseInput . words) input

parseInput [] = []
parseInput(x:xs)
  | x == "my" = "yerr":parseInput xs
  | x == "me" = "ye":parseInput xs
  | x == "we" = "yarr":parseInput xs
  | x == "us" = "yarr":parseInput xs
  | x == "I" = "yarr":parseInput xs
  | x == "myself" = "yarrself":parseInput xs
  | x == "you" = "me":parseInput xs
  | x == "y'all" = "we":parseInput xs
  | x == "yourself" = "meself":parseInput xs
  | x == "your" = "me":parseInput xs
  | x == "you're" = "I be": parseInput xs
  | x == "am" = "be" : parseInput xs
  | x == "are" = "be" : parseInput xs
  | otherwise = x:parseInput xs

chat False = return ()
chat True = do
  input <- getLine
  chatbot input
  if input == [] 
  then chat False
  else chat True
  
main = do
  putStrLn "Welcome! How can I help you?"
  chat True
  