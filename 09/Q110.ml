|- let id = fun x -> x in id id : bool -> bool by T-Let {
    |- fun x -> x : 'a -> 'a by T-Abs {
        x : 'a |- x : 'a by T-Var {};
    };    
    id : 'a.'a -> 'a |- id id : bool -> bool by T-App {
        id : 'a.'a -> 'a |- id : (bool -> bool) -> (bool -> bool) by T-Var {};
        id : 'a.'a -> 'a |- id : (bool -> bool) by T-Var {};
    };
}