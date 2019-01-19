|- let compose = fun f -> fun g -> fun x -> f (g x) in
   let p = fun x -> x * x in
   let q = fun x -> x + 4 in
   compose p q 4
  evalto 64 by E-Let {
    |- fun f -> fun g -> fun x -> f (g x) evalto ()[fun f -> fun g -> fun x -> f (g x)] by E-Fun {};
    compose = ()[fun f -> fun g -> fun x -> f (g x)] |-
       let p = fun x -> x * x in
       let q = fun x -> x + 4 in
       compose p q 4
     evalto 64 by E-Let {
        compose = ()[fun f -> fun g -> fun x -> f (g x)] |-
           fun x -> x * x
         evalto (compose = ()[fun f -> fun g -> fun x -> f (g x)])[fun x -> x * x] by E-Fun {};
        compose = ()[fun f -> fun g -> fun x -> f (g x)],
         p = (compose = ()[fun f -> fun g -> fun x -> f (g x)])[fun x -> x * x] |-
           let q = fun x -> x + 4 in
           compose p q 4
         evalto 64 by E-Let {
            compose = ()[fun f -> fun g -> fun x -> f (g x)],
             p = (compose = ()[fun f -> fun g -> fun x -> f (g x)])[fun x -> x * x] |-
               fun x -> x + 4
             evalto (
              compose = ()[fun f -> fun g -> fun x -> f (g x)],
              p = (compose = ()[fun f -> fun g -> fun x -> f (g x)])[fun x -> x * x]
             )[fun x -> x + 4] by E-Fun {};
            compose = ()[fun f -> fun g -> fun x -> f (g x)],
             p = (compose = ()[fun f -> fun g -> fun x -> f (g x)])[fun x -> x * x],
             q = (
              compose = ()[fun f -> fun g -> fun x -> f (g x)],
              p = (compose = ()[fun f -> fun g -> fun x -> f (g x)])[fun x -> x * x]
             )[fun x -> x + 4] |-
               compose p q 4
             evalto 64 by E-App {
                compose = ()[fun f -> fun g -> fun x -> f (g x)],
                 p = (compose = ()[fun f -> fun g -> fun x -> f (g x)])[fun x -> x * x],
                 q = (
                  compose = ()[fun f -> fun g -> fun x -> f (g x)],
                  p = (compose = ()[fun f -> fun g -> fun x -> f (g x)])[fun x -> x * x]
                 )[fun x -> x + 4] |-
                   compose p q
                 evalto (
                  f = (compose = ()[fun f -> fun g -> fun x -> f (g x)])[fun x -> x * x],
                  g = (
                   compose = ()[fun f -> fun g -> fun x -> f (g x)],
                   p = (compose = ()[fun f -> fun g -> fun x -> f (g x)])[fun x -> x * x]
                  )[fun x -> x + 4]
                 )[fun x -> f (g x)] by E-App {
                    compose = ()[fun f -> fun g -> fun x -> f (g x)],
                     p = (compose = ()[fun f -> fun g -> fun x -> f (g x)])[fun x -> x * x],
                     q = (
                      compose = ()[fun f -> fun g -> fun x -> f (g x)],
                      p = (compose = ()[fun f -> fun g -> fun x -> f (g x)])[fun x -> x * x]
                     )[fun x -> x + 4] |-
                       compose p
                     evalto (f = (compose = ()[fun f -> fun g -> fun x -> f (g x)])[fun x -> x * x])[fun g -> fun x -> f (g x)] by E-App {
                        compose = ()[fun f -> fun g -> fun x -> f (g x)],
                         p = (compose = ()[fun f -> fun g -> fun x -> f (g x)])[fun x -> x * x],
                         q = (
                          compose = ()[fun f -> fun g -> fun x -> f (g x)],
                          p = (compose = ()[fun f -> fun g -> fun x -> f (g x)])[fun x -> x * x]
                         )[fun x -> x + 4] |-
                           compose
                         evalto ()[fun f -> fun g -> fun x -> f (g x)] by E-Var2 {
                            compose = ()[fun f -> fun g -> fun x -> f (g x)],
                             p = (compose = ()[fun f -> fun g -> fun x -> f (g x)])[fun x -> x * x] |-
                               compose
                             evalto ()[fun f -> fun g -> fun x -> f (g x)] by E-Var2 {
                                compose = ()[fun f -> fun g -> fun x -> f (g x)] |-
                                   compose
                                 evalto ()[fun f -> fun g -> fun x -> f (g x)] by E-Var1 {}
                            }
                        };
                        compose = ()[fun f -> fun g -> fun x -> f (g x)],
                         p = (compose = ()[fun f -> fun g -> fun x -> f (g x)])[fun x -> x * x],
                         q = (
                          compose = ()[fun f -> fun g -> fun x -> f (g x)],
                          p = (compose = ()[fun f -> fun g -> fun x -> f (g x)])[fun x -> x * x]
                         )[fun x -> x + 4] |-
                           p
                         evalto (compose = ()[fun f -> fun g -> fun x -> f (g x)])[fun x -> x * x] by E-Var2 {
                            compose = ()[fun f -> fun g -> fun x -> f (g x)],
                             p = (compose = ()[fun f -> fun g -> fun x -> f (g x)])[fun x -> x * x] |-
                               p
                             evalto (compose = ()[fun f -> fun g -> fun x -> f (g x)])[fun x -> x * x] by E-Var1 {};
                        };
                        f = (compose = ()[fun f -> fun g -> fun x -> f (g x)])[fun x -> x * x] |- fun g -> fun x -> f (g x)
                         evalto (f = (compose = ()[fun f -> fun g -> fun x -> f (g x)])[fun x -> x * x])[fun g -> fun x -> f (g x)] by E-Fun {}
                    };
                    compose = ()[fun f -> fun g -> fun x -> f (g x)],
                     p = (compose = ()[fun f -> fun g -> fun x -> f (g x)])[fun x -> x * x],
                     q = (
                      compose = ()[fun f -> fun g -> fun x -> f (g x)],
                      p = (compose = ()[fun f -> fun g -> fun x -> f (g x)])[fun x -> x * x]
                     )[fun x -> x + 4] |-
                       q
                     evalto (
                      compose = ()[fun f -> fun g -> fun x -> f (g x)],
                      p = (compose = ()[fun f -> fun g -> fun x -> f (g x)])[fun x -> x * x]
                     )[fun x -> x + 4] by E-Var1 {};
                    f = (compose = ()[fun f -> fun g -> fun x -> f (g x)])[fun x -> x * x],
                     g = (
                      compose = ()[fun f -> fun g -> fun x -> f (g x)],
                      p = (compose = ()[fun f -> fun g -> fun x -> f (g x)])[fun x -> x * x]
                     )[fun x -> x + 4] |-
                       fun x -> f (g x)
                     evalto (
                      f = (compose = ()[fun f -> fun g -> fun x -> f (g x)])[fun x -> x * x],
                      g = (
                       compose = ()[fun f -> fun g -> fun x -> f (g x)],
                       p = (compose = ()[fun f -> fun g -> fun x -> f (g x)])[fun x -> x * x]
                      )[fun x -> x + 4]
                     )[fun x -> f (g x)] by E-Fun {}
                };
                compose = ()[fun f -> fun g -> fun x -> f (g x)],
                 p = (compose = ()[fun f -> fun g -> fun x -> f (g x)])[fun x -> x * x],
                 q = (
                  compose = ()[fun f -> fun g -> fun x -> f (g x)],
                  p = (compose = ()[fun f -> fun g -> fun x -> f (g x)])[fun x -> x * x]
                 )[fun x -> x + 4] |-
                   4 evalto 4 by E-Int {};
                f = (compose = ()[fun f -> fun g -> fun x -> f (g x)])[fun x -> x * x],
                 g = (
                  compose = ()[fun f -> fun g -> fun x -> f (g x)],
                  p = (compose = ()[fun f -> fun g -> fun x -> f (g x)])[fun x -> x * x]
                 )[fun x -> x + 4],
                 x = 4 |-
                   f (g x)
                 evalto 64 by E-App {
                    f = (compose = ()[fun f -> fun g -> fun x -> f (g x)])[fun x -> x * x],
                     g = (
                      compose = ()[fun f -> fun g -> fun x -> f (g x)],
                      p = (compose = ()[fun f -> fun g -> fun x -> f (g x)])[fun x -> x * x]
                     )[fun x -> x + 4],
                     x = 4 |-
                       f
                     evalto (compose = ()[fun f -> fun g -> fun x -> f (g x)])[fun x -> x * x] by E-Var2 {
                        f = (compose = ()[fun f -> fun g -> fun x -> f (g x)])[fun x -> x * x],
                         g = (
                          compose = ()[fun f -> fun g -> fun x -> f (g x)],
                          p = (compose = ()[fun f -> fun g -> fun x -> f (g x)])[fun x -> x * x]
                         )[fun x -> x + 4] |-
                           f
                         evalto (compose = ()[fun f -> fun g -> fun x -> f (g x)])[fun x -> x * x] by E-Var2 {
                            f = (compose = ()[fun f -> fun g -> fun x -> f (g x)])[fun x -> x * x] |-
                               f
                             evalto (compose = ()[fun f -> fun g -> fun x -> f (g x)])[fun x -> x * x] by E-Var1 {}
                        }
                    };
                    f = (compose = ()[fun f -> fun g -> fun x -> f (g x)])[fun x -> x * x],
                     g = (
                      compose = ()[fun f -> fun g -> fun x -> f (g x)],
                      p = (compose = ()[fun f -> fun g -> fun x -> f (g x)])[fun x -> x * x]
                     )[fun x -> x + 4],
                     x = 4 |-
                       g x
                     evalto 8 by E-App {
                        f = (compose = ()[fun f -> fun g -> fun x -> f (g x)])[fun x -> x * x],
                         g = (
                          compose = ()[fun f -> fun g -> fun x -> f (g x)],
                          p = (compose = ()[fun f -> fun g -> fun x -> f (g x)])[fun x -> x * x]
                         )[fun x -> x + 4],
                         x = 4 |-
                            g
                         evalto (
                          compose = ()[fun f -> fun g -> fun x -> f (g x)],
                          p = (compose = ()[fun f -> fun g -> fun x -> f (g x)])[fun x -> x * x]
                         )[fun x -> x + 4] by E-Var2 {
                            f = (compose = ()[fun f -> fun g -> fun x -> f (g x)])[fun x -> x * x],
                             g = (
                              compose = ()[fun f -> fun g -> fun x -> f (g x)],
                              p = (compose = ()[fun f -> fun g -> fun x -> f (g x)])[fun x -> x * x]
                             )[fun x -> x + 4] |-
                                g
                             evalto (
                              compose = ()[fun f -> fun g -> fun x -> f (g x)],
                              p = (compose = ()[fun f -> fun g -> fun x -> f (g x)])[fun x -> x * x]
                             )[fun x -> x + 4] by E-Var1 {}
                        };
                        f = (compose = ()[fun f -> fun g -> fun x -> f (g x)])[fun x -> x * x],
                         g = (
                          compose = ()[fun f -> fun g -> fun x -> f (g x)],
                          p = (compose = ()[fun f -> fun g -> fun x -> f (g x)])[fun x -> x * x]
                         )[fun x -> x + 4],
                         x = 4 |-
                            x
                         evalto 4 by E-Var1 {};
                        compose = ()[fun f -> fun g -> fun x -> f (g x)],
                         p = (compose = ()[fun f -> fun g -> fun x -> f (g x)])[fun x -> x * x],
                         x = 4 |-
                           x + 4
                         evalto 8 by E-Plus {
                            compose = ()[fun f -> fun g -> fun x -> f (g x)],
                             p = (compose = ()[fun f -> fun g -> fun x -> f (g x)])[fun x -> x * x],
                             x = 4 |-
                               x
                             evalto 4 by E-Var1 {};
                            compose = ()[fun f -> fun g -> fun x -> f (g x)],
                             p = (compose = ()[fun f -> fun g -> fun x -> f (g x)])[fun x -> x * x],
                             x = 4 |-
                               4
                             evalto 4 by E-Int {};
                            4 plus 4 is 8 by B-Plus {};
                        }
                    };
                    compose = ()[fun f -> fun g -> fun x -> f (g x)],
                     x = 8 |-
                       x * x
                     evalto 64 by E-Times {
                        compose = ()[fun f -> fun g -> fun x -> f (g x)],
                         x = 8 |-
                           x
                         evalto 8 by E-Var1 {};
                        compose = ()[fun f -> fun g -> fun x -> f (g x)],
                         x = 8 |-
                           x
                         evalto 8 by E-Var1 {};
                        8 times 8 is 64 by B-Times {};
                    }
                }
            }
        }
    }
}