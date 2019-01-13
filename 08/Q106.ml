|- let rec map = fun f -> fun l ->
     match l with [] -> [] | x :: y -> f x :: map f y in
     map (fun x -> x < 3) (4 :: 5 :: 1 :: []) : bool list
by T-LetRec {
    map : (int -> bool) -> int list -> bool list, f : int -> bool |- fun l -> match l with [] -> [] | x :: y -> f x :: map f y : int list -> bool list by T-Fun {
        map : (int -> bool) -> int list -> bool list, f : int -> bool, l : int list |- match l with [] -> [] | x :: y -> f x :: map f y : bool list by T-Match {
            map : (int -> bool) -> int list -> bool list, f : int -> bool, l : int list |- l : int list by T-Var {};
            map : (int -> bool) -> int list -> bool list, f : int -> bool, l : int list |- [] : bool list by T-Nil {};
            map : (int -> bool) -> int list -> bool list, f : int -> bool, l : int list, x : int, y : int list |- f x :: map f y : bool list by T-Cons {
                map : (int -> bool) -> int list -> bool list, f : int -> bool, l : int list, x : int, y : int list |- f x : bool by T-App {
                    map : (int -> bool) -> int list -> bool list, f : int -> bool, l : int list, x : int, y : int list |- f : int -> bool by T-Var {};
                    map : (int -> bool) -> int list -> bool list, f : int -> bool, l : int list, x : int, y : int list |- x : int by T-Var {};
                };
                map : (int -> bool) -> int list -> bool list, f : int -> bool, l : int list, x : int, y : int list |- map f y : bool list by T-App {
                    map : (int -> bool) -> int list -> bool list, f : int -> bool, l : int list, x : int, y : int list |- map f : int list -> bool list by T-App {
                        map : (int -> bool) -> int list -> bool list, f : int -> bool, l : int list, x : int, y : int list |- map : (int -> bool) -> int list -> bool list by T-Var {};
                        map : (int -> bool) -> int list -> bool list, f : int -> bool, l : int list, x : int, y : int list |- f : (int -> bool) by T-Var {};
                    };
                    map : (int -> bool) -> int list -> bool list, f : int -> bool, l : int list, x : int, y : int list |- y : int list by T-Var {};
                };
            };
        };
    };
    map : (int -> bool) -> int list -> bool list |- map (fun x -> x < 3) (4 :: 5 :: 1 :: []) : bool list by T-App {
        map : (int -> bool) -> int list -> bool list |- map (fun x -> x < 3) : int list -> bool list by T-App {
            map : (int -> bool) -> int list -> bool list |- map : (int -> bool) -> int list -> bool list by T-Var {};
            map : (int -> bool) -> int list -> bool list |- fun x -> x < 3 : int -> bool by T-Fun {
                map : (int -> bool) -> int list -> bool list, x : int |- x < 3 : bool by T-Lt {
                    map : (int -> bool) -> int list -> bool list, x : int |- x : int by T-Var {};
                    map : (int -> bool) -> int list -> bool list, x : int |- 3 : int by T-Int {};
                };
            };
        };
        map : (int -> bool) -> int list -> bool list |- 4::5::1::[] : int list by T-Cons {
            map : (int -> bool) -> int list -> bool list |- 4 : int by T-Int {};
            map : (int -> bool) -> int list -> bool list |- 5::1::[] : int list by T-Cons {
                map : (int -> bool) -> int list -> bool list |- 5 : int by T-Int {};
                map : (int -> bool) -> int list -> bool list |- 1::[] : int list by T-Cons {
                    map : (int -> bool) -> int list -> bool list |- 1 : int by T-Int {};
                    map : (int -> bool) -> int list -> bool list |- [] : int list by T-Nil {};
                };
            };
        };
    };
}