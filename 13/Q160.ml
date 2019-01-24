while (0 < x && 0 < y) do if y < x then x := x - 1 else y := y - 1 changes x = 2, y = 2 to x = 1, y = 0 by C-WhileT {
    x = 2, y = 2 |- 0 < x && 0 < y evalto true by B-And {
        x = 2, y = 2 |- 0 < x evalto true by B-Lt {
            x = 2, y = 2 |- 0 evalto 0 by A-Const {};
            x = 2, y = 2 |- x evalto 2 by A-Var {};
        };
        x = 2, y = 2 |- 0 < y evalto true by B-Lt {
            x = 2, y = 2 |- 0 evalto 0 by A-Const {};
            x = 2, y = 2 |- y evalto 2 by A-Var {};
        };
    };
    if y < x then x := x - 1 else y := y - 1 changes x = 2 , y = 2 to x = 2, y = 1 by C-IfF {
        x = 2, y = 2 |- y < x evalto false by B-Lt {
            x = 2, y = 2 |- y evalto 2 by A-Var {};
            x = 2, y = 2 |- x evalto 2 by A-Var {};
        };
        y := y - 1 changes x = 2, y = 2 to x = 2, y = 1 by C-Assign {
            x = 2, y = 2 |- y - 1 evalto 1 by A-Minus {
                x = 2, y = 2 |- y evalto 2 by A-Var {};
                x = 2, y = 2 |- 1 evalto 1 by A-Const {};
            };
        };
    };
    while (0 < x && 0 < y) do if y < x then x := x - 1 else y := y - 1 changes x = 2, y = 1 to x = 1, y = 0 by C-WhileT {
        x = 2, y = 1 |- 0 < x && 0 < y evalto true by B-And {
            x = 2, y = 1 |- 0 < x evalto true by B-Lt {
                x = 2, y = 1 |- 0 evalto 0 by A-Const {};
                x = 2, y = 1 |- x evalto 2 by A-Var {};
            };
            x = 2, y = 1 |- 0 < y evalto true by B-Lt {
                x = 2, y = 1 |- 0 evalto 0 by A-Const {};
                x = 2, y = 1 |- y evalto 1 by A-Var {};
            };
        };
        if y < x then x := x - 1 else y := y - 1 changes x = 2 , y = 1 to x = 1, y = 1 by C-IfT {
            x = 2, y = 1 |- y < x evalto true by B-Lt {
                x = 2, y = 1 |- y evalto 1 by A-Var {};
                x = 2, y = 1 |- x evalto 2 by A-Var {};
            };
            x := x - 1 changes x = 2, y = 1 to x = 1, y = 1 by C-Assign {
                x = 2, y = 1 |- x - 1 evalto 1 by A-Minus {
                    x = 2, y = 1 |- x evalto 2 by A-Var {};
                    x = 2, y = 1 |- 1 evalto 1 by A-Const {};
                };
            };
        };
        while (0 < x && 0 < y) do if y < x then x := x - 1 else y := y - 1 changes x = 1, y = 1 to x = 1, y = 0 by C-WhileT {
            x = 1, y = 1 |- 0 < x && 0 < y evalto true by B-And {
                x = 1, y = 1 |- 0 < x evalto true by B-Lt {
                    x = 1, y = 1 |- 0 evalto 0 by A-Const {};
                    x = 1, y = 1 |- x evalto 1 by A-Var {};
                };
                x = 1, y = 1 |- 0 < y evalto true by B-Lt {
                    x = 1, y = 1 |- 0 evalto 0 by A-Const {};
                    x = 1, y = 1 |- y evalto 1 by A-Var {};
                };
            };
            if y < x then x := x - 1 else y := y - 1 changes x = 1 , y = 1 to x = 1, y = 0 by C-IfF {
                x = 1, y = 1 |- y < x evalto false by B-Lt {
                    x = 1, y = 1 |- y evalto 1 by A-Var {};
                    x = 1, y = 1 |- x evalto 1 by A-Var {};
                };
                y := y - 1 changes x = 1, y = 1 to x = 1, y = 0 by C-Assign {
                    x = 1, y = 1 |- y - 1 evalto 0 by A-Minus {
                        x = 1, y = 1 |- y evalto 1 by A-Var {};
                        x = 1, y = 1 |- 1 evalto 1 by A-Const {};
                    };
                };
            };
            while (0 < x && 0 < y) do if y < x then x := x - 1 else y := y - 1 changes x = 1, y = 0 to x = 1, y = 0 by C-WhileF {
                x = 1, y = 0 |- 0 < x && 0 < y evalto false by B-And {
                    x = 1, y = 0 |- 0 < x evalto true by B-Lt {
                        x = 1, y = 0 |- 0 evalto 0 by A-Const {};
                        x = 1, y = 0 |- x evalto 1 by A-Var {};
                    };
                    x = 1, y = 0 |- 0 < y evalto false by B-Lt {
                        x = 1, y = 0 |- 0 evalto 0 by A-Const {};
                        x = 1, y = 0 |- y evalto 0 by A-Var {};
                    };
                };
            };
        };
    
    };
}