|- let f = fun x -> x + 1 in f 4 : int by T-Let {
    |- fun x -> x + 1 : int -> int by T-Fun {
        x : int |- x + 1 : int by T-Plus {
            x : int |- x : int by T-Var {};
            x : int |- 1 : int by T-Int {};
        };
    };
    f : int -> int |- f 4 : int by T-App {
        f : int -> int |- f : int -> int by T-Var {};
        f : int -> int |- 4 : int by T-Int {};
    };
}