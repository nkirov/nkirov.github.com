%{
BA_1_2_36
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
\varA
  b4\startTextSpan a\stopTextSpan | 
\varB
  b8\startTextSpan( c) d4\stopTextSpan | 
  c2 | 
\varC
  b8\startTextSpan( c) d4\stopTextSpan | 
\varD
  d8\startTextSpan( c4 b8\stopTextSpan) | 
b8( c) d4 | 
\varE
\times 2/3 { e8\startTextSpan( [d c)] } 
c8( [ b\stopTextSpan]) | a2 | a8 a4. | a4 r4
 \bar "|."
\endm 
 \varA
b4\startTextSpan a8.( b16\stopTextSpan) \bar "||"
\varB
  c4\startTextSpan d\stopTextSpan \bar "||" 
 \varC
d8.\startTextSpan( c16)  d4\stopTextSpan \bar "||"
 \varD
d8\startTextSpan( c b c\stopTextSpan) \bar "||"
 \varE
e8\startTextSpan( d) c( b)\stopTextSpan 
\bar "|."
}
\addlyrics { Ма- ма Ди- ля- ни ду- ма- ше: Ди- ля- но, ми- ла ма- мя- на }
\addlyrics { о- мий са да та о- пли- та, на па- зар щъ та за- ви- да }
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
  opus = "ВА-1,2,36"
  tagline = ##f
}


