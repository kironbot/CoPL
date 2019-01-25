|- let incr = fun x -> x := !x + 1 in
   let x = ref 0 in
   let z = incr x in
   !x evalto 1 / @l = 1
by E-Let {
    |- fun x -> x := !x + 1 evalto ()[fun x -> x := !x + 1] by E-Fun {};
    incr = ()[fun x -> x := !x + 1] |- let x = ref 0 in let z = incr x in !x evalto 1 / @l = 1 by E-Let {
        incr = ()[fun x -> x := !x + 1] |- ref 0 evalto @l / @l = 0 by E-Ref {
            incr = ()[fun x -> x := !x + 1] |- 0 evalto 0 by E-Int {};
        };
        @l = 0 / incr = ()[fun x -> x := !x + 1], x = @l |- let z = incr x in !x evalto 1 / @l = 1 by E-Let {
            @l = 0 / incr = ()[fun x -> x := !x + 1], x = @l |- incr x evalto 1 / @l = 1 by E-App {
                @l = 0 / incr = ()[fun x -> x := !x + 1], x = @l |- incr evalto ()[fun x -> x := !x + 1] / @l = 0 by E-Var {};
                @l = 0 / incr = ()[fun x -> x := !x + 1], x = @l |- x evalto @l / @l = 0 by E-Var {};
                @l = 0 / x = @l |- x := !x + 1 evalto 1 / @l = 1 by E-Assign {
                    @l = 0 / x = @l |- x evalto @l / @l = 0 by E-Var {};
                    @l = 0 / x = @l |- !x + 1 evalto 1 / @l = 0 by E-Plus {
                        @l = 0 / x = @l |- !x evalto 0 / @l = 0 by E-Deref {
                            @l = 0 / x = @l |- x evalto @l / @l = 0 by E-Var {};
                        };
                        @l = 0 / x = @l |- 1 evalto 1 / @l = 0 by E-Int {};
                        0 plus 1 is 1 by B-Plus {};
                    };
                };
            };
            @l = 1 / incr = ()[fun x -> x := !x + 1], x = @l, z = 1 |- !x evalto 1 / @l = 1 by E-Deref {
                @l = 1 / incr = ()[fun x -> x := !x + 1], x = @l, z = 1 |- x evalto @l / @l = 1 by E-Var {};
            };
        }
    }
}