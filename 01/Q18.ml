S(S(S(Z))) + S(S(Z)) * S(Z) evalto S(S(S(S(S(Z))))) by E-Plus {
    S(S(S(Z))) evalto S(S(S(Z))) by E-Const {};
    S(S(Z)) * S(Z) evalto S(S(Z)) by E-Times {
        S(S(Z)) evalto S(S(Z)) by E-Const {};
        S(Z) evalto S(Z) by E-Const {};
        S(S(Z)) times S(Z) is S(S(Z)) by T-Succ {
            S(Z) times S(Z) is S(Z) by T-Succ {
                Z times S(Z) is Z by T-Zero {};
                S(Z) plus Z is S(Z) by P-Succ {
                    Z plus Z is Z by P-Zero {}
                }
            };
            S(Z) plus S(Z) is S(S(Z)) by P-Succ {
                Z plus S(Z) is S(Z) by P-Zero {}
            }
        }
    };
    S(S(S(Z))) plus S(S(Z)) is S(S(S(S(S(Z))))) by P-Succ {
        S(S(Z)) plus S(S(Z)) is S(S(S(S(Z)))) by P-Succ {
            S(Z) plus S(S(Z)) is S(S(S(Z))) by P-Succ {
                Z plus S(S(Z)) is S(S(Z)) by P-Zero {}
            }
        }
    }
}