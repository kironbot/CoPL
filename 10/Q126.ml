3 + 5 evalto 8 by E-BinOp {
    3 >> {_ + 5} >> _ evalto 8 by E-Int {
        3 => {_ + 5} >> _ evalto 8 by C-EvalR {
            5 >> {3 + _} >> _ evalto 8 by E-Int{
                5 => {3 + _} >> _ evalto 8 by C-Plus {
                    3 plus 5 is 8 by B-Plus {};
                    8 => _ evalto 8 by C-Ret {};
                }
            }
        }
    }
}