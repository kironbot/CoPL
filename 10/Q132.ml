|- let rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1) in fact 3 evalto 6 by E-LetRec {
fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)] |- fact 3 evalto 6 by E-App {
fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)] |- fact >> {fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)] |-  _ 3} evalto 6 by E-Var {
()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)] => {fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)] |-  _ 3} evalto 6 by C-EvalArg {
fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)] |- 3 >> {()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)] _} evalto 6 by E-Int {
3 => {()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)] _} evalto 6 by C-EvalFunR {
fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], n = 3 |- if n < 2 then 1 else n * fact (n - 1) evalto 6 by E-If {
fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], n = 3 |- n < 2 >> {fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], n = 3 |- if _ then 1 else n * fact (n - 1)} evalto 6 by E-BinOp {
fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], n = 3 |- n >> {fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], n = 3 |- _ < 2} >> {fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], n = 3 |- if _ then 1 else n * fact (n - 1)} evalto 6 by E-Var {
3 => {fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], n = 3 |- _ < 2} >> {fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], n = 3 |- if _ then 1 else n * fact (n - 1)} evalto 6 by C-EvalR {
fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], n = 3 |- 2 >> {3 < _} >> {fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], n = 3 |- if _ then 1 else n * fact (n - 1)} evalto 6 by E-Int {
2 => {3 < _} >> {fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], n = 3 |- if _ then 1 else n * fact (n - 1)} evalto 6 by C-Lt {
3 less than 2 is false by B-Lt {};
false => {fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], n = 3 |- if _ then 1 else n * fact (n - 1)} evalto 6 by C-IfF {
fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], n = 3 |-  n * fact (n - 1) evalto 6 by E-BinOp {
fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], n = 3 |-  n >> {fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], n = 3 |-  _ * (fact (n - 1))} evalto 6 by E-Var {
3 => {fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], n = 3 |-  _ * (fact (n - 1))} evalto 6 by C-EvalR {
fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], n = 3 |- fact (n - 1) >> {3 * _} evalto 6 by E-App {
fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], n = 3 |- fact >> {fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], n = 3 |- _ (n - 1)} >> {3 * _} evalto 6 by E-Var {
()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)] => {fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], n = 3 |- _ (n - 1)} >> {3 * _} evalto 6 by C-EvalArg {
fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], n = 3 |- (n - 1) >> {()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)] _} >> {3 * _} evalto 6 by E-BinOp {
fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], n = 3 |- n >> {fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], n = 3 |- _ - 1} >> {()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)] _} >> {3 * _} evalto 6 by E-Var {
3 => {fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], n = 3 |- _ - 1} >> {()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)] _} >> {3 * _} evalto 6 by C-EvalR {
fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], n = 3 |- 1 >> {3 - _} >> {()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)] _} >> {3 * _} evalto 6 by E-Int {
1 => {3 - _} >> {()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)] _} >> {3 * _} evalto 6 by C-Minus {
3 minus 1 is 2 by B-Minus {};
2 => {()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)] _} >> {3 * _} evalto 6 by C-EvalFunR {
fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], n = 2 |- if n < 2 then 1 else n * fact (n - 1) >> {3 * _} evalto 6 by E-If {
fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], n = 2 |- n < 2 >> {fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], n = 2 |- if _ then 1 else n * fact (n - 1)} >> {3 * _} evalto 6 by E-BinOp {
fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], n = 2 |- n >> {fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], n = 2 |- _ < 2} >> {fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], n = 2 |- if _ then 1 else n * fact (n - 1)} >> {3 * _} evalto 6 by E-Var {
2 => {fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], n = 2 |- _ < 2} >> {fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], n = 2 |- if _ then 1 else n * fact (n - 1)} >> {3 * _} evalto 6 by C-EvalR {
fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], n = 2 |- 2 >> {2 < _} >> {fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], n = 2 |- if _ then 1 else n * fact (n - 1)} >> {3 * _} evalto 6 by E-Int {
2 => {2 < _} >> {fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], n = 2 |- if _ then 1 else n * fact (n - 1)} >> {3 * _} evalto 6 by C-Lt {
2 less than 2 is false by B-Lt {};
false => {fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], n = 2 |- if _ then 1 else n * fact (n - 1)} >> {3 * _} evalto 6 by C-IfF {
fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], n = 2 |- n * fact (n - 1) >> {3 * _} evalto 6 by E-BinOp {
fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], n = 2 |- n >> {fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], n = 2 |- _ * fact (n - 1)} >> {3 * _} evalto 6 by E-Var {
2 => {fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], n = 2 |- _ * fact (n - 1)} >> {3 * _} evalto 6 by C-EvalR {
fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], n = 2 |- fact (n - 1) >> {2 * _} >> {3 * _} evalto 6 by E-App {
fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], n = 2 |- fact >> {fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], n = 2 |- _ (n - 1)} >> {2 * _} >> {3 * _} evalto 6 by E-Var {
()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)] => {fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], n = 2 |- _ (n - 1)} >> {2 * _} >> {3 * _} evalto 6 by C-EvalArg {
fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], n = 2 |- n - 1 >> {()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)] _} >> {2 * _} >> {3 * _} evalto 6 by E-BinOp {
fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], n = 2 |- n >> {fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], n = 2 |- _ - 1} >> {()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)] _} >> {2 * _} >> {3 * _} evalto 6 by E-Var {
2 => {fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], n = 2 |- _ - 1} >> {()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)] _} >> {2 * _} >> {3 * _} evalto 6 by C-EvalR {
fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], n = 2 |- 1 >> {2 - _} >> {()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)] _} >> {2 * _} >> {3 * _} evalto 6 by E-Int {
1 => {2 - _} >> {()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)] _} >> {2 * _} >> {3 * _} evalto 6 by C-Minus {
2 minus 1 is 1 by B-Minus {};
1 => {()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)] _} >> {2 * _} >> {3 * _} evalto 6 by C-EvalFunR {
fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], n = 1 |- if n < 2 then 1 else n * fact (n - 1) >> {2 * _} >> {3 * _} evalto 6 by E-If {
fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], n = 1 |- n < 2 >> {fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], n = 1 |- if _ then 1 else n * fact (n - 1)} >> {2 * _} >> {3 * _} evalto 6 by E-BinOp {
fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], n = 1 |- n >> {fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], n = 1 |- _ < 2} >> {fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], n = 1 |- if _ then 1 else n * fact (n - 1)} >> {2 * _} >> {3 * _} evalto 6 by E-Var {
1 => {fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], n = 1 |- _ < 2} >> {fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], n = 1 |- if _ then 1 else n * fact (n - 1)} >> {2 * _} >> {3 * _} evalto 6 by C-EvalR {
fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], n = 1 |- 2 >> {1 < _} >> {fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], n = 1 |- if _ then 1 else n * fact (n - 1)} >> {2 * _} >> {3 * _} evalto 6 by E-Int {
2 => {1 < _} >> {fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], n = 1 |- if _ then 1 else n * fact (n - 1)} >> {2 * _} >> {3 * _} evalto 6 by C-Lt {
1 less than 2 is true by B-Lt {};
true => {fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], n = 1 |- if _ then 1 else n * fact (n - 1)} >> {2 * _} >> {3 * _} evalto 6 by C-IfT {
fact = ()[rec fact = fun n -> if n < 2 then 1 else n * fact (n - 1)], n = 1 |- 1 >> {2 * _} >> {3 * _} evalto 6 by E-Int {
1 => {2 * _} >> {3 * _} evalto 6 by C-Times {
2 times 1 is 2 by B-Times {};
2 => {3 * _} evalto 6 by C-Times {
3 times 2 is 6 by B-Times {};
6 => _ evalto 6 by C-Ret {};
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