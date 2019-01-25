// definition
def $v0 = ()[rec findneg = fun l -> match l with [] -> false | x :: l -> if x < 0 then true else findneg l] ;
def $env0 = findneg = $v0 ;


// derivation
|- let rec findneg = fun l -> match l with 
       [] -> false 
     | x :: l -> if x < 0 then true else findneg l
   in findneg (1 :: 2 :: -3 :: 4 :: []) evalto true by E-LetRec {

$env0 |- findneg (1 :: 2 :: -3 :: 4 :: []) evalto true by E-App {

$env0 |- findneg >> { $env0 |- _ (1 :: 2 :: -3 :: 4 :: []) } evalto true by E-Var {

$v0 => { $env0 |- _ (1 :: 2 :: -3 :: 4 :: []) } evalto true by C-EvalArg {

$env0 |- 1 :: 2 :: -3 :: 4 :: [] >> { $v0 _ } evalto true by E-Cons {

$env0 |- 1 >> { $env0 |- _ :: (2 :: -3 :: 4 :: []) } >> { $v0 _ } evalto true by E-Int {

1 => { $env0 |- _ :: (2 :: -3 :: 4 :: []) } >> { $v0 _ } evalto true by C-EvalConsR {

$env0 |- 2 :: -3 :: 4 :: [] >> { 1 :: _ } >> { $v0 _ } evalto true by E-Cons {

$env0 |- 2 >> { $env0 |- _ :: (-3 :: 4 :: []) } >> { 1 :: _ } >> { $v0 _ } evalto true by E-Int {

2 => { $env0 |- _ :: (-3 :: 4 :: []) } >> { 1 :: _ } >> { $v0 _ } evalto true by C-EvalConsR {

$env0 |- -3 :: 4 :: [] >> { 2 :: _ } >> { 1 :: _ } >> { $v0 _ } evalto true by E-Cons {

$env0 |- -3 >> { $env0 |- _ :: (4 :: []) } >> { 2 :: _ } >> { 1 :: _ } >> { $v0 _ } evalto true by E-Int {

-3 => { $env0 |- _ :: (4 :: []) } >> { 2 :: _ } >> { 1 :: _ } >> { $v0 _ } evalto true by C-EvalConsR {

$env0 |- 4 :: [] >> { -3 :: _ } >> { 2 :: _ } >> { 1 :: _ } >> { $v0 _ } evalto true by E-Cons {

$env0 |- 4 >> { $env0 |- _ :: [] } >> { -3 :: _ } >> { 2 :: _ } >> { 1 :: _ } >> { $v0 _ } evalto true by E-Int {

4 => { $env0 |- _ :: [] } >> { -3 :: _ } >> { 2 :: _ } >> { 1 :: _ } >> { $v0 _ } evalto true by C-EvalConsR {

$env0 |- [] >> { 4 :: _ } >> { -3 :: _ } >> { 2 :: _ } >> { 1 :: _ } >> { $v0 _ } evalto true by E-Nil {

[] => { 4 :: _ } >> { -3 :: _ } >> { 2 :: _ } >> { 1 :: _ } >> { $v0 _ } evalto true by C-Cons {

4 :: [] => { -3 :: _ } >> { 2 :: _ } >> { 1 :: _ } >> { $v0 _ } evalto true by C-Cons {

-3 :: 4 :: [] => { 2 :: _ } >> { 1 :: _ } >> { $v0 _ } evalto true by C-Cons {

2 :: -3 :: 4 :: [] => { 1 :: _ } >> { $v0 _ } evalto true by C-Cons {

1 :: 2 :: -3 :: 4 :: [] => { $v0 _ } evalto true by C-EvalFunR {

$env0, l = (1 :: 2 :: -3 :: 4 :: []) |- match l with [] -> false | x :: l -> if x < 0 then true else findneg l evalto true by E-Match {

$env0, l = (1 :: 2 :: -3 :: 4 :: []) |- l >> { $env0, l = (1 :: 2 :: -3 :: 4 :: []) |- match _ with [] -> false | x :: l -> if x < 0 then true else findneg l } evalto true by E-Var {

1 :: 2 :: -3 :: 4 :: [] => { $env0, l = (1 :: 2 :: -3 :: 4 :: []) |- match _ with [] -> false | x :: l -> if x < 0 then true else findneg l } evalto true by C-MatchCons {

$env0, l = (1 :: 2 :: -3 :: 4 :: []), x = 1, l = (2 :: -3 :: 4 :: []) |- if x < 0 then true else findneg l evalto true by E-If {

$env0, l = (1 :: 2 :: -3 :: 4 :: []), x = 1, l = (2 :: -3 :: 4 :: []) |- x < 0 >>
  { $env0, l = (1 :: 2 :: -3 :: 4 :: []), x = 1, l = (2 :: -3 :: 4 :: []) |- if _ then true else findneg l } evalto true by E-BinOp {

$env0, l = (1 :: 2 :: -3 :: 4 :: []), x = 1, l = (2 :: -3 :: 4 :: []) |- x >>
  { $env0, l = (1 :: 2 :: -3 :: 4 :: []), x = 1, l = (2 :: -3 :: 4 :: []) |- _ < 0 } >>
  { $env0, l = (1 :: 2 :: -3 :: 4 :: []), x = 1, l = (2 :: -3 :: 4 :: []) |- if _ then true else findneg l } evalto true by E-Var {

1 => { $env0, l = (1 :: 2 :: -3 :: 4 :: []), x = 1, l = (2 :: -3 :: 4 :: []) |- _ < 0 } >>
  { $env0, l = (1 :: 2 :: -3 :: 4 :: []), x = 1, l = (2 :: -3 :: 4 :: []) |- if _ then true else findneg l } evalto true by C-EvalR {

$env0, l = (1 :: 2 :: -3 :: 4 :: []), x = 1, l = (2 :: -3 :: 4 :: []) |- 0 >> { 1 < _ } >>
  { $env0, l = (1 :: 2 :: -3 :: 4 :: []), x = 1, l = (2 :: -3 :: 4 :: []) |- if _ then true else findneg l } evalto true by E-Int {

0 => { 1 < _ } >> { $env0, l = (1 :: 2 :: -3 :: 4 :: []), x = 1, l = (2 :: -3 :: 4 :: []) |- if _ then true else findneg l } evalto true by C-Lt {

1 less than 0 is false by B-Lt {};
false => { $env0, l = (1 :: 2 :: -3 :: 4 :: []), x = 1, l = (2 :: -3 :: 4 :: []) |- if _ then true else findneg l } evalto true by C-IfF {

$env0, l = (1 :: 2 :: -3 :: 4 :: []), x = 1, l = (2 :: -3 :: 4 :: []) |- findneg l evalto true by E-App {

$env0, l = (1 :: 2 :: -3 :: 4 :: []), x = 1, l = (2 :: -3 :: 4 :: []) |- findneg >>
  { $env0, l = (1 :: 2 :: -3 :: 4 :: []), x = 1, l = (2 :: -3 :: 4 :: []) |- _ l } evalto true by E-Var {

$v0 => { $env0, l = (1 :: 2 :: -3 :: 4 :: []), x = 1, l = (2 :: -3 :: 4 :: []) |- _ l } evalto true by C-EvalArg {

$env0, l = (1 :: 2 :: -3 :: 4 :: []), x = 1, l = (2 :: -3 :: 4 :: []) |- l >> { $v0 _ } evalto true by E-Var {

2 :: -3 :: 4 :: [] => { $v0 _ } evalto true by C-EvalFunR {

$env0, l = (2 :: -3 :: 4 :: []) |- match l with [] -> false | x :: l -> if x < 0 then true else findneg l evalto true by E-Match {

$env0, l = (2 :: -3 :: 4 :: []) |- l >> { $env0, l = (2 :: -3 :: 4 :: []) |- match _ with [] -> false | x :: l -> if x < 0 then true else findneg l } evalto true by E-Var {

2 :: -3 :: 4 :: [] => { $env0, l = (2 :: -3 :: 4 :: []) |- match _ with [] -> false | x :: l -> if x < 0 then true else findneg l } evalto true by C-MatchCons {

$env0, l = (2 :: -3 :: 4 :: []), x = 2, l = (-3 :: 4 :: []) |- if x < 0 then true else findneg l evalto true by E-If {

$env0, l = (2 :: -3 :: 4 :: []), x = 2, l = (-3 :: 4 :: []) |- x < 0 >>
  { $env0, l = (2 :: -3 :: 4 :: []), x = 2, l = (-3 :: 4 :: []) |- if _ then true else findneg l } evalto true by E-BinOp {

$env0, l = (2 :: -3 :: 4 :: []), x = 2, l = (-3 :: 4 :: []) |- x >>
  { $env0, l = (2 :: -3 :: 4 :: []), x = 2, l = (-3 :: 4 :: []) |- _ < 0 } >>
  { $env0, l = (2 :: -3 :: 4 :: []), x = 2, l = (-3 :: 4 :: []) |- if _ then true else findneg l } evalto true by E-Var {

2 => { $env0, l = (2 :: -3 :: 4 :: []), x = 2, l = (-3 :: 4 :: []) |- _ < 0 } >>
  { $env0, l = (2 :: -3 :: 4 :: []), x = 2, l = (-3 :: 4 :: []) |- if _ then true else findneg l } evalto true by C-EvalR {

$env0, l = (2 :: -3 :: 4 :: []), x = 2, l = (-3 :: 4 :: []) |- 0 >> { 2 < _ } >>
  { $env0, l = (2 :: -3 :: 4 :: []), x = 2, l = (-3 :: 4 :: []) |- if _ then true else findneg l } evalto true by E-Int {

0 => { 2 < _ } >> { $env0, l = (2 :: -3 :: 4 :: []), x = 2, l = (-3 :: 4 :: []) |- if _ then true else findneg l } evalto true by C-Lt {

2 less than 0 is false by B-Lt {};
false => { $env0, l = (2 :: -3 :: 4 :: []), x = 2, l = (-3 :: 4 :: []) |- if _ then true else findneg l } evalto true by C-IfF {

$env0, l = (2 :: -3 :: 4 :: []), x = 2, l = (-3 :: 4 :: []) |- findneg l evalto true by E-App {

$env0, l = (2 :: -3 :: 4 :: []), x = 2, l = (-3 :: 4 :: []) |- findneg >>
  { $env0, l = (2 :: -3 :: 4 :: []), x = 2, l = (-3 :: 4 :: []) |- _ l } evalto true by E-Var {

$v0 => { $env0, l = (2 :: -3 :: 4 :: []), x = 2, l = (-3 :: 4 :: []) |- _ l } evalto true by C-EvalArg {

$env0, l = (2 :: -3 :: 4 :: []), x = 2, l = (-3 :: 4 :: []) |- l >> { $v0 _ } evalto true by E-Var {

-3 :: 4 :: [] => { $v0 _ } evalto true by C-EvalFunR {

$env0, l = (-3 :: 4 :: []) |- match l with [] -> false | x :: l -> if x < 0 then true else findneg l evalto true by E-Match {

$env0, l = (-3 :: 4 :: []) |- l >> { $env0, l = (-3 :: 4 :: []) |- match _ with [] -> false | x :: l -> if x < 0 then true else findneg l } evalto true by E-Var {

-3 :: 4 :: [] => { $env0, l = (-3 :: 4 :: []) |- match _ with [] -> false | x :: l -> if x < 0 then true else findneg l } evalto true by C-MatchCons {

$env0, l = (-3 :: 4 :: []), x = -3, l = (4 :: []) |- if x < 0 then true else findneg l evalto true by E-If {

$env0, l = (-3 :: 4 :: []), x = -3, l = (4 :: []) |- x < 0 >>
  { $env0, l = (-3 :: 4 :: []), x = -3, l = (4 :: []) |- if _ then true else findneg l } evalto true by E-BinOp {

$env0, l = (-3 :: 4 :: []), x = -3, l = (4 :: []) |- x >>
  { $env0, l = (-3 :: 4 :: []), x = -3, l = (4 :: []) |- _ < 0 } >>
  { $env0, l = (-3 :: 4 :: []), x = -3, l = (4 :: []) |- if _ then true else findneg l } evalto true by E-Var {

-3 => { $env0, l = (-3 :: 4 :: []), x = -3, l = (4 :: []) |- _ < 0 } >>
  { $env0, l = (-3 :: 4 :: []), x = -3, l = (4 :: []) |- if _ then true else findneg l } evalto true by C-EvalR {

$env0, l = (-3 :: 4 :: []), x = -3, l = (4 :: []) |- 0 >> { -3 < _ } >>
  { $env0, l = (-3 :: 4 :: []), x = -3, l = (4 :: []) |- if _ then true else findneg l } evalto true by E-Int {

0 => { -3 < _ } >> { $env0, l = (-3 :: 4 :: []), x = -3, l = (4 :: []) |- if _ then true else findneg l } evalto true by C-Lt {

-3 is less than 0 by B-Lt {};
true => { $env0, l = (-3 :: 4 :: []), x = -3, l = (4 :: []) |- if _ then true else findneg l } evalto true by C-IfT {

$env0, l = (-3 :: 4 :: []), x = -3, l = (4 :: []) |- true evalto true by E-Bool {

true => _ evalto true by C-Ret {}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}