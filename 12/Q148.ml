|- let x = ref 2 in let y = ref 3 in
   let refx = ref x in let refy = ref y in
   let z = !refx := !(!refy) in !x
  evalto 3 / @l1 = 3, @l2 = 3, @l3 = @l1, @l4 = @l2
by E-Let {
    |- ref 2 evalto @l1 / @l1 = 2 by E-Ref {
        |- 2 evalto 2 by E-Int {};
    };
    @l1 = 2 / x = @l1 |- let y = ref 3 in let refx = ref x in let refy = ref y in let z = !refx := !(!refy) in !x evalto 3 / @l1 = 3, @l2 = 3, @l3 = @l1, @l4 = @l2 by E-Let {
        @l1 = 2 / x = @l1 |- ref 3 evalto @l2 / @l1 = 2, @l2 = 3 by E-Ref {
            @l1 = 2 / x = @l1 |- 3 evalto 3 / @l1 = 2 by E-Int {};
        };
        @l1 = 2, @l2 = 3 / x = @l1, y = @l2 |- let refx = ref x in let refy = ref y in let z = !refx := !(!refy) in !x evalto 3 / @l1 = 3, @l2 = 3, @l3 = @l1, @l4 = @l2 by E-Let {
            @l1 = 2, @l2 = 3 / x = @l1, y = @l2 |- ref x evalto @l3 / @l1 = 2, @l2 = 3, @l3 = @l1 by E-Ref {
                @l1 = 2, @l2 = 3 / x = @l1, y = @l2 |- x evalto @l1 / @l1 = 2, @l2 = 3 by E-Var {};
            };
            @l1 = 2, @l2 = 3, @l3 = @l1 / x = @l1, y = @l2, refx = @l3 |- let refy = ref y in let z = !refx := !(!refy) in !x evalto 3 / @l1 = 3, @l2 = 3, @l3 = @l1, @l4 = @l2 by E-Let {
                @l1 = 2, @l2 = 3, @l3 = @l1 / x = @l1, y = @l2, refx = @l3 |- ref y evalto @l4 / @l1 = 2, @l2 = 3, @l3 = @l1, @l4 = @l2 by E-Ref {
                    @l1 = 2, @l2 = 3, @l3 = @l1 / x = @l1, y = @l2, refx = @l3 |- y evalto @l2 / @l1 = 2, @l2 = 3, @l3 = @l1 by E-Var {};
                };
                @l1 = 2, @l2 = 3, @l3 = @l1, @l4 = @l2 / x = @l1, y = @l2, refx = @l3, refy = @l4 |- let z = !refx := !(!refy) in !x evalto 3 / @l1 = 3, @l2 = 3, @l3 = @l1, @l4 = @l2 by E-Let {
                    @l1 = 2, @l2 = 3, @l3 = @l1, @l4 = @l2 / x = @l1, y = @l2, refx = @l3, refy = @l4 |- !refx := !(!refy) evalto 3 / @l1 = 3, @l2 = 3, @l3 = @l1, @l4 = @l2 by E-Assign {
                        @l1 = 2, @l2 = 3, @l3 = @l1, @l4 = @l2 / x = @l1, y = @l2, refx = @l3, refy = @l4 |- !refx evalto @l1 / @l1 = 2, @l2 = 3, @l3 = @l1, @l4 = @l2 by E-Deref {
                            @l1 = 2, @l2 = 3, @l3 = @l1, @l4 = @l2 / x = @l1, y = @l2, refx = @l3, refy = @l4 |- refx evalto @l3 / @l1 = 2, @l2 = 3, @l3 = @l1, @l4 = @l2 by E-Var {};
                        };
                        @l1 = 2, @l2 = 3, @l3 = @l1, @l4 = @l2 / x = @l1, y = @l2, refx = @l3, refy = @l4 |- !(!refy) evalto 3 / @l1 = 2, @l2 = 3, @l3 = @l1, @l4 = @l2 by E-Deref {
                            @l1 = 2, @l2 = 3, @l3 = @l1, @l4 = @l2 / x = @l1, y = @l2, refx = @l3, refy = @l4 |- (!refy) evalto @l2 / @l1 = 2, @l2 = 3, @l3 = @l1, @l4 = @l2 by E-Deref {
                                @l1 = 2, @l2 = 3, @l3 = @l1, @l4 = @l2 / x = @l1, y = @l2, refx = @l3, refy = @l4 |- refy evalto @l4 / @l1 = 2, @l2 = 3, @l3 = @l1, @l4 = @l2 by E-Var {};
                            };
                        };
                    };
                    @l1 = 3, @l2 = 3, @l3 = @l1, @l4 = @l2 / x = @l1, y = @l2, refx = @l3, refy = @l4, z = 3 |- !x evalto 3 / @l1 = 3, @l2 = 3, @l3 = @l1, @l4 = @l2 by E-Deref {
                        @l1 = 3, @l2 = 3, @l3 = @l1, @l4 = @l2 / x = @l1, y = @l2, refx = @l3, refy = @l4, z = 3 |- x evalto @l1 / @l1 = 3, @l2 = 3, @l3 = @l1, @l4 = @l2 by E-Var {};
                    };
                };
            };
        };
    };
}