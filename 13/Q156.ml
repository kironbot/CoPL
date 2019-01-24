if 1 < x then x := x + 1 else x := x + 2 changes x = 0 to x = 2 by C-IfF {
    x = 0 |- 1 < x evalto false by B-Lt {
        x = 0 |- 1 evalto 1 by A-Const {};
        x = 0 |- x evalto 0 by A-Var {};
    };
    x := x + 2 changes x = 0 to x = 2 by C-Assign {
        x = 0 |- x + 2 evalto 2 by A-Plus {
            x = 0 |- x evalto 0 by A-Var {};
            x = 0 |- 2 evalto 2 by A-Var {};
        };
    };
}