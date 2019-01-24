while (1 < x) do x := x - 1 changes x = 3 to x = 1 by C-WhileT {
    x = 3 |- 1 < x evalto true by B-Lt {
        x = 3 |- 1 evalto 1 by A-Const {};
        x = 3 |- x evalto 3 by A-Var {};
    };
    x := x -1 changes x = 3 to x = 2 by C-Assign {
        x = 3 |- x - 1 evalto 2 by A-Minus {
            x = 3 |- x evalto 3 by A-Var {};
            x = 3 |- 1 evalto 1 by A-Const {};
        };
    };
    while (1 < x) do x := x - 1 changes x = 2 to x = 1 by C-WhileT {
        x = 2 |- 1 < x evalto true by B-Lt {
            x = 2 |- 1 evalto 1 by A-Const {};
            x = 2 |- x evalto 2 by A-Var {};
        };
        x := x -1 changes x = 2 to x = 1 by C-Assign {
            x = 2 |- x - 1 evalto 1 by A-Minus {
                x = 2 |- x evalto 2 by A-Var {};
                x = 2 |- 1 evalto 1 by A-Const {};
            };
        };
        while (1 < x) do x := x - 1 changes x = 1 to x = 1 by C-WhileF {
            x = 1 |- 1 < x evalto false by B-Lt {
                x = 1 |- 1 evalto 1 by A-Const {};
                x = 1 |- x evalto 1 by A-Var {};
            };
        };
    };
}