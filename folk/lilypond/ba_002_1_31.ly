%{
BA_2_1_31
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
\gliss  
g4 a4 | \noteFi a4.\glissando ( d8) | 
\varA
d8\startTextSpan( c) c4\stopTextSpan | 
c8([ b] a8[ g]) | a4 \acciaccatura c8 d4 | d16( c8.) c4 | c8([ b] a8[ g]) | a8 a4. | a2 | a4 a  
 \bar "|." 
\endm
\varA
c8\startTextSpan c4.\stopTextSpan  
\bar "|."
}
\addlyrics { Кой, бо- же, кой ка- то ме- ня, три го- дян го- дьен да хо- ди }
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
  opus = "ВА-2,1,31"
  tagline = ##f
}


