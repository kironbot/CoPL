|- let rec heads = fun l -> match l with
       [] -> []
     | [] :: l' -> heads l'
     | (x :: _) :: l' -> x :: heads l' in
   heads ((1 :: 2 :: []) :: [] :: (3 :: []) :: [])
  evalto 1 :: 3 :: []
by E-LetRec {
    heads = ()[rec heads = fun l -> match l with [] -> [] | [] :: l' -> heads l' | (x :: _) :: l' -> x :: heads l'] |- heads ((1 :: 2 :: []) :: [] :: (3 :: []) :: []) evalto 1::3::[] by E-AppRec {
        heads = ()[rec heads = fun l -> match l with [] -> [] | [] :: l' -> heads l' | (x :: _) :: l' -> x :: heads l'] |- heads  evalto ()[rec heads = fun l -> match l with [] -> [] | [] :: l' -> heads l' | (x :: _) :: l' -> x :: heads l'] by E-Var {};
        heads = ()[rec heads = fun l -> match l with [] -> [] | [] :: l' -> heads l' | (x :: _) :: l' -> x :: heads l'] |- ((1 :: 2 :: []) :: [] :: (3 :: []) :: []) evalto ((1 :: 2 :: []) :: [] :: (3 :: []) :: []) by E-Cons {
            heads = ()[rec heads = fun l -> match l with [] -> [] | [] :: l' -> heads l' | (x :: _) :: l' -> x :: heads l'] |- (1 :: 2 :: [])  evalto (1 :: 2 :: []) by E-Cons {
                heads = ()[rec heads = fun l -> match l with [] -> [] | [] :: l' -> heads l' | (x :: _) :: l' -> x :: heads l'] |- 1 evalto 1 by E-Int {};
                heads = ()[rec heads = fun l -> match l with [] -> [] | [] :: l' -> heads l' | (x :: _) :: l' -> x :: heads l'] |- 2 :: []  evalto 2 :: [] by E-Cons {
                    heads = ()[rec heads = fun l -> match l with [] -> [] | [] :: l' -> heads l' | (x :: _) :: l' -> x :: heads l'] |- 2 evalto 2 by E-Int {};
                    heads = ()[rec heads = fun l -> match l with [] -> [] | [] :: l' -> heads l' | (x :: _) :: l' -> x :: heads l'] |- []  evalto [] by E-Nil {};
                };
            };
            heads = ()[rec heads = fun l -> match l with [] -> [] | [] :: l' -> heads l' | (x :: _) :: l' -> x :: heads l'] |- [] :: (3 :: []) :: [] evalto [] :: (3 :: []) :: [] by E-Cons {
                heads = ()[rec heads = fun l -> match l with [] -> [] | [] :: l' -> heads l' | (x :: _) :: l' -> x :: heads l'] |- [] evalto [] by E-Nil {};
                heads = ()[rec heads = fun l -> match l with [] -> [] | [] :: l' -> heads l' | (x :: _) :: l' -> x :: heads l'] |- (3 :: []) :: [] evalto (3 :: []) :: [] by E-Cons {
                    heads = ()[rec heads = fun l -> match l with [] -> [] | [] :: l' -> heads l' | (x :: _) :: l' -> x :: heads l'] |- (3 :: []) evalto (3 :: []) by E-Cons {
                        heads = ()[rec heads = fun l -> match l with [] -> [] | [] :: l' -> heads l' | (x :: _) :: l' -> x :: heads l'] |- 3 evalto 3 by E-Int {};
                        heads = ()[rec heads = fun l -> match l with [] -> [] | [] :: l' -> heads l' | (x :: _) :: l' -> x :: heads l'] |- [] evalto [] by E-Nil {};
                    };
                    heads = ()[rec heads = fun l -> match l with [] -> [] | [] :: l' -> heads l' | (x :: _) :: l' -> x :: heads l'] |- [] evalto [] by E-Nil {};
                };
            };
        };
        heads = ()[rec heads = fun l -> match l with [] -> [] | [] :: l' -> heads l' | (x :: _) :: l' -> x :: heads l'], l = ((1 :: 2 :: []) :: [] :: (3 :: []) :: []) |- match l with [] -> [] | [] :: l' -> heads l' | (x :: _) :: l' -> x :: heads l' evalto 1::3::[] by E-MatchN {
            heads = ()[rec heads = fun l -> match l with [] -> [] | [] :: l' -> heads l' | (x :: _) :: l' -> x :: heads l'], l = ((1 :: 2 :: []) :: [] :: (3 :: []) :: []) |- l evalto ((1 :: 2 :: []) :: [] :: (3 :: []) :: []) by E-Var {};
            [] doesn't match ((1 :: 2 :: []) :: [] :: (3 :: []) :: []) by NM-ConsNil {};
            heads = ()[rec heads = fun l -> match l with [] -> [] | [] :: l' -> heads l' | (x :: _) :: l' -> x :: heads l'], l = ((1 :: 2 :: []) :: [] :: (3 :: []) :: []) |- match l with [] :: l' -> heads l' | (x :: _) :: l' -> x :: heads l' evalto 1::3::[] by E-MatchN {
                heads = ()[rec heads = fun l -> match l with [] -> [] | [] :: l' -> heads l' | (x :: _) :: l' -> x :: heads l'], l = ((1 :: 2 :: []) :: [] :: (3 :: []) :: []) |- l evalto ((1 :: 2 :: []) :: [] :: (3 :: []) :: []) by E-Var {};
                [] :: l' doesn't match ((1 :: 2 :: []) :: [] :: (3 :: []) :: []) by NM-ConsConsL {
                    [] doesn't match (1::2::[]) by NM-ConsNil {};
                };
                heads = ()[rec heads = fun l -> match l with [] -> [] | [] :: l' -> heads l' | (x :: _) :: l' -> x :: heads l'], l = ((1 :: 2 :: []) :: [] :: (3 :: []) :: []) |- match l with (x :: _) :: l' -> x :: heads l' evalto 1::3::[] by E-MatchM1 {
                    heads = ()[rec heads = fun l -> match l with [] -> [] | [] :: l' -> heads l' | (x :: _) :: l' -> x :: heads l'], l = ((1 :: 2 :: []) :: [] :: (3 :: []) :: []) |- l evalto ((1 :: 2 :: []) :: [] :: (3 :: []) :: []) by E-Var {};
                    (x :: _) :: l' matches ((1 :: 2 :: []) :: [] :: (3 :: []) :: []) when (x = 1, l' = []::(3::[])::[]) by M-Cons {
                        (x :: _) matches (1 :: 2 :: [])  when (x = 1) by M-Cons {
                            x matches 1 when (x = 1) by M-Var {};
                            _ matches 2::[] when () by M-Wild {};
                        };
                        l' matches [] :: (3 :: []) :: [] when (l' = [] :: (3 :: []) :: []) by M-Var {};
                    };
                    heads = ()[rec heads = fun l -> match l with [] -> [] | [] :: l' -> heads l' | (x :: _) :: l' -> x :: heads l'], l = ((1 :: 2 :: []) :: [] :: (3 :: []) :: []), x = 1, l' = []::(3::[])::[] |- x :: heads l' evalto 1::3::[] by E-Cons {
                        heads = ()[rec heads = fun l -> match l with [] -> [] | [] :: l' -> heads l' | (x :: _) :: l' -> x :: heads l'], l = ((1 :: 2 :: []) :: [] :: (3 :: []) :: []), x = 1, l' = []::(3::[])::[] |- x evalto 1 by E-Var {};
                        heads = ()[rec heads = fun l -> match l with [] -> [] | [] :: l' -> heads l' | (x :: _) :: l' -> x :: heads l'], l = ((1 :: 2 :: []) :: [] :: (3 :: []) :: []), x = 1, l' = []::(3::[])::[] |- heads l' evalto 3::[] by E-AppRec {
                            heads = ()[rec heads = fun l -> match l with [] -> [] | [] :: l' -> heads l' | (x :: _) :: l' -> x :: heads l'], l = ((1 :: 2 :: []) :: [] :: (3 :: []) :: []), x = 1, l' = []::(3::[])::[] |- heads evalto ()[rec heads = fun l -> match l with [] -> [] | [] :: l' -> heads l' | (x :: _) :: l' -> x :: heads l'] by E-Var {};
                            heads = ()[rec heads = fun l -> match l with [] -> [] | [] :: l' -> heads l' | (x :: _) :: l' -> x :: heads l'], l = ((1 :: 2 :: []) :: [] :: (3 :: []) :: []), x = 1, l' = []::(3::[])::[] |- l' evalto []::(3::[])::[] by E-Var {};
                            heads = ()[rec heads = fun l -> match l with [] -> [] | [] :: l' -> heads l' | (x :: _) :: l' -> x :: heads l'], l = ([] :: (3 :: []) :: []) |- match l with [] -> [] | [] :: l' -> heads l' | (x :: _) :: l' -> x :: heads l' evalto 3::[] by E-MatchN {
                                heads = ()[rec heads = fun l -> match l with [] -> [] | [] :: l' -> heads l' | (x :: _) :: l' -> x :: heads l'], l = ([] :: (3 :: []) :: []) |- l evalto ([] :: (3 :: []) :: []) by E-Var {};
                                [] doesn't match ([] :: (3 :: []) :: []) by NM-ConsNil {};
                                heads = ()[rec heads = fun l -> match l with [] -> [] | [] :: l' -> heads l' | (x :: _) :: l' -> x :: heads l'], l = ([] :: (3 :: []) :: []) |- match l with [] :: l' -> heads l' | (x :: _) :: l' -> x :: heads l' evalto 3::[] by E-MatchM2 {
                                    heads = ()[rec heads = fun l -> match l with [] -> [] | [] :: l' -> heads l' | (x :: _) :: l' -> x :: heads l'], l = ([] :: (3 :: []) :: []) |- l evalto ([] :: (3 :: []) :: []) by E-Var {};
                                    []::l' matches []::(3::[])::[] when (l' = (3::[])::[]) by M-Cons {
                                        [] matches [] when () by M-Nil {};
                                        l' matches (3::[])::[] when (l' = (3::[])::[]) by M-Var {};
                                    };
                                    heads = ()[rec heads = fun l -> match l with [] -> [] | [] :: l' -> heads l' | (x :: _) :: l' -> x :: heads l'], l = ([] :: (3 :: []) :: []), l' = (3::[])::[] |- heads l' evalto 3::[] by E-AppRec {
                                        heads = ()[rec heads = fun l -> match l with [] -> [] | [] :: l' -> heads l' | (x :: _) :: l' -> x :: heads l'], l = ([] :: (3 :: []) :: []), l' = (3::[])::[] |- heads evalto ()[rec heads = fun l -> match l with [] -> [] | [] :: l' -> heads l' | (x :: _) :: l' -> x :: heads l'] by E-Var {};
                                        heads = ()[rec heads = fun l -> match l with [] -> [] | [] :: l' -> heads l' | (x :: _) :: l' -> x :: heads l'], l = ([] :: (3 :: []) :: []), l' = (3::[])::[] |- l' evalto (3::[])::[] by E-Var {};
                                        heads = ()[rec heads = fun l -> match l with [] -> [] | [] :: l' -> heads l' | (x :: _) :: l' -> x :: heads l'], l = (3 :: []) :: [] |- match l with [] -> [] | [] :: l' -> heads l' | (x :: _) :: l' -> x :: heads l' evalto 3::[] by E-MatchN {
                                            heads = ()[rec heads = fun l -> match l with [] -> [] | [] :: l' -> heads l' | (x :: _) :: l' -> x :: heads l'], l = (3 :: []) :: [] |- l evalto (3::[])::[] by E-Var {};
                                            [] doesn't match (3::[])::[] by NM-ConsNil {};
                                            heads = ()[rec heads = fun l -> match l with [] -> [] | [] :: l' -> heads l' | (x :: _) :: l' -> x :: heads l'], l = (3 :: []) :: [] |- match l with [] :: l' -> heads l' | (x :: _) :: l' -> x :: heads l' evalto 3::[] by E-MatchN {
                                                heads = ()[rec heads = fun l -> match l with [] -> [] | [] :: l' -> heads l' | (x :: _) :: l' -> x :: heads l'], l = (3 :: []) :: [] |- l evalto (3::[])::[] by E-Var {};
                                                []::l' doesn't match (3::[])::[] by NM-ConsConsL {
                                                    [] doesn't match 3::[] by NM-ConsNil {};
                                                };
                                                heads = ()[rec heads = fun l -> match l with [] -> [] | [] :: l' -> heads l' | (x :: _) :: l' -> x :: heads l'], l = (3 :: []) :: [] |- match l with (x :: _) :: l' -> x :: heads l' evalto 3::[] by E-MatchM1 {
                                                    heads = ()[rec heads = fun l -> match l with [] -> [] | [] :: l' -> heads l' | (x :: _) :: l' -> x :: heads l'], l = (3 :: []) :: [] |- l evalto (3::[])::[] by E-Var {};
                                                    (x::_)::l' matches (3::[])::[] when (x = 3, l' = []) by M-Cons {
                                                        x::_ matches 3::[] when (x = 3) by M-Cons {
                                                            x matches 3 when (x = 3) by M-Var {};
                                                            _ matches [] when () by M-Wild {};
                                                        };
                                                        l' matches [] when (l' = []) by M-Var {};
                                                    };
                                                    heads = ()[rec heads = fun l -> match l with [] -> [] | [] :: l' -> heads l' | (x :: _) :: l' -> x :: heads l'], l = (3 :: []) :: [], x = 3, l' = [] |- x :: heads l' evalto 3::[] by E-Cons {
                                                        heads = ()[rec heads = fun l -> match l with [] -> [] | [] :: l' -> heads l' | (x :: _) :: l' -> x :: heads l'], l = (3 :: []) :: [], x = 3, l' = [] |- x evalto 3 by E-Var {};
                                                        heads = ()[rec heads = fun l -> match l with [] -> [] | [] :: l' -> heads l' | (x :: _) :: l' -> x :: heads l'], l = (3 :: []) :: [], x = 3, l' = [] |- heads l' evalto [] by E-AppRec {
                                                            heads = ()[rec heads = fun l -> match l with [] -> [] | [] :: l' -> heads l' | (x :: _) :: l' -> x :: heads l'], l = (3 :: []) :: [], x = 3, l' = [] |- heads evalto ()[rec heads = fun l -> match l with [] -> [] | [] :: l' -> heads l' | (x :: _) :: l' -> x :: heads l'] by E-Var {};
                                                            heads = ()[rec heads = fun l -> match l with [] -> [] | [] :: l' -> heads l' | (x :: _) :: l' -> x :: heads l'], l = (3 :: []) :: [], x = 3, l' = [] |- l' evalto [] by E-Var {};
                                                            heads = ()[rec heads = fun l -> match l with [] -> [] | [] :: l' -> heads l' | (x :: _) :: l' -> x :: heads l'], l = [] |- match l with [] -> [] | [] :: l' -> heads l' | (x :: _) :: l' -> x :: heads l' evalto [] by E-MatchM2 {
                                                                heads = ()[rec heads = fun l -> match l with [] -> [] | [] :: l' -> heads l' | (x :: _) :: l' -> x :: heads l'], l = [] |- l evalto [] by E-Var {};
                                                                [] matches [] when () by M-Nil {};
                                                                heads = ()[rec heads = fun l -> match l with [] -> [] | [] :: l' -> heads l' | (x :: _) :: l' -> x :: heads l'], l = [] |- [] evalto [] by E-Nil {};
                                                            };
                                                        };
                                                    };
                                                };
                                            };
                                        };
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