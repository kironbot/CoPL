x:=1; y:=2 changes x = 0, y = 0 to x = 1, y = 2 by C-Seq {
    x := 1 changes x = 0, y = 0 to x = 1, y = 0 by C-Assign {
        x = 0, y = 0 |- 1 evalto 1 by A-Const {};
    };
    y := 2 changes x = 1, y = 0 to x = 1, y = 2 by C-Assign {
        x = 1, y = 0 |- 2 evalto 2 by A-Const {};
    };
}