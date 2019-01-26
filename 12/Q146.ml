|- let newc = fun x ->
     let x = ref x in
     fun y -> if y then x := !x + 1 else !x in
   let c1 = newc 5 in
   let c2 = newc 4 in
   let y = c1 true in
   let y = c2 true in
   c1 false evalto 6 / @l1 = 6, @l2 = 5
by E-Let {
    |- fun x -> let x = ref x in fun y -> if y then x := !x + 1 else !x evalto ()[fun x -> let x = ref x in fun y -> if y then x := !x + 1 else !x] by E-Fun {};
    newc = ()[fun x -> let x = ref x in fun y -> if y then x := !x + 1 else !x] |- let c1 = newc 5 in let c2 = newc 4 in let y = c1 true in let y = c2 true in c1 false evalto 6 / @l1 = 6, @l2 = 5 by E-Let {
        newc = ()[fun x -> let x = ref x in fun y -> if y then x := !x + 1 else !x] |- newc 5 evalto (x = 5, x = @l1)[fun y -> if y then x := !x + 1 else !x] / @l1 = 5 by E-App {
            newc = ()[fun x -> let x = ref x in fun y -> if y then x := !x + 1 else !x] |- newc evalto ()[fun x -> let x = ref x in fun y -> if y then x := !x + 1 else !x] by E-Var {};
            newc = ()[fun x -> let x = ref x in fun y -> if y then x := !x + 1 else !x] |- 5 evalto 5 by E-Int {};
            x = 5 |- let x = ref x in fun y -> if y then x := !x + 1 else !x evalto (x = 5, x = @l1)[fun y -> if y then x := !x + 1 else !x] / @l1 = 5 by E-Let {
                x = 5 |- ref x evalto @l1 / @l1 = 5 by E-Ref {
                    x = 5 |- x evalto 5 by E-Var {};
                };
                @l1 = 5 / x = 5, x = @l1 |- fun y -> if y then x := !x + 1 else !x evalto (x = 5, x = @l1)[fun y -> if y then x := !x + 1 else !x] / @l1 = 5 by E-Fun {};
            };
        };
        @l1 = 5 / newc = ()[fun x -> let x = ref x in fun y -> if y then x := !x + 1 else !x], c1 = (x = 5, x = @l1)[fun y -> if y then x := !x + 1 else !x] |- let c2 = newc 4 in let y = c1 true in let y = c2 true in c1 false evalto 6 / @l1 = 6, @l2 = 5 by E-Let {
            @l1 = 5 / newc = ()[fun x -> let x = ref x in fun y -> if y then x := !x + 1 else !x], c1 = (x = 5, x = @l1)[fun y -> if y then x := !x + 1 else !x] |- newc 4 evalto (x = 4, x = @l2)[fun y -> if y then x := !x + 1 else !x] / @l1 = 5, @l2 = 4 by E-App {
                @l1 = 5 / newc = ()[fun x -> let x = ref x in fun y -> if y then x := !x + 1 else !x], c1 = (x = 5, x = @l1)[fun y -> if y then x := !x + 1 else !x] |- newc evalto ()[fun x -> let x = ref x in fun y -> if y then x := !x + 1 else !x] / @l1 = 5 by E-Var {};
                @l1 = 5 / newc = ()[fun x -> let x = ref x in fun y -> if y then x := !x + 1 else !x], c1 = (x = 5, x = @l1)[fun y -> if y then x := !x + 1 else !x] |- 4 evalto 4 / @l1 = 5 by E-Int {};
                @l1 = 5 / x = 4 |- let x = ref x in fun y -> if y then x := !x + 1 else !x evalto (x = 4, x = @l2)[fun y -> if y then x := !x + 1 else !x] / @l1 = 5, @l2 = 4 by E-Let {
                    @l1 = 5 / x = 4 |- ref x evalto @l2 / @l1 = 5, @l2 = 4 by E-Ref {
                        @l1 = 5 / x = 4 |- x evalto 4 / @l1 = 5 by E-Var {};
                    };
                    @l1 = 5, @l2 = 4 / x = 4, x = @l2 |- fun y -> if y then x := !x + 1 else !x evalto (x = 4, x = @l2)[fun y -> if y then x := !x + 1 else !x] / @l1 = 5, @l2 = 4 by E-Fun {};
                };
            };
            @l1 = 5, @l2 = 4 / newc = ()[fun x -> let x = ref x in fun y -> if y then x := !x + 1 else !x], c1 = (x = 5, x = @l1)[fun y -> if y then x := !x + 1 else !x], c2 = (x = 4, x = @l2)[fun y -> if y then x := !x + 1 else !x] |- let y = c1 true in let y = c2 true in c1 false evalto 6 / @l1 = 6, @l2 = 5 by E-Let {
                @l1 = 5, @l2 = 4 / newc = ()[fun x -> let x = ref x in fun y -> if y then x := !x + 1 else !x], c1 = (x = 5, x = @l1)[fun y -> if y then x := !x + 1 else !x], c2 = (x = 4, x = @l2)[fun y -> if y then x := !x + 1 else !x] |- c1 true evalto 6 / @l1 = 6, @l2 = 4 by E-App {
                    @l1 = 5, @l2 = 4 / newc = ()[fun x -> let x = ref x in fun y -> if y then x := !x + 1 else !x], c1 = (x = 5, x = @l1)[fun y -> if y then x := !x + 1 else !x], c2 = (x = 4, x = @l2)[fun y -> if y then x := !x + 1 else !x] |- c1 evalto (x = 5, x = @l1)[fun y -> if y then x := !x + 1 else !x] / @l1 = 5, @l2 = 4 by E-Var {};
                    @l1 = 5, @l2 = 4 / newc = ()[fun x -> let x = ref x in fun y -> if y then x := !x + 1 else !x], c1 = (x = 5, x = @l1)[fun y -> if y then x := !x + 1 else !x], c2 = (x = 4, x = @l2)[fun y -> if y then x := !x + 1 else !x] |- true evalto true / @l1 = 5, @l2 = 4 by E-Bool {};
                    @l1 = 5, @l2 = 4 / x = 5, x = @l1, y = true |- if y then x := !x + 1 else !x evalto 6 / @l1 = 6, @l2 = 4 by E-IfT {
                        @l1 = 5, @l2 = 4 / x = 5, x = @l1, y = true |- y evalto true / @l1 = 5, @l2 = 4 by E-Var {};
                        @l1 = 5, @l2 = 4 / x = 5, x = @l1, y = true |- x := !x + 1 evalto 6 / @l1 = 6, @l2 = 4 by E-Assign {
                            @l1 = 5, @l2 = 4 / x = 5, x = @l1, y = true |- x evalto @l1 / @l1 = 5, @l2 = 4 by E-Var {};
                            @l1 = 5, @l2 = 4 / x = 5, x = @l1, y = true |- !x + 1 evalto 6 / @l1 = 5, @l2 = 4 by E-Plus {
                                @l1 = 5, @l2 = 4 / x = 5, x = @l1, y = true |- !x evalto 5 / @l1 = 5, @l2 = 4 by E-Deref {
                                    @l1 = 5, @l2 = 4 / x = 5, x = @l1, y = true |- x evalto @l1 / @l1 = 5, @l2 = 4 by E-Var {};
                                };
                                @l1 = 5, @l2 = 4 / x = 5, x = @l1, y = true |- 1 evalto 1 / @l1 = 5, @l2 = 4 by E-Int {};
                                5 plus 1 is 6 by B-Plus {};
                            };
                        };
                    };
                };
                @l1 = 6, @l2 = 4 / newc = ()[fun x -> let x = ref x in fun y -> if y then x := !x + 1 else !x], c1 = (x = 5, x = @l1)[fun y -> if y then x := !x + 1 else !x], c2 = (x = 4, x = @l2)[fun y -> if y then x := !x + 1 else !x], y = 6 |- let y = c2 true in c1 false evalto 6 / @l1 = 6, @l2 = 5 by E-Let {
                    @l1 = 6, @l2 = 4 / newc = ()[fun x -> let x = ref x in fun y -> if y then x := !x + 1 else !x], c1 = (x = 5, x = @l1)[fun y -> if y then x := !x + 1 else !x], c2 = (x = 4, x = @l2)[fun y -> if y then x := !x + 1 else !x], y = 6 |- c2 true evalto 5 / @l1 = 6, @l2 = 5 by E-App {
                        @l1 = 6, @l2 = 4 / newc = ()[fun x -> let x = ref x in fun y -> if y then x := !x + 1 else !x], c1 = (x = 5, x = @l1)[fun y -> if y then x := !x + 1 else !x], c2 = (x = 4, x = @l2)[fun y -> if y then x := !x + 1 else !x], y = 6 |- c2 evalto (x = 4, x = @l2)[fun y -> if y then x := !x + 1 else !x] / @l1 = 6, @l2 = 4 by E-Var {};
                        @l1 = 6, @l2 = 4 / newc = ()[fun x -> let x = ref x in fun y -> if y then x := !x + 1 else !x], c1 = (x = 5, x = @l1)[fun y -> if y then x := !x + 1 else !x], c2 = (x = 4, x = @l2)[fun y -> if y then x := !x + 1 else !x], y = 6 |- true evalto true / @l1 = 6, @l2 = 4 by E-Bool {};
                        @l1 = 6, @l2 = 4 / x = 4, x = @l2, y = true |- if y then x := !x + 1 else !x evalto 5 / @l1 = 6, @l2 = 5 by E-IfT {
                            @l1 = 6, @l2 = 4 / x = 4, x = @l2, y = true |- y evalto true / @l1 = 6, @l2 = 4 by E-Var {};
                            @l1 = 6, @l2 = 4 / x = 4, x = @l2, y = true |- x := !x + 1 evalto 5 / @l1 = 6, @l2 = 5 by E-Assign {
                                @l1 = 6, @l2 = 4 / x = 4, x = @l2, y = true |- x evalto @l2 / @l1 = 6, @l2 = 4 by E-Var {};
                                @l1 = 6, @l2 = 4 / x = 4, x = @l2, y = true |- !x + 1 evalto 5 / @l1 = 6, @l2 = 4 by E-Plus {
                                    @l1 = 6, @l2 = 4 / x = 4, x = @l2, y = true |- !x evalto 4 / @l1 = 6, @l2 = 4 by E-Deref {
                                        @l1 = 6, @l2 = 4 / x = 4, x = @l2, y = true |- x evalto @l2 / @l1 = 6, @l2 = 4 by E-Var {};
                                    };
                                    @l1 = 6, @l2 = 4 / x = 4, x = @l2, y = true |- 1 evalto 1 / @l1 = 6, @l2 = 4 by E-Int {};
                                    4 plus 1 is 5 by B-Plus {};
                                };
                            };
                        };
                    };
                    @l1 = 6, @l2 = 5 / newc = ()[fun x -> let x = ref x in fun y -> if y then x := !x + 1 else !x], c1 = (x = 5, x = @l1)[fun y -> if y then x := !x + 1 else !x], c2 = (x = 4, x = @l2)[fun y -> if y then x := !x + 1 else !x], y = 6, y = 5 |- c1 false evalto 6 / @l1 = 6, @l2 = 5 by E-App {
                        @l1 = 6, @l2 = 5 / newc = ()[fun x -> let x = ref x in fun y -> if y then x := !x + 1 else !x], c1 = (x = 5, x = @l1)[fun y -> if y then x := !x + 1 else !x], c2 = (x = 4, x = @l2)[fun y -> if y then x := !x + 1 else !x], y = 6, y = 5 |- c1 evalto (x = 5, x = @l1)[fun y -> if y then x := !x + 1 else !x] / @l1 = 6, @l2 = 5 by E-Var {};
                        @l1 = 6, @l2 = 5 / newc = ()[fun x -> let x = ref x in fun y -> if y then x := !x + 1 else !x], c1 = (x = 5, x = @l1)[fun y -> if y then x := !x + 1 else !x], c2 = (x = 4, x = @l2)[fun y -> if y then x := !x + 1 else !x], y = 6, y = 5 |- false evalto false / @l1 = 6, @l2 = 5 by E-Bool {};
                        @l1 = 6, @l2 = 5 / x = 5, x = @l1, y = false |- if y then x := !x + 1 else !x evalto 6 / @l1 = 6, @l2 = 5 by E-IfF {
                            @l1 = 6, @l2 = 5 / x = 5, x = @l1, y = false |- y evalto false / @l1 = 6, @l2 = 5 by E-Var {};
                            @l1 = 6, @l2 = 5 / x = 5, x = @l1, y = false |- !x evalto 6 / @l1 = 6, @l2 = 5 by E-Deref {
                                @l1 = 6, @l2 = 5 / x = 5, x = @l1, y = false |- x evalto @l1 / @l1 = 6, @l2 = 5 by E-Var {};
                            };
                        };
                    };
                };
            };
        };
    };
}