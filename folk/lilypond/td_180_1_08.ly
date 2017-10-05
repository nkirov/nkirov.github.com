%{
  TD_180_1_8
%}
\include "td-preamble.ly"

\score {
  \relative c' {
\tempo 4 = 138
\time 2/4
d4\prall c
\varA
\acciaccatura e8\startTextSpan f4 f \stopTextSpan 
  \override Glissando #'style = #'zigzag
f16^\ltoe( g f8~\rtoe 
\noteFi \afterGrace f4\glissando)( { \stdB c8) \stdE }  
f4^\ltoe
\acciaccatura g8 
f^\ltoe( e) d2~( d4 c^\ltoe) %%\break 
c8( d) e( f) 
\varB
e8\startTextSpan  d8 \acciaccatura { d16[ e] } d8( c) \stopTextSpan 
c2~ c2 c8^\ltoe( d\rtoe)
d( c) c4 r4 
\bar "|."
\endm
\varA
 \acciaccatura e8\startTextSpan f4 f8( e) \stopTextSpan \bar "||" 
\varB
e4^\ltoe\startTextSpan  \acciaccatura { d16[ e] } d8( c^\ltoe) \stopTextSpan 
\bar "|."
}
 \addlyrics { За- да- ло ми съ~й, за- да- ло, и- дин съ и- ру- план за- да- ло }
%
\layout {
  indent = #0
  line-width = 190\mm
  ragged-right=##f
%%  ragged-last = ##t
	}
%
\midi { 
	\context {
		\Score
		tempoWholesPerMinute = #(ly:make-moment 138 4)
		}
	}
      }
%
\header{
%%   title = "Задало ми съй"
  composer = "ТД-180,1,8"
  tagline = ##f
	}	



