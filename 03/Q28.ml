if 4 < 5 then 2 + 3 else 8 * 8 evalto 5 by E-IfT {
    4 < 5 evalto true by E-Lt {
        4 evalto 4 by E-Int {};
        5 evalto 5 by E-Int {};
        4 less than 5 is true by B-Lt {}
    };
    2 + 3 evalto 5 by E-Plus {
        2 evalto 2 by E-Int {};
        3 evalto 3 by E-Int {};
        2 plus 3 is 5 by B-Plus {}
    };
}