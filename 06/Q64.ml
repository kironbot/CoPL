|- let sm = fun f -> f 3 + f 4 in sm (fun x -> x * x)
==> let . = fun . -> #1 3 + #1 4 in #1 (fun . -> #1 * #1) by Tr-Let {
    |- fun f -> f 3 + f 4 ==> fun . -> #1 3 + #1 4 by Tr-Fun {
        f |- f 3 + f 4 ==> #1 3 + #1 4 by Tr-Plus {
            f |- f 3 ==> #1 3 by Tr-App {
                f |- f ==> #1 by Tr-Var1 {};
                f |- 3 ==> 3 by Tr-Int {};
            };
            f |- f 4 ==> #1 4 by Tr-App {
                f |- f ==> #1 by Tr-Var1 {};
                f |- 4 ==> 4 by Tr-Int {};
            };
        }
    };
    sm |- sm (fun x -> x * x) ==> #1 (fun . -> #1 * #1) by Tr-App {
        sm |- sm ==> #1 by Tr-Var1 {};
        sm |- fun x -> x * x ==> fun . -> #1 * #1 by Tr-Fun {
            sm, x |- x * x ==> #1 * #1 by Tr-Times {
                sm, x |- x ==> #1 by Tr-Var1 {};
                sm, x |- x ==> #1 by Tr-Var1 {};
            }
        };
    }
}