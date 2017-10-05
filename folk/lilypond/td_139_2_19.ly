%{
kav_139_2_19
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 132
 \time 2/4
 \override Glissando #'style = #'zigzag
d4 e | \noteFi \acciaccatura e8\glissando g4 e | e\prall( d8[ c]) | d( e) d( c) |
\acciaccatura { c16[ b] } a2 | \acciaccatura b8 c4 d | 
\break
d8( e) c4 | 
\varA
c16\startTextSpan([ b! bes8] a4\stopTextSpan) | 
a8( g) a4 | a2
 \bar "|." 
 s4 \fixB c, \fixC
 \bar "|."  
 \endm
 \varA
c'16\startTextSpan([ b!] a4.\stopTextSpan)
 \bar "|."  
}
\addlyrics { Ма- ма на Сто- ян ду- ма- ше: Син- ко Сто- я- не, Сто- я- не }
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
		tempoWholesPerMinute = #(ly:make-moment 132 4)
		}
	}
}
%
\header{
  opus = "ТД-139,2,19"
  tagline = ##f
}


