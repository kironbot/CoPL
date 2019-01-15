|- let s = fun f -> fun g -> fun x -> f x (g x) in
   let k = fun x -> fun y -> x in
   s k k : 'a -> 'a
by T-Let {
    |- fun f -> fun g -> fun x -> f x (g x) : ('a -> 'b -> 'c) -> ('a -> 'b) -> 'a -> 'c by T-Abs {
        f : ('a -> 'b -> 'c) |- fun g -> fun x -> f x (g x) : ('a -> 'b) -> 'a -> 'c by T-Abs {
            f : ('a -> 'b -> 'c), g : 'a -> 'b |- fun x -> f x (g x) : 'a -> 'c by T-Abs {
                f : ('a -> 'b -> 'c), g : 'a -> 'b, x : 'a |- f x (g x) : 'c by T-App {
                    f : ('a -> 'b -> 'c), g : 'a -> 'b, x : 'a |- f x : 'b -> 'c by T-App {
                        f : ('a -> 'b -> 'c), g : 'a -> 'b, x : 'a |- f : 'a -> 'b -> 'c by T-Var {};
                        f : ('a -> 'b -> 'c), g : 'a -> 'b, x : 'a |- x : 'a by T-Var {};
                    };
                    f : ('a -> 'b -> 'c), g : 'a -> 'b, x : 'a |- g x : 'b by T-App {
                        f : ('a -> 'b -> 'c), g : 'a -> 'b, x : 'a |- g : 'a -> 'b by T-Var {};
                        f : ('a -> 'b -> 'c), g : 'a -> 'b, x : 'a |- x : 'a by T-Var {};
                    };
                };
            };
        };
    };
    s : 'a 'b 'c. ('a -> 'b -> 'c) -> ('a -> 'b) -> 'a -> 'c |- let k = fun x -> fun y -> x in s k k : 'a -> 'a by T-Let {
        s : 'a 'b 'c. ('a -> 'b -> 'c) -> ('a -> 'b) -> 'a -> 'c |- fun x -> fun y -> x : 'a -> 'b -> 'a by T-Abs {
            s : 'a 'b 'c. ('a -> 'b -> 'c) -> ('a -> 'b) -> 'a -> 'c, x : 'a |- fun y -> x : 'b -> 'a by T-Abs {
                s : 'a 'b 'c. ('a -> 'b -> 'c) -> ('a -> 'b) -> 'a -> 'c, x : 'a, y : 'b |- x : 'a  by T-Var {};
            };
        };
        s : 'a 'b 'c. ('a -> 'b -> 'c) -> ('a -> 'b) -> 'a -> 'c, k : 'a 'b. 'a -> 'b -> 'a |- s k k : 'a -> 'a by T-App {
            s : 'a 'b 'c. ('a -> 'b -> 'c) -> ('a -> 'b) -> 'a -> 'c, k : 'a 'b. 'a -> 'b -> 'a |- s k : ('a -> 'b -> 'a) -> 'a -> 'a by T-App {
                s : 'a 'b 'c. ('a -> 'b -> 'c) -> ('a -> 'b) -> 'a -> 'c, k : 'a 'b. 'a -> 'b -> 'a |- s : ('a -> ('b -> 'a) -> 'a) -> ('a -> ('b -> 'a)) -> 'a -> 'a by T-Var {};
                s : 'a 'b 'c. ('a -> 'b -> 'c) -> ('a -> 'b) -> 'a -> 'c, k : 'a 'b. 'a -> 'b -> 'a |- k : 'a -> ('b -> 'a) -> 'a by T-Var {};
            };
            s : 'a 'b 'c. ('a -> 'b -> 'c) -> ('a -> 'b) -> 'a -> 'c, k : 'a 'b. 'a -> 'b -> 'a |- k : 'a -> 'b -> 'a by T-Var {};
        };
    };
}