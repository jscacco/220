occursTwice(Element, List) :- append(_, [Element|T], List), member(Element, T).

lastElement(Element, List) :- append(_, [Element], List).

allButLast(List1, List2) :- append(List2, [_], List1).
				
