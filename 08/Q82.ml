x : bool, y : int |- if x then y + 1 else y - 1 : int by T-If {
    x : bool, y : int |- x : bool by T-Var {};
    x : bool, y : int |- y + 1 : int by T-Plus {
        x : bool, y : int |- y : int by T-Var {};
        x : bool, y : int |- 1 : int by T-Int {};
    };
    x : bool, y : int |- y - 1 : int by T-Minus {
        x : bool, y : int |- y : int by T-Var {};
        x : bool, y : int |- 1 : int by T-Int {};
    };
}