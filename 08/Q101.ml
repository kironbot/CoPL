|- let l = (fun x -> x) :: (fun y -> 2) :: (fun z -> z + 3) :: [] in 2 : int by T-Let {
    |- (fun x -> x) :: (fun y -> 2) :: (fun z -> z + 3) :: [] : (int -> int) list by T-Cons {
        |- fun x -> x : int -> int by T-Fun {
            x : int |- x : int by T-Var {};
        };
        |- (fun y -> 2) :: (fun z -> z + 3) :: [] : (int -> int) list by T-Cons {
            |- fun y -> 2 : int -> int by T-Fun {
                y : int |- 2 : int by T-Int {};
            };
            |- (fun z -> z + 3) :: [] : (int -> int) list by T-Cons {
                |- fun z -> z + 3 : int -> int by T-Fun {
                    z : int |- z + 3 : int by T-Plus {
                        z : int |- z : int by T-Var {};
                        z : int |- 3 : int by T-Int {};
                    };
                };
                |- [] : (int -> int) list by T-Nil {};
            };
        };
    };
    l : (int -> int) list |- 2 : int by T-Int {};
}