|- let a = 3 in let f = fun y -> y * a in let a = 5 in f 4 ==> let . = 3 in let . = fun . -> #1 * #2 in let . = 5 in #2 4 by Tr-Let {
    |- 3 ==> 3 by Tr-Int {};
    a |- let f = fun y -> y * a in let a = 5 in f 4 ==> let . = fun . -> #1 * #2 in let . = 5 in #2 4 by Tr-Let {
        a |- fun y -> y * a ==> fun . -> #1 * #2 by Tr-Fun {
            a, y |- y * a ==> #1 * #2 by Tr-Times {
                a, y |- y ==> #1 by Tr-Var1 {};
                a, y |- a ==> #2 by Tr-Var2 {
                    a |- a ==> #1 by Tr-Var1 {}
                };
            }
        };
        a, f |- let a = 5 in f 4 ==> let . = 5 in #2 4 by Tr-Let {
            a, f |- 5 ==> 5 by Tr-Int {};
            a, f, a |- f 4 ==> #2 4 by Tr-App {
                a, f, a |- f ==> #2 by Tr-Var2 {
                    a, f |- f ==> #1 by Tr-Var1 {}
                };
                a, f, a |- 4 ==> 4 by Tr-Int {}
            } 
        }
    };
}