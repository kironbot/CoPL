|- let f = ref (fun x -> x) in
   let fact = fun n -> if n < 1 then 1 else n * !f (n - 1) in
   let z = f := fact in
   fact 3 
  evalto 6 / @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)]
by E-Let {
    |- ref (fun x -> x) evalto @l1 / @l1 = ()[fun x -> x] by E-Ref {
        |- fun x -> x evalto ()[fun x -> x] by E-Fun {};
    };
    @l1 = ()[fun x -> x] / f = @l1 |- let fact = fun n -> if n < 1 then 1 else n * !f (n - 1) in let z = f := fact in fact 3  evalto 6 / @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] by E-Let {
        @l1 = ()[fun x -> x] / f = @l1 |- fun n -> if n < 1 then 1 else n * !f (n - 1) evalto (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] / @l1 = ()[fun x -> x] by E-Fun {};
        @l1 = ()[fun x -> x] / f = @l1, fact = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] |- let z = f := fact in fact 3  evalto 6 / @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] by E-Let {
            @l1 = ()[fun x -> x] / f = @l1, fact = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] |- f := fact evalto (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] / @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] by E-Assign {
                @l1 = ()[fun x -> x] / f = @l1, fact = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] |- f evalto @l1 / @l1 = ()[fun x -> x] by E-Var {};
                @l1 = ()[fun x -> x] / f = @l1, fact = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] |- fact evalto (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] / @l1 = ()[fun x -> x] by E-Var {};
            };
            @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] / f = @l1, fact = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)], z = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] |- fact 3 evalto 6 / @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] by E-App {
                @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] / f = @l1, fact = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)], z = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] |- fact evalto (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] / @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] by E-Var {};
                @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] / f = @l1, fact = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)], z = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] |- 3 evalto 3 / @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] by E-Int {};
                @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] / f = @l1, n = 3 |- if n < 1 then 1 else n * !f (n - 1) evalto 6 / @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] by E-IfF {
                    @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] / f = @l1, n = 3 |- n < 1 evalto false / @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] by E-Lt {
                        @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] / f = @l1, n = 3 |- n evalto 3 / @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] by E-Var {};
                        @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] / f = @l1, n = 3 |- 1 evalto 1 / @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] by E-Int {};
                        3 less than 1 is false by B-Lt {};
                    };
                    @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] / f = @l1, n = 3 |- n * !f (n - 1) evalto 6 / @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] by E-Mult {
                        @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] / f = @l1, n = 3 |- n evalto 3 / @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] by E-Var {};
                        @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] / f = @l1, n = 3 |- !f (n - 1) evalto 2 / @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] by E-App {
                            @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] / f = @l1, n = 3 |- !f evalto (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)]/ @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] by E-Deref {
                                @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] / f = @l1, n = 3 |- f evalto @l1 / @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] by E-Var {};
                            };
                            @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] / f = @l1, n = 3 |- n - 1 evalto 2 / @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] by E-Minus {
                                @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] / f = @l1, n = 3 |- n evalto 3 / @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] by E-Var {};
                                @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] / f = @l1, n = 3 |- 1 evalto 1 / @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] by E-Int {};
                                3 minus 1 is 2 by B-Minus {};
                            };
                            @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] / f = @l1, n = 2 |- if n < 1 then 1 else n * !f (n - 1) evalto 2 / @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] by E-IfF {
                                @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] / f = @l1, n = 2 |- n < 1 evalto false / @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] by E-Lt {
                                    @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] / f = @l1, n = 2 |- n evalto 2 / @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] by E-Var {};
                                    @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] / f = @l1, n = 2 |- 1 evalto 1 / @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] by E-Int {};
                                    2 less than 1 is false by B-Lt {};
                                };
                                @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] / f = @l1, n = 2 |- n * !f (n - 1) evalto 2 / @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] by E-Mult {
                                    @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] / f = @l1, n = 2 |- n evalto 2 / @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] by E-Var {};
                                    @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] / f = @l1, n = 2 |- !f (n - 1) evalto 1 / @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] by E-App {
                                        @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] / f = @l1, n = 2 |- !f evalto (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] / @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] by E-Deref {
                                            @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] / f = @l1, n = 2 |- f evalto @l1 / @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] by E-Var {};
                                        };
                                        @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] / f = @l1, n = 2 |- n - 1 evalto 1 / @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] by E-Minus {
                                            @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] / f = @l1, n = 2 |- n evalto 2 / @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] by E-Var {};
                                            @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] / f = @l1, n = 2 |- 1 evalto 1 / @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] by E-Int {};
                                            2 minus 1 is 1 by B-Minus {};
                                        };
                                        @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] / f = @l1, n = 1 |- if n < 1 then 1 else n * !f (n - 1) evalto 1 / @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] by E-IfF {
                                            @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] / f = @l1, n = 1 |- n < 1 evalto false / @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] by E-Lt {
                                                @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] / f = @l1, n = 1 |- n evalto 1 / @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] by E-Var {};
                                                @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] / f = @l1, n = 1 |- 1 evalto 1 / @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] by E-Int {};
                                                1 less than 1 is false by B-Lt {};
                                            };
                                            @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] / f = @l1, n = 1 |- n * !f (n - 1) evalto 1 / @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] by E-Mult {
                                                @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] / f = @l1, n = 1 |- n  evalto 1 / @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] by E-Var {};
                                                @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] / f = @l1, n = 1 |- !f (n - 1) evalto 1 / @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] by E-App {
                                                    @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] / f = @l1, n = 1 |- !f evalto (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] / @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] by E-Deref {
                                                        @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] / f = @l1, n = 1 |- f evalto @l1 / @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] by E-Var {};
                                                    };
                                                    @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] / f = @l1, n = 1 |- n - 1 evalto 0 / @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] by E-Minus {
                                                        @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] / f = @l1, n = 1 |- n evalto 1 / @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] by E-Var {};
                                                        @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] / f = @l1, n = 1 |- 1 evalto 1 / @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] by E-Int {};
                                                        1 minus 1 is 0 by B-Minus {};
                                                    };
                                                    @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] / f = @l1, n = 0 |- if n < 1 then 1 else n * !f (n - 1) evalto 1 / @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] by E-IfT {
                                                        @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] / f = @l1, n = 0 |- n < 1 evalto true / @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] by E-Lt {
                                                            @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] / f = @l1, n = 0 |- n evalto 0 / @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] by E-Var {};
                                                            @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] / f = @l1, n = 0 |- 1 evalto 1 / @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] by E-Int {};
                                                            0 less than 1 is true by B-Lt {};
                                                        };
                                                        @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] / f = @l1, n = 0 |- 1 evalto 1 / @l1 = (f = @l1)[fun n -> if n < 1 then 1 else n * !f (n - 1)] by E-Int {};
                                                    };
                                                };
                                                1 times 1 is 1 by B-Mult {};
                                            };
                                        };
                                    };
                                    2 times 1 is 2 by B-Mult {};
                                };
                            };
                        };
                        3 times 2 is 6 by B-Mult {};
                    };
                };
            };
        };
    };
}