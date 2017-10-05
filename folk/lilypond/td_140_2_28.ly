%{
TD_140_2_28
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 160
  \time 2/4
d4 d \acciaccatura d8 e4 e8( d) \acciaccatura e8 d([ c] b[ a)] 
b( a^"↑") b4 a( g) 
\acciaccatura c8 d4 d c8( b) c4 \acciaccatura c8 b4.( a8) a4 a a2 
 \bar "|." 
 \fixB c,4  
 \bar "|." 
}
\addlyrics { На- у- чи- ла са То- до- ра 
хей, \startTextSpan ма- ри, ка- дън То- до- ро \stopTextSpan }
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
  opus = "ТД-140,2,28"
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

