%{
sva_140_1_08
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 144
\time 2/4
%%\cadenzaOn
\varA
b8\startTextSpan([ a]) b4\stopTextSpan | 
\acciaccatura c8 d2 | 
\varB
d8\startTextSpan([ c]) b([ a\stopTextSpan]) | 
\varC
\acciaccatura c8\startTextSpan d4 c8([ d\stopTextSpan]) |
\times 2/3 { d8[( c b] } a4)  | 
\override Glissando #'style = #'zigzag
\varD
\noteFi \acciaccatura c8\startTextSpan\glissando d[( c]) b([ a\stopTextSpan]) |
b2 | \acciaccatura c8 \noteFi d8.([\glissando c16]) \acciaccatura c8 
\noteFi d8.([\glissando c16]) |
\varA
b8\startTextSpan([ a]) b4\stopTextSpan | 
b2\fermata
 \bar "|." 
 s4 \fixB ees, \fixC
 \bar "|." 
 \endm
\varA
b'4\startTextSpan b\stopTextSpan \bar "||"
\varB
d8\startTextSpan([ c]) b4\stopTextSpan \bar "||"
\varC
d8\startTextSpan([ c]) d4\stopTextSpan \bar "||"
\varD
\acciaccatura c8\startTextSpan d4 \times 2/3 { c8[( b a\stopTextSpan]) }  \bar "||"
 \bar "|."  
}
\addlyrics { Ви- ла се ло- за гроз- до- ва о- ко- ло гра- да Дер- ве- ня }
%
\layout {
%   \context { 
%	    \Staff \remove "Time_signature_engraver" } 
  indent = #0
  line-width = 190\mm
  ragged-right=##f
}
%
\midi { 
	\context {
		\Score tempoWholesPerMinute = #(ly:make-moment 144 4)
		}
	}
}
%
\header{
  opus = "ТД-140,1,8"
  tagline = ##f
}


