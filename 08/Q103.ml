|- let rec length = fun l -> match l with [] -> 0 | x :: y -> 1 + length y in
    length ((fun x -> x) :: (fun y -> y + 3) :: []) : int
by T-LetRec {
    length : (int -> int) list -> int, l : (int -> int) list |- match l with [] -> 0 | x :: y -> 1 + length y : int by T-Match {
        length : (int -> int) list -> int, l : (int -> int) list |- l : (int -> int) list by T-Var {};
        length : (int -> int) list -> int, l : (int -> int) list |- 0 : int by T-Int {};
        length : (int -> int) list -> int, l : (int -> int) list, x : (int -> int), y : (int -> int) list |- 1 + length y : int by T-Plus {
            length : (int -> int) list -> int, l : (int -> int) list, x : (int -> int), y : (int -> int) list |- 1 : int by T-Int {};
            length : (int -> int) list -> int, l : (int -> int) list, x : (int -> int), y : (int -> int) list |- length y : int by T-App {
                length : (int -> int) list -> int, l : (int -> int) list, x : (int -> int), y : (int -> int) list |- length : (int -> int) list -> int by T-Var {};
                length : (int -> int) list -> int, l : (int -> int) list, x : (int -> int), y : (int -> int) list |- y : (int -> int) list by T-Var {};
            };
        };
    };
    length : (int -> int) list -> int |- length ((fun x -> x) :: (fun y -> y + 3) :: []) : int by T-App {
        length : (int -> int) list -> int |- length : (int -> int) list -> int by T-Var {};
        length : (int -> int) list -> int |- ((fun x -> x) :: (fun y -> y + 3) :: []) : (int -> int) list by T-Cons {
            length : (int -> int) list -> int |- (fun x -> x) : int -> int by T-Fun {
                length : (int -> int) list -> int, x : int |- x : int by T-Var {};
            };
            length : (int -> int) list -> int |- (fun y -> y + 3) :: [] : (int -> int) list by T-Cons {
                length : (int -> int) list -> int |- (fun y -> y + 3) : int -> int by T-Fun {
                    length : (int -> int) list -> int, y : int |- y + 3 : int by T-Plus {
                        length : (int -> int) list -> int, y : int |- y : int by T-Var {};
                        length : (int -> int) list -> int, y : int |- 3 : int by T-Int {};
                    };
                };
                length : (int -> int) list -> int |- [] : (int -> int) list by T-Nil {};
            };
        };
    };
}