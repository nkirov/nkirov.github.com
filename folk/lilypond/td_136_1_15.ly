%{
TD_136_1_15
%}

\include "td-preamble.ly"

\score {
\relative c' {
 \tempo 4 = 144
%% \clef treble 
\time 2/4
 d4 \acciaccatura g8 a4
 \varA
 a4.\startTextSpan ( f8) \acciaccatura g8 a4^\ltoe a^\rtoe a4.( g8) \stopTextSpan
 g4\prall f f g8^\ltoe( a^\rtoe) 
 \varB
 a4.\startTextSpan( g16 a) \stopTextSpan 
 %%g8( f-\parenthesize-\ltoe) f( e) d2 
 g8( f) f( e^"(↓)") d2 
 \varC
 d4\startTextSpan d4  \stopTextSpan 
 \bar "|."  
 s4 \fixB g,4 \fixC  
\bar "|." 
\endm
\varA
a'2\startTextSpan c8( bes) a4 a2  \stopTextSpan \bar "||" 
  \override Glissando #'style = #'zigzag
\varB  
a4.\startTextSpan( \noteFi g16\glissando f)  \stopTextSpan \bar "||" 
\varC
d8\startTextSpan d4.  \stopTextSpan 
\bar "|."
}
\addlyrics { Про- чу сай мо- ма Йор- да- на, Йор- да- но, мо- ме, ху- ба- ва }
%
\layout {
  indent = #0
  line-width = 190\mm
  ragged-right=##f
%%    ragged-last = ##t
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
  opus = "ТД-136,1,15"
  tagline = ##f
}


