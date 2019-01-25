|- let c = let x = ref 0 in fun y -> if y then x := !x + 1 else !x in let y = c true in let y = c true in c false evalto 2 / @l = 2 by E-Let {
    |- let x = ref 0 in fun y -> if y then x := !x + 1 else !x evalto (x = @l)[fun y -> if y then x := !x + 1 else !x] / @l = 0 by E-Let {
        |- ref 0 evalto @l / @l = 0 by E-Ref {
            |- 0 evalto 0 by E-Int {};
        };
        @l = 0 / x = @l |- fun y -> if y then x := !x + 1 else !x evalto (x = @l)[fun y -> if y then x := !x + 1 else !x] / @l = 0 by E-Fun {};
    };
    @l = 0 / c = (x = @l)[fun y -> if y then x := !x + 1 else !x] |- let y = c true in let y = c true in c false evalto 2 / @l = 2 by E-Let {
        @l = 0 / c = (x = @l)[fun y -> if y then x := !x + 1 else !x] |- c true evalto 1 / @l = 1 by E-App {
            @l = 0 / c = (x = @l)[fun y -> if y then x := !x + 1 else !x] |- c evalto (x = @l)[fun y -> if y then x := !x + 1 else !x] / @l = 0 by E-Var {};
            @l = 0 / c = (x = @l)[fun y -> if y then x := !x + 1 else !x] |- true evalto true / @l = 0 by E-Bool {};
            @l = 0 / x = @l, y = true |- if y then x := !x + 1 else !x evalto 1 / @l = 1 by E-IfT {
                @l = 0 / x = @l, y = true |- y evalto true / @l = 0 by E-Var {};
                @l = 0 / x = @l, y = true |- x := !x + 1 evalto 1 / @l = 1 by E-Assign {
                    @l = 0 / x = @l, y = true |- x evalto @l / @l = 0 by E-Var {};
                    @l = 0 / x = @l, y = true |- !x + 1 evalto 1 / @l = 0 by E-Plus {
                        @l = 0 / x = @l, y = true |- !x evalto 0 / @l = 0 by E-Deref {
                            @l = 0 / x = @l, y = true |- x evalto @l / @l = 0 by E-Var {};
                        };
                        @l = 0 / x = @l, y = true |- 1 evalto 1 / @l = 0 by E-Int {};
                        0 plus 1 is 1 by B-Plus {};
                    };
                };
            };
        };
        @l = 1 / c = (x = @l)[fun y -> if y then x := !x + 1 else !x], y = 1 |- let y = c true in c false evalto 2 / @l = 2 by E-Let {
            @l = 1 / c = (x = @l)[fun y -> if y then x := !x + 1 else !x], y = 1 |- c true evalto 2 / @l = 2 by E-App {
                @l = 1 / c = (x = @l)[fun y -> if y then x := !x + 1 else !x], y = 1 |- c evalto (x = @l)[fun y -> if y then x := !x + 1 else !x] / @l = 1 by E-Var {};
                @l = 1 / c = (x = @l)[fun y -> if y then x := !x + 1 else !x], y = 1 |- true evalto true / @l = 1 by E-Bool {};
                @l = 1 / x = @l, y = true |- if y then x := !x + 1 else !x evalto 2 / @l = 2 by E-IfT {
                    @l = 1 / x = @l, y = true |- y evalto true / @l = 1 by E-Var {};
                    @l = 1 / x = @l, y = true |- x := !x + 1 evalto 2 / @l = 2 by E-Assign {
                        @l = 1 / x = @l, y = true |- x evalto @l / @l = 1 by E-Var {};
                        @l = 1 / x = @l, y = true |- !x + 1 evalto 2 / @l = 1 by E-Plus {
                            @l = 1 / x = @l, y = true |- !x evalto 1 / @l = 1 by E-Deref {
                                @l = 1 / x = @l, y = true |- x evalto @l / @l = 1 by E-Var {};
                            };
                            @l = 1 / x = @l, y = true |- 1 evalto 1 / @l = 1 by E-Int {};
                            1 plus 1 is 2 by B-Plus {};
                        };
                    };
                };
            };
            @l = 2 / c = (x = @l)[fun y -> if y then x := !x + 1 else !x], y = 1, y = 2 |- c false evalto 2 / @l = 2 by E-App {
                @l = 2 / c = (x = @l)[fun y -> if y then x := !x + 1 else !x], y = 1,  y = 2 |- c evalto (x = @l)[fun y -> if y then x := !x + 1 else !x] / @l = 2 by E-Var {};
                @l = 2 / c = (x = @l)[fun y -> if y then x := !x + 1 else !x], y = 1,  y = 2 |- false evalto false / @l = 2 by E-Bool {};
                @l = 2 / x = @l, y = false |- if y then x := !x + 1 else !x evalto 2 / @l = 2 by E-IfF {
                    @l = 2 / x = @l, y = false |- y evalto false / @l = 2 by E-Var {};
                    @l = 2 / x = @l, y = false |- !x evalto 2 / @l = 2 by E-Deref {
                        @l = 2 / x = @l, y = false |- x evalto @l / @l = 2 by E-Var {};
                    };
                };
            };
        };
    };
}