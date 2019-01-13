|- let rec sum = fun f -> fun n ->
     if n < 1 then 0 else f n + sum f (n - 1) in 
   sum (fun x -> x * x) 2 : int
by T-LetRec {
    sum : (int -> int) -> int -> int, f : int -> int |- fun n -> if n < 1 then 0 else f n + sum f (n - 1) : int -> int by T-Fun {
        sum : (int -> int) -> int -> int, f : int -> int, n : int |- if n < 1 then 0 else f n + sum f (n - 1) : int by T-If {
            sum : (int -> int) -> int -> int, f : int -> int, n : int |- n < 1 : bool by T-Lt {
                sum : (int -> int) -> int -> int, f : int -> int, n : int |- n : int by T-Var {};
                sum : (int -> int) -> int -> int, f : int -> int, n : int |- 1 : int by T-Int {};
            };
            sum : (int -> int) -> int -> int, f : int -> int, n : int |- 0 : int by T-Int {};
            sum : (int -> int) -> int -> int, f : int -> int, n : int |- f n + sum f (n - 1) : int by T-Plus {
                sum : (int -> int) -> int -> int, f : int -> int, n : int |- f n : int by T-App {
                    sum : (int -> int) -> int -> int, f : int -> int, n : int |- f : int -> int by T-Var {};
                    sum : (int -> int) -> int -> int, f : int -> int, n : int |- n : int by T-Var {};
                };
                sum : (int -> int) -> int -> int, f : int -> int, n : int |- sum f (n - 1) : int by T-App {
                    sum : (int -> int) -> int -> int, f : int -> int, n : int |- sum f : int -> int by T-App {
                        sum : (int -> int) -> int -> int, f : int -> int, n : int |- sum : (int -> int) -> int -> int by T-Var {};
                        sum : (int -> int) -> int -> int, f : int -> int, n : int |- f : int -> int by T-Var {};
                    };
                    sum : (int -> int) -> int -> int, f : int -> int, n : int |- n - 1 : int by T-Minus {
                        sum : (int -> int) -> int -> int, f : int -> int, n : int |- n : int by T-Var {};
                        sum : (int -> int) -> int -> int, f : int -> int, n : int |- 1 : int by T-Int {};
                    };
                };
            };
        };
    };
    sum : (int -> int) -> int -> int |- sum (fun x -> x * x) 2 : int by T-App {
        sum : (int -> int) -> int -> int |- sum (fun x -> x * x) : int -> int by T-App {
            sum : (int -> int) -> int -> int |- sum : (int -> int) -> int -> int by T-Var {};
            sum : (int -> int) -> int -> int |- (fun x -> x * x) : int -> int by T-Fun {
                sum : (int -> int) -> int -> int, x : int |- x * x : int by T-Times {
                    sum : (int -> int) -> int -> int, x : int |- x : int by T-Var {};
                    sum : (int -> int) -> int -> int, x : int |- x : int by T-Var {};
                };
            };
        };
        sum : (int -> int) -> int -> int |- 2 : int by T-Int {};
    };
}