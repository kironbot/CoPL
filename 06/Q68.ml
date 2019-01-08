|- let rec fact = fun n ->
     if n < 2 then 1 else n * fact (n - 1) in
     fact 3
==>
   let rec . = fun . -> 
     if #1 < 2 then 1 else #1 * #2 (#1 - 1) in #1 3
by Tr-LetRec {
    fact, n |- if n < 2 then 1 else n * fact (n - 1) ==> if #1 < 2 then 1 else #1 * #2 (#1 - 1) by Tr-If {
        fact , n |- n < 2 ==> #1 < 2 by Tr-Lt {
            fact, n |- n ==> #1 by Tr-Var1 {};
            fact, n |- 2 ==> 2 by Tr-Int {};
        };
        fact, n |- 1 ==> 1 by Tr-Int {};
        fact, n |- n * fact (n - 1) ==> #1 * #2 (#1 - 1) by Tr-Times {
            fact, n |- n ==> #1 by Tr-Var1 {};
            fact, n |- fact (n - 1) ==> #2 (#1 - 1) by Tr-App {
                fact, n |- fact ==> #2 by Tr-Var2 {
                    fact |- fact ==> #1 by Tr-Var1 {};
                };
                fact, n |- n - 1 ==> #1 - 1 by Tr-Minus {
                    fact, n |- n ==> #1 by Tr-Var1 {};
                    fact, n |- 1 ==> 1 by Tr-Int {};
                }
            };
        };
    };
    fact |- fact 3 ==> #1 3 by Tr-App {
        fact |- fact ==> #1 by Tr-Var1 {};
        fact |- 3 ==> 3 by Tr-Int {};
    }
}