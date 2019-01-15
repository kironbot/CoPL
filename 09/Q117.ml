|- let x = [] in let y = 3 :: x in true :: x : bool list
by T-Let {
    |- [] : 'a list by T-Nil {};
    x : 'a. 'a list |- let y = 3 :: x in true :: x : bool list by T-Let {
        x : 'a. 'a list |- 3 :: x : int list by T-Cons {
            x : 'a. 'a list |- 3 : int by T-Int {};
            x : 'a. 'a list |- x : int list by T-Var {};
        };
        x : 'a. 'a list, y : int list |- true :: x : bool list by T-Cons {
            x : 'a. 'a list, y : int list |- true : bool by T-Bool {};
            x : 'a. 'a list, y : int list |- x : bool list by T-Var {};
        };
    };
}