%{
BA_2_1_03
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
d8( c) c8( a) | b2 | d4 c8( b) | b2 | e4 e | b4 d | d4.( b8) | d8( c) c8( b) | a2 | a4 a | c4 c8( b) | b2 | d4 c8( b) | b4 r4 | e4 e8( d) | c4 d | d4.( c8) | d4 c8( b) | a2 | a4 a 
 \bar "|." 
}
\addlyrics { Же- ра- ви хвър- кат ви- со- ко. От- де ги Стан- ка ви- дя- ла, 
Стан- ка же- ра- ви ду- ма- ши: Же- ра- ви, пъ- стри пи- лян- ца }
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
  opus = "ВА-2,1,3"
  tagline = ##f
}


