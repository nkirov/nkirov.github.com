%{
BA_2_2_01
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
\varAB
a4\startTextSpan a8\noBeam b\stopTextSpan 
| c4 c | c8( b) a4 | 
\varC
b4.\startTextSpan( a8\stopTextSpan) | 
\varD
d8->\startTextSpan( c) c8( b\stopTextSpan) | 
a2 | 
\varE
\parS
\afterGrace a4\startTextSpan( { \stdB g8) \stdE } 
g8-\parenthesize\prall( fis\stopTextSpan) | 
fis8( g) a4 | a4 r4   
 \bar ":|"
 \endm
\varA  
g4\startTextSpan a8\noBeam b\stopTextSpan \bar "||"
\varB 
\times 2/3 { a4\startTextSpan a b\stopTextSpan } \bar "||"
\varC 
b4.\startTextSpan( \times 2/3 { c16[ b a\stopTextSpan)] } \bar "||"
\varD
c4\startTextSpan c8( b\stopTextSpan) \bar "||"
\varE
a8\prall\startTextSpan( g8)  
g8-\parenthesize\prall( fis\stopTextSpan) 
\bar "|."
}
\addlyrics { И- ван на Дон- ка ду- ма- ши: Дон- ки мо, ду- дум бай- но- ва, }
\addlyrics { Дон- ки мо, ду- дум бай- но- ва, ду- дум бай- но- во мо- ми- че }
%
\layout {
  indent = #0
  line-width = 190\mm
  ragged-right=##f
}
%
\midi { 
	\context {
		\Score
		tempoWholesPerMinute = #(ly:make-moment 152 4)
		}
	}
}
%
\header{
  opus = "ВА-2,2,1"
  tagline = ##f
}


