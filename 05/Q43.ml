|- let sm = fun f -> f 3 + f 4 in sm (fun x -> x * x) evalto 25 by E-Let {
    |- fun f -> f 3 + f 4 evalto ()[fun f -> f 3 + f 4] by E-Fun {};
    sm = ()[fun f -> f 3 + f 4] |- sm (fun x -> x * x) evalto 25 by E-App {
        sm = ()[fun f -> f 3 + f 4] |- sm evalto ()[fun f -> f 3 + f 4] by E-Var1 {};
        sm = ()[fun f -> f 3 + f 4] |- fun x -> x * x evalto (sm = ()[fun f -> f 3 + f 4])[fun x -> x * x] by E-Fun {};
        f = (sm = ()[fun f -> f 3 + f 4])[fun x -> x * x] |- f 3 + f 4 evalto 25 by E-Plus {
            f = (sm = ()[fun f -> f 3 + f 4])[fun x -> x * x] |- f 3 evalto 9 by E-App {
                f = (sm = ()[fun f -> f 3 + f 4])[fun x -> x * x] |- f evalto (sm = ()[fun f -> f 3 + f 4])[fun x -> x * x] by E-Var1 {};
                f = (sm = ()[fun f -> f 3 + f 4])[fun x -> x * x] |- 3 evalto 3 by E-Int {};
                sm = ()[fun f -> f 3 + f 4], x = 3 |- x * x evalto 9 by E-Times {
                    sm = ()[fun f -> f 3 + f 4], x = 3 |- x evalto 3 by E-Var1 {};
                    sm = ()[fun f -> f 3 + f 4], x = 3 |- x evalto 3 by E-Var1 {};
                    3 times 3 is 9 by B-Times {}
                }   
            };
            f = (sm = ()[fun f -> f 3 + f 4])[fun x -> x * x] |- f 4 evalto 16 by E-App {
                f = (sm = ()[fun f -> f 3 + f 4])[fun x -> x * x] |- f evalto (sm = ()[fun f -> f 3 + f 4])[fun x -> x * x] by E-Var1 {};
                f = (sm = ()[fun f -> f 3 + f 4])[fun x -> x * x] |- 4 evalto 4 by E-Int {};
                sm = ()[fun f -> f 3 + f 4], x = 4 |- x * x evalto 16 by E-Times {
                    sm = ()[fun f -> f 3 + f 4], x = 4 |- x evalto 4 by E-Var1 {};
                    sm = ()[fun f -> f 3 + f 4], x = 4 |- x evalto 4 by E-Var1 {};
                    4 times 4 is 16 by B-Times {}
                }   
            };
            9 plus 16 is 25 by B-Plus {}
        }
    }
}