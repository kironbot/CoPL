|- let s = fun f -> fun g -> fun x -> f x (g x) in
   let k1 = fun x -> fun y -> x in
   let k2 = fun x -> fun y -> x in
   s k1 k2 (fun x -> x + 1) : int -> int
by T-Let {
    |- fun f -> fun g -> fun x -> f x (g x) : ((int -> int) -> ((int -> int) -> (int -> int)) -> (int -> int)) -> ((int -> int) -> (int -> int) -> (int -> int)) -> (int -> int) -> (int -> int) by T-Fun {
        f : ((int -> int) -> ((int -> int) -> (int -> int)) -> (int -> int)) |- fun g -> fun x -> f x (g x) : ((int -> int) -> (int -> int) -> (int -> int)) -> (int -> int) -> (int -> int) by T-Fun {
            f : ((int -> int) -> ((int -> int) -> (int -> int)) -> (int -> int)), g : ((int -> int) -> (int -> int) -> (int -> int)) |- fun x -> f x (g x) : (int -> int) -> (int -> int) by T-Fun {
                f : ((int -> int) -> ((int -> int) -> (int -> int)) -> (int -> int)), g : ((int -> int) -> (int -> int) -> (int -> int)), x : int -> int |- f x (g x) : (int -> int) by T-App {
                    f : ((int -> int) -> ((int -> int) -> (int -> int)) -> (int -> int)), g : ((int -> int) -> (int -> int) -> (int -> int)), x : int -> int |- f x : ((int -> int) -> (int -> int)) -> (int -> int) by T-App {
                        f : ((int -> int) -> ((int -> int) -> (int -> int)) -> (int -> int)), g : ((int -> int) -> (int -> int) -> (int -> int)), x : int -> int |- f : (int -> int) -> ((int -> int) -> (int -> int)) -> (int -> int) by T-Var {};
                        f : ((int -> int) -> ((int -> int) -> (int -> int)) -> (int -> int)), g : ((int -> int) -> (int -> int) -> (int -> int)), x : int -> int |- x : (int -> int) by T-Var {};
                    };
                    f : ((int -> int) -> ((int -> int) -> (int -> int)) -> (int -> int)), g : ((int -> int) -> (int -> int) -> (int -> int)), x : int -> int |- g x : (int -> int) -> (int -> int) by T-App {
                        f : ((int -> int) -> ((int -> int) -> (int -> int)) -> (int -> int)), g : ((int -> int) -> (int -> int) -> (int -> int)), x : int -> int |- g : (int -> int) -> (int -> int) -> (int -> int) by T-Var {};
                        f : ((int -> int) -> ((int -> int) -> (int -> int)) -> (int -> int)), g : ((int -> int) -> (int -> int) -> (int -> int)), x : int -> int |- x : (int -> int) by T-Var {};
                    };
                };
            };
        };
    };
    s : ((int -> int) -> ((int -> int) -> (int -> int)) -> (int -> int)) -> ((int -> int) -> (int -> int) -> (int -> int)) -> (int -> int) -> (int -> int) |- let k1 = fun x -> fun y -> x in let k2 = fun x -> fun y -> x in s k1 k2 (fun x -> x + 1) : int -> int by T-Let {
        s : ((int -> int) -> ((int -> int) -> (int -> int)) -> (int -> int)) -> ((int -> int) -> (int -> int) -> (int -> int)) -> (int -> int) -> (int -> int) |- fun x -> fun y -> x : (int -> int) -> ((int -> int) -> (int -> int)) -> (int -> int) by T-Fun {
            s : ((int -> int) -> ((int -> int) -> (int -> int)) -> (int -> int)) -> ((int -> int) -> (int -> int) -> (int -> int)) -> (int -> int) -> (int -> int), x : int -> int |- fun y -> x : ((int -> int) -> (int -> int)) -> (int -> int) by T-Fun {
                s : ((int -> int) -> ((int -> int) -> (int -> int)) -> (int -> int)) -> ((int -> int) -> (int -> int) -> (int -> int)) -> (int -> int) -> (int -> int), x : int -> int, y : (int -> int) -> (int -> int) |- x : (int -> int) by T-Var {};
            };
        };
        s : ((int -> int) -> ((int -> int) -> (int -> int)) -> (int -> int)) -> ((int -> int) -> (int -> int) -> (int -> int)) -> (int -> int) -> (int -> int), k1 : (int -> int) -> ((int -> int) -> (int -> int)) -> (int -> int) |- let k2 = fun x -> fun y -> x in s k1 k2 (fun x -> x + 1) : int -> int by T-Let {
            s : ((int -> int) -> ((int -> int) -> (int -> int)) -> (int -> int)) -> ((int -> int) -> (int -> int) -> (int -> int)) -> (int -> int) -> (int -> int), k1 : (int -> int) -> ((int -> int) -> (int -> int)) -> (int -> int) |- fun x -> fun y -> x : (int -> int) -> (int -> int) -> (int -> int) by T-Fun {
                s : ((int -> int) -> ((int -> int) -> (int -> int)) -> (int -> int)) -> ((int -> int) -> (int -> int) -> (int -> int)) -> (int -> int) -> (int -> int), k1 : (int -> int) -> ((int -> int) -> (int -> int)) -> (int -> int), x : int -> int |- fun y -> x : (int -> int) -> (int -> int) by T-Fun {
                    s : ((int -> int) -> ((int -> int) -> (int -> int)) -> (int -> int)) -> ((int -> int) -> (int -> int) -> (int -> int)) -> (int -> int) -> (int -> int), k1 : (int -> int) -> ((int -> int) -> (int -> int)) -> (int -> int), x : int -> int, y : int -> int |- x : (int -> int) by T-Var {};
                };
            };
            s : ((int -> int) -> ((int -> int) -> (int -> int)) -> (int -> int)) -> ((int -> int) -> (int -> int) -> (int -> int)) -> (int -> int) -> (int -> int), k1 : (int -> int) -> ((int -> int) -> (int -> int)) -> (int -> int), k2 : (int -> int) -> (int -> int) -> (int -> int) |- s k1 k2 (fun x -> x + 1) : int -> int by T-App {
                s : ((int -> int) -> ((int -> int) -> (int -> int)) -> (int -> int)) -> ((int -> int) -> (int -> int) -> (int -> int)) -> (int -> int) -> (int -> int), k1 : (int -> int) -> ((int -> int) -> (int -> int)) -> (int -> int), k2 : (int -> int) -> (int -> int) -> (int -> int) |- s k1 k2 : (int -> int) -> int -> int by T-App {
                    s : ((int -> int) -> ((int -> int) -> (int -> int)) -> (int -> int)) -> ((int -> int) -> (int -> int) -> (int -> int)) -> (int -> int) -> (int -> int), k1 : (int -> int) -> ((int -> int) -> (int -> int)) -> (int -> int), k2 : (int -> int) -> (int -> int) -> (int -> int) |- s k1 : ((int -> int) -> (int -> int) -> (int -> int)) -> (int -> int) -> int -> int by T-App {
                        s : ((int -> int) -> ((int -> int) -> (int -> int)) -> (int -> int)) -> ((int -> int) -> (int -> int) -> (int -> int)) -> (int -> int) -> (int -> int), k1 : (int -> int) -> ((int -> int) -> (int -> int)) -> (int -> int), k2 : (int -> int) -> (int -> int) -> (int -> int) |- s : ((int -> int) -> ((int -> int) -> (int -> int)) -> (int -> int)) -> ((int -> int) -> (int -> int) -> (int -> int)) -> (int -> int) -> int -> int by T-Var {};
                        s : ((int -> int) -> ((int -> int) -> (int -> int)) -> (int -> int)) -> ((int -> int) -> (int -> int) -> (int -> int)) -> (int -> int) -> (int -> int), k1 : (int -> int) -> ((int -> int) -> (int -> int)) -> (int -> int), k2 : (int -> int) -> (int -> int) -> (int -> int) |- k1 : ((int -> int) -> ((int -> int) -> (int -> int)) -> (int -> int)) by T-Var {};
                    };
                    s : ((int -> int) -> ((int -> int) -> (int -> int)) -> (int -> int)) -> ((int -> int) -> (int -> int) -> (int -> int)) -> (int -> int) -> (int -> int), k1 : (int -> int) -> ((int -> int) -> (int -> int)) -> (int -> int), k2 : (int -> int) -> (int -> int) -> (int -> int) |- k2 : ((int -> int) -> (int -> int) -> (int -> int)) by T-Var {};
                };
                s : ((int -> int) -> ((int -> int) -> (int -> int)) -> (int -> int)) -> ((int -> int) -> (int -> int) -> (int -> int)) -> (int -> int) -> (int -> int), k1 : (int -> int) -> ((int -> int) -> (int -> int)) -> (int -> int), k2 : (int -> int) -> (int -> int) -> (int -> int) |- fun x -> x + 1 : int -> int by T-Fun {
                    s : ((int -> int) -> ((int -> int) -> (int -> int)) -> (int -> int)) -> ((int -> int) -> (int -> int) -> (int -> int)) -> (int -> int) -> (int -> int), k1 : (int -> int) -> ((int -> int) -> (int -> int)) -> (int -> int), k2 : (int -> int) -> (int -> int) -> (int -> int), x : int |- x + 1 : int by T-Plus {
                        s : ((int -> int) -> ((int -> int) -> (int -> int)) -> (int -> int)) -> ((int -> int) -> (int -> int) -> (int -> int)) -> (int -> int) -> (int -> int), k1 : (int -> int) -> ((int -> int) -> (int -> int)) -> (int -> int), k2 : (int -> int) -> (int -> int) -> (int -> int), x : int |- x : int by T-Var {};
                        s : ((int -> int) -> ((int -> int) -> (int -> int)) -> (int -> int)) -> ((int -> int) -> (int -> int) -> (int -> int)) -> (int -> int) -> (int -> int), k1 : (int -> int) -> ((int -> int) -> (int -> int)) -> (int -> int), k2 : (int -> int) -> (int -> int) -> (int -> int), x : int |- 1 : int by T-Int {};
                    };
                };
            };
        };
    };
}   