mestre(sasuke, boruto).
mestre(naruto, boruto).

aprendiz_de_elite(Ninja) :-
    (mestre(kakashi, Ninja); mestre(sasuke, Ninja)),
    (natureza(Ninja, raio); natureza(Ninja, fogo)).

ninja_versatil(Ninja) :-
    natureza(Ninja, X),
    natureza(Ninja, Y),
    X \= Y,
    vila(Ninja, konoha).

rivais(A, B) :-
    mestre(M, A),
    mestre(M, B),
    A \= B,
    cla(A, X),
    cla(B, Y),
    X \= Y.

linhagem(M, D) :-
    mestre(M, D).

linhagem(M, D) :-
    mestre(M, Z),
    linhagem(Z, D).

% ?- aprendiz_de_elite(X).
% ?- ninja_versatil(X).
% ?- rivais(naruto, X).
% ?- linhagem(jiraiya, X).
