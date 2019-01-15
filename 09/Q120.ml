|- let rec map = fun f -> fun l ->
     match l with [] -> [] | x :: y -> f x :: map f y in
   map (fun x -> x < 3) (map (fun x -> x * 2) (4 :: 5 :: 1 :: [])) : bool list
by T-LetRec {
    map : ('a -> 'b) -> 'a list -> 'b list, f : 'a -> 'b |- fun l -> match l with [] -> [] | x :: y -> f x :: map f y : 'a list -> 'b list by T-Abs {
        map : ('a -> 'b) -> 'a list -> 'b list, f : 'a -> 'b, l : 'a list |- match l with [] -> [] | x :: y -> f x :: map f y : 'b list by T-Match {
            map : ('a -> 'b) -> 'a list -> 'b list, f : 'a -> 'b, l : 'a list |- l : 'a list by T-Var {};
            map : ('a -> 'b) -> 'a list -> 'b list, f : 'a -> 'b, l : 'a list |- [] : 'b list by T-Nil {};
            map : ('a -> 'b) -> 'a list -> 'b list, f : 'a -> 'b, l : 'a list, x : 'a, y : 'a list |- f x :: map f y : 'b list by T-Cons {
                map : ('a -> 'b) -> 'a list -> 'b list, f : 'a -> 'b, l : 'a list, x : 'a, y : 'a list |- f x : 'b  by T-App {
                    map : ('a -> 'b) -> 'a list -> 'b list, f : 'a -> 'b, l : 'a list, x : 'a, y : 'a list |- f : 'a -> 'b  by T-Var {};
                    map : ('a -> 'b) -> 'a list -> 'b list, f : 'a -> 'b, l : 'a list, x : 'a, y : 'a list |- x : 'a by T-Var {};
                };
                map : ('a -> 'b) -> 'a list -> 'b list, f : 'a -> 'b, l : 'a list, x : 'a, y : 'a list |- map f y : 'b list by T-App {
                    map : ('a -> 'b) -> 'a list -> 'b list, f : 'a -> 'b, l : 'a list, x : 'a, y : 'a list |- map f : 'a list -> 'b list by T-App {
                        map : ('a -> 'b) -> 'a list -> 'b list, f : 'a -> 'b, l : 'a list, x : 'a, y : 'a list |- map : ('a -> 'b) -> 'a list -> 'b list by T-Var {};
                        map : ('a -> 'b) -> 'a list -> 'b list, f : 'a -> 'b, l : 'a list, x : 'a, y : 'a list |- f : ('a -> 'b) by T-Var {};
                    };
                    map : ('a -> 'b) -> 'a list -> 'b list, f : 'a -> 'b, l : 'a list, x : 'a, y : 'a list |- y : 'a list by T-Var {};
                };
            };
        };
    };
    map : 'a 'b. ('a -> 'b) -> 'a list -> 'b list |- map (fun x -> x < 3) (map (fun x -> x * 2) (4 :: 5 :: 1 :: [])) : bool list by T-App {
        map : 'a 'b. ('a -> 'b) -> 'a list -> 'b list |- map (fun x -> x < 3) : int list -> bool list by T-App {
            map : 'a 'b. ('a -> 'b) -> 'a list -> 'b list |- map : (int -> bool) -> int list -> bool list by T-Var {};
            map : 'a 'b. ('a -> 'b) -> 'a list -> 'b list |- (fun x -> x < 3) : int -> bool by T-Abs {
                map : 'a 'b. ('a -> 'b) -> 'a list -> 'b list, x : int |- x < 3: bool by T-Lt {
                    map : 'a 'b. ('a -> 'b) -> 'a list -> 'b list, x : int |- x : int by T-Var {};
                    map : 'a 'b. ('a -> 'b) -> 'a list -> 'b list, x : int |- 3 : int by T-Int {};
                };
            };
        };
        map : 'a 'b. ('a -> 'b) -> 'a list -> 'b list |- (map (fun x -> x * 2) (4 :: 5 :: 1 :: [])) : int list by T-App {
            map : 'a 'b. ('a -> 'b) -> 'a list -> 'b list |- map (fun x -> x * 2) : int list -> int list by T-App {
                map : 'a 'b. ('a -> 'b) -> 'a list -> 'b list |- map : (int -> int) -> int list -> int list by T-Var {};
                map : 'a 'b. ('a -> 'b) -> 'a list -> 'b list |- (fun x -> x * 2) : int -> int by T-Abs {
                    map : 'a 'b. ('a -> 'b) -> 'a list -> 'b list, x : int |- x * 2 : int by T-Mult {
                        map : 'a 'b. ('a -> 'b) -> 'a list -> 'b list, x : int |- x : int by T-Var {};
                        map : 'a 'b. ('a -> 'b) -> 'a list -> 'b list, x : int |- 2 : int by T-Int {};
                    };
                };
            };
            map : 'a 'b. ('a -> 'b) -> 'a list -> 'b list |- (4 :: 5 :: 1 :: []) : int list by T-Cons {
                map : 'a 'b. ('a -> 'b) -> 'a list -> 'b list |- 4 : int by T-Int {};
                map : 'a 'b. ('a -> 'b) -> 'a list -> 'b list |- 5 :: 1 :: [] : int list by T-Cons {
                    map : 'a 'b. ('a -> 'b) -> 'a list -> 'b list |- 5 : int by T-Int {};
                    map : 'a 'b. ('a -> 'b) -> 'a list -> 'b list |- 1 :: [] : int list by T-Cons {
                        map : 'a 'b. ('a -> 'b) -> 'a list -> 'b list |- 1 : int by T-Int {};
                        map : 'a 'b. ('a -> 'b) -> 'a list -> 'b list |- [] : int list by T-Nil {};
                    };
                };
            };
        };
    };
}