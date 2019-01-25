|- let rec fact = fun n ->
   if n < 2 then 1 else n * fact (n - 1) in
   3 + (letcc k in 1 + k 2 + fact 100) evalto 5
by E-LetRec {
fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)] |- 3 + (letcc k in 1 + k 2 + fact 100) evalto 5 by E-BinOp {
fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)] |- 3 >> {fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)] |- _ + (letcc k in 1 + k 2 + fact 100)} evalto 5 by E-Int {
3 => {fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)] |- _ + (letcc k in 1 + k 2 + fact 100)} evalto 5 by C-EvalR {
fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)] |- (letcc k in 1 + k 2 + fact 100) >> {3 + _} evalto 5 by E-LetCc {
fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], k = [{3 + _}] |- 1 + k 2 + fact 100 >> {3 + _} evalto 5 by E-BinOp {
fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], k = [{3 + _}] |- 1 + k 2 >> {fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], k = [{3 + _}] |- _ + fact 100} >> {3 + _} evalto 5 by E-BinOp {
fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], k = [{3 + _}] |- 1 >> {fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], k = [{3 + _}] |- _ + k 2} >> {fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], k = [{3 + _}] |- _ + fact 100} >> {3 + _} evalto 5 by E-Int {
1 => {fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], k = [{3 + _}] |- _ + k 2} >> {fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], k = [{3 + _}] |- _ + fact 100} >> {3 + _} evalto 5 by C-EvalR {
fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], k = [{3 + _}] |- k 2 >> {1 + _} >> {fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], k = [{3 + _}] |- _ + fact 100} >> {3 + _} evalto 5 by E-App {
fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], k = [{3 + _}] |- k >> {fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], k = [{3 + _}] |- _ 2} >> {1 + _} >> {fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], k = [{3 + _}] |- _ + fact 100} >> {3 + _} evalto 5 by E-Var {
[{3 + _}] => {fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], k = [{3 + _}] |- _ 2} >> {1 + _} >> {fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], k = [{3 + _}] |- _ + fact 100} >> {3 + _} evalto 5 by C-EvalArg {
fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], k = [{3 + _}] |- 2 >> {[{3 + _}] _} >> {1 + _} >> {fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], k = [{3 + _}] |- _ + fact 100} >> {3 + _} evalto 5 by E-Int {
2 => {[{3 + _}] _} >> {1 + _} >> {fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], k = [{3 + _}] |- _ + fact 100} >> {3 + _} evalto 5 by C-EvalFunC {
2 => {3 + _} evalto 5 by C-Plus {
3 plus 2 is 5 by B-Plus {};
5 => _ evalto 5 by C-Ret {};
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}