|- let rec length = fun l -> match l with [] -> 0 | x :: y -> 1 + length y in
    length : int list -> int
by T-LetRec {
    length : int list -> int, l : int list |- match l with [] -> 0 | x :: y -> 1 + length y : int by T-Match {
        length : int list -> int, l : int list |- l : int list by T-Var {};
        length : int list -> int, l : int list |- 0 : int by T-Int {};
        length : int list -> int, l : int list, x : int, y : int list |- 1 + length y : int by T-Plus {
            length : int list -> int, l : int list, x : int, y : int list |- 1 : int by T-Int {};
            length : int list -> int, l : int list, x : int, y : int list |- length y : int by T-App {
                length : int list -> int, l : int list, x : int, y : int list |- length : int list -> int by T-Var {};
                length : int list -> int, l : int list, x : int, y : int list |- y : int list by T-Var {};
            };
        };
    };
    length : int list -> int |- length : int list -> int by T-Var {};
}