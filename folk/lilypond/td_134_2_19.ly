%{
TD_134_2_19
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 160
 \time 2/4
a4 \acciaccatura d8 e4 | 
\varA
e8\startTextSpan([ d)] e16([ d8.\stopTextSpan]) | 
\varB
\acciaccatura d8\startTextSpan c4.( b8\stopTextSpan) | 
\varC
\acciaccatura c8\startTextSpan d4 d\stopTextSpan | 
\varD
c4\startTextSpan( d16[ c b8\stopTextSpan]) | 
\varE
c4\startTextSpan d8([ c\stopTextSpan]) |
\varF
d16\startTextSpan[( c8.]) b8[( a\stopTextSpan)] | 
a2~ | a2~ | a2 | 
\varG
a4\startTextSpan^\rtoe a\stopTextSpan | 
a2
 \bar "|." 
s4 \fixB d, \fixC
 \bar "|." 
\endm 
\varA
e'8\startTextSpan([ d)] e4\stopTextSpan \bar "||" 
\varB
\acciaccatura d8\startTextSpan c4( d16[ c b8\stopTextSpan]) \bar "||" 
\varC
c4\startTextSpan d\stopTextSpan \bar "||"  
\varD
d8\startTextSpan( c4 b8\stopTextSpan) \bar "||"  
\varE
\acciaccatura c8\startTextSpan d4 d8([ c\stopTextSpan]) \bar "||" 
\varF
c4\startTextSpan b4\stopTextSpan \bar "||" 
\varG
a8\startTextSpan^\rtoe a4.\stopTextSpan 
 \bar "|." 
}
\addlyrics { Лю- ля- ла~й мо- ма бял ка- мък, хем го~й лю- ля- ла, хем пя- ла }
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
		tempoWholesPerMinute = #(ly:make-moment 160 4)
		}
	}
}
%
\header{
  opus = "ТД-134,2,19"
  tagline = ##f
}


