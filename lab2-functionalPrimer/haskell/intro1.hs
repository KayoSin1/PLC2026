module Intro1 where

-- define named constants:
r1 = 1
r2 = b^2 + 1/b where b = 2
--r1 = 3 throws an error because values in functional programming are immutable. They cannot 
--be declared again.
-- define a function:
diff a b = abs (a - b)
--this function returns the absolute of a-b


r3 = diff (diff a a) a  where a = 5 --here  is an example of a recursive function
--it shows one of the main functionalities of haskell, being able to pass functions as values
--and not having to use while or for loops.
r4 = diff (diff a b) b  where a = 1; b = 1

-- lists by enumeration
r5 = [1,3,4,1]
r6 = [1..5]

inc n = n + 1

--functional programming languages have no side effects. IE the output is always determined solely on 
--the inputs, and you can't manipulate. E.g.
--in OOP calling meow() may have different outputs depending on the cat we use. in FP, meow will
--make the same sound
r7 = map inc [1..3]
--if we tried to do r7 = map inc [n..3], we get a variable scope error. This is because
--you can't just manipulate our output by plugging in variables. 
r8 = map (diff 2) [1..3]
--if you need the results of a function, you must directly use the function in another function, like above
--you can't use a return statement, store the data in a variable and then use that variable.
r9 = map sqrt [1..3]

--map lets you apply a list of elements to a function
--in this instance we first do the sqrt of numbers 1 to 3
--we then zip that result with a set of numbers 1 to 3
r10 = zip [1..3] (map sqrt [1..3])
r11 = zip [1..3] (map sqrt [1..2])

r12 = print [1..3]

main :: IO ()
main = pure ()