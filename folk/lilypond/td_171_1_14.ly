%{
TD_171_1_14
%}

\include "td-preamble.ly"

\score {
\relative c' {
 \tempo 4 = 116
  \time 2/4 
\acciaccatura f8 g4 d 
f g8( a) a4.( g16 f) g4 a8( g) 
\override Glissando #'style = #'zigzag
\noteFi f8\glissando( ees) d\noBeam d 
\break
f4 g8( a) a( g) f( g) g( f~ f16 ees d ees) d8 d4. d2 
 \bar "|." 
}
\addlyrics { Кън- чо на вой- на о- ти- ва, 
ма- \startTextSpan ри, \stopTextSpan не- вес- та го из- про- вож- да }
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
		tempoWholesPerMinute = #(ly:make-moment 116 4)
		}
	}
}

\header{
  opus = "ТД-171,1,14"
  tagline = ##f
}

\paper  {
	 myStaffSize = #20
	 #(define fonts
	 (make-pango-font-tree "Times New Roman"
	 "Nimbus Sans"
	 "Luxi Mono"
	 (/ myStaffSize 20)))
  }

