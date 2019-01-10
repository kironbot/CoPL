|- let rec max = fun l -> match l with 
       x :: [] -> x 
     | x :: y :: z -> if x < y then max (y :: z) else max (x :: z) in
   max (9 :: 2 :: 3 :: [])
  evalto 9
by E-LetRec {
    max = ()[rec max = fun l -> match l with x :: [] -> x | x :: y :: z -> if x < y then max (y :: z) else max (x :: z)] |- max (9::2::3::[]) evalto 9 by E-AppRec {
        max = ()[rec max = fun l -> match l with x :: [] -> x | x :: y :: z -> if x < y then max (y :: z) else max (x :: z)] |- max evalto ()[rec max = fun l -> match l with x :: [] -> x | x :: y :: z -> if x < y then max (y :: z) else max (x :: z)] by E-Var {};
        max = ()[rec max = fun l -> match l with x :: [] -> x | x :: y :: z -> if x < y then max (y :: z) else max (x :: z)] |- (9::2::3::[]) evalto (9::2::3::[]) by E-Cons {
            max = ()[rec max = fun l -> match l with x :: [] -> x | x :: y :: z -> if x < y then max (y :: z) else max (x :: z)] |- 9 evalto 9 by E-Int {};
            max = ()[rec max = fun l -> match l with x :: [] -> x | x :: y :: z -> if x < y then max (y :: z) else max (x :: z)] |- (2::3::[]) evalto (2::3::[]) by E-Cons {
                max = ()[rec max = fun l -> match l with x :: [] -> x | x :: y :: z -> if x < y then max (y :: z) else max (x :: z)] |- 2 evalto 2 by E-Int {};
                max = ()[rec max = fun l -> match l with x :: [] -> x | x :: y :: z -> if x < y then max (y :: z) else max (x :: z)] |- (3::[]) evalto (3::[]) by E-Cons {
                    max = ()[rec max = fun l -> match l with x :: [] -> x | x :: y :: z -> if x < y then max (y :: z) else max (x :: z)] |- 3 evalto 3 by E-Int {};
                    max = ()[rec max = fun l -> match l with x :: [] -> x | x :: y :: z -> if x < y then max (y :: z) else max (x :: z)] |- [] evalto [] by E-Nil {};
                };
            };
        };
        max = ()[rec max = fun l -> match l with x :: [] -> x | x :: y :: z -> if x < y then max (y :: z) else max (x :: z)], l = (9::2::3::[]) |- match l with x :: [] -> x | x :: y :: z -> if x < y then max (y :: z) else max (x :: z) evalto 9 by E-MatchN {
            max = ()[rec max = fun l -> match l with x :: [] -> x | x :: y :: z -> if x < y then max (y :: z) else max (x :: z)], l = (9::2::3::[]) |- l evalto (9::2::3::[]) by E-Var {};
            x::[] doesn't match (9::2::3::[]) by NM-ConsConsR {
                [] doesn't match 2::3::[] by NM-ConsNil {};
            };
            max = ()[rec max = fun l -> match l with x :: [] -> x | x :: y :: z -> if x < y then max (y :: z) else max (x :: z)], l = (9::2::3::[]) |- match l with x::y::z -> if x < y then max (y :: z) else max (x :: z) evalto 9 by E-MatchM1 {
                max = ()[rec max = fun l -> match l with x :: [] -> x | x :: y :: z -> if x < y then max (y :: z) else max (x :: z)], l = (9::2::3::[]) |- l evalto 9::2::3::[] by E-Var {};
                x::y::z matches 9::2::3::[] when (x = 9, y = 2, z = 3::[]) by M-Cons {
                    x matches 9 when (x = 9) by M-Var {};
                    y::z matches 2::3::[] when (y = 2, z = 3::[]) by M-Cons {
                        y matches 2 when (y = 2) by M-Var {};
                        z matches 3::[] when (z = 3::[]) by M-Var {};
                    };
                };
                max = ()[rec max = fun l -> match l with x :: [] -> x | x :: y :: z -> if x < y then max (y :: z) else max (x :: z)], l = (9::2::3::[]), x = 9, y = 2, z = 3::[] |- if x < y then max (y :: z) else max (x :: z) evalto 9 by E-IfF {
                    max = ()[rec max = fun l -> match l with x :: [] -> x | x :: y :: z -> if x < y then max (y :: z) else max (x :: z)], l = (9::2::3::[]), x = 9, y = 2, z = 3::[] |- x < y evalto false by E-Lt {
                        max = ()[rec max = fun l -> match l with x :: [] -> x | x :: y :: z -> if x < y then max (y :: z) else max (x :: z)], l = (9::2::3::[]), x = 9, y = 2, z = 3::[] |- x evalto 9 by E-Var {};
                        max = ()[rec max = fun l -> match l with x :: [] -> x | x :: y :: z -> if x < y then max (y :: z) else max (x :: z)], l = (9::2::3::[]), x = 9, y = 2, z = 3::[] |- y evalto 2 by E-Var {};
                        9 less than 2 is false by B-Lt {};
                    };
                    max = ()[rec max = fun l -> match l with x :: [] -> x | x :: y :: z -> if x < y then max (y :: z) else max (x :: z)], l = (9::2::3::[]), x = 9, y = 2, z = 3::[] |- max (x::z) evalto 9 by E-AppRec {
                        max = ()[rec max = fun l -> match l with x :: [] -> x | x :: y :: z -> if x < y then max (y :: z) else max (x :: z)], l = (9::2::3::[]), x = 9, y = 2, z = 3::[] |- max evalto ()[rec max = fun l -> match l with x :: [] -> x | x :: y :: z -> if x < y then max (y :: z) else max (x :: z)] by E-Var {};
                        max = ()[rec max = fun l -> match l with x :: [] -> x | x :: y :: z -> if x < y then max (y :: z) else max (x :: z)], l = (9::2::3::[]), x = 9, y = 2, z = 3::[] |- x::z evalto 9::3::[] by E-Cons {
                            max = ()[rec max = fun l -> match l with x :: [] -> x | x :: y :: z -> if x < y then max (y :: z) else max (x :: z)], l = (9::2::3::[]), x = 9, y = 2, z = 3::[] |- x evalto 9 by E-Var {};
                            max = ()[rec max = fun l -> match l with x :: [] -> x | x :: y :: z -> if x < y then max (y :: z) else max (x :: z)], l = (9::2::3::[]), x = 9, y = 2, z = 3::[] |- z evalto 3::[] by E-Var {};
                        };
                        max = ()[rec max = fun l -> match l with x :: [] -> x | x :: y :: z -> if x < y then max (y :: z) else max (x :: z)], l = 9::3::[] |- match l with x :: [] -> x | x :: y :: z -> if x < y then max (y :: z) else max (x :: z) evalto 9 by E-MatchN {
                            max = ()[rec max = fun l -> match l with x :: [] -> x | x :: y :: z -> if x < y then max (y :: z) else max (x :: z)], l = 9::3::[] |- l evalto 9::3::[] by E-Var {};
                            x::[] doesn't match 9::3::[] by NM-ConsConsR {
                                [] doesn't match 3::[] by NM-ConsNil {};
                            };
                            max = ()[rec max = fun l -> match l with x :: [] -> x | x :: y :: z -> if x < y then max (y :: z) else max (x :: z)], l = 9::3::[] |- match l with x :: y :: z -> if x < y then max (y :: z) else max (x :: z) evalto 9 by E-MatchM1 {
                                max = ()[rec max = fun l -> match l with x :: [] -> x | x :: y :: z -> if x < y then max (y :: z) else max (x :: z)], l = 9::3::[] |- l evalto 9::3::[] by E-Var {};
                                x::y::z matches 9::3::[] when (x = 9, y = 3, z = []) by M-Cons {
                                    x matches 9 when (x = 9) by M-Var {};
                                    y::z matches 3::[] when (y = 3, z = []) by M-Cons {
                                        y matches 3 when (y = 3) by M-Var {};
                                        z matches [] when (z = []) by M-Var {};
                                    };
                                };
                                max = ()[rec max = fun l -> match l with x :: [] -> x | x :: y :: z -> if x < y then max (y :: z) else max (x :: z)], l = 9::3::[], x = 9, y = 3, z = [] |- if x < y then max (y :: z) else max (x :: z) evalto 9 by E-IfF {
                                    max = ()[rec max = fun l -> match l with x :: [] -> x | x :: y :: z -> if x < y then max (y :: z) else max (x :: z)], l = 9::3::[], x = 9, y = 3, z = [] |- x < y evalto false by E-Lt {
                                        max = ()[rec max = fun l -> match l with x :: [] -> x | x :: y :: z -> if x < y then max (y :: z) else max (x :: z)], l = 9::3::[], x = 9, y = 3, z = [] |- x evalto 9 by E-Var {};
                                        max = ()[rec max = fun l -> match l with x :: [] -> x | x :: y :: z -> if x < y then max (y :: z) else max (x :: z)], l = 9::3::[], x = 9, y = 3, z = [] |- y evalto 3 by E-Var {};
                                        9 less than 3 is false by B-Lt {}; 
                                    };
                                    max = ()[rec max = fun l -> match l with x :: [] -> x | x :: y :: z -> if x < y then max (y :: z) else max (x :: z)], l = 9::3::[], x = 9, y = 3, z = [] |- max (x::z) evalto 9 by E-AppRec {
                                        max = ()[rec max = fun l -> match l with x :: [] -> x | x :: y :: z -> if x < y then max (y :: z) else max (x :: z)], l = 9::3::[], x = 9, y = 3, z = [] |- max evalto ()[rec max = fun l -> match l with x :: [] -> x | x :: y :: z -> if x < y then max (y :: z) else max (x :: z)] by E-Var {}; 
                                        max = ()[rec max = fun l -> match l with x :: [] -> x | x :: y :: z -> if x < y then max (y :: z) else max (x :: z)], l = 9::3::[], x = 9, y = 3, z = [] |- x::z evalto 9::[] by E-Cons {
                                            max = ()[rec max = fun l -> match l with x :: [] -> x | x :: y :: z -> if x < y then max (y :: z) else max (x :: z)], l = 9::3::[], x = 9, y = 3, z = [] |- x evalto 9 by E-Var {};
                                            max = ()[rec max = fun l -> match l with x :: [] -> x | x :: y :: z -> if x < y then max (y :: z) else max (x :: z)], l = 9::3::[], x = 9, y = 3, z = [] |- z evalto [] by E-Var {};
                                        };
                                        max = ()[rec max = fun l -> match l with x :: [] -> x | x :: y :: z -> if x < y then max (y :: z) else max (x :: z)], l = 9::[] |- match l with x :: [] -> x | x :: y :: z -> if x < y then max (y :: z) else max (x :: z) evalto 9 by E-MatchM2 {
                                            max = ()[rec max = fun l -> match l with x :: [] -> x | x :: y :: z -> if x < y then max (y :: z) else max (x :: z)], l = 9::[] |- l evalto 9::[] by E-Var {};
                                            x::[] matches 9::[] when (x = 9) by M-Cons {
                                                x matches 9 when (x = 9) by M-Var {};
                                                [] matches [] when () by M-Nil {};
                                            };
                                            max = ()[rec max = fun l -> match l with x :: [] -> x | x :: y :: z -> if x < y then max (y :: z) else max (x :: z)], l = 9::[], x = 9|- x evalto 9 by E-Var {};
                                        };
                                    };
                                };
                            };
                        };
                    };
                };
            };
        };
    }
}