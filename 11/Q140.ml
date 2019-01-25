// definition
def $v  = (l = (1 :: 2 :: -3 :: 4 :: []), k = [_])[rec aux = fun l -> match l with [] -> false | x :: l -> if x < 0 then k true else aux l] ;
def $v0 = ()[fun l -> letcc k in let rec aux = fun l -> match l with [] -> false | x :: l -> if x < 0 then k true else aux l in aux l] ;
def $v1 = 1 :: 2 :: -3 :: 4 :: [];
def $v2 = 2 :: -3 :: 4 :: [];
def $v3 = -3 :: 4 :: [];
def $v4 = 4 :: [];

def $env0 = findneg = $v0 ;
def $env1 = l = $v1, k = [_], aux = $v ;


// derivation
|- let findneg = fun l -> letcc k in let rec aux = fun l -> match l with [] -> false | x :: l -> if x < 0 then k true else aux l in aux l in findneg (1 :: 2 :: -3 :: 4 :: []) evalto true