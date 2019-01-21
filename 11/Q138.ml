|- let f = fun x -> fun k1 -> fun k2 -> if x < 0 then k1 x else k2 x in 1 + (letcc k1 in 2 + letcc k2 in f 2 k1 k2) evalto 5 by E-Let {
|- fun x -> fun k1 -> fun k2 -> if x < 0 then k1 x else k2 x >> {|- let f = _ in 1 + (letcc k1 in 2 + letcc k2 in f 2 k1 k2)} evalto 5 by E-Fun {
()[fun x -> fun k1 -> fun k2 -> if x < 0 then k1 x else k2 x] => {|- let f = _ in 1 + (letcc k1 in 2 + letcc k2 in f 2 k1 k2)} evalto 5 by C-LetBody {
f = ()[fun x -> fun k1 -> fun k2 -> if x < 0 then k1 x else k2 x] |- 1 + (letcc k1 in 2 + letcc k2 in f 2 k1 k2) evalto 5 by E-BinOp {
f = ()[fun x -> fun k1 -> fun k2 -> if x < 0 then k1 x else k2 x] |- 1 >> {f = ()[fun x -> fun k1 -> fun k2 -> if x < 0 then k1 x else k2 x] |- _ + (letcc k1 in 2 + letcc k2 in f 2 k1 k2)} evalto 5 by E-Int {
1 => {f = ()[fun x -> fun k1 -> fun k2 -> if x < 0 then k1 x else k2 x] |- _ + (letcc k1 in 2 + letcc k2 in f 2 k1 k2)} evalto 5 by C-EvalR {
f = ()[fun x -> fun k1 -> fun k2 -> if x < 0 then k1 x else k2 x] |- (letcc k1 in 2 + letcc k2 in f 2 k1 k2) >> {1 + _} evalto 5 by E-LetCc {
f = ()[fun x -> fun k1 -> fun k2 -> if x < 0 then k1 x else k2 x], k1 = [{1 + _}] |- 2 + letcc k2 in f 2 k1 k2 >> {1 + _} evalto 5 by E-BinOp {
f = ()[fun x -> fun k1 -> fun k2 -> if x < 0 then k1 x else k2 x], k1 = [{1 + _}] |- 2
    >>  {f = ()[fun x -> fun k1 -> fun k2 -> if x < 0 then k1 x else k2 x], k1 = [{1 + _}] |- _ + letcc k2 in f 2 k1 k2} >> {1 + _} evalto 5 by E-Int {
2 => {f = ()[fun x -> fun k1 -> fun k2 -> if x < 0 then k1 x else k2 x], k1 = [{1 + _}] |- _ + letcc k2 in f 2 k1 k2} >> {1 + _} evalto 5 by C-EvalR {
f = ()[fun x -> fun k1 -> fun k2 -> if x < 0 then k1 x else k2 x], k1 = [{1 + _}] |- letcc k2 in f 2 k1 k2 >> {2 + _} >> {1 + _} evalto 5 by E-LetCc {
f = ()[fun x -> fun k1 -> fun k2 -> if x < 0 then k1 x else k2 x], k1 = [{1 + _}], k2 = [{2 + _} >> {1 + _}] |- f 2 k1 k2 >> {2 + _} >> {1 + _} evalto 5 by E-App {
f = ()[fun x -> fun k1 -> fun k2 -> if x < 0 then k1 x else k2 x], k1 = [{1 + _}], k2 = [{2 + _} >> {1 + _}] |- f 2 k1
    >> {f = ()[fun x -> fun k1 -> fun k2 -> if x < 0 then k1 x else k2 x], k1 = [{1 + _}], k2 = [{2 + _} >> {1 + _}] |- _ k2} >> {2 + _} >> {1 + _} evalto 5 by E-App {
f = ()[fun x -> fun k1 -> fun k2 -> if x < 0 then k1 x else k2 x], k1 = [{1 + _}], k2 = [{2 + _} >> {1 + _}] |- f 2
    >> {f = ()[fun x -> fun k1 -> fun k2 -> if x < 0 then k1 x else k2 x], k1 = [{1 + _}], k2 = [{2 + _} >> {1 + _}] |- _ k1}
    >> {f = ()[fun x -> fun k1 -> fun k2 -> if x < 0 then k1 x else k2 x], k1 = [{1 + _}], k2 = [{2 + _} >> {1 + _}] |- _ k2} >> {2 + _} >> {1 + _} evalto 5 by E-App {
f = ()[fun x -> fun k1 -> fun k2 -> if x < 0 then k1 x else k2 x], k1 = [{1 + _}], k2 = [{2 + _} >> {1 + _}] |- f
    >> {f = ()[fun x -> fun k1 -> fun k2 -> if x < 0 then k1 x else k2 x], k1 = [{1 + _}], k2 = [{2 + _} >> {1 + _}] |- _ 2}
    >> {f = ()[fun x -> fun k1 -> fun k2 -> if x < 0 then k1 x else k2 x], k1 = [{1 + _}], k2 = [{2 + _} >> {1 + _}] |- _ k1}
    >> {f = ()[fun x -> fun k1 -> fun k2 -> if x < 0 then k1 x else k2 x], k1 = [{1 + _}], k2 = [{2 + _} >> {1 + _}] |- _ k2} >> {2 + _} >> {1 + _} evalto 5 by E-Var {
()[fun x -> fun k1 -> fun k2 -> if x < 0 then k1 x else k2 x]
    => {f = ()[fun x -> fun k1 -> fun k2 -> if x < 0 then k1 x else k2 x], k1 = [{1 + _}], k2 = [{2 + _} >> {1 + _}] |- _ 2}
    >> {f = ()[fun x -> fun k1 -> fun k2 -> if x < 0 then k1 x else k2 x], k1 = [{1 + _}], k2 = [{2 + _} >> {1 + _}] |- _ k1}
    >> {f = ()[fun x -> fun k1 -> fun k2 -> if x < 0 then k1 x else k2 x], k1 = [{1 + _}], k2 = [{2 + _} >> {1 + _}] |- _ k2} >> {2 + _} >> {1 + _} evalto 5 by C-EvalArg {
f = ()[fun x -> fun k1 -> fun k2 -> if x < 0 then k1 x else k2 x], k1 = [{1 + _}], k2 = [{2 + _} >> {1 + _}] |- 2
    >> {()[fun x -> fun k1 -> fun k2 -> if x < 0 then k1 x else k2 x] _}
    >> {f = ()[fun x -> fun k1 -> fun k2 -> if x < 0 then k1 x else k2 x], k1 = [{1 + _}], k2 = [{2 + _} >> {1 + _}] |- _ k1}
    >> {f = ()[fun x -> fun k1 -> fun k2 -> if x < 0 then k1 x else k2 x], k1 = [{1 + _}], k2 = [{2 + _} >> {1 + _}] |- _ k2} >> {2 + _} >> {1 + _} evalto 5 by E-Int {
2 => {()[fun x -> fun k1 -> fun k2 -> if x < 0 then k1 x else k2 x] _}
    >> {f = ()[fun x -> fun k1 -> fun k2 -> if x < 0 then k1 x else k2 x], k1 = [{1 + _}], k2 = [{2 + _} >> {1 + _}] |- _ k1}
    >> {f = ()[fun x -> fun k1 -> fun k2 -> if x < 0 then k1 x else k2 x], k1 = [{1 + _}], k2 = [{2 + _} >> {1 + _}] |- _ k2} >> {2 + _} >> {1 + _} evalto 5 by C-EvalFun {
x = 2 |- fun k1 -> fun k2 -> if x < 0 then k1 x else k2 x
    >> {f = ()[fun x -> fun k1 -> fun k2 -> if x < 0 then k1 x else k2 x], k1 = [{1 + _}], k2 = [{2 + _} >> {1 + _}] |- _ k1}
    >> {f = ()[fun x -> fun k1 -> fun k2 -> if x < 0 then k1 x else k2 x], k1 = [{1 + _}], k2 = [{2 + _} >> {1 + _}] |- _ k2} >> {2 + _} >> {1 + _} evalto 5 by E-Fun {
(x = 2)[fun k1 -> fun k2 -> if x < 0 then k1 x else k2 x]
    => {f = ()[fun x -> fun k1 -> fun k2 -> if x < 0 then k1 x else k2 x], k1 = [{1 + _}], k2 = [{2 + _} >> {1 + _}] |- _ k1}
    >> {f = ()[fun x -> fun k1 -> fun k2 -> if x < 0 then k1 x else k2 x], k1 = [{1 + _}], k2 = [{2 + _} >> {1 + _}] |- _ k2} >> {2 + _} >> {1 + _} evalto 5 by C-EvalArg {
f = ()[fun x -> fun k1 -> fun k2 -> if x < 0 then k1 x else k2 x], k1 = [{1 + _}], k2 = [{2 + _} >> {1 + _}] |- k1
    >> {(x = 2)[fun k1 -> fun k2 -> if x < 0 then k1 x else k2 x] _}
    >> {f = ()[fun x -> fun k1 -> fun k2 -> if x < 0 then k1 x else k2 x], k1 = [{1 + _}], k2 = [{2 + _} >> {1 + _}] |- _ k2} >> {2 + _} >> {1 + _} evalto 5 by E-Var {
[{1 + _}] => {(x = 2)[fun k1 -> fun k2 -> if x < 0 then k1 x else k2 x] _}
    >> {f = ()[fun x -> fun k1 -> fun k2 -> if x < 0 then k1 x else k2 x], k1 = [{1 + _}], k2 = [{2 + _} >> {1 + _}] |- _ k2} >> {2 + _} >> {1 + _} evalto 5 by C-EvalFun {
x = 2, k1 = [{1 + _}] |- fun k2 -> if x < 0 then k1 x else k2 x
    >> {f = ()[fun x -> fun k1 -> fun k2 -> if x < 0 then k1 x else k2 x], k1 = [{1 + _}], k2 = [{2 + _} >> {1 + _}] |- _ k2} >> {2 + _} >> {1 + _} evalto 5 by E-Fun {
(x = 2, k1 = [{1 + _}])[fun k2 -> if x < 0 then k1 x else k2 x]
    => {f = ()[fun x -> fun k1 -> fun k2 -> if x < 0 then k1 x else k2 x], k1 = [{1 + _}], k2 = [{2 + _} >> {1 + _}] |- _ k2} >> {2 + _} >> {1 + _} evalto 5 by C-EvalArg {
f = ()[fun x -> fun k1 -> fun k2 -> if x < 0 then k1 x else k2 x], k1 = [{1 + _}], k2 = [{2 + _} >> {1 + _}] |- k2
    >> {(x = 2, k1 = [{1 + _}])[fun k2 -> if x < 0 then k1 x else k2 x] _}
    >> {2 + _} >> {1 + _} evalto 5 by E-Var {
[{2 + _} >> {1 + _}] 
    => {(x = 2, k1 = [{1 + _}])[fun k2 -> if x < 0 then k1 x else k2 x] _}
    >> {2 + _} >> {1 + _} evalto 5 by C-EvalFun {
x = 2, k1 = [{1 + _}], k2 = [{2 + _} >> {1 + _}] |- if x < 0 then k1 x else k2 x
    >> {2 + _} >> {1 + _} evalto 5 by E-If {
x = 2, k1 = [{1 + _}], k2 = [{2 + _} >> {1 + _}] |- x < 0 >> {x = 2, k1 = [{1 + _}], k2 = [{2 + _} >> {1 + _}] |- if _ then k1 x else k2 x}
    >> {2 + _} >> {1 + _} evalto 5 by E-BinOp {
x = 2, k1 = [{1 + _}], k2 = [{2 + _} >> {1 + _}] |- x >> {x = 2, k1 = [{1 + _}], k2 = [{2 + _} >> {1 + _}] |- _ < 0} >> {x = 2, k1 = [{1 + _}], k2 = [{2 + _} >> {1 + _}] |- if _ then k1 x else k2 x}
    >> {2 + _} >> {1 + _} evalto 5 by E-Var {
2 => {x = 2, k1 = [{1 + _}], k2 = [{2 + _} >> {1 + _}] |- _ < 0} >> {x = 2, k1 = [{1 + _}], k2 = [{2 + _} >> {1 + _}] |- if _ then k1 x else k2 x}
    >> {2 + _} >> {1 + _} evalto 5 by C-EvalR {
x = 2, k1 = [{1 + _}], k2 = [{2 + _} >> {1 + _}] |- 0 >> {2 < _}
    >> {x = 2, k1 = [{1 + _}], k2 = [{2 + _} >> {1 + _}] |- if _ then k1 x else k2 x}
    >> {2 + _} >> {1 + _} evalto 5 by E-Int {
0 => {2 < _}
    >> {x = 2, k1 = [{1 + _}], k2 = [{2 + _} >> {1 + _}] |- if _ then k1 x else k2 x}
    >> {2 + _} >> {1 + _} evalto 5 by C-Lt {
    2 less than 0 is false by B-Lt {};
    false => {x = 2, k1 = [{1 + _}], k2 = [{2 + _} >> {1 + _}] |- if _ then k1 x else k2 x}
    >> {2 + _} >> {1 + _} evalto 5 by C-IfF {
x = 2, k1 = [{1 + _}], k2 = [{2 + _} >> {1 + _}] |- k2 x
    >> {2 + _} >> {1 + _} evalto 5 by E-App {
x = 2, k1 = [{1 + _}], k2 = [{2 + _} >> {1 + _}] |- k2
    >> {x = 2, k1 = [{1 + _}], k2 = [{2 + _} >> {1 + _}] |- _ x}
    >> {2 + _} >> {1 + _} evalto 5 by E-Var {
[{2 + _} >> {1 + _}]
    => {x = 2, k1 = [{1 + _}], k2 = [{2 + _} >> {1 + _}] |- _ x}
    >> {2 + _} >> {1 + _} evalto 5 by C-EvalArg {
x = 2, k1 = [{1 + _}], k2 = [{2 + _} >> {1 + _}] |-  x
    >> {[{2 + _} >> {1 + _}] _}
    >> {2 + _} >> {1 + _} evalto 5 by E-Var {
2 => {[{2 + _} >> {1 + _}] _}
    >> {2 + _} >> {1 + _} evalto 5 by C-EvalFunC {
2 => {2 + _} >> {1 + _} evalto 5 by C-Plus {
    2 plus 2 is 4 by B-Plus {};
    4 => {1 + _} evalto 5 by C-Plus {
1 plus 4 is 5 by B-Plus {};
5 => _ evalto 5 by C-Ret {};
}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}