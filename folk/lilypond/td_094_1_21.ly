%{
TD_94_1_21
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 120
  \time 2/4
\phrasingSlurDown  
  g4 a8\noBeam a | a4. b8^"↓" | c4 b8([ c]) | c8([ b] a4^\rtoe) | b4 c | b8([ c]  
  \afterGrace b4)\( { a16[ b]\) } | b8.\noBeam c16~ c4 | b4 a | a2\fermata  
%\bar "|." 
%s4 \fixB fis4 \fixC
%\bar "|." 
%  \break
g4 a8\noBeam g | a4. b8 | c4 b | c4( \acciaccatura { b16[ c b] } a4^\rtoe) | b8 c4 b8 | 
\varA
c8\startTextSpan([ b\prall] a16[ b8.\stopTextSpan]) | 
b8 c4. | b4 a | a2\fermata
 \bar "|." 
 s4 \fixB fis4 \fixC
   \bar "|." 
\endm
\varA
c'8\startTextSpan( \grace { b16[\( c b a] } b4.\stopTextSpan\))
   \bar "|." 
}
\addlyrics { Дон- ка ма- ма си го- во- ри, Дон- ка ма- ма си го- во- ри: 
Я из- лез, ма- мо, на- вън- ка, на- вън- ка -а, ма- мо, на дво- ри }
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
  opus = "ТД-94,1,21"
  tagline = ##f
}


