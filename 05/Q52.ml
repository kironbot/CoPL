|- let rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1) in sum (fun x -> x * x) 2 evalto 5 by E-LetRec {
    sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)] |- sum (fun x -> x * x) 2 evalto 5 by E-App {
        sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)] |- sum (fun x -> x * x) evalto (sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)], f = (sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)])[fun x -> x * x])[fun n -> if n < 1 then 0 else f n + sum f (n - 1)] by E-AppRec {
            sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)] |- sum evalto ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)] by E-Var1 {};
            sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)] |- fun x -> x * x evalto (sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)])[fun x -> x * x] by E-Fun {};
            sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)], f = (sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)])[fun x -> x * x] |- fun n -> if n < 1 then 0 else f n + sum f (n - 1) evalto (sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)], f = (sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)])[fun x -> x * x])[fun n -> if n < 1 then 0 else f n + sum f (n - 1)] by E-Fun {};
        };
        sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)] |- 2 evalto 2 by E-Int {};
        sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)], f = (sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)])[fun x -> x * x], n = 2 |- if n < 1 then 0 else f n + sum f (n - 1) evalto 5 by E-IfF {
            sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)], f = (sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)])[fun x -> x * x], n = 2 |- n < 1 evalto false by E-Lt {
                sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)], f = (sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)])[fun x -> x * x], n = 2 |- n evalto 2 by E-Var1 {};
                sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)], f = (sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)])[fun x -> x * x], n = 2 |- 1 evalto 1 by E-Int {};
                2 less than 1 is false by B-Lt {};
            };
            sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)], f = (sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)])[fun x -> x * x], n = 2 |- f n + sum f (n - 1) evalto 5 by E-Plus {
                sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)], f = (sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)])[fun x -> x * x], n = 2 |- f n evalto 4 by E-App {
                    sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)], f = (sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)])[fun x -> x * x], n = 2 |- f evalto (sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)])[fun x -> x * x] by E-Var2 {
                        sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)], f = (sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)])[fun x -> x * x] |- f evalto (sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)])[fun x -> x * x] by E-Var1 {};
                    };
                    sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)], f = (sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)])[fun x -> x * x], n = 2 |- n evalto 2 by E-Var1 {};
                    sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)], x = 2 |- x * x evalto 4 by E-Times {
                        sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)], x = 2 |- x evalto 2 by E-Var1 {};
                        sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)], x = 2 |- x evalto 2 by E-Var1 {};
                        2 times 2 is 4 by B-Times {};
                    }; 
                };
                sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)], f = (sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)])[fun x -> x * x], n = 2 |- sum f (n - 1) evalto 1 by E-App {
                    sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)], f = (sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)])[fun x -> x * x], n = 2 |- sum f evalto (sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)], f = (sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)])[fun x -> x * x])[fun n -> if n < 1 then 0 else f n + sum f (n - 1)] by E-AppRec {
                        sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)], f = (sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)])[fun x -> x * x], n = 2 |- sum evalto ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)] by E-Var2 {
                            sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)], f = (sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)])[fun x -> x * x] |- sum evalto ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)] by E-Var2 {
                                sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)] |- sum evalto ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)] by E-Var1 {};
                            };
                        };
                        sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)], f = (sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)])[fun x -> x * x], n = 2 |- f evalto (sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)])[fun x -> x * x] by E-Var2 {
                            sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)], f = (sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)])[fun x -> x * x] |- f evalto (sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)])[fun x -> x * x] by E-Var1 {};
                        };
                        sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)], f = (sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)])[fun x -> x * x] |- fun n -> if n < 1 then 0 else f n + sum f (n - 1) evalto (sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)], f = (sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)])[fun x -> x * x])[fun n -> if n < 1 then 0 else f n + sum f (n - 1)] by E-Fun {};
                    };
                    sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)], f = (sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)])[fun x -> x * x], n = 2 |- n - 1 evalto 1 by E-Minus {
                        sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)], f = (sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)])[fun x -> x * x], n = 2 |- n evalto 2 by E-Var1 {};
                        sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)], f = (sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)])[fun x -> x * x], n = 2 |- 1 evalto 1 by E-Int {};
                        2 minus 1 is 1 by B-Minus {};
                    };
                    sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)], f = (sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)])[fun x -> x * x], n = 1 |- if n < 1 then 0 else f n + sum f (n - 1) evalto 1 by E-IfF {
                        sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)], f = (sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)])[fun x -> x * x], n = 1 |- n < 1 evalto false by E-Lt {
                            sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)], f = (sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)])[fun x -> x * x], n = 1 |- n evalto 1 by E-Var1 {};
                            sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)], f = (sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)])[fun x -> x * x], n = 1 |- 1 evalto 1 by E-Int {};
                            1 less than 1 is false by B-Lt {};
                        };
                        sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)], f = (sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)])[fun x -> x * x], n = 1 |- f n + sum f (n - 1) evalto 1 by E-Plus {
                            sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)], f = (sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)])[fun x -> x * x], n = 1 |- f n evalto 1 by E-App {
                                sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)], f = (sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)])[fun x -> x * x], n = 1 |- f evalto (sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)])[fun x -> x * x] by E-Var2 {
                                    sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)], f = (sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)])[fun x -> x * x] |- f evalto (sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)])[fun x -> x * x] by E-Var1 {};
                                };
                                sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)], f = (sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)])[fun x -> x * x], n = 1 |- n evalto 1 by E-Var1 {};
                                sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)], x = 1 |- x * x evalto 1 by E-Times {
                                    sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)], x = 1 |- x evalto 1 by E-Var1 {};
                                    sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)], x = 1 |- x evalto 1 by E-Var1 {};
                                    1 times 1 is 1 by B-Times {};
                                };
                            };
                            sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)], f = (sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)])[fun x -> x * x], n = 1 |- sum f (n - 1) evalto 0 by E-App {
                                sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)], f = (sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)])[fun x -> x * x], n = 1 |- sum f evalto (sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)], f = (sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)])[fun x -> x * x])[fun n -> if n < 1 then 0 else f n + sum f (n - 1)] by E-AppRec {
                                    sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)], f = (sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)])[fun x -> x * x], n = 1 |- sum evalto ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)] by E-Var2 {
                                        sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)], f = (sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)])[fun x -> x * x] |- sum evalto ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)] by E-Var2 {
                                            sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)] |- sum evalto ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)] by E-Var1 {};
                                        };
                                    };
                                    sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)], f = (sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)])[fun x -> x * x], n = 1 |- f evalto (sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)])[fun x -> x * x] by E-Var2 {
                                        sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)], f = (sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)])[fun x -> x * x] |- f evalto (sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)])[fun x -> x * x] by E-Var1 {};
                                    };
                                    sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)], f = (sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)])[fun x -> x * x] |- fun n -> if n < 1 then 0 else f n + sum f (n - 1) evalto (sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)], f = (sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)])[fun x -> x * x])[fun n -> if n < 1 then 0 else f n + sum f (n - 1)] by E-Fun {};
                                };
                                sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)], f = (sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)])[fun x -> x * x], n = 1 |- n - 1 evalto 0 by E-Minus {
                                    sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)], f = (sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)])[fun x -> x * x], n = 1 |- n evalto 1 by E-Var1 {};
                                    sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)], f = (sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)])[fun x -> x * x], n = 1 |- 1 evalto 1 by E-Int {};
                                    1 minus 1 is 0 by B-Minus {};
                                };
                                sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)], f = (sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)])[fun x -> x * x], n = 0 |- if n < 1 then 0 else f n + sum f (n - 1) evalto 0 by E-IfT {
                                    sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)], f = (sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)])[fun x -> x * x], n = 0 |- n < 1 evalto true by E-Lt {
                                        sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)], f = (sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)])[fun x -> x * x], n = 0 |- n evalto 0 by E-Var1 {};
                                        sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)], f = (sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)])[fun x -> x * x], n = 0 |- 1 evalto 1 by E-Int {};
                                        0 less than 1 is true by B-Lt {};
                                    };
                                    sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)], f = (sum = ()[rec sum = fun f -> fun n -> if n < 1 then 0 else f n + sum f (n - 1)])[fun x -> x * x], n = 0 |- 0 evalto 0 by E-Int {};
                                }; 
                            }; 
                            1 plus 0 is 1 by B-Plus {};
                        };
                    };
                };
                4 plus 1 is 5 by B-Plus {};
            };
        };
    };
}