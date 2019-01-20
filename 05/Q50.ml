|- let rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1) in fact 3 evalto 6 by E-LetRec {
    fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)] |- fact 3 evalto 6 by E-AppRec {
        fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)] |- fact evalto ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)] by E-Var1 {};
        fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)] |- 3 evalto 3 by E-Int {};
        fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], n = 3 |- if n < 2 then 1 else n * fact (n - 1) evalto 6 by E-IfF{
            fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], n = 3 |- n < 2 evalto false by E-Lt {
                fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], n = 3 |- n evalto 3 by E-Var1 {};
                fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], n = 3 |- 2 evalto 2 by E-Int {};
                3 less than 2 is false by B-Lt {};
            };
            fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], n = 3 |- n * fact (n - 1) evalto 6 by E-Times {
                fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], n = 3 |- n evalto 3 by E-Var1 {};
                fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], n = 3 |- fact (n - 1) evalto 2 by E-AppRec {
                    fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], n = 3 |- fact evalto ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)] by E-Var2 {
                        fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)] |- fact evalto ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)] by E-Var1 {};
                    };
                    fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], n = 3 |- n - 1 evalto 2 by E-Minus {
                        fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], n = 3 |- n evalto 3 by E-Var1 {};
                        fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], n = 3 |- 1 evalto 1 by E-Int {};
                        3 minus 1 is 2 by B-Minus {};
                    };
                    fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], n = 2 |- if n < 2 then 1 else n * fact (n - 1) evalto 2 by E-IfF {
                        fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], n = 2 |- n < 2 evalto false by E-Lt {
                            fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], n = 2 |- n evalto 2 by E-Var1 {};
                            fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], n = 2 |- 2 evalto 2 by E-Int {};
                            2 less than 2 is false by B-Lt {};
                        };
                        fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], n = 2 |- n * fact (n - 1) evalto 2 by E-Times {
                            fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], n = 2 |- n evalto 2 by E-Var1 {};
                            fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], n = 2 |- fact (n - 1) evalto 1 by E-AppRec {
                                fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], n = 2 |- fact evalto ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)] by E-Var2 {
                                    fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)] |- fact evalto ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)] by E-Var1 {};
                                };
                                fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], n = 2 |- (n - 1) evalto 1 by E-Minus {
                                    fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], n = 2 |- n evalto 2 by E-Var1 {};
                                    fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], n = 2 |- 1 evalto 1 by E-Int {};
                                    2 minus 1 is 1 by B-Minus {};
                                };
                                fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], n = 1 |- if n < 2 then 1 else n * fact (n - 1) evalto 1 by E-IfT {
                                    fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], n = 1 |- n < 2 evalto true by E-Lt {
                                        fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], n = 1 |- n evalto 1 by E-Var1 {};
                                        fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], n = 1 |- 2 evalto 2 by E-Int {};
                                        1 less than 2 is true by B-Lt {};
                                    };
                                    fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], n = 1 |- 1 evalto 1 by E-Int {};
                                };
                            };
                            2 times 1 is 2 by B-Times {};
                        };
                    };
                };
                3 times 2 is 6 by B-Times {};
            };
        };
    }
}