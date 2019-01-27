// definition
def $e1 = 1 :: 2 :: -3 :: 4 :: [] ;
def $e2 = 2 :: -3 :: 4 :: [] ;
def $e3 = -3 :: 4 :: [] ;
def $e4 = 4 :: [] ;

def $v  = (l = (1 :: 2 :: -3 :: 4 :: []), k = [_])[rec aux = fun l -> match l with [] -> false | x :: l -> if x < 0 then k true else aux l] ;
def $v0 = ()[fun l -> letcc k in let rec aux = fun l -> match l with [] -> false | x :: l -> if x < 0 then k true else aux l in aux l] ;
def $v1 = 1 :: 2 :: -3 :: 4 :: [];
def $v2 = 2 :: -3 :: 4 :: [];
def $v3 = -3 :: 4 :: [];
def $v4 = 4 :: [];

def $env0 = findneg = $v0 ;
def $env1 = l = $v1, k = [_], aux = $v ;


// derivation
|- let findneg = fun l -> letcc k in let rec aux = fun l -> match l with [] -> false | x :: l -> if x < 0 then k true else aux l in aux l in findneg (1 :: 2 :: -3 :: 4 :: []) evalto true by E-Let {
|- fun l -> letcc k in let rec aux = fun l -> match l with [] -> false | x :: l -> if x < 0 then k true else aux l in aux l >> {|- let findneg = _ in findneg $e1} evalto true by E-Fun {
$v0 => {|- let findneg = _ in findneg $e1} evalto true by C-LetBody {
$env0 |- findneg $e1 evalto true by E-App {
$env0 |- findneg >> {$env0 |- _ $e1} evalto true by E-Var {
$v0 => {$env0 |- _ $e1} evalto true by C-EvalArg {
$env0 |- $e1 >> {$v0 _} evalto true by E-Cons {
$env0 |- 1 >> {$env0 |- _ :: $e2} >> {$v0 _} evalto true by E-Int {
1 => {$env0 |- _ :: $e2} >> {$v0 _} evalto true by C-EvalConsR {
$env0 |- $e2 >> {1 :: _} >> {$v0 _} evalto true by E-Cons {
$env0 |- 2 >> {$env0 |- _ :: $e3} >> {1 :: _} >> {$v0 _} evalto true by E-Int {
2 => {$env0 |- _ :: $e3} >> {1 :: _} >> {$v0 _} evalto true by C-EvalConsR {
$env0 |- $e3 >> {2 :: _} >> {1 :: _} >> {$v0 _} evalto true by E-Cons {
$env0 |- -3 >> {$env0 |- _ :: $e4} >> {2 :: _} >> {1 :: _} >> {$v0 _} evalto true by E-Int {
-3 => {$env0 |- _ :: $e4} >> {2 :: _} >> {1 :: _} >> {$v0 _} evalto true by C-EvalConsR {
$env0 |- $e4 >> {-3 :: _} >> {2 :: _} >> {1 :: _} >> {$v0 _} evalto true by E-Cons {
$env0 |- 4 >> {$env0 |- _ :: []} >> {-3 :: _} >> {2 :: _} >> {1 :: _} >> {$v0 _} evalto true by E-Int {
4 => {$env0 |- _ :: []} >> {-3 :: _} >> {2 :: _} >> {1 :: _} >> {$v0 _} evalto true by C-EvalConsR {
$env0 |- [] >> {4 :: _} >> {-3 :: _} >> {2 :: _} >> {1 :: _} >> {$v0 _} evalto true by E-Nil {   
[] => {4 :: _} >> {-3 :: _} >> {2 :: _} >> {1 :: _} >> {$v0 _} evalto true by C-Cons {
4 :: [] => {-3 :: _} >> {2 :: _} >> {1 :: _} >> {$v0 _} evalto true by C-Cons {
-3 :: 4 :: [] => {2 :: _} >> {1 :: _} >> {$v0 _} evalto true by C-Cons {
2 :: -3 :: 4 :: [] => {1 :: _} >> {$v0 _} evalto true by C-Cons {
1 :: 2 :: -3 :: 4 :: [] => {$v0 _} evalto true by C-EvalFun {
l = $v1 |- letcc k in let rec aux = fun l -> match l with [] -> false | x :: l -> if x < 0 then k true else aux l in aux l evalto true by E-LetCc {
l = $v1, k = [_] |- let rec aux = fun l -> match l with [] -> false | x :: l -> if x < 0 then k true else aux l in aux l evalto true by E-LetRec {
$env1 |- aux l evalto true by E-App {
$env1 |- aux >> {$env1 |- _ l} evalto true by E-Var {
$v => {$env1 |- _ l} evalto true by C-EvalArg {
$env1 |- l >> {$v _} evalto true by E-Var {
$v1 => {$v _} evalto true by C-EvalFunR {
$env1, l = $v1 |- match l with [] -> false | x :: l -> if x < 0 then k true else aux l evalto true by E-Match {
$env1, l = $v1 |- l >> {$env1, l = $v1 |- match _ with [] -> false | x :: l -> if x < 0 then k true else aux l } evalto true by E-Var {
$v1 => {$env1, l = $v1 |- match _ with [] -> false | x :: l -> if x < 0 then k true else aux l} evalto true by C-MatchCons {
$env1, l = $v1, x = 1, l = $v2 |- if x < 0 then k true else aux l evalto true by E-If {
$env1, l = $v1, x = 1, l = $v2 |- x < 0 >> {$env1, l = $v1, x = 1, l = $v2 |- if _ then k true else aux l} evalto true by E-BinOp {
$env1, l = $v1, x = 1, l = $v2 |- x >> {$env1, l = $v1, x = 1, l = $v2 |- _ < 0} >> {$env1, l = $v1, x = 1, l = $v2 |- if _ then k true else aux l} evalto true by E-Var {
1 => {$env1, l = $v1, x = 1, l = $v2 |- _ < 0} >> {$env1, l = $v1, x = 1, l = $v2 |- if _ then k true else aux l} evalto true by C-EvalR {
$env1, l = $v1, x = 1, l = $v2 |- 0 >> {1 < _} >> {$env1, l = $v1, x = 1, l = $v2 |- if _ then k true else aux l} evalto true by E-Int {
0 => {1 < _} >> {$env1, l = $v1, x = 1, l = $v2 |- if _ then k true else aux l} evalto true by C-Lt {
1 less than 0 is false by B-Lt {};
false => {$env1, l = $v1, x = 1, l = $v2 |- if _ then k true else aux l} evalto true by C-IfF {
$env1, l = $v1, x = 1, l = $v2 |- aux l evalto true by E-App {
$env1, l = $v1, x = 1, l = $v2 |- aux >> {$env1, l = $v1, x = 1, l = $v2 |- _ l} evalto true by E-Var {
$v => {$env1, l = $v1, x = 1, l = $v2 |- _ l} evalto true by C-EvalArg {
$env1, l = $v1, x = 1, l = $v2 |- l >> {$v _} evalto true by E-Var {
$v2 => {$v _} evalto true by C-EvalFunR {
$env1, l = $v2 |- match l with [] -> false | x :: l -> if x < 0 then k true else aux l evalto true by E-Match {
$env1, l = $v2 |- l >> {$env1, l = $v2 |- match _ with [] -> false | x :: l -> if x < 0 then k true else aux l } evalto true by E-Var {
$v2 => {$env1, l = $v2 |- match _ with [] -> false | x :: l -> if x < 0 then k true else aux l} evalto true by C-MatchCons {
$env1, l = $v2, x = 2, l = $v3 |- if x < 0 then k true else aux l evalto true by E-If {
$env1, l = $v2, x = 2, l = $v3 |- x < 0 >> {$env1, l = $v2, x = 2, l = $v3 |- if _ then k true else aux l} evalto true by E-BinOp {
$env1, l = $v2, x = 2, l = $v3 |- x >> {$env1, l = $v2, x = 2, l = $v3 |- _ < 0} >> {$env1, l = $v2, x = 2, l = $v3 |- if _ then k true else aux l} evalto true by E-Var {
2 => {$env1, l = $v2, x = 2, l = $v3 |- _ < 0} >> {$env1, l = $v2, x = 2, l = $v3 |- if _ then k true else aux l} evalto true by C-EvalR {
$env1, l = $v2, x = 2, l = $v3 |- 0 >> {2 < _} >> {$env1, l = $v2, x = 2, l = $v3 |- if _ then k true else aux l} evalto true by E-Int {
0 => {2 < _} >> {$env1, l = $v2, x = 2, l = $v3 |- if _ then k true else aux l} evalto true by C-Lt {
2 less than 0 is false by B-Lt {};
false => {$env1, l = $v2, x = 2, l = $v3 |- if _ then k true else aux l} evalto true by C-IfF {
$env1, l = $v2, x = 2, l = $v3 |- aux l evalto true by E-App {
$env1, l = $v2, x = 2, l = $v3 |- aux >> {$env1, l = $v2, x = 2, l = $v3 |- _ l} evalto true by E-Var {
$v => {$env1, l = $v2, x = 2, l = $v3 |- _ l} evalto true by C-EvalArg {
$env1, l = $v2, x = 2, l = $v3 |- l >> {$v _} evalto true by E-Var {
$v3 => {$v _} evalto true by C-EvalFunR {
$env1, l = $v3 |- match l with [] -> false | x :: l -> if x < 0 then k true else aux l evalto true by E-Match {
$env1, l = $v3 |- l >> {$env1, l = $v3 |- match _ with [] -> false | x :: l -> if x < 0 then k true else aux l } evalto true by E-Var {
$v3 => {$env1, l = $v3 |- match _ with [] -> false | x :: l -> if x < 0 then k true else aux l} evalto true by C-MatchCons {
$env1, l = $v3, x = -3, l = $v4 |- if x < 0 then k true else aux l evalto true by E-If {
$env1, l = $v3, x = -3, l = $v4 |- x < 0 >> {$env1, l = $v3, x = -3, l = $v4 |- if _ then k true else aux l} evalto true by E-BinOp {
$env1, l = $v3, x = -3, l = $v4 |- x >> {$env1, l = $v3, x = -3, l = $v4 |- _ < 0} >> {$env1, l = $v3, x = -3, l = $v4 |- if _ then k true else aux l} evalto true by E-Var {
-3 => {$env1, l = $v3, x = -3, l = $v4 |- _ < 0} >> {$env1, l = $v3, x = -3, l = $v4 |- if _ then k true else aux l} evalto true by C-EvalR {
$env1, l = $v3, x = -3, l = $v4 |- 0 >> {-3 < _} >> {$env1, l = $v3, x = -3, l = $v4 |- if _ then k true else aux l} evalto true by E-Int {
0 => {-3 < _} >> {$env1, l = $v3, x = -3, l = $v4 |- if _ then k true else aux l} evalto true by C-Lt {
-3 less than 0 is true by B-Lt {};
true => {$env1, l = $v3, x = -3, l = $v4 |- if _ then k true else aux l} evalto true by C-IfT {
$env1, l = $v3, x = -3, l = $v4 |- k true evalto true by E-App {
$env1, l = $v3, x = -3, l = $v4 |- k >> {$env1, l = $v3, x = -3, l = $v4 |- _ true} evalto true by E-Var {
[_] => {$env1, l = $v3, x = -3, l = $v4 |- _ true} evalto true by C-EvalArg {
$env1, l = $v3, x = -3, l = $v4 |- true >> {[_] _} evalto true by E-Bool {
true => {[_] _} evalto true by C-EvalFunC {
true => _ evalto true by C-Ret {}; 
}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}