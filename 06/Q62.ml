|- let y = 2 in fun x -> x + y ==> let . = 2 in fun . -> #1 + #2 by Tr-Let {
    |- 2 ==> 2 by Tr-Int {}; 
    y |- fun x -> x + y ==> fun . -> #1 + #2 by Tr-Fun {
        y, x |- x + y ==> #1 + #2 by Tr-Plus {
            y, x |- x ==> #1 by Tr-Var1 {};
            y, x |- y ==> #2 by Tr-Var2 {
                y |- y ==> #1 by Tr-Var1 {};
            };
        };
    };
}