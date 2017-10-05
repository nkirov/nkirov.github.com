%{
TD_171_1_06
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 8 = 192
  \time 7/16
 g8~( g16[ f)] f16.\prall( e) | 
 \varA
 d8\startTextSpan~( d~ d16.[ c\stopTextSpan)] |  
 f8\noBeam g16([ a)] a8. |
 a8\noBeam a16([ g)] f16.\noBeam a | 
 g8~( g16[ f]) f16.\prall( e) | 
 \varA
d8\startTextSpan~( d~ d16.[ c\stopTextSpan)] |  
 f8\noBeam f16([ e)] d8.\noBeam |
  d8~ d d8.
 \bar "|."
\endm 
 \varA
d8\startTextSpan~( d e16[ d c\stopTextSpan)] 
 \bar "|."
}
\addlyrics { Ян- ка на ма- ма ду- ма- ше, 
ма- \startTextSpan ри: \stopTextSpan Я из- лез, ма- мо, на- вън- ка }
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
		tempoWholesPerMinute = #(ly:make-moment 192 8)
		}
	}
}

\header{
  opus = "ТД-171,1,6"
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

