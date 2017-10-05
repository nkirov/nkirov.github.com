%{
BA_2_1_32
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
  g4 c | c4( \times 2/3 { d8[ c b])} | d8( c) c4 | \acciaccatura d8 c8([ b] b8[ a]) | d4 \times 2/3 { d8 ([ c b]) } | d4 d8( c) | c8([ b] a4) | d8( c) b8( a) | a2 | a8\noBeam a8 r4   
 \bar ":|" 
\break
a4^"II вариант" a | d4( \times 2/3 { d8[ c b]) } | 
d4 c4 | c8([ b] b8[ a]) | 
d4 \times 2/3 {d8 ([ c b])} | d4 d8( c) |  
c8([ b] a8[ b]) | d8( c) b4 | a2 | a8\noBeam a8 r4  
 \bar ":|"
}
\addlyrics { И- ма- "ла~й" ма- ма, и- ма- ла са- мо и- днич- ка дъ- ще- ря, }
\addlyrics { са- мо и- днич- ка дъ- ще- ря, Рад- ка ми мо- ма ху- ба- ва }
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
  opus = "ВА-2,1,32"
  tagline = ##f
}


