|- let k = fun x -> fun y -> x in k (1::[]) 3 : int list by T-Let {
    |- fun x -> fun y -> x : int list -> int -> int list by T-Fun {
        x : int list |- fun y -> x : int -> int list by T-Fun {
            x : int list, y : int |- x : int list by T-Var {};
        };
    };
    k : int list -> int -> int list |- k (1::[]) 3 : int list by T-App {
        k : int list -> int -> int list |- k (1::[]) : int -> int list by T-App {
            k : int list -> int -> int list |- k : int list -> int -> int list by T-Var {};
            k : int list -> int -> int list |- 1::[] : int list by T-Cons {
                k : int list -> int -> int list |- 1 : int by T-Int {};
                k : int list -> int -> int list |- [] : int list by T-Nil {};
            };
        };
        k : int list -> int -> int list |- 3 : int by T-Int {};
    };
}