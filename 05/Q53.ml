|- let fact = fun self -> fun n -> if n < 2 then 1 else n * self self (n - 1) in fact fact 3 evalto 6 by E-Let {
    |- fun self -> fun n -> if n < 2 then 1 else n * self self (n - 1) evalto ()[fun self -> fun n -> if n < 2 then 1 else n * self self (n - 1)] by E-Fun {};
    fact = ()[fun self -> fun n -> if n < 2 then 1 else n * self self (n - 1)] |- fact fact 3 evalto 6 by E-App {
        fact = ()[fun self -> fun n -> if n < 2 then 1 else n * self self (n - 1)] |- fact fact evalto (self = ()[fun self -> fun n -> if n < 2 then 1 else n * self self (n - 1)])[fun n -> if n < 2 then 1 else n * self self (n - 1)] by E-App {
            fact = ()[fun self -> fun n -> if n < 2 then 1 else n * self self (n - 1)] |- fact evalto ()[fun self -> fun n -> if n < 2 then 1 else n * self self (n - 1)] by E-Var1 {};
            fact = ()[fun self -> fun n -> if n < 2 then 1 else n * self self (n - 1)] |- fact evalto ()[fun self -> fun n -> if n < 2 then 1 else n * self self (n - 1)] by E-Var1 {};
            self = ()[fun self -> fun n -> if n < 2 then 1 else n * self self (n - 1)] |- fun n -> if n < 2 then 1 else n * self self (n - 1) evalto (self = ()[fun self -> fun n -> if n < 2 then 1 else n * self self (n - 1)])[fun n -> if n < 2 then 1 else n * self self (n - 1)] by E-Fun {};
        };
        fact = ()[fun self -> fun n -> if n < 2 then 1 else n * self self (n - 1)] |- 3 evalto 3 by E-Int {};
        self = ()[fun self -> fun n -> if n < 2 then 1 else n * self self (n - 1)], n = 3 |- if n < 2 then 1 else n * self self (n - 1) evalto 6 by E-IfF {
            self = ()[fun self -> fun n -> if n < 2 then 1 else n * self self (n - 1)], n = 3 |- n < 2 evalto false by E-Lt {
                self = ()[fun self -> fun n -> if n < 2 then 1 else n * self self (n - 1)], n = 3 |- n evalto 3 by E-Var1 {};
                self = ()[fun self -> fun n -> if n < 2 then 1 else n * self self (n - 1)], n = 3 |- 2 evalto 2 by E-Int {};
                3 less than 2 is false by B-Lt {};
            };
            self = ()[fun self -> fun n -> if n < 2 then 1 else n * self self (n - 1)], n = 3 |- n * self self (n - 1) evalto 6 by E-Times {
                self = ()[fun self -> fun n -> if n < 2 then 1 else n * self self (n - 1)], n = 3 |- n evalto 3 by E-Var1 {};
                self = ()[fun self -> fun n -> if n < 2 then 1 else n * self self (n - 1)], n = 3 |- self self (n - 1) evalto 2 by E-App {
                    self = ()[fun self -> fun n -> if n < 2 then 1 else n * self self (n - 1)], n = 3 |- self self evalto (self = ()[fun self -> fun n -> if n < 2 then 1 else n * self self (n - 1)])[fun n -> if n < 2 then 1 else n * self self (n - 1)] by E-App {
                        self = ()[fun self -> fun n -> if n < 2 then 1 else n * self self (n - 1)], n = 3 |- self evalto ()[fun self -> fun n -> if n < 2 then 1 else n * self self (n - 1)] by E-Var2 {
                            self = ()[fun self -> fun n -> if n < 2 then 1 else n * self self (n - 1)] |- self evalto ()[fun self -> fun n -> if n < 2 then 1 else n * self self (n - 1)] by E-Var1 {};
                        };
                        self = ()[fun self -> fun n -> if n < 2 then 1 else n * self self (n - 1)], n = 3 |- self evalto ()[fun self -> fun n -> if n < 2 then 1 else n * self self (n - 1)] by E-Var2 {
                            self = ()[fun self -> fun n -> if n < 2 then 1 else n * self self (n - 1)] |- self evalto ()[fun self -> fun n -> if n < 2 then 1 else n * self self (n - 1)] by E-Var1 {};
                        };
                        self = ()[fun self -> fun n -> if n < 2 then 1 else n * self self (n - 1)] |- fun n -> if n < 2 then 1 else n * self self (n - 1) evalto (self = ()[fun self -> fun n -> if n < 2 then 1 else n * self self (n - 1)])[fun n -> if n < 2 then 1 else n * self self (n - 1)] by E-Fun {};
                    };
                    self = ()[fun self -> fun n -> if n < 2 then 1 else n * self self (n - 1)], n = 3 |- n - 1 evalto 2 by E-Minus {
                        self = ()[fun self -> fun n -> if n < 2 then 1 else n * self self (n - 1)], n = 3 |- n evalto 3 by E-Var1 {};
                        self = ()[fun self -> fun n -> if n < 2 then 1 else n * self self (n - 1)], n = 3 |- 1 evalto 1 by E-Int {};
                        3 minus 1 is 2 by B-Minus {};
                    };
                    self = ()[fun self -> fun n -> if n < 2 then 1 else n * self self (n - 1)], n = 2 |- if n < 2 then 1 else n * self self (n - 1) evalto 2 by E-IfF {
                        self = ()[fun self -> fun n -> if n < 2 then 1 else n * self self (n - 1)], n = 2 |- n < 2 evalto false by E-Lt {
                            self = ()[fun self -> fun n -> if n < 2 then 1 else n * self self (n - 1)], n = 2 |- n evalto 2 by E-Var1 {};
                            self = ()[fun self -> fun n -> if n < 2 then 1 else n * self self (n - 1)], n = 2 |- 2 evalto 2 by E-Int {};
                            2 less than 2 is false by B-Lt {};
                        };
                        self = ()[fun self -> fun n -> if n < 2 then 1 else n * self self (n - 1)], n = 2 |- n * self self (n - 1) evalto 2 by E-Times {
                            self = ()[fun self -> fun n -> if n < 2 then 1 else n * self self (n - 1)], n = 2 |- n evalto 2 by E-Var1 {};
                            self = ()[fun self -> fun n -> if n < 2 then 1 else n * self self (n - 1)], n = 2 |- self self (n - 1) evalto 1 by E-App {
                                self = ()[fun self -> fun n -> if n < 2 then 1 else n * self self (n - 1)], n = 2 |- self self evalto (self = ()[fun self -> fun n -> if n < 2 then 1 else n * self self (n - 1)])[fun n -> if n < 2 then 1 else n * self self (n - 1)] by E-App {
                                    self = ()[fun self -> fun n -> if n < 2 then 1 else n * self self (n - 1)], n = 2 |- self evalto ()[fun self -> fun n -> if n < 2 then 1 else n * self self (n - 1)] by E-Var2 {
                                        self = ()[fun self -> fun n -> if n < 2 then 1 else n * self self (n - 1)] |- self evalto ()[fun self -> fun n -> if n < 2 then 1 else n * self self (n - 1)] by E-Var1 {};
                                    };
                                    self = ()[fun self -> fun n -> if n < 2 then 1 else n * self self (n - 1)], n = 2 |- self evalto ()[fun self -> fun n -> if n < 2 then 1 else n * self self (n - 1)] by E-Var2 {
                                        self = ()[fun self -> fun n -> if n < 2 then 1 else n * self self (n - 1)] |- self evalto ()[fun self -> fun n -> if n < 2 then 1 else n * self self (n - 1)] by E-Var1 {};
                                    };
                                    self = ()[fun self -> fun n -> if n < 2 then 1 else n * self self (n - 1)] |- fun n -> if n < 2 then 1 else n * self self (n - 1) evalto (self = ()[fun self -> fun n -> if n < 2 then 1 else n * self self (n - 1)])[fun n -> if n < 2 then 1 else n * self self (n - 1)] by E-Fun {};
                                };
                                self = ()[fun self -> fun n -> if n < 2 then 1 else n * self self (n - 1)], n = 2 |- n - 1 evalto 1 by E-Minus {
                                    self = ()[fun self -> fun n -> if n < 2 then 1 else n * self self (n - 1)], n = 2 |- n evalto 2 by E-Var1 {};
                                    self = ()[fun self -> fun n -> if n < 2 then 1 else n * self self (n - 1)], n = 2 |- 1 evalto 1 by E-Int {};
                                    2 minus 1 is 1 by B-Minus {};
                                };
                                self = ()[fun self -> fun n -> if n < 2 then 1 else n * self self (n - 1)], n = 1 |- if n < 2 then 1 else n * self self (n - 1) evalto 1 by E-IfT {
                                    self = ()[fun self -> fun n -> if n < 2 then 1 else n * self self (n - 1)], n = 1 |- n < 2 evalto true by E-Lt {
                                        self = ()[fun self -> fun n -> if n < 2 then 1 else n * self self (n - 1)], n = 1 |- n evalto 1 by E-Var1 {};
                                        self = ()[fun self -> fun n -> if n < 2 then 1 else n * self self (n - 1)], n = 1 |- 2 evalto 2 by E-Int {};
                                        1 less than 2 is true by B-Lt {};
                                    };
                                    self = ()[fun self -> fun n -> if n < 2 then 1 else n * self self (n - 1)], n = 1 |- 1 evalto 1 by E-Int {};
                                };
                            };
                            2 times 1 is 2 by B-Times {};
                        };
                    };
                };
                3 times 2 is 6 by B-Times {};
            };
        }; 
    };
}