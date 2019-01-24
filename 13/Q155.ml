if 1 < x then x := 1 else x := 2 changes x = 5 to x = 1 by C-IfT {
    x = 5 |- 1 < x evalto true by B-Lt {
        x = 5 |- 1 evalto 1 by A-Const {};
        x = 5 |- x evalto 5 by A-Var {};
    };
    x := 1 changes x = 5 to x = 1 by C-Assign {
        x = 5 |- 1 evalto 1 by A-Const {}; 
    }; 
}