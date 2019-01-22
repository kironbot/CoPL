@l = 2 / x = @l |- !x + 3 evalto 5 / @l = 2 by E-Plus {
    @l = 2 / x = @l |- !x evalto 2 / @l = 2 by E-Deref {
        @l = 2 / x = @l |- x evalto @l / @l = 2 by E-Var {};
    };
    @l = 2 / x = @l |- 3 evalto 3 / @l = 2 by E-Int {};
    2 plus 3 is 5 by B-Plus {};
}