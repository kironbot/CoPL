|- let max = fun x -> fun y -> if x < y then y else x in max 3 5 evalto 5 by E-Let {
    |- fun x -> fun y -> if x < y then y else x evalto ()[fun x -> fun y -> if x < y then y else x] by E-Fun {};
    max = ()[fun x -> fun y -> if x < y then y else x] |- max 3 5 evalto 5 by E-App {
        max = ()[fun x -> fun y -> if x < y then y else x] |- max 3 evalto (x = 3)[fun y -> if x < y then y else x] by E-App {
            max = ()[fun x -> fun y -> if x < y then y else x] |- max evalto ()[fun x -> fun y -> if x < y then y else x] by E-Var1 {};
            max = ()[fun x -> fun y -> if x < y then y else x] |- 3 evalto 3 by E-Int {};
            x = 3 |- fun y -> if x < y then y else x evalto (x = 3)[fun y -> if x < y then y else x] by E-Fun {}
        };
        max = ()[fun x -> fun y -> if x < y then y else x] |- 5 evalto 5 by E-Int {};
        x = 3, y = 5 |- if x < y then y else x evalto 5 by E-IfT {
            x = 3, y = 5 |- x < y evalto true by E-Lt {
                x =3, y = 5 |- x evalto 3 by E-Var2 {
                    x = 3 |- x evalto 3 by E-Var1 {};
                };
                x = 3, y = 5 |- y evalto 5 by E-Var1 {};
                3 less than 5 is true by B-Lt {}
            };
            x = 3, y = 5 |- y evalto 5 by E-Var1 {}
        }
    }
}