|- let rec append = fun l1 -> fun l2 -> 
     match l1 with [] -> l2 | x :: y -> x :: append y l2 in
     append : int list -> int list -> int list
by T-LetRec {
    append : int list -> int list -> int list, l1 : int list |- fun l2 -> match l1 with [] -> l2 | x :: y -> x :: append y l2 : int list -> int list by T-Fun {
        append : int list -> int list -> int list, l1 : int list, l2 : int list |- match l1 with [] -> l2 | x :: y -> x :: append y l2 : int list by T-Match {
            append : int list -> int list -> int list, l1 : int list, l2 : int list |- l1 : int list by T-Var {};
            append : int list -> int list -> int list, l1 : int list, l2 : int list |- l2 : int list by T-Var {};
            append : int list -> int list -> int list, l1 : int list, l2 : int list, x : int, y : int list |- x :: append y l2 : int list by T-Cons {
                append : int list -> int list -> int list, l1 : int list, l2 : int list, x : int, y : int list |- x : int by T-Var {};
                append : int list -> int list -> int list, l1 : int list, l2 : int list, x : int, y : int list |- append y l2 : int list by T-App {
                    append : int list -> int list -> int list, l1 : int list, l2 : int list, x : int, y : int list |- append y : int list -> int list by T-App {
                        append : int list -> int list -> int list, l1 : int list, l2 : int list, x : int, y : int list |- append : int list -> int list -> int list by T-Var {};
                        append : int list -> int list -> int list, l1 : int list, l2 : int list, x : int, y : int list |- y : int list by T-Var {};
                    };
                    append : int list -> int list -> int list, l1 : int list, l2 : int list, x : int, y : int list |- l2 : int list by T-Var {};
                };
            };
        };
    };
    append : int list -> int list -> int list |- append : int list -> int list -> int list by T-Var {};
}