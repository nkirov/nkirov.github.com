%{
TD_95_2_02
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 176
  \time 2/4
\phrasingSlurDown  
\override Glissando #'style = #'zigzag
  \acciaccatura g8 a2 | a8([ b]) c4 | c8([ b]) b8\prall([ a]) | a8([ b]) c4 | 
  c8\prall([ b]) b8\noBeam g | a2 | b4 c | b4 c | 
\noteFi \afterGrace b4^">"\glissando\( { \stdB a8\) \stdE } a4 | a2\fermata
 \bar "|." 
}
\addlyrics { Що ти пир- це- то три- пе- ри, 
ма- \startTextSpan ри, \stopTextSpan 
Га- \startTextSpan ни ле, го- ди- нич- ки ле \stopTextSpan }
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
		tempoWholesPerMinute = #(ly:make-moment 176 4)
		}
	}
}
%
\header{
  opus = "ТД-95,2,2"
  tagline = ##f
}


