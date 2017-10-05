%{
BA_1_2_47
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
a4 d | d2 | e8( f) e8\prall( d) | \acciaccatura d8 c4.( d8) | 
d8( c) \times 2/3 { c8([ bes a]) } | d4 d8( c) | c2 | d8( c) bes8( a) | a2 | a4 a 
 \bar "||" 
 a4 c | d2 | e4 e8( d) | c4.( d8) | d8( c)  \times 2/3 { c8([ bes a]) } | 
 \acciaccatura c8 d4 d8( c) | 
\varA
\cadenzaOn
s4\startTextSpan c2\stopTextSpan \bar "|" 
\cadenzaOff
d8( c) bes4 | a2 | a4 a 
 \bar "|."
\endm
\varA
\acciaccatura { d16\startTextSpan[ c b] } c2\stopTextSpan  
 \bar "|."
}
\addlyrics { Ди- ми- тър То- ни ду- ма- ше: То- но мо, 
гю- зел То- до- ро, мо, аз щъ, То- но, да и- да на- до- лу къ- дя Стам- бу- ла }
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
  opus = "ВА-1,2,47"
  tagline = ##f
}


