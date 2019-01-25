|- let r = ref true in !r evalto true / @l = true by E-Let {
    |- ref true evalto @l / @l = true by E-Ref {
        |- true evalto true by E-Bool {};
    };
    @l = true / r = @l |- !r evalto true / @l = true by E-Deref {
        @l = true / r = @l |- r evalto @l / @l = true by E-Var {};
    };
}