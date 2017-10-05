%{
BA_2_1_34
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
\time 2/4
\phrasingSlurDown  
\varA
a4\startTextSpan c4 | d4 d8( c) | 
\afterGrace c4\(( { \stdB d8\) \stdE } \afterGrace c4\prall)\( { \stdB b8\stopTextSpan\) \stdE } | 
c4 c8( b) | \afterGrace a2( { \stdB g8) \stdE } | g4 a8( b) | c4 c8( b) | 
a2\fermata | 
%%\break
a8 a4. | a4 r4 
 \bar "|." 
\endm
\varA
a8\startTextSpan( b) c4 | d4 d8( c) | 
c8( d c b\stopTextSpan) \bar "|."
%%\break
\time 5/16
a8^"II вариант" c8. | d8 d16([ c8)] | 
\afterGrace c8\(( { \stdB d8\) \stdE } \afterGrace c8.\prall)\( { \stdB b8\) \stdE }
\bar "|."
}
\addlyrics { Сно- щи съ, ма- мо, съ- брах- ми със де- вят ста- да ов- ча- ри }
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
\header{
  opus = "ВА-2,1,34"
  tagline = ##f%
}



