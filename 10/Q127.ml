(4 + 5) * (1 - 10) evalto -81 by E-BinOp {
    (4 + 5) >> {_ * (1 - 10)} evalto -81 by E-BinOp {
        4 >> {_ + 5} >> {_ * (1 - 10)} evalto -81 by E-Int {
            4 => {_ + 5} >> {_ * (1 - 10)} evalto -81 by C-EvalR {
                5 >> {4 + _} >> {_ * (1 - 10)} evalto -81 by E-Int {
                    5 => {4 + _} >> {_ * (1 - 10)} evalto -81 by C-Plus {
                        4 plus 5 is 9 by B-Plus {};
                        9 => {_ * (1 - 10)} evalto -81 by C-EvalR {
                            1 - 10 >> {9 * _} evalto -81 by E-BinOp {
                                1 >> {_ - 10} >> {9 * _} evalto -81 by E-Int {
                                    1 => {_ - 10} >> {9 * _} evalto -81 by C-EvalR {
                                        10 >> {1 - _} >> {9 * _} evalto -81 by E-Int {
                                            10 => {1 - _} >> {9 * _} evalto -81 by C-Minus{
                                                1 minus 10 is -9 by B-Minus {};
                                                -9 => {9 * _} evalto -81 by C-Times {
                                                    9 times -9 is -81 by B-Times {};
                                                    -81 => _ evalto -81 by C-Ret {};
                                                }
                                            };
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