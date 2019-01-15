|- let compose = fun f -> fun g -> fun x -> f (g x) in
   let f = fun x -> if x then 3 else 4 in
   let g = fun x -> x < 4 in
   compose f (compose g f) true : int
by T-Let {
    |- fun f -> fun g -> fun x -> f (g x) : ('b -> 'c) -> ('a -> 'b) -> 'a -> 'c by T-Abs {
        f : 'b -> 'c |- fun g -> fun x -> f (g x) : ('a -> 'b) -> 'a -> 'c by T-Abs {
            f : 'b -> 'c, g : 'a -> 'b |- fun x -> f (g x) : 'a -> 'c by T-Abs {
                f : 'b -> 'c, g : 'a -> 'b, x : 'a |- f (g x) : 'c by T-App {
                    f : 'b -> 'c, g : 'a -> 'b, x : 'a |- f : 'b -> 'c by T-Var {};
                    f : 'b -> 'c, g : 'a -> 'b, x : 'a |- (g x) : 'b by T-App {
                        f : 'b -> 'c, g : 'a -> 'b, x : 'a |- g : 'a -> 'b by T-Var {};
                        f : 'b -> 'c, g : 'a -> 'b, x : 'a |- x : 'a by T-Var {};
                    };
                };
            };
        };
    };
    compose : 'a 'b 'c. ('b -> 'c) -> ('a -> 'b) -> 'a -> 'c |- let f = fun x -> if x then 3 else 4 in let g = fun x -> x < 4 in compose f (compose g f) true : int by T-Let {
        compose : 'a 'b 'c. ('b -> 'c) -> ('a -> 'b) -> 'a -> 'c |- fun x -> if x then 3 else 4 : bool -> int by T-Abs {
            compose : 'a 'b 'c. ('b -> 'c) -> ('a -> 'b) -> 'a -> 'c, x : bool |- if x then 3 else 4 : int by T-If {
                compose : 'a 'b 'c. ('b -> 'c) -> ('a -> 'b) -> 'a -> 'c, x : bool |- x : bool by T-Var {};
                compose : 'a 'b 'c. ('b -> 'c) -> ('a -> 'b) -> 'a -> 'c, x : bool |- 3 : int by T-Int {};
                compose : 'a 'b 'c. ('b -> 'c) -> ('a -> 'b) -> 'a -> 'c, x : bool |- 4 : int by T-Int {};
            };
        };
        compose : 'a 'b 'c. ('b -> 'c) -> ('a -> 'b) -> 'a -> 'c, f : bool -> int |- let g = fun x -> x < 4 in compose f (compose g f) true : int by T-Let {
            compose : 'a 'b 'c. ('b -> 'c) -> ('a -> 'b) -> 'a -> 'c, f : bool -> int |- fun x -> x < 4 : int -> bool by T-Abs {
                compose : 'a 'b 'c. ('b -> 'c) -> ('a -> 'b) -> 'a -> 'c, f : bool -> int, x : int |- x < 4 : bool by T-Lt {
                    compose : 'a 'b 'c. ('b -> 'c) -> ('a -> 'b) -> 'a -> 'c, f : bool -> int, x : int |- x : int by T-Var {};
                    compose : 'a 'b 'c. ('b -> 'c) -> ('a -> 'b) -> 'a -> 'c, f : bool -> int, x : int |- 4 : int by T-Int {};
                };
            };
            compose : 'a 'b 'c. ('b -> 'c) -> ('a -> 'b) -> 'a -> 'c, f : bool -> int, g : int -> bool |- compose f (compose g f) true : int by T-App {
                compose : 'a 'b 'c. ('b -> 'c) -> ('a -> 'b) -> 'a -> 'c, f : bool -> int, g : int -> bool |- compose f (compose g f): (bool -> int) by T-App {
                    compose : 'a 'b 'c. ('b -> 'c) -> ('a -> 'b) -> 'a -> 'c, f : bool -> int, g : int -> bool |- compose f : (bool -> bool) -> (bool -> int) by T-App {
                        compose : 'a 'b 'c. ('b -> 'c) -> ('a -> 'b) -> 'a -> 'c, f : bool -> int, g : int -> bool |- compose : (bool -> int) -> (bool -> bool) -> (bool -> int) by T-Var {};
                        compose : 'a 'b 'c. ('b -> 'c) -> ('a -> 'b) -> 'a -> 'c, f : bool -> int, g : int -> bool |- f : bool -> int by T-Var {};
                    };
                    compose : 'a 'b 'c. ('b -> 'c) -> ('a -> 'b) -> 'a -> 'c, f : bool -> int, g : int -> bool |- compose g f : (bool -> bool) by T-App {
                        compose : 'a 'b 'c. ('b -> 'c) -> ('a -> 'b) -> 'a -> 'c, f : bool -> int, g : int -> bool |- compose g : (bool -> int) -> (bool -> bool) by T-App {
                            compose : 'a 'b 'c. ('b -> 'c) -> ('a -> 'b) -> 'a -> 'c, f : bool -> int, g : int -> bool |- compose : (int -> bool) -> (bool -> int) -> (bool -> bool) by T-Var {};
                            compose : 'a 'b 'c. ('b -> 'c) -> ('a -> 'b) -> 'a -> 'c, f : bool -> int, g : int -> bool |- g : (int -> bool) by T-Var {};
                        };
                        compose : 'a 'b 'c. ('b -> 'c) -> ('a -> 'b) -> 'a -> 'c, f : bool -> int, g : int -> bool |- f : bool -> int by T-Var {};
                    };
                };
                compose : 'a 'b 'c. ('b -> 'c) -> ('a -> 'b) -> 'a -> 'c, f : bool -> int, g : int -> bool |- true : bool by T-Bool {};
            };
        };
    };
}