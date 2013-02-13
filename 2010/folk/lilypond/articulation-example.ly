parS = { 
	\override ParenthesesItem #'padding = #0.1
  	\override ParenthesesItem #'font-size = #-2  
}
\relative c' {
 d4\prall e\mordent f^↑  g^↓ 
 c^\markup\natural c^\markup\flat c^\markup\sharp 
 a^\markup { \sharp }^↓ a2.^\markup\flat\prall g4^>
 g1\fermata f2^\rtoe f4^\ltoe \breathe g\trill 
 \parS
 d4-\parenthesize\prall  g-\parenthesize^↓  f2-\parenthesize^\ltoe
} 
