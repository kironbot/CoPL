|- let add1 = fun x -> x + 1 in add1 3 evalto 4 by E-Let {
    |- fun x -> x + 1 >> {|- let add1 = _ in add1 3} evalto 4 by E-Fun {
        ()[fun x -> x + 1] => {|- let add1 = _ in add1 3} evalto 4 by C-LetBody {
            add1 = ()[fun x -> x + 1] |- add1 3 evalto 4 by E-App {
                add1 = ()[fun x -> x + 1] |- add1 >> {add1 = ()[fun x -> x + 1] |- _ 3} evalto 4 by E-Var {
                    ()[fun x -> x + 1] => {add1 = ()[fun x -> x + 1] |- _ 3} evalto 4 by C-EvalArg {
                        add1 = ()[fun x -> x + 1] |- 3 >> {()[fun x -> x + 1] _} evalto 4 by E-Int {
                            3 => {()[fun x -> x + 1] _} evalto 4 by C-EvalFun {
                                x = 3 |- x + 1 evalto 4 by E-BinOp {
                                    x = 3 |- x >> {x = 3 |- _ + 1} evalto 4 by E-Var {
                                        3 => {x = 3 |- _ + 1} evalto 4 by C-EvalR {
                                            x = 3 |- 1 >> {3 + _} evalto 4 by E-Int {
                                                1 => {3 + _} evalto 4 by C-Plus {
                                                    3 plus 1 is 4 by B-Plus {};
                                                    4 => _ evalto 4 by C-Ret {};
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