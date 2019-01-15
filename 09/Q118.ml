|- let l = (fun x -> x) :: [] in
   let l1 = (fun y -> y + 1) :: l in
   (fun z -> if z then false else true) :: l : (bool -> bool) list
by T-Let {
    |- (fun x -> x) :: [] : ('a -> 'a) list by T-Cons {
        |- (fun x -> x) : ('a -> 'a) by T-Abs {
            x : 'a |- x : 'a by T-Var {};
        };
        |- [] : ('a -> 'a) list by T-Nil {};
    };
    l : 'a. ('a -> 'a) list |- let l1 = (fun y -> y + 1) :: l in (fun z -> if z then false else true) :: l : (bool -> bool) list by T-Let {
        l : 'a. ('a -> 'a) list |- (fun y -> y + 1) :: l : (int -> int) list by T-Cons {
            l : 'a. ('a -> 'a) list |- (fun y -> y + 1) : int -> int by T-Abs {
                l : 'a. ('a -> 'a) list, y: int |- y + 1 : int by T-Plus {
                    l : 'a. ('a -> 'a) list, y: int |- y : int by T-Var {};
                    l : 'a. ('a -> 'a) list, y: int |- 1 : int by T-Int {};
                };
            };
            l : 'a. ('a -> 'a) list |- l : (int -> int) list by T-Var {};
        };
        l : 'a. ('a -> 'a) list, l1 : (int -> int) list |- (fun z -> if z then false else true) :: l : (bool -> bool) list by T-Cons {
            l : 'a. ('a -> 'a) list, l1 : (int -> int) list |- (fun z -> if z then false else true) : (bool -> bool) by T-Abs {
                l : 'a. ('a -> 'a) list, l1 : (int -> int) list, z : bool |- if z then false else true : bool by T-If {
                    l : 'a. ('a -> 'a) list, l1 : (int -> int) list, z : bool |- z : bool by T-Var {};
                    l : 'a. ('a -> 'a) list, l1 : (int -> int) list, z : bool |- false : bool by T-Bool {};
                    l : 'a. ('a -> 'a) list, l1 : (int -> int) list, z : bool |- true : bool by T-Bool {};
                };
            };
            l : 'a. ('a -> 'a) list, l1 : (int -> int) list |- l : (bool -> bool) list by T-Var {};
        };
    };
}