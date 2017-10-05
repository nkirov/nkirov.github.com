%{
td_135_1_28
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 168
\time 2/4
\override Glissando #'style = #'zigzag
\phrasingSlurDown
\noteFi \acciaccatura d8\glissando e4 e8[( d]) | \afterGrace d4(\( { e16[ d]\) } c8[ a]) |
b4.( d8) | e4 e8[( d]) | \afterGrace d4(\( { e16[ d]\) } c8[ a]) | b4 r |
\varA
a8\startTextSpan[( b]) \acciaccatura d8 e[( c\stopTextSpan]) | 
c[( b]) b[( a]) | a4.( g8) | \acciaccatura c8 d4 d8 a\noBeam | 
\varA
a\startTextSpan[( b]) \acciaccatura c8 d[( c\stopTextSpan]) | 
\varB
c\startTextSpan[( b]) b[( a\stopTextSpan]) | 
a2 | a4 r
 \bar "|." 
s4 \fixB e \fixC
 \bar "|." 
\endm
\varA
a8\startTextSpan[( b])  c4\stopTextSpan] \bar "||"
\varB
c8\startTextSpan[( b]) b[( g\stopTextSpan]) 
 \bar "|."  
}
\addlyrics { Про- тек- ла йе, про- тек- ла йе Тун- джа~й Ар- да- лий- ка, 
ма- ри, Тун- джа~й Ар- да- лий- ка }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 168 4)
		}
	}
}
%
\header{
  opus = "ТД-135,1,28"
  tagline = ##f
}


