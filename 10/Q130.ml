|- let x = 1 + 2 in x * 4 evalto 12 by E-Let {
    |- 1 + 2 >> {|- let x = _ in x * 4} evalto 12 by E-BinOp {
        |- 1 >> {|- _ + 2} >> {|- let x = _ in x * 4} evalto 12 by E-Int {
            1 => {|- _ + 2} >> {|- let x = _ in x * 4} evalto 12 by C-EvalR {
                |- 2 >> {1 + _} >> {|- let x = _ in x * 4} evalto 12 by E-Int {
                    2 => {1 + _} >> {|- let x = _ in x * 4} evalto 12 by C-Plus {
                        1 plus 2 is 3 by B-Plus {};
                        3 => {|- let x = _ in x * 4} evalto 12 by C-LetBody {
                            x = 3 |- x * 4 evalto 12 by E-BinOp {
                                x = 3 |- x >> {x = 3 |- _ * 4} evalto 12 by E-Var {
                                    3 => {x = 3 |- _ * 4} evalto 12 by C-EvalR {
                                        x = 3 |- 4 >> {3 * _} evalto 12 by E-Int {
                                            4 => {3 * _} evalto 12 by C-Times {
                                                3 times 4 is 12 by B-Times {};
                                                12 => _ evalto 12 by C-Ret {};
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