|- let compose = fun f -> fun g -> fun x -> f (g x) in
   let p = fun x -> if x then 3 else 4 in
   let q = fun x -> x < 4 in
   compose p q : int -> int
by T-Let {
    |- fun f -> fun g -> fun x -> f (g x) : (bool -> int) -> (int -> bool) -> (int -> int) by T-Fun {
        f : bool -> int |- fun g -> fun x -> f (g x) : (int -> bool) -> (int -> int) by T-Fun {
            f : bool -> int, g : int -> bool |- fun x -> f (g x) : int -> int by T-Fun {
                f : bool -> int, g : int -> bool, x : int |- f (g x) : int by T-App {
                    f : bool -> int, g : int -> bool, x : int |- f : bool -> int by T-Var {};
                    f : bool -> int, g : int -> bool, x : int |- g x : bool by T-App {
                        f : bool -> int, g : int -> bool, x : int |- g : int -> bool by T-Var {};
                        f : bool -> int, g : int -> bool, x : int |- x : int by T-Var {};
                    };
                };
            };
        };
    };
    compose : (bool -> int) -> (int -> bool) -> (int -> int) |- let p = fun x -> if x then 3 else 4 in let q = fun x -> x < 4 in compose p q : int -> int by T-Let {
        compose : (bool -> int) -> (int -> bool) -> (int -> int) |- fun x -> if x then 3 else 4 : bool -> int by T-Fun {
            compose : (bool -> int) -> (int -> bool) -> (int -> int), x : bool |- if x then 3 else 4 : int by T-If {
                compose : (bool -> int) -> (int -> bool) -> (int -> int), x : bool |- x : bool by T-Var {};
                compose : (bool -> int) -> (int -> bool) -> (int -> int), x : bool |- 3 : int by T-Int {};
                compose : (bool -> int) -> (int -> bool) -> (int -> int), x : bool |- 4 : int by T-Int {};
            };
        };
        compose : (bool -> int) -> (int -> bool) -> (int -> int), p : bool -> int |- let q = fun x -> x < 4 in compose p q : int -> int by T-Let {
            compose : (bool -> int) -> (int -> bool) -> (int -> int), p : bool -> int |- fun x -> x < 4 : int -> bool by T-Fun {
                compose : (bool -> int) -> (int -> bool) -> (int -> int), p : bool -> int, x : int |- x < 4 : bool by T-Lt {
                    compose : (bool -> int) -> (int -> bool) -> (int -> int), p : bool -> int, x : int |- x : int by T-Var {};
                    compose : (bool -> int) -> (int -> bool) -> (int -> int), p : bool -> int, x : int |- 4 : int by T-Int {};
                };
            };
            compose : (bool -> int) -> (int -> bool) -> (int -> int), p : bool -> int, q : int -> bool |- compose p q : int -> int by T-App {
                compose : (bool -> int) -> (int -> bool) -> (int -> int), p : bool -> int, q : int -> bool |- compose p : (int -> bool) -> (int -> int) by T-App {
                    compose : (bool -> int) -> (int -> bool) -> (int -> int), p : bool -> int, q : int -> bool |- compose : (bool -> int) -> (int -> bool) -> (int -> int) by T-Var {};
                    compose : (bool -> int) -> (int -> bool) -> (int -> int), p : bool -> int, q : int -> bool |- p : bool -> int by T-Var {};
                };
                compose : (bool -> int) -> (int -> bool) -> (int -> int), p : bool -> int, q : int -> bool |- q : (int -> bool) by T-Var {};
            };
        };
    };
}