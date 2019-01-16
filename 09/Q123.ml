|- let f = fun x -> 
             let g = fun y -> y x :: [] in g (fun z -> 4) in
   match f true with [] -> 3 :: [] | x :: y -> f x : int list
by T-Let {
    |- fun x -> let g = fun y -> y x :: [] in g (fun z -> 4) : 'a -> int list by T-Abs {
        x : 'a |- let g = fun y -> y x :: [] in g (fun z -> 4) : int list by T-Let {
            x : 'a |- fun y -> y x :: [] : ('a -> 'b) -> 'b list by T-Abs {
                x : 'a, y : 'a -> 'b |- y x :: [] : 'b list by T-Cons {
                    x : 'a, y : 'a -> 'b |- y x : 'b by T-App {
                        x : 'a, y : 'a -> 'b |- y : 'a -> 'b by T-Var {};
                        x : 'a, y : 'a -> 'b |- x : 'a by T-Var {};
                    };
                    x : 'a, y : 'a -> 'b |- [] : 'b list by T-Nil {};
                };
            };
            x : 'a, g :'b. ('a -> 'b) -> 'b list |- g (fun z -> 4) : int list by T-App {
                x : 'a, g :'b. ('a -> 'b) -> 'b list |- g : ('a -> int) -> int list by T-Var {};
                x : 'a, g :'b. ('a -> 'b) -> 'b list |- fun z -> 4 : 'a -> int by T-Abs {
                    x : 'a, g :'b. ('a -> 'b) -> 'b list, z : 'a |- 4 : int by T-Int {};
                };
            };
        };
    };
    f : 'a. 'a -> int list |- match f true with [] -> 3 :: [] | x :: y -> f x : int list by T-Match {
        f : 'a. 'a -> int list |- f true : int list by T-App {
            f : 'a. 'a -> int list |- f : bool -> int list by T-Var {};
            f : 'a. 'a -> int list |- true : bool by T-Bool {};
        };
        f : 'a. 'a -> int list |- 3 :: [] : int list by T-Cons {
            f : 'a. 'a -> int list |- 3 : int by T-Int {};
            f : 'a. 'a -> int list |- [] : int list by T-Nil {};
        };
        f : 'a. 'a -> int list, x : int, y : int list |- f x : int list by T-App {
            f : 'a. 'a -> int list, x : int, y : int list |- f : int -> int list by T-Var {};
            f : 'a. 'a -> int list, x : int, y : int list |- x : int by T-Var {};
        };
    };
}