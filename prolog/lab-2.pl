doSum([], A, A).
doSum([H|T], A, S) :- Anew is A + H, doSum(T, Anew, S).
sum(List, Sum) :- doSum(List, 0, Sum).

multLists([], [], []).
multLists([H1|T1], [H2|T2], [H3|T3]) :- H3 is H1 * H2, multLists(T1, T2, T3).

dotProduct(L1, L2, Num) :- multLists(L1, L2, X), sum(X, Num).

abs(N1, N2) :- 0 is N1 + N2;
	       N1 * 2 =:= N1 + N2.

average(List, Avg) :- sum(List, Sum), length(List, Len), Avg is Sum / Len.

halves(L1, L2, L3) :- length(L1, X), length(L2, X), append(L1, L2, L3).

factorial(0,X) :- X is 1.
factorial(N, X) :- Nnew is N - 1,factorial(Nnew, Xnew), X is Xnew * N.
