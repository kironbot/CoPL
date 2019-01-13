|- let rec append = fun l1 -> fun l2 -> 
     match l1 with [] -> l2 | x :: y -> x :: append y l2 in
     append (true :: []) (false :: []) : bool list
by T-LetRec {
    append : bool list -> bool list -> bool list, l1 : bool list |- fun l2 -> match l1 with [] -> l2 | x :: y -> x :: append y l2 : bool list -> bool list by T-Fun {
        append : bool list -> bool list -> bool list, l1 : bool list, l2 : bool list |- match l1 with [] -> l2 | x :: y -> x :: append y l2 : bool list by T-Match {
            append : bool list -> bool list -> bool list, l1 : bool list, l2 : bool list |- l1 : bool list by T-Var {};
            append : bool list -> bool list -> bool list, l1 : bool list, l2 : bool list |- l2 : bool list by T-Var {};
            append : bool list -> bool list -> bool list, l1 : bool list, l2 : bool list, x : bool, y : bool list |- x :: append y l2 : bool list by T-Cons {
                append : bool list -> bool list -> bool list, l1 : bool list, l2 : bool list, x : bool, y : bool list |- x : bool by T-Var {};
                append : bool list -> bool list -> bool list, l1 : bool list, l2 : bool list, x : bool, y : bool list |- append y l2 : bool list by T-App {
                    append : bool list -> bool list -> bool list, l1 : bool list, l2 : bool list, x : bool, y : bool list |- append y : bool list -> bool list by T-App {
                        append : bool list -> bool list -> bool list, l1 : bool list, l2 : bool list, x : bool, y : bool list |- append : bool list -> bool list -> bool list by T-Var {};
                        append : bool list -> bool list -> bool list, l1 : bool list, l2 : bool list, x : bool, y : bool list |- y : bool list by T-Var {};
                    };
                    append : bool list -> bool list -> bool list, l1 : bool list, l2 : bool list, x : bool, y : bool list |- l2 : bool list by T-Var {};
                };
            };
        };
    };
    append : bool list -> bool list -> bool list |- append (true :: []) (false :: []) : bool list by T-App {
        append : bool list -> bool list -> bool list |- append (true :: []) : bool list -> bool list by T-App {
            append : bool list -> bool list -> bool list |- append : bool list -> bool list -> bool list by T-Var {};
            append : bool list -> bool list -> bool list |- true :: [] : bool list by T-Cons {
                append : bool list -> bool list -> bool list |- true : bool by T-Bool {};
                append : bool list -> bool list -> bool list |- [] : bool list by T-Nil {};
            };
        };
        append : bool list -> bool list -> bool list |- (false :: []) : bool list by T-Cons {
            append : bool list -> bool list -> bool list |- false : bool by T-Bool {};
            append : bool list -> bool list -> bool list |- [] : bool list by T-Nil {};
        };
    };
}     