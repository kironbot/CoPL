|- let sm = fun f -> f 3 + f 4 in letcc k in sm k evalto 3 by E-Let {
    |- fun f -> f 3 + f 4 >> {|- let sm = _ in letcc k in sm k} evalto 3 by E-Fun {
        ()[fun f -> f 3 + f 4] => {|- let sm = _ in letcc k in sm k} evalto 3 by C-LetBody {
            sm = ()[fun f -> f 3 + f 4] |- letcc k in sm k evalto 3 by E-LetCc {
                sm = ()[fun f -> f 3 + f 4], k = [_] |- sm k evalto 3 by E-App {
                    sm = ()[fun f -> f 3 + f 4], k = [_] |- sm >> {sm = ()[fun f -> f 3 + f 4], k = [_] |- _ k} evalto 3 by E-Var {
                        ()[fun f -> f 3 + f 4] => {sm = ()[fun f -> f 3 + f 4], k = [_] |- _ k} evalto 3 by C-EvalArg {
                            sm = ()[fun f -> f 3 + f 4], k = [_] |- k >> {()[fun f -> f 3 + f 4] _} evalto 3 by E-Var {
                                [_] => {()[fun f -> f 3 + f 4] _} evalto 3 by C-EvalFun {
                                    f = [_] |- f 3 + f 4 evalto 3 by E-BinOp {
                                        f = [_] |- f 3 >> {f = [_] |- _ + f 4} evalto 3 by E-App {
                                            f = [_] |- f >> {f = [_] |- _ 3} >> {f = [_] |- _ + f 4} evalto 3 by E-Var {
                                                [_] => {f = [_] |- _ 3} >> {f = [_] |- _ + f 4} evalto 3 by C-EvalArg {
                                                    f = [_] |- 3 >> {[_] _} >> {f = [_] |- _ + f 4} evalto 3 by E-Int {
                                                        3 => {[_] _} >> {f = [_] |- _ + f 4} evalto 3 by C-EvalFunC {
                                                            3 => _ evalto 3 by C-Ret {};
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