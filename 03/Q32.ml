if 2 + 3 then 1 else 3 evalto error by E-IfInt {
    2 + 3 evalto 5 by E-Plus {
        2 evalto 2 by E-Int {};
        3 evalto 3 by E-Int {};
        2 plus 3 is 5 by B-Plus {}
    }
}