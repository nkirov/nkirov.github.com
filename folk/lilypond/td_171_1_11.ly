%{
TD_171_1_11
%}

\include "td-preamble.ly"

\score {
\relative c' {
 \tempo 4 = 152
  \time 2/4
 d4.( c8) d( ees) f4 ees8( d) c4 | d8( ees) f( ees) d4.( c8)   
\break 
 d4.( c8) 
\varA 
  d\startTextSpan( ees) ees4 d c\stopTextSpan 
  d d d2
 \bar "|."
\endm 
\varA
  d8\startTextSpan( ees) \acciaccatura ees8 f4 ees8( d) c4\stopTextSpan 
 \bar "|."
}
\addlyrics { Ма- ма си Пе- тър по- сго- ди, 
Пе- \startTextSpan тре ле, бял ба- ка- ли- но \stopTextSpan }
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
		tempoWholesPerMinute = #(ly:make-moment 152 4)
		}
	}
}

\header{
  opus = "ТД-171,1,11"
  tagline = ##f
}



