%{
TD_177_1_05
%}

\include "td-preamble.ly"

\score {
\relative c' {
 \tempo 4 = 126
  \time 2/4
fis8\prall( e) e( d) d2 \acciaccatura fis8 g4 g8\prall( fis) \acciaccatura g8 a4 g4
fis8( e) e\noBeam d fis( e) e( d) d2 d8( e) e8^\ltoe( fis^\rtoe) e16( d e8) d4
d2( d2\fermata)  \bar "||" 
 \break
 fis8( e) e( d) d2 \acciaccatura fis8 g4 g8( fis) \acciaccatura g8 a4 g4
fis8( e) e\noBeam d fis( e) e( d) d2 d8( e) e8( fis) e8( d) d4
d2\fermata
 \bar "|." 
}
\addlyrics { Ка- ни са Ко- льо на Ра- да, 
ма- \startTextSpan ри, \stopTextSpan ка- ни са да я за- вле- че,
ка- ни са Ко- льо на Ра- да, 
ма- \startTextSpan ри, \stopTextSpan ка- ни са да я за- вле- че }
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
		tempoWholesPerMinute = #(ly:make-moment 126 4)
		}
	}
}

\header{
  opus = "ТД-177,1,5"
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

