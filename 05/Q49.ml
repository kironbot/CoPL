|- let s = fun f -> fun g -> fun x -> f x (g x) in let k = fun x -> fun y -> x in s k k 7 evalto 7 by E-Let {
    |- fun f -> fun g -> fun x -> f x (g x) evalto ()[fun f -> fun g -> fun x -> f x (g x)] by E-Fun {};
    s = ()[fun f -> fun g -> fun x -> f x (g x)] |- let k = fun x -> fun y -> x in s k k 7 evalto 7 by E-Let {
        s = ()[fun f -> fun g -> fun x -> f x (g x)] |- fun x -> fun y -> x evalto (s = ()[fun f -> fun g -> fun x -> f x (g x)])[fun x -> fun y -> x] by E-Fun {};
        s = ()[fun f -> fun g -> fun x -> f x (g x)], k = (s = ()[fun f -> fun g -> fun x -> f x (g x)])[fun x -> fun y -> x] |- s k k 7 evalto 7 by E-App {
            s = ()[fun f -> fun g -> fun x -> f x (g x)], k = (s = ()[fun f -> fun g -> fun x -> f x (g x)])[fun x -> fun y -> x] |- s k k evalto (f = (s = ()[fun f -> fun g -> fun x -> f x (g x)])[fun x -> fun y -> x], g = (s = ()[fun f -> fun g -> fun x -> f x (g x)])[fun x -> fun y -> x])[fun x -> f x (g x)] by E-App {
                s = ()[fun f -> fun g -> fun x -> f x (g x)], k = (s = ()[fun f -> fun g -> fun x -> f x (g x)])[fun x -> fun y -> x] |- s k evalto (f = (s = ()[fun f -> fun g -> fun x -> f x (g x)])[fun x -> fun y -> x])[fun g -> fun x -> f x (g x)] by E-App {
                    s = ()[fun f -> fun g -> fun x -> f x (g x)], k = (s = ()[fun f -> fun g -> fun x -> f x (g x)])[fun x -> fun y -> x] |- s evalto ()[fun f -> fun g -> fun x -> f x (g x)] by E-Var2 {
                        s = ()[fun f -> fun g -> fun x -> f x (g x)] |- s evalto ()[fun f -> fun g -> fun x -> f x (g x)] by E-Var1 {};
                    };
                    s = ()[fun f -> fun g -> fun x -> f x (g x)], k = (s = ()[fun f -> fun g -> fun x -> f x (g x)])[fun x -> fun y -> x] |- k evalto (s = ()[fun f -> fun g -> fun x -> f x (g x)])[fun x -> fun y -> x] by E-Var1 {};
                    f = (s = ()[fun f -> fun g -> fun x -> f x (g x)])[fun x -> fun y -> x] |- fun g -> fun x -> f x (g x) evalto (f = (s = ()[fun f -> fun g -> fun x -> f x (g x)])[fun x -> fun y -> x])[fun g -> fun x -> f x (g x)] by E-Fun {};
                };
                s = ()[fun f -> fun g -> fun x -> f x (g x)], k = (s = ()[fun f -> fun g -> fun x -> f x (g x)])[fun x -> fun y -> x] |- k evalto (s = ()[fun f -> fun g -> fun x -> f x (g x)])[fun x -> fun y -> x]       by E-Var1 {};
                f = (s = ()[fun f -> fun g -> fun x -> f x (g x)])[fun x -> fun y -> x], g = (s = ()[fun f -> fun g -> fun x -> f x (g x)])[fun x -> fun y -> x] |- fun x -> f x (g x) evalto (f = (s = ()[fun f -> fun g -> fun x -> f x (g x)])[fun x -> fun y -> x], g = (s = ()[fun f -> fun g -> fun x -> f x (g x)])[fun x -> fun y -> x])[fun x -> f x (g x)] by E-Fun {};
            };
            s = ()[fun f -> fun g -> fun x -> f x (g x)], k = (s = ()[fun f -> fun g -> fun x -> f x (g x)])[fun x -> fun y -> x] |- 7 evalto 7 by E-Int {};
            f = (s = ()[fun f -> fun g -> fun x -> f x (g x)])[fun x -> fun y -> x], g = (s = ()[fun f -> fun g -> fun x -> f x (g x)])[fun x -> fun y -> x], x = 7 |- f x (g x) evalto 7 by E-App {
                f = (s = ()[fun f -> fun g -> fun x -> f x (g x)])[fun x -> fun y -> x], g = (s = ()[fun f -> fun g -> fun x -> f x (g x)])[fun x -> fun y -> x], x = 7 |- f x evalto (s = ()[fun f -> fun g -> fun x -> f x (g x)], x = 7)[fun y -> x] by E-App {
                    f = (s = ()[fun f -> fun g -> fun x -> f x (g x)])[fun x -> fun y -> x], g = (s = ()[fun f -> fun g -> fun x -> f x (g x)])[fun x -> fun y -> x], x = 7 |- f evalto (s = ()[fun f -> fun g -> fun x -> f x (g x)])[fun x -> fun y -> x] by E-Var2 {
                        f = (s = ()[fun f -> fun g -> fun x -> f x (g x)])[fun x -> fun y -> x], g = (s = ()[fun f -> fun g -> fun x -> f x (g x)])[fun x -> fun y -> x] |- f evalto (s = ()[fun f -> fun g -> fun x -> f x (g x)])[fun x -> fun y -> x] by E-Var2 {
                            f = (s = ()[fun f -> fun g -> fun x -> f x (g x)])[fun x -> fun y -> x] |- f evalto (s = ()[fun f -> fun g -> fun x -> f x (g x)])[fun x -> fun y -> x] by E-Var1 {};
                        };
                    };
                    f = (s = ()[fun f -> fun g -> fun x -> f x (g x)])[fun x -> fun y -> x], g = (s = ()[fun f -> fun g -> fun x -> f x (g x)])[fun x -> fun y -> x], x = 7 |- x evalto 7 by E-Var1 {};
                    s = ()[fun f -> fun g -> fun x -> f x (g x)], x = 7 |- fun y -> x evalto (s = ()[fun f -> fun g -> fun x -> f x (g x)], x = 7)[fun y -> x] by E-Fun {};
                };
                f = (s = ()[fun f -> fun g -> fun x -> f x (g x)])[fun x -> fun y -> x], g = (s = ()[fun f -> fun g -> fun x -> f x (g x)])[fun x -> fun y -> x], x = 7 |- g x evalto (s = ()[fun f -> fun g -> fun x -> f x (g x)], x = 7)[fun y -> x] by E-App {
                    f = (s = ()[fun f -> fun g -> fun x -> f x (g x)])[fun x -> fun y -> x], g = (s = ()[fun f -> fun g -> fun x -> f x (g x)])[fun x -> fun y -> x], x = 7 |- g evalto (s = ()[fun f -> fun g -> fun x -> f x (g x)])[fun x -> fun y -> x] by E-Var2 {
                        f = (s = ()[fun f -> fun g -> fun x -> f x (g x)])[fun x -> fun y -> x], g = (s = ()[fun f -> fun g -> fun x -> f x (g x)])[fun x -> fun y -> x] |- g evalto (s = ()[fun f -> fun g -> fun x -> f x (g x)])[fun x -> fun y -> x] by E-Var1 {};
                    };
                    f = (s = ()[fun f -> fun g -> fun x -> f x (g x)])[fun x -> fun y -> x], g = (s = ()[fun f -> fun g -> fun x -> f x (g x)])[fun x -> fun y -> x], x = 7 |- x evalto 7 by E-Var1 {};
                    s = ()[fun f -> fun g -> fun x -> f x (g x)], x = 7 |- fun y -> x evalto (s = ()[fun f -> fun g -> fun x -> f x (g x)], x = 7)[fun y -> x] by E-Fun {};
                };
                s = ()[fun f -> fun g -> fun x -> f x (g x)], x = 7, y = (s = ()[fun f -> fun g -> fun x -> f x (g x)], x = 7)[fun y -> x] |- x evalto 7 by E-Var2 {
                    s = ()[fun f -> fun g -> fun x -> f x (g x)], x = 7 |- x evalto 7 by E-Var1 {};
                };
            };
        };
    };
}
