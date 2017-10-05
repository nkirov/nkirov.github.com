%{
TD_95_1_03
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 152
\time 2/4
a4 b\mordent  | c a8([ c]) | a4 c | b a | a8([ b]) b8([ a]) | g4 a | 
b8([ c]) b8([ c]) | a4 c | b8([ c]) a8([ b]) | a4 a\fermata \bar "||"
\break 
%\time 2/4
a4 b8([ c]) | d8([ c]) c8([ b]) | a4 c | c8([ b]) a8([ b]) | b4 a8([ g]) | g4 a | b8([ c]) c8([ b]) | a4 b | b8([ a]) a4 | a a\fermata 
 \bar "|." 
s4 \fixB e
\bar "|." 
}
\addlyrics { О- ти- до- хме на Ста- ра пла- ни- на, 
о- ти- до- хме на Ста- ра пла- ни- на, за- ва- ля- я дъж- до- ве, сня- го- ве, 
за- мръз- на- я пуш- ки за ра- ми- на }
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
  opus = "ТД-95,1,3"
  tagline = ##f
}


