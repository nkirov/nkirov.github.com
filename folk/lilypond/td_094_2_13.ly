%{
td_094_2_13
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 8 = 126
\cadenzaOn
\phrasingSlurDown
b16[( c]) d8\noBeam \acciaccatura d e \acciaccatura e d4( e32[ d c b]) b8.\noBeam( a16)
b[( c]) d[( e]) \acciaccatura e8 d4( \afterGrace e8\( { d16[ c d]\) } 
\grace { e16[\( d] } c8\)) b16\noBeam b8.~ b4 r
\bar ""
b16[( c]) d8\noBeam \acciaccatura d e \acciaccatura e \afterGrace d4(\( { e16[ d c]\) } b8)
\acciaccatura { b16[ c] } d8.[( \times 2/3 { e32 d c]) } c16\noBeam b8. b4\fermata 
 \bar "|." 
s4 \fixB cis,
 \bar "|." 
}
\addlyrics { Ма- ма си Бон- ка го- дя- ва, 
Бон- \startTextSpan ке, \stopTextSpan ма- ма си Бон- ка го- дя- ва }
%
\layout {
   \context { 
	    \Staff \remove "Time_signature_engraver" } 
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
		\Score tempoWholesPerMinute = #(ly:make-moment 126 8)
		}
	}
}
%
\header{
  opus = "ТД-94,2,13"
  tagline = ##f
}


