%{
TD_179_2_05
%}

\include "td-preamble.ly"

\score {
\relative c' {
 \tempo 8 = 152
  \time 5/16
\varA  
f8\startTextSpan g16.([ f\stopTextSpan)] |
 g8^\rtoe( \times 3/4 { a16 g f e) } |
 f8 g([ f16)] |
 g8~\noBeam \afterGrace g8.^\rtoe( { a16[ g f e]) } |
\varB 
f16\startTextSpan([ e)] d8.\stopTextSpan\noBeam |
\varC
e16\startTextSpan([ f)] f8.\stopTextSpan\mordent |
f16([ e)] d8. |
d8~ \afterGrace d8.\noBeam\fermata( { e16^"↓"[ d c)] } |
d8\noBeam d8. |
d8~ d\noBeam r16 
\bar "|." 
  s16 \fixB cis4 \fixC 
\bar "|."
\set Score.measureLength = #(ly:make-moment 1 16)  
 s16 \bar ""  
 \set Score.measureLength = #(ly:make-moment 5 16)  
 \clef treble 
\varA
e16\startTextSpan([ f)]  g16.([ f\stopTextSpan)] \bar "||"
\varB
f16\startTextSpan([ e)] \afterGrace d8.( { e16[ d c\stopTextSpan]) } \bar "||"
\varC
f16\startTextSpan([ e] f8.\stopTextSpan) 
\bar "|."
}
\addlyrics { Ма- рий- ка тур- чан лю- би- ла, тя го~й на ши- га лю- би-  ла }
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
		tempoWholesPerMinute = #(ly:make-moment 152 8)
		}
	}
}

\header{
  opus = "ТД-179,2,5"
  tagline = ##f
}



