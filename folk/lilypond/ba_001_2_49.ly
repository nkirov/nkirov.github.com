%{
BA_1_2_49
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
a4 d | d2 | e8( f) e8([ d]) | c4.( d8) |
\parG
\varA
\acciaccatura \parenthesize e8\startTextSpan d8( c) c8( bes\stopTextSpan) |
\varB
d4\startTextSpan d8( c\stopTextSpan) | 
\acciaccatura { d16[ c bes] } c2 | d8( c) bes8( a) | a2 | a4 a 
 \bar ":|"
\endm 
\varA
%%\set Score.measureLength = #(ly:make-moment 3 4) 
%%s8 
\acciaccatura \parenthesize e'8\startTextSpan d8[( c)] 
\times 2/3 { c8( bes a\stopTextSpan) } \bar "||"
\varB
a4\startTextSpan d8( c\stopTextSpan) 
\bar "|." 
}
\addlyrics { Драг- ни ле- ля си ду- ма- ши: Ле- льо мо, ми- лин- ка ле- льо, }
\addlyrics { я пус- ни, ле- льо, Ма- рий- ка да дой- де да ми ми- джу- ва }
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
  opus = "ВА-1,2,49"
  tagline = ##f
}


