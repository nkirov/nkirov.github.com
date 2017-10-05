%{
TD_140_2_39
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 152
  \time 2/4
 \parG
 s8 \parenthesize a4 s8
  \bar "||" e'4 e8( d) d4 e d8( c) d4 d8( c c[ b)]  
  \afterGrace a2^\rtoe( { \stdB b8) \stdE }
  c8 c\noBeam c( b) a2^\rtoe c8( b) d4 \time 3/4 a2. \time 2/4 a2
 \bar "|." 
 s8 \fixB e4 
 \bar "|." 
}
\addlyrics { "(и)" Пи- ла Я- на снош- на йо- да, 
ма- \startTextSpan ри Я- но, снош- на йо- да \stopTextSpan }
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
  opus = "ТД-140,2,39"
  tagline = ##f
}


