|- let rec fact = fun n ->
     if n < 2 then 1 else n * fact (n - 1) in
     fact 3 : int
by T-LetRec {
    fact : int -> int, n : int |- if n < 2 then 1 else n * fact (n - 1) : int by T-If {
        fact : int -> int, n : int |- n < 2 : bool by T-Lt {
            fact : int -> int, n : int |- n : int by T-Var {};
            fact : int -> int, n : int |- 2 : int by T-Int {};
        };
        fact : int -> int, n : int |- 1 : int by T-Int {};
        fact : int -> int, n : int |- n * fact (n - 1) : int by T-Times {
            fact : int -> int, n : int |- n : int by T-Var {};
            fact : int -> int, n : int |- fact (n - 1) : int by T-App {
                fact : int -> int, n : int |- fact : int -> int by T-Var {};
                fact : int -> int, n : int |- n - 1 : int by T-Minus {
                    fact : int -> int, n : int |- n : int by T-Var {};
                    fact : int -> int, n : int |- 1 : int by T-Int {};
                };
            };
        };
    };
    fact : int -> int |- fact 3 : int by T-App {
        fact : int -> int |- fact : int -> int by T-Var {};
        fact : int -> int |- 3 : int by T-Int {};
    };
 }