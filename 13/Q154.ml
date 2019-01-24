x := x + 1 changes x = 2 to x = 3 by C-Assign {
    x = 2 |- x + 1 evalto 3 by A-Plus {
        x = 2 |- x evalto 2 by A-Var {};
        x = 2 |- 1 evalto 1 by A-Const {};
    }
}