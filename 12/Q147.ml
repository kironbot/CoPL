|- let f = fun r1 -> fun r2 -> let z = r2 := 3 in !r1 in let r = ref 0 in f r r evalto 3 / @l = 3
by E-Let {
    |- fun r1 -> fun r2 -> let z = r2 := 3 in !r1 evalto ()[fun r1 -> fun r2 -> let z = r2 := 3 in !r1] by E-Fun {};
    f = ()[fun r1 -> fun r2 -> let z = r2 := 3 in !r1] |- let r = ref 0 in f r r evalto 3 / @l = 3 by E-Let {
        f = ()[fun r1 -> fun r2 -> let z = r2 := 3 in !r1] |- ref 0 evalto @l / @l = 0 by E-Ref {
            f = ()[fun r1 -> fun r2 -> let z = r2 := 3 in !r1] |- 0 evalto 0 by E-Int {};
        };
        @l = 0 / f = ()[fun r1 -> fun r2 -> let z = r2 := 3 in !r1], r = @l |- f r r evalto 3 / @l = 3 by E-App {
            @l = 0 / f = ()[fun r1 -> fun r2 -> let z = r2 := 3 in !r1], r = @l |- f r evalto (r1 = @l)[fun r2 -> let z = r2 := 3 in !r1] / @l = 0 by E-App {
                @l = 0 / f = ()[fun r1 -> fun r2 -> let z = r2 := 3 in !r1], r = @l |- f evalto ()[fun r1 -> fun r2 -> let z = r2 := 3 in !r1] / @l = 0 by E-Var {};
                @l = 0 / f = ()[fun r1 -> fun r2 -> let z = r2 := 3 in !r1], r = @l |- r evalto @l / @l = 0 by E-Var {};
                @l = 0 / r1 = @l |- fun r2 -> let z = r2 := 3 in !r1 evalto (r1 = @l)[fun r2 -> let z = r2 := 3 in !r1] / @l = 0 by E-Fun {};
            };
            @l = 0 / f = ()[fun r1 -> fun r2 -> let z = r2 := 3 in !r1], r = @l |- r evalto @l / @l = 0 by E-Var {};
            @l = 0 / r1 = @l, r2 = @l |- let z = r2 := 3 in !r1 evalto 3 / @l = 3 by E-Let {
                @l = 0 / r1 = @l, r2 = @l |- r2 := 3 evalto 3 / @l = 3 by E-Assign {
                    @l = 0 / r1 = @l, r2 = @l |- r2 evalto @l / @l = 0 by E-Var {};
                    @l = 0 / r1 = @l, r2 = @l |- 3 evalto 3 / @l = 0 by E-Int {};
                };
                @l = 3 / r1 = @l, r2 = @l, z = 3 |- !r1 evalto 3 / @l = 3 by E-Deref {
                    @l = 3 / r1 = @l, r2 = @l, z = 3 |- r1 evalto @l / @l = 3 by E-Var {};
                };
            };
        };
    };
}