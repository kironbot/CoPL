|- let rec map = fun f -> fun l ->
     match l with [] -> [] | x :: y -> f x :: map f y in
   let f = map (fun x -> x) in
   let a = f (3 :: []) in f (true :: []) : bool list
by T-LetRec {
    map : ('a -> 'b) -> 'a list -> 'b list, f : 'a -> 'b |- fun l -> match l with [] -> [] | x :: y -> f x :: map f y : 'a list -> 'b list by T-Abs {
        map : ('a -> 'b) -> 'a list -> 'b list, f : 'a -> 'b, l : 'a list |- match l with [] -> [] | x :: y -> f x :: map f y : 'b list by T-Match {
            map : ('a -> 'b) -> 'a list -> 'b list, f : 'a -> 'b, l : 'a list |- l : 'a list by T-Var {};
            map : ('a -> 'b) -> 'a list -> 'b list, f : 'a -> 'b, l : 'a list |- [] : 'b list by T-Nil {};
            map : ('a -> 'b) -> 'a list -> 'b list, f : 'a -> 'b, l : 'a list, x : 'a, y : 'a list |- f x :: map f y : 'b list by T-Cons {
                map : ('a -> 'b) -> 'a list -> 'b list, f : 'a -> 'b, l : 'a list, x : 'a, y : 'a list |- f x : 'b by T-App {
                    map : ('a -> 'b) -> 'a list -> 'b list, f : 'a -> 'b, l : 'a list, x : 'a, y : 'a list |- f : 'a -> 'b by T-Var {};
                    map : ('a -> 'b) -> 'a list -> 'b list, f : 'a -> 'b, l : 'a list, x : 'a, y : 'a list |- x : 'a by T-Var {};
                };
                map : ('a -> 'b) -> 'a list -> 'b list, f : 'a -> 'b, l : 'a list, x : 'a, y : 'a list |- map f y : 'b list by T-App {
                    map : ('a -> 'b) -> 'a list -> 'b list, f : 'a -> 'b, l : 'a list, x : 'a, y : 'a list |- map f : 'a list -> 'b list by T-App {
                        map : ('a -> 'b) -> 'a list -> 'b list, f : 'a -> 'b, l : 'a list, x : 'a, y : 'a list |- map : ('a -> 'b) -> 'a list -> 'b list by T-Var {};
                        map : ('a -> 'b) -> 'a list -> 'b list, f : 'a -> 'b, l : 'a list, x : 'a, y : 'a list |- f : 'a -> 'b by T-Var {};
                    };
                    map : ('a -> 'b) -> 'a list -> 'b list, f : 'a -> 'b, l : 'a list, x : 'a, y : 'a list |- y : 'a list by T-Var {};
                };
            };
        };
    };
    map : 'a 'b. ('a -> 'b) -> 'a list -> 'b list |- let f = map (fun x -> x) in let a = f (3 :: []) in f (true :: []) : bool list by T-Let {
        map : 'a 'b. ('a -> 'b) -> 'a list -> 'b list |- map (fun x -> x) : 'a list -> 'a list by T-App {
            map : 'a 'b. ('a -> 'b) -> 'a list -> 'b list |- map : ('a -> 'a) -> 'a list -> 'a list by T-Var {};
            map : 'a 'b. ('a -> 'b) -> 'a list -> 'b list |- fun x -> x : 'a -> 'a by T-Abs {
                map : 'a 'b. ('a -> 'b) -> 'a list -> 'b list, x : 'a |- x : 'a by T-Var {};
            };
        };
        map : 'a 'b. ('a -> 'b) -> 'a list -> 'b list, f : 'a. 'a list -> 'a list |- let a = f (3 :: []) in f (true :: []) : bool list by T-Let {
            map : 'a 'b. ('a -> 'b) -> 'a list -> 'b list, f : 'a. 'a list -> 'a list |- f (3 :: []) : int list by T-App {
                map : 'a 'b. ('a -> 'b) -> 'a list -> 'b list, f : 'a. 'a list -> 'a list |- f : int list -> int list by T-Var {};
                map : 'a 'b. ('a -> 'b) -> 'a list -> 'b list, f : 'a. 'a list -> 'a list |- 3 :: [] : int list by T-Cons {
                    map : 'a 'b. ('a -> 'b) -> 'a list -> 'b list, f : 'a. 'a list -> 'a list |- 3 : int by T-Int {};
                    map : 'a 'b. ('a -> 'b) -> 'a list -> 'b list, f : 'a. 'a list -> 'a list |- [] : int list by T-Nil {};
                };
            };
            map : 'a 'b. ('a -> 'b) -> 'a list -> 'b list, f : 'a. 'a list -> 'a list, a : int list |- f (true :: []) : bool list by T-App {
                map : 'a 'b. ('a -> 'b) -> 'a list -> 'b list, f : 'a. 'a list -> 'a list, a : int list |- f : bool list -> bool list by T-Var {};
                map : 'a 'b. ('a -> 'b) -> 'a list -> 'b list, f : 'a. 'a list -> 'a list, a : int list |- true :: [] : bool list by T-Cons {
                    map : 'a 'b. ('a -> 'b) -> 'a list -> 'b list, f : 'a. 'a list -> 'a list, a : int list |- true : bool by T-Bool {};
                    map : 'a 'b. ('a -> 'b) -> 'a list -> 'b list, f : 'a. 'a list -> 'a list, a : int list |- [] : bool list by T-Nil {};
                };
            };
        };
    };
}