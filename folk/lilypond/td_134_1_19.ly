%{
TD_134_1_19
%}

\include "td-preamble.ly"

\score {
\relative c' {
 \tempo 4 = 152
 \time 2/4
% \tempo 8 = 168
% \time 7/16
e8\noBeam f g4 |
\varA
g\startTextSpan \acciaccatura c8 d4\stopTextSpan | 
c8([ bes]) a([ g]) | g4( c) |
\override Glissando #'style = #'zigzag
\set Score.measureLength = #(ly:make-moment 3 4)
c8\noBeam bes \noteFi bes4\glissando \hideNotes g4 \unHideNotes  | 
\set Score.measureLength = #(ly:make-moment 2 4)
g4. a8 | f4 g | g r 
 \bar "|." 
s4 \fixB g4 \fixC
  \bar "|." 
\endm
\varA
g8\startTextSpan([ f]) c'4\stopTextSpan
   \bar "|." 
}
\addlyrics { Ко- ли мо- ма- ри дой- до- ха, 
Ко- \startTextSpan ле ле, " " ма- ри ху- ба- ва \stopTextSpan }

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
		tempoWholesPerMinute = #(ly:make-moment 152 4)
		}
	}
}
%
\header{
  opus = "ТД-134,1,19"
  tagline = ##f
}


