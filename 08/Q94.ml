|- let k = fun x -> fun y -> x in k true (fun x -> x + 1) : bool by T-Let {
    |- fun x -> fun y -> x : bool -> (int -> int) -> bool by T-Fun {
        x : bool |- fun y -> x : (int -> int) -> bool by T-Fun {
            x : bool, y : int -> int |- x : bool by T-Var {};
        };
    };
    k : bool -> (int -> int) -> bool |- k true (fun x -> x + 1) : bool by T-App {
        k : bool -> (int -> int) -> bool |- k true : (int -> int) -> bool by T-App {
            k : bool -> (int -> int) -> bool |- k : bool -> (int -> int) -> bool by T-Var {};
            k : bool -> (int -> int) -> bool |- true : bool by T-Bool {};
        };
        k : bool -> (int -> int) -> bool |- (fun x -> x + 1) : (int -> int) by T-Fun {
            k : bool -> (int -> int) -> bool, x : int |- x + 1 : int by T-Plus {
                k : bool -> (int -> int) -> bool, x : int |- x : int by T-Var {};
                k : bool -> (int -> int) -> bool, x : int |- 1 : int by T-Int {};
            };
        };
    };
}