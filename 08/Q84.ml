|- fun x -> x + 1 : int -> int by T-Fun {
    x : int |- x + 1 : int by T-Plus {
        x : int |- x : int by T-Var {};
        x : int |- 1 : int by T-Int {};
    };
}