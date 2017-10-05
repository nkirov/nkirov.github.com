%{
eng_097_1_16
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 4 = 56
%\time 2/4
\cadenzaOn
\parG
\iii \parenthesize d8
e4^\rtoe e32^\ltoe[( f]) g8\noBeam( a16) \acciaccatura a8 g8.^\rtoe([ f16]) 
\afterGrace e4( { \stdB f8) \stdE } g8.([ a16]) \acciaccatura { g16[ fis] } g4 e2. r4^\rtoe  \bar "" 
g4\mordent g32^\ltoe[( f]) e8. \bar "" 
\varA
\acciaccatura f8\startTextSpan g16[( f32 e] \grace { \stdB f8\( \stdE }
\afterGrace g8\)\( { \stdB f\stopTextSpan\)) \stdE }
\bar ""  
g8^\rtoe\noBeam \acciaccatura { g16[ f] } \afterGrace e8\noBeam( { \stdB  f) \stdE } e4 e2
\bar "|."
s16 \fixB c16 \fixC
\bar "|."
s64 \clef treble 
\varA
\times 2/5 { f32\startTextSpan([ g f e f] } g16[ f\stopTextSpan])
\bar "|."  
}
\addlyrics { и  Ра- ни- ла~й Ра- да, Ра- до льо, 
ма- \startTextSpan ри Ра- \stopTextSpan 
до, \startTextSpan бя- ла Ра- до \stopTextSpan }
%
\layout {
   \context { \Staff \remove "Time_signature_engraver" } 
  indent = #0
  line-width = 190\mm
  ragged-right=##f
\context {
      \Lyrics
      \consists "Text_spanner_engraver"
      \override TextSpanner #'direction = #DOWN
      \override TextSpanner #'style = #'line    
      \override TextSpanner #'outside-staff-priority = ##f
      \override TextSpanner #'padding = #0.2 % sets the distance of the line from the lyrics
      \override TextSpanner #'bound-details =
      #`((left . ((Y . 0)
                  (padding . 0)
                  (attach-dir . ,LEFT)))
         (left-broken . ((end-on-note . #t)))
         (right . ((Y . 0)
                   (padding . 0)
                   (attach-dir . ,RIGHT))))
    }
  
}
%
\midi { 
	\context {
		\Score
		tempoWholesPerMinute = #(ly:make-moment 56 4)
		}
	}
}
%
\header{
  opus = "ТД-97,1,16"
  tagline = ##f
}


