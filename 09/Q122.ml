|- let f = fun x -> 
             let g = fun y -> x :: [] in 
             if true then g 3 else g false in
   match f 2 with [] -> f true | x :: y -> [] : bool list
by T-Let {
    |- fun x -> let g = fun y -> x :: [] in if true then g 3 else g false : 'a -> 'a list by T-Abs {
        x : 'a |- let g = fun y -> x :: [] in if true then g 3 else g false : 'a list by T-Let {
            x : 'a |- fun y -> x :: [] : 'b -> 'a list by T-Abs {
                x : 'a, y : 'b |- x :: [] : 'a list by T-Cons {
                    x : 'a, y : 'b |- x : 'a by T-Var {};
                    x : 'a, y : 'b |- [] : 'a list by T-Nil {};
                };
            };
            x : 'a, g :'b. 'b -> 'a list |- if true then g 3 else g false : 'a list by T-If {
                x : 'a, g :'b. 'b -> 'a list |- true : bool by T-Bool {};
                x : 'a, g :'b. 'b -> 'a list |- g 3 : 'a list by T-App {
                    x : 'a, g :'b. 'b -> 'a list |- g : int -> 'a list by T-Var {};
                    x : 'a, g :'b. 'b -> 'a list |- 3 : int by T-Int {};
                };
                x : 'a, g :'b. 'b -> 'a list |- g false : 'a list by T-App {
                    x : 'a, g :'b. 'b -> 'a list |- g : bool -> 'a list by T-Var {};
                    x : 'a, g :'b. 'b -> 'a list |- false : bool by T-Bool {};
                };
            };
        };
    };
    f : 'a. 'a -> 'a list |- match f 2 with [] -> f true | x :: y -> [] : bool list by T-Match {
        f : 'a. 'a -> 'a list |- f 2 : int list by T-App {
            f : 'a. 'a -> 'a list |- f : int -> int list by T-Var {};
            f : 'a. 'a -> 'a list |- 2 : int by T-Int {};
        };
        f : 'a. 'a -> 'a list |- f true : bool list by T-App {
            f : 'a. 'a -> 'a list |- f : bool -> bool list by T-Var {};
            f : 'a. 'a -> 'a list |- true : bool by T-Bool {};
        };
        f : 'a. 'a -> 'a list, x : int, y : int list |- [] : bool list by T-Nil {};
    };
}