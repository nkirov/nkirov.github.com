%{
TD_140_2_15
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 160
  \time 2/4
 g4 a \acciaccatura c8 d2^\rtoe d8( c) c( d) \acciaccatura e8 d( c4.^\rtoe)
 \acciaccatura d8 c( b) a4 %%\break 
 c \acciaccatura c8 d4 c4.^\rtoe( d8) d( c)
   \override Glissando #'style = #'zigzag
 \noteFi c\glissando( b) a2^\rtoe a4 a\fermata
 \bar "|." 
 \fixB fis4  
 \bar "|." 
}
\addlyrics { Жа- ля- ла Бой- ка бу- ля си, 
Бой- \startTextSpan ке ле, ма- ри ху- ба- ва \stopTextSpan }
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
		tempoWholesPerMinute = #(ly:make-moment 160 4)
		}
	}
}

\header{
  opus = "ТД-140,2,15"
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

