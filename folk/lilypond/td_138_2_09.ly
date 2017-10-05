%{
TDG_138_2_09
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 152
%\time 5/16
\cadenzaOn
\override Glissando #'style = #'zigzag
\phrasingSlurDown
\varA
s4\startTextSpan a4\stopTextSpan 
a a a1~ a2 r4 \bar ""
\varB
a\startTextSpan( s^\ltoe b\stopTextSpan) 
c1( d16[ c b8]) 
\varC
s4\startTextSpan b2\stopTextSpan\prall^\ltoe 
a1~ a2 r4 d^\ltoe c^\ltoe b
\bar ""
\varD
a1\startTextSpan\glissando f'2\stopTextSpan 
e1~ e2 r4 
\bar "|:"
\noteFi \grace {\stdB d8\glissando \stdE } e4 \bar "" e e \bar ""
\afterGrace e1(\( { f16[ e]\) } d4 e) \bar ""
\varEF
d\startTextSpan( e8[ d]) c2.\stopTextSpan 
\noteFi b2\prall\glissando a2. r4
\bar ""
\varG
b4\startTextSpan a gis f1( \times 2/3 { g8[ f e] } f4\stopTextSpan) \bar ""
a8[( gis\prall] f4 e) e1~ e2
\bar ":|"
s4 \fixB a, \fixC
 \bar "|." 
%s16 \clef treble
\break
\varA
\noteFi \grace { \stdB e'8\startTextSpan\glissando \stdE } 
a4\stopTextSpan \bar "||"
\varB
a\startTextSpan( b\stopTextSpan) \bar "||"
\varC
b8.\startTextSpan[( c16 b8 a\stopTextSpan]) \bar "||"
\varD
a1\startTextSpan f'4( g16[ f e8\stopTextSpan]) \bar "||" 
\varE
d2\startTextSpan c2( d8[ c] b4\stopTextSpan) \bar "||"
\varF
d2\startTextSpan\glissando \afterGrace c1\( { d16[ c\stopTextSpan ]\) } \bar "||"
\varG
b4.\startTextSpan a8 gis4\prall f2.( \times 2/3 { g8[ f e] } f4\stopTextSpan) 
 \bar "|."  
}
\addlyrics { Те- жък ка- мък ми е пад- нал ме- не на сър- це- то 
лю- та тъ- га ми от- ко- ле по- па- ри ли- це- то }
%
\layout {
     \context { 
	    \Staff \remove "Time_signature_engraver" } 
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
  opus = "ТД-138,2,9"
  tagline = ##f
}


