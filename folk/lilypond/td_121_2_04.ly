%{
TD_121_2_04
%}

\include "td-preamble.ly"
\include "Rhythm_marks.ly"

\score {
\relative c' {
%% \tempo 8 = 164
  \time 7/16
\override Score.RehearsalMark #'self-alignment-X = #LEFT
\once \override Score.RehearsalMark #'X-offset = #8
  \rhythmMarkA \rhyMarkAAAdot #"56"      
\acciaccatura f8 g8~\noBeam( g16[ f]) f8\prall([ e16)] |
e8~\noBeam( e~ e[ a16]) | g8 a a8. | a8 g a a16 | 
g8\noBeam~( g16[ f]) e16.([ d)] | e16([ f] g8~ \afterGrace g8.\( { a16[ g f])\) } |
\varA
f16\startTextSpan([ e]) e8 e8.\stopTextSpan | 
e8 r8 \acciaccatura g8 a8. | 
g8( \grace { \stdB a8\( \stdE } g16[\) f)] e16.([ d)] |
 e16([ f] g8~ \afterGrace g8.\( { a16[ g f])\) } | f16([ g]) f([ e)] e8. | e4 e8. 
 \bar "|." 
 s8. \fixB a,4 \fixC
  \bar "|."
\set Score.measureLength = #(ly:make-moment 1 16)  
 s16 \bar ""  
 \set Score.measureLength = #(ly:make-moment 7 16)  
 \clef treble
 \varA
f'16\startTextSpan([ g]) f16([ e)] e8.\stopTextSpan 
 \bar "|."
}
\addlyrics { Ган- ке Ха- джи ва- си- льо- ва, ма- 
\startTextSpan ри, \stopTextSpan 
Хри- стов'- це бул- ка ху- ба- ва, Хри- стов'- це бул- ка ху- ба- ва }
%
\layout {
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
		tempoWholesPerMinute = #(ly:make-moment 164 8)
		}
	}
}
%
\header{
  opus = "ТД-121,2,4"
  tagline = ##f
}


