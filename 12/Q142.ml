@l = 2 / x = @l |- x := !x + 1 evalto 3 / @l = 3 by E-Assign {
    @l = 2 / x = @l |- x evalto @l / @l = 2 by E-Var {};
    @l = 2 / x = @l |- !x + 1 evalto 3 / @l = 2 by E-Plus {
        @l = 2 / x = @l |- !x evalto 2 / @l = 2 by E-Deref {
            @l = 2 / x = @l |- x evalto @l / @l = 2 by E-Var {};
        };
        @l = 2 / x = @l |- 1 evalto 1 / @l = 2 by E-Int {};
            2 plus 1 is 3 by B-Plus {};
    };
}