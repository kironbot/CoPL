|- let s = fun f -> fun g -> fun x -> f x (g x) in
   let k1 = fun x -> fun y -> x in
   let k2 = fun x -> fun y -> x in
   s k1 k2 : int -> int
by T-Let {
    |- fun f -> fun g -> fun x -> f x (g x) : (int -> (int -> int) -> int) -> (int -> (int -> int) -> int) -> int -> int by T-Fun {
        f : (int -> (int -> int) -> int)
    };
    s : (int -> (int -> int) -> int) -> (int -> (int -> int) -> int) -> int -> int |- let k1 = fun x -> fun y -> x in let k2 = fun x -> fun y -> x in s k1 k2 : int -> int by T-Let {};
}