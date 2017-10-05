%{
TD_140_1_02
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 144
  \time 2/4
 \override Glissando #'style = #'zigzag  
 \set Score.measureLength = #(ly:make-moment 3 4)   
 s4 \acciaccatura c8 d4 a
 \set Score.measureLength = #(ly:make-moment 2 4)  
\varA 
 a\startTextSpan c\stopTextSpan\prall |
 c4.( d8) 
 \par
\varB 
 \set Score.measureLength = #(ly:make-moment 3 4)  
 d\startTextSpan( c) \noteFi c4\glissando  \hideNotes g4\stopTextSpan \unHideNotes 
 \set Score.measureLength = #(ly:make-moment 2 4)  
 a2 c4 c8( d) 
 \varC
 \noteFi d4\startTextSpan\glissando 
 \noteFi c8.\glissando( bes16\stopTextSpan) 
 a2 
 \varD
 a8.\startTextSpan g16\noBeam( a4\stopTextSpan) a2 
 \bar "|." 
 s4 \fixB d,4 \fixC 
 \bar "|."
\endm 
\varA
a'4\startTextSpan d8( c\stopTextSpan) \bar "||"
\varB 
 \set Score.measureLength = #(ly:make-moment 3 4)  
 d4\startTextSpan \noteFi c4\glissando  \hideNotes g4\stopTextSpan \unHideNotes 
 \set Score.measureLength = #(ly:make-moment 2 4)   
\varC
 \set Score.measureLength = #(ly:make-moment 4 4)  
  d'4\startTextSpan c4\glissando \hideNotes d,2\stopTextSpan \unHideNotes \bar "||"  
 \set Score.measureLength = #(ly:make-moment 2 4)  
\varD
a'8\startTextSpan a4.\stopTextSpan
\bar "|."
}
\addlyrics {То- не ле, ма- ри, ху- ба- " " ва, що ка- раш г'ве- да и пла- чеш }
%
\layout {
  indent = #0
  line-width = 190\mm
  ragged-right=##f
%%   ragged-last = ##t
}
%
\midi { 
	\context {
		\Score
		tempoWholesPerMinute = #(ly:make-moment 144 4)
		}
	}
}

\header{
  opus = "ТД-140,1,2"
  tagline = ##f
}


