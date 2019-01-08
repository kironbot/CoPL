|- let . = fun . -> #1 3 + #1 4 in #1 (fun . -> #1 * #1) evalto 25 by E-Let {
    |- fun . -> #1 3 + #1 4 evalto ()[fun . -> #1 3 + #1 4] by E-Fun {};
    ()[fun . -> #1 3 + #1 4] |- #1 (fun . -> #1 * #1) evalto 25 by E-App {
        ()[fun . -> #1 3 + #1 4] |- #1 evalto ()[fun . -> #1 3 + #1 4] by E-Var {};
        ()[fun . -> #1 3 + #1 4] |- fun . -> #1 * #1 evalto (()[fun . -> #1 3 + #1 4])[fun . -> #1 * #1] by E-Fun {};
        (()[fun . -> #1 3 + #1 4])[fun . -> #1 * #1] |- #1 3 + #1 4 evalto 25 by E-Plus {
            (()[fun . -> #1 3 + #1 4])[fun . -> #1 * #1] |- #1 3 evalto 9 by E-App {
                (()[fun . -> #1 3 + #1 4])[fun . -> #1 * #1] |- #1 evalto (()[fun . -> #1 3 + #1 4])[fun . -> #1 * #1] by E-Var {};
                (()[fun . -> #1 3 + #1 4])[fun . -> #1 * #1] |- 3 evalto 3 by E-Int {};
                ()[fun . -> #1 3 + #1 4], 3 |- #1 * #1 evalto 9 by E-Times {
                    ()[fun . -> #1 3 + #1 4], 3 |- #1 evalto 3 by E-Var {};
                    ()[fun . -> #1 3 + #1 4], 3 |- #1 evalto 3 by E-Var {};
                    3 times 3 is 9 by B-Times {};
                };
            };
            (()[fun . -> #1 3 + #1 4])[fun . -> #1 * #1] |- #1 4 evalto 16 by E-App {
                (()[fun . -> #1 3 + #1 4])[fun . -> #1 * #1] |- #1 evalto (()[fun . -> #1 3 + #1 4])[fun . -> #1 * #1] by E-Var {};
                (()[fun . -> #1 3 + #1 4])[fun . -> #1 * #1] |- 4 evalto 4 by E-Int {};
                ()[fun . -> #1 3 + #1 4], 4 |- #1 * #1 evalto 16 by E-Times {
                    ()[fun . -> #1 3 + #1 4], 4 |- #1 evalto 4 by E-Var {};
                    ()[fun . -> #1 3 + #1 4], 4 |- #1 evalto 4 by E-Var {};
                    4 times 4 is 16 by B-Times {};
                };
            };
            9 plus 16 is 25 by B-Plus {};
        }
    }
}