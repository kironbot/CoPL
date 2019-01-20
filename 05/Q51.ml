|- let rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2) in fib 5 evalto 5 by E-LetRec {
    fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)] |- fib 5 evalto 5 by E-AppRec {
        fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)] |- fib evalto ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)] by E-Var1 {};
        fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)] |- 5 evalto 5 by E-Int {};
        fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)], n = 5 |- if n < 3 then 1 else fib (n - 1) + fib (n - 2) evalto 5 by E-IfF {
            fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)], n = 5 |- n < 3 evalto false by E-Lt {
                fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)], n = 5 |- n evalto 5 by E-Var1 {};
                fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)], n = 5 |- 3 evalto 3 by E-Int {};
                5 less than 3 is false by B-Lt {};
            };
            fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)], n = 5 |- fib (n - 1) + fib (n - 2) evalto 5 by E-Plus {
                fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)], n = 5 |- fib (n - 1) evalto 3 by E-AppRec {
                    fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)], n = 5 |- fib evalto ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)] by E-Var2 {
                        fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)] |- fib evalto ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)] by E-Var1 {};
                    };
                    fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)], n = 5 |- n - 1 evalto 4 by E-Minus {
                        fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)], n = 5 |- n evalto 5 by E-Var1 {};
                        fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)], n = 5 |- 1 evalto 1 by E-Int {};
                        5 minus 1 is 4 by B-Minus {};
                    };
                    fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)], n = 4 |- if n < 3 then 1 else fib (n - 1) + fib (n - 2) evalto 3 by E-IfF {
                        fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)], n = 4 |- n < 3 evalto false by E-Lt {
                            fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)], n = 4 |- n evalto 4 by E-Var1 {};
                            fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)], n = 4 |- 3 evalto 3 by E-Int {};
                            4 less than 3 is false by B-Lt {};
                        };
                        fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)], n = 4 |- fib (n - 1) + fib (n - 2) evalto 3 by E-Plus {
                            fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)], n = 4 |- fib (n - 1) evalto 2 by E-AppRec {
                                fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)], n = 4 |- fib evalto ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)] by E-Var2 {
                                    fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)] |- fib evalto ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)] by E-Var1 {};
                                };
                                fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)], n = 4 |- n - 1 evalto 3 by E-Minus {
                                    fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)], n = 4 |- n evalto 4 by E-Var1 {};
                                    fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)], n = 4 |- 1 evalto 1 by E-Int {};
                                    4 minus 1 is 3 by B-Minus {};
                                };
                                fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)], n = 3 |- if n < 3 then 1 else fib (n - 1) + fib (n - 2) evalto 2 by E-IfF {
                                    fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)], n = 3 |- n < 3 evalto false by E-Lt {
                                            fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)], n = 3 |- n evalto 3 by E-Var1 {};
                                        fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)], n = 3 |- 3 evalto 3 by E-Int {};
                                        3 less than 3 is false by B-Lt {};
                                    };
                                    fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)], n = 3 |- fib (n - 1) + fib (n - 2) evalto 2 by E-Plus {
                                        fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)], n = 3 |- fib (n - 1) evalto 1 by E-AppRec {
                                            fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)], n = 3 |- fib evalto ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)] by E-Var2 {
                                                fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)] |- fib evalto ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)] by E-Var1 {};
                                            };
                                            fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)], n = 3 |- n - 1 evalto 2 by E-Minus {
                                                fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)], n = 3 |- n evalto 3 by E-Var1 {};
                                                fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)], n = 3 |- 1 evalto 1 by E-Int {};
                                                3 minus 1 is 2 by B-Minus {};
                                            };
                                            fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)], n = 2 |- if n < 3 then 1 else fib (n - 1) + fib (n - 2) evalto 1 by E-IfT {
                                                fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)], n = 2 |- n < 3 evalto true by E-Lt {
                                                    fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)], n = 2 |- n evalto 2 by E-Var1 {};
                                                    fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)], n = 2 |- 3 evalto 3 by E-Int {};
                                                    2 less than 3 is true by B-Lt {};
                                                };
                                                fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)], n = 2 |- 1 evalto 1 by E-Int {};
                                            };
                                        };
                                        fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)], n = 3 |- fib (n - 2) evalto 1 by E-AppRec {
                                            fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)], n = 3 |- fib evalto ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)] by E-Var2 {
                                                fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)] |- fib evalto ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)] by E-Var1 {};
                                            };
                                            fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)], n = 3 |- n - 2 evalto 1 by E-Minus {
                                                fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)], n = 3 |- n evalto 3 by E-Var1 {};
                                                fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)], n = 3 |- 2 evalto 2 by E-Int {};
                                                3 minus 2 is 1 by B-Minus {};
                                            };
                                            fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)], n = 1 |- if n < 3 then 1 else fib (n - 1) + fib (n - 2) evalto 1 by E-IfT {
                                                fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)], n = 1 |- n < 3 evalto true by E-Lt {
                                                    fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)], n = 1 |- n evalto 1 by E-Var1 {};
                                                    fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)], n = 1 |- 3 evalto 3 by E-Int {};
                                                    1 less than 3 is true by B-Lt {};
                                                };
                                                fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)], n = 1 |- 1 evalto 1 by E-Int {};
                                            };
                                        };
                                        1 plus 1 is 2 by B-Plus {};
                                    };
                                };
                            };
                            fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)], n = 4 |- fib (n - 2) evalto 1 by E-AppRec {
                                fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)], n = 4 |- fib evalto ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)] by E-Var2 {
                                    fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)] |- fib evalto ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)] by E-Var1 {};
                                };
                                fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)], n = 4 |- n - 2 evalto 2 by E-Minus {
                                    fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)], n = 4 |- n evalto 4 by E-Var1 {};
                                    fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)], n = 4 |- 2 evalto 2 by E-Int {};
                                    4 minus 2 is 2 by B-Minus {};
                                };
                                fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)], n = 2 |- if n < 3 then 1 else fib (n - 1) + fib (n - 2) evalto 1 by E-IfT {
                                    fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)], n = 2 |- n < 3 evalto true by E-Lt {
                                        fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)], n = 2 |- n evalto 2 by E-Var1 {};
                                        fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)], n = 2 |- 3 evalto 3 by E-Int {};
                                        2 less than 3 is true by B-Lt {};
                                    };
                                    fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)], n = 2 |- 1 evalto 1 by E-Int {};
                                };
                            };
                            2 plus 1 is 3 by B-Plus {};
                        };
                    };
                };
                fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)], n = 5 |- fib (n - 2) evalto 2 by E-AppRec {
                    fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)], n = 5 |- fib evalto ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)] by E-Var2 {
                        fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)] |- fib evalto ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)] by E-Var1 {};
                    };
                    fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)], n = 5 |- n - 2 evalto 3 by E-Minus {
                        fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)], n = 5 |- n evalto 5 by E-Var1 {};
                        fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)], n = 5 |- 2 evalto 2 by E-Int {};
                        5 minus 2 is 3 by B-Minus {};
                    };
                    fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)], n = 3 |- if n < 3 then 1 else fib (n - 1) + fib (n - 2) evalto 2 by E-IfF {
                        fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)], n = 3 |- n < 3 evalto false by E-Lt {
                            fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)], n = 3 |- n evalto 3 by E-Var1 {};
                            fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)], n = 3 |- 3 evalto 3 by E-Int {};
                            3 less than 3 is false by B-Lt {};
                        };
                        fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)], n = 3 |- fib (n - 1) + fib (n - 2) evalto 2 by E-Plus {
                            fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)], n = 3 |- fib (n - 1) evalto 1 by E-AppRec {
                                fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)], n = 3 |- fib evalto ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)] by E-Var2 {
                                    fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)] |- fib evalto ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)] by E-Var1 {};
                                };
                                fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)], n = 3 |- n - 1 evalto 2 by E-Minus {
                                    fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)], n = 3 |- n evalto 3 by E-Var1 {};
                                    fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)], n = 3 |- 1 evalto 1 by E-Int {};
                                    3 minus 1 is 2 by B-Minus {};
                                };
                                fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)], n = 2 |- if n < 3 then 1 else fib (n - 1) + fib (n - 2) evalto 1 by E-IfT {
                                    fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)], n = 2 |- n < 3 evalto true by E-Lt {
                                        fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)], n = 2 |- n evalto 2 by E-Var1 {};
                                        fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)], n = 2 |- 3 evalto 3 by E-Int {};
                                        2 less than 3 is true by B-Lt {};
                                    };
                                    fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)], n = 2 |- 1 evalto 1 by E-Int {};
                                };
                            };
                            fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)], n = 3 |- fib (n - 2) evalto 1 by E-AppRec {
                                fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)], n = 3 |- fib evalto ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)] by E-Var2 {
                                    fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)] |- fib evalto ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)] by E-Var1 {};
                                };
                                fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)], n = 3 |- n - 2 evalto 1 by E-Minus {
                                    fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)], n = 3 |- n evalto 3 by E-Var1 {};
                                    fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)], n = 3 |- 2 evalto 2 by E-Int {};
                                    3 minus 2 is 1 by B-Minus {};
                                };
                                fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)], n = 1 |- if n < 3 then 1 else fib (n - 1) + fib (n - 2) evalto 1 by E-IfT {
                                    fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)], n = 1 |- n < 3 evalto true by E-Lt {
                                        fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)], n = 1 |- n evalto 1 by E-Var1 {};
                                        fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)], n = 1 |- 3 evalto 3 by E-Int {};
                                        1 less than 3 is true by B-Lt {};
                                    };
                                    fib = ()[rec fib = fun n -> if n < 3 then 1 else fib (n - 1) + fib (n - 2)], n = 1 |- 1 evalto 1 by E-Int {};
                                };
                            };
                            1 plus 1 is 2 by B-Plus {};
                        };
                    };
                };
                3 plus 2 is 5 by B-Plus {};
            };
        };
    };
}