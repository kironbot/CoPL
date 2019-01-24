while (1 < x) do x := x - 1 changes x = 0 to x = 0 by C-WhileF {
    x = 0 |- 1 < x evalto false by B-Lt {
        x = 0 |- 1 evalto 1 by A-Const {};
        x = 0 |- x evalto 0 by A-Var {};
    }
}