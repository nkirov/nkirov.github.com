%{
laz_181_1_32
%}

\include "td-preamble.ly"

\score {
\relative c' {
 \tempo 4 = 152
 \time 2/4
\varA 
 d4\startTextSpan^\ltoe d8^\rtoe( c\stopTextSpan) | 
d4.( e8) | 
\varBC
\times 2/3 { f8\startTextSpan([ g f] } e[ f]) | e4 d8( bes\stopTextSpan) | 
d4.( e8) | \acciaccatura e8 f4( g16[ f e8]) | 
\varD
d4\startTextSpan^\ltoe d\stopTextSpan^\rtoe | 
d4.( e8) | \acciaccatura e8 f4( g16[ f e8]) | 
\varE
d8\startTextSpan d4.\stopTextSpan | 
d2 d2
 \bar "|." 
 s4 \fixB c \fixC
 \bar "|." 
\endm
\varA 
 d4\startTextSpan d\stopTextSpan \bar "||"
\varB
\times 2/3 { f8\startTextSpan([ g f] } e4) | d4 d8( bes\stopTextSpan) \bar "||"
\varC
f'8\startTextSpan( g f4) | e4 d8( bes\stopTextSpan) \bar "||"
\varD
d4\startTextSpan \afterGrace d( { \stdB e8\stopTextSpan) \stdE }\bar "||"
\varE
d4\startTextSpan d\stopTextSpan 
 \bar "|."  
}
\addlyrics { Ма- ри Де- но, ка- ра Де- но, спиш ли, Де- но, съ- бу- ди са }
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
  opus = "ТД-181,1,32"
  tagline = ##f
}


