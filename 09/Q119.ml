|- let rec length = fun l -> match l with [] -> 0 | x :: y -> 1 + length y in
   length (3 :: 2 :: []) + length ((1 :: []) :: []) : int
by T-LetRec {
    length : 'a list -> int, l : 'a list |- match l with [] -> 0 | x :: y -> 1 + length y : int by T-Match {
        length : 'a list -> int, l : 'a list |- l : 'a list by T-Var {};
        length : 'a list -> int, l : 'a list |- 0 : int by T-Int {};
        length : 'a list -> int, l : 'a list, x : 'a, y : 'a list |- 1 + length y : int by T-Plus {
            length : 'a list -> int, l : 'a list, x : 'a, y : 'a list |- 1 : int by T-Int {};
            length : 'a list -> int, l : 'a list, x : 'a, y : 'a list |- length y : int by T-App {
                length : 'a list -> int, l : 'a list, x : 'a, y : 'a list |- length : 'a list -> int by T-Var {};
                length : 'a list -> int, l : 'a list, x : 'a, y : 'a list |- y : 'a list by T-Var {};
            };
        };
    };
    length : 'a. 'a list -> int |- length (3 :: 2 :: []) + length ((1 :: []) :: []) : int by T-Plus {
        length : 'a. 'a list -> int |- length (3 :: 2 :: []) : int by T-App {
            length : 'a. 'a list -> int |- length : int list -> int by T-Var {};
            length : 'a. 'a list -> int |- (3 :: 2 :: []) : int list by T-Cons {
                length : 'a. 'a list -> int |- 3 : int by T-Int {};
                length : 'a. 'a list -> int |- 2::[] : int list by T-Cons {
                    length : 'a. 'a list -> int |- 2 : int by T-Int {};
                    length : 'a. 'a list -> int |- [] : int list by T-Nil {};
                };
            };
        };
        length : 'a. 'a list -> int |- length ((1 :: []) :: []) : int by T-App {
            length : 'a. 'a list -> int |- length : (int list) list -> int by T-Var {};
            length : 'a. 'a list -> int |- ((1 :: []) :: []) : (int list) list by T-Cons {
                length : 'a. 'a list -> int |- (1 :: []) : int list by T-Cons {
                    length : 'a. 'a list -> int |- 1 : int by T-Int {};
                    length : 'a. 'a list -> int |- [] : int list by T-Nil {};
                };
                length : 'a. 'a list -> int |- [] : (int list) list by T-Nil {};
            };
        };
    };
}
