%{
sva_113_1_09
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 8 = 176
\time 2/4
\override Glissando #'style = #'zigzag
g4 a8( b) | c( b) a4 | g g | f8([ \noteFi  e]\glissando d[ c]) | g'4 g | a f |
e\glissando d | a'2 \breathe | g4 a8( b) |  
\varA
c\startTextSpan( b) \noteFi a8.([\glissando g16\stopTextSpan]) | 
g4 g | f8([ e] d[ c]) | g'4 g |  \noteFi a\glissando f | e d | d2
 \bar "|." 
s4 \fixB g, \fixC
 \bar "|." 
\endm
\varA
c'8\startTextSpan( b) a4\stopTextSpan
 \bar "|."  
}
\addlyrics { За- ме- ся- ла~й бул- ка- та, зел- ник- мел- ник, пон' дел- ник,
ко- ра браш- но~й ме- ся- ла, ка- ца зе- ли скъл- ца- ла }
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
		tempoWholesPerMinute = #(ly:make-moment 176 8)
		}
	}
}
%
\header{
  opus = "ТД-113,1,9"
  tagline = ##f
}


