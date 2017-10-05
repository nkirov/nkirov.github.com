%{
BA_2_1_33
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
  \phrasingSlurDown
\varA  
  g8\startTextSpan a4 a8\stopTextSpan | 
b8( c) d8( ees^"↑") | \afterGrace d4(\( { c16[ d]\) } c8 b8) | d4 d | 
\varB
d4\startTextSpan c8\noBeam b8\stopTextSpan | 
c8( b) a4 | 
\varC
a4.\startTextSpan( g8\stopTextSpan) | 
b8( c) d8( b) | 
\varD
d4\startTextSpan c8\noBeam b8\stopTextSpan | 
c8( b) a4 a2 | a8 a4. 
 \bar "|." 
\endm
\varA  
  g4\startTextSpan a8\noBeam a8\stopTextSpan \bar "||"
\varB
d8\startTextSpan d4\noBeam b8\stopTextSpan \bar "||" 
\varC
\set Score.measureLength = #(ly:make-moment 3 4)
s4\startTextSpan a2\stopTextSpan \bar "||"
\set Score.measureLength = #(ly:make-moment 2 4)
\varD
d8\startTextSpan d4\noBeam b8\stopTextSpan 
\bar "|."
}
\addlyrics { Вър- бан- чо Рад- ки ду- ма- ши: Рад- ки мо, Вър- бан- чо- ва- та, Рад- ки мо, Вър- бан- чо- ва- та }
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
  opus = "ВА-2,1,33"
  tagline = ##f
}


