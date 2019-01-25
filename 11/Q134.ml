|- 3 + (letcc k in 1 + k 2) evalto 5 by E-BinOp {
    |- 3 >> {|- _ + (letcc k in 1 + k 2)} evalto 5 by E-Int {
        3 => {|- _ + (letcc k in 1 + k 2)} evalto 5 by C-EvalR {
            |- letcc k in 1 + k 2 >> {3 + _} evalto 5 by E-LetCc {
                k = [{3 + _}] |- 1 + k 2 >> {3 + _} evalto 5 by E-BinOp {
                    k = [{3 + _}] |- 1 >> {k = [{3 + _}] |- _ + k 2} >> {3 + _} evalto 5 by E-Int {
                        1 => {k = [{3 + _}] |- _ + k 2} >> {3 + _} evalto 5 by C-EvalR {
                            k = [{3 + _}] |- k 2 >> {1 + _} >> {3 + _} evalto 5 by E-App {
                                k = [{3 + _}] |- k >> {k = [{3 + _}] |- _ 2} >> {1 + _} >> {3 + _} evalto 5 by E-Var {
                                    [{3 + _}] => {k = [{3 + _}] |- _ 2} >> {1 + _} >> {3 + _} evalto 5 by C-EvalArg {
                                        k = [{3 + _}] |- 2 >> {[{3 + _}] _} >> {1 + _} >> {3 + _} evalto 5 by E-Int {
                                            2 => {[{3 + _}] _} >> {1 + _} >> {3 + _} evalto 5 by C-EvalFunC {
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