%{
BA_2_2_27
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
\phrasingSlurDown  
\parS  
e8( d) d-\parenthesize\prall( c) | c2 | 
\gliss
\noteFi e4\glissando d | c8( b) a4 | d4 d8( c) | 
\parG
\afterGrace c2\( { \stdB \parenthesize b8\) \stdE } | 
e4 d | 
\break
c8( b) a4  
 \bar "|:" 
 \varA  
 \repeat volta 2 { g8 a16([ b]) c4 | d4 d8( c) | c8( b) a4 }
 \alternative { 
{ a4\startTextSpan r4\stopTextSpan } { a2 } }
 \bar "|."
\endm
 a4.\startTextSpan( g8\stopTextSpan) 
 \bar "|."
}
\addlyrics { До- ни ле, Дон- чи- ци ле, До- ни ле, Дон- чи- ци- ле, чи кой ти ша- ри тоз гер- дан -дан  }
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
  opus = "ВА-2,2,27"
  tagline = ##f
}


