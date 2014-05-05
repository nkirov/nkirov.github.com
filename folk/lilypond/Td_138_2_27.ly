%{
sva_138_2_27
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 126
\time 2/4
d8([ c]) b4 | \acciaccatura c8 d2 | e4 d8\prall([ c^"↑"]) | d4 \times 2/3 { d8[( c b]) } |
b4( d) | d8\prall([ c]) b4 | b2 | d8([ c]) c[( d]) | c[( b]) b4 | b2
 \bar "|." 
s4 \fixB a
 \bar "|." 
}
\addlyrics { Ви- ла са ло- за гроз- до- ва о- ко- ло гра- да Дер- ве- ня }
%
\layout {
  indent = #0
  line-width = 190\mm
  ragged-right=##f
}
%
\midi { 
	\context {
		\Score tempoWholesPerMinute = #(ly:make-moment 126 4)
		}
	}
}
%
\header{
  opus = "ТД-138,2,27"
  tagline = ##f
}


