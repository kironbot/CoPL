|- let compose = fun f -> fun g -> fun x -> f (g x) in
   let p = fun x -> x * x in
   let q = fun x -> x + 4 in
   compose p q : int -> int
by T-Let {
    |- fun f -> fun g -> fun x -> f (g x) : (int -> int) -> (int -> int) -> (int -> int) by T-Fun {
        f : int -> int |- fun g -> fun x -> f (g x) : (int -> int) -> (int -> int) by T-Fun {
            f : int -> int, g : int -> int |- fun x -> f (g x) : (int -> int) by T-Fun {
                f : int -> int, g : int -> int, x : int |- f (g x) : int by T-App {
                    f : int -> int, g : int -> int, x : int |- f : int -> int by T-Var {};
                    f : int -> int, g : int -> int, x : int |- g x : int by T-App {
                        f : int -> int, g : int -> int, x : int |- g : int -> int by T-Var {};
                        f : int -> int, g : int -> int, x : int |- x : int by T-Var {};
                    };
                };
            };
        };
    };
    compose : (int -> int) -> (int -> int) -> (int -> int) |- let p = fun x -> x * x in let q = fun x -> x + 4 in compose p q : int -> int by T-Let {
        compose : (int -> int) -> (int -> int) -> (int -> int) |- fun x -> x * x  : int -> int by T-Fun {
            compose : (int -> int) -> (int -> int) -> (int -> int), x : int |- x * x : int by T-Times {
                compose : (int -> int) -> (int -> int) -> (int -> int), x : int |- x : int by T-Var {};
                compose : (int -> int) -> (int -> int) -> (int -> int), x : int |- x : int by T-Var {};
            };
        };
        compose : (int -> int) -> (int -> int) -> (int -> int), p : int -> int |- let q = fun x -> x + 4 in compose p q : int -> int by T-Let {
            compose : (int -> int) -> (int -> int) -> (int -> int), p : int -> int |- fun x -> x + 4 : int -> int by T-Fun {
                compose : (int -> int) -> (int -> int) -> (int -> int), p : int -> int, x : int |- x + 4 : int by T-Plus {
                    compose : (int -> int) -> (int -> int) -> (int -> int), p : int -> int, x : int |- x : int by T-Var {};
                    compose : (int -> int) -> (int -> int) -> (int -> int), p : int -> int, x : int |- 4 : int by T-Int {};
                };
            };
            compose : (int -> int) -> (int -> int) -> (int -> int), p : int -> int, q : int -> int |- compose p q : int -> int by T-App {
                compose : (int -> int) -> (int -> int) -> (int -> int), p : int -> int, q : int -> int |- compose p : (int -> int) -> (int -> int) by T-App {
                    compose : (int -> int) -> (int -> int) -> (int -> int), p : int -> int, q : int -> int |- compose : (int -> int) -> (int -> int) -> (int -> int) by T-Var {};
                    compose : (int -> int) -> (int -> int) -> (int -> int), p : int -> int, q : int -> int |- p : (int -> int) by T-Var {};
                };
                compose : (int -> int) -> (int -> int) -> (int -> int), p : int -> int, q : int -> int |- q : (int -> int) by T-Var {};
            };
        };
    };
}