if 4 < 5 then 2 + 3 else 8 * 8 evalto 5 by E-If {
    4 < 5 >> {if _ then 2 + 3 else 8 * 8} evalto 5 by E-BinOp {
        4 >> {_ < 5} >> {if _ then 2 + 3 else 8 * 8} evalto 5 by E-Int {
            4 => {_ < 5} >> {if _ then 2 + 3 else 8 * 8} evalto 5 by C-EvalR {
                5 >> {4 < _} >> {if _ then 2 + 3 else 8 * 8} evalto 5 by E-Int {
                    5 => {4 < _} >> {if _ then 2 + 3 else 8 * 8} evalto 5 by C-Lt {
                        4 less than 5 is true by B-Lt {};
                        true => {if _ then 2 + 3 else 8 * 8} evalto 5 by C-IfT {
                            2 + 3 >> _ evalto 5 by E-BinOp {
                                2 >> {_ + 3} evalto 5 by E-Int {
                                    2 => {_ + 3} evalto 5 by C-EvalR {
                                        3 >> {2 + _} evalto 5 by E-Int {
                                            3 => {2 + _} evalto 5 by C-Plus {
                                                2 plus 3 is 5 by B-Plus {};
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