while (0 < i) do s := s + i; i := i - 1 changes s = 0, i = 1 to s = 1, i = 0 by C-WhileT {
    s = 0, i = 1 |- 0 < i evalto true by B-Lt {
        s = 0, i = 1 |- 0 evalto 0 by A-Const {};
        s = 0, i = 1 |- i evalto 1 by A-Var {};
    };
    s := s + i; i := i - 1 changes s = 0, i = 1 to s = 1, i = 0 by C-Seq {
        s := s + i changes s = 0, i = 1 to s = 1, i = 1 by C-Assign {
            s = 0, i = 1 |- s + i evalto 1 by A-Plus {
                s = 0, i = 1 |- s evalto 0 by A-Var {};
                s = 0, i = 1 |- i evalto 1 by A-Var {};
            };
        };
        i := i - 1 changes s = 1, i = 1 to s = 1, i = 0 by C-Assign {
            s = 1, i = 1 |- i - 1 evalto 0 by A-Minus {
                s = 1, i = 1 |- i evalto 1 by A-Var {};
                s = 1, i = 1 |- 1 evalto 1 by A-Const {};
            };
        };
    };
    while (0 < i) do s := s + i; i := i - 1 changes s = 1, i = 0 to s = 1, i = 0 by C-WhileF {
        s = 1, i = 0 |- 0 < i evalto false by B-Lt {
            s = 1, i = 0 |- 0 evalto 0 by A-Const {};
            s = 1, i = 0 |- i evalto 0 by A-Var {};
        };
    };
}