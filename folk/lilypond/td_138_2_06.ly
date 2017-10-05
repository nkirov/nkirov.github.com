%{
TD_138_2_06
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 126
  \time 2/4
 \acciaccatura c8 d4 c8([ b]) | 
\varA 
 c4.\startTextSpan( b8\stopTextSpan) | 
\varBC 
 \acciaccatura c8\startTextSpan d4 c4\stopTextSpan | 
\varD
 c8\startTextSpan([ b]) b8\prall\noBeam a\stopTextSpan | 
\parS 
 \acciaccatura b8 c4 b4-\parenthesize\prall | g4 \acciaccatura g8 a4 | 
\varE
 a4.\startTextSpan( g8\stopTextSpan) | 
 g4 g | g2\fermata
 \bar "|." 
 s4 \fixB d4 \fixC
 \bar "|."
\break
\varA 
 \acciaccatura b'8\startTextSpan c2^"↓"\stopTextSpan \bar "||"
\varB 
 \acciaccatura c8\startTextSpan d4  \acciaccatura d8 c4\stopTextSpan \bar "||"
\varC
 \acciaccatura c8\startTextSpan d4 d8\prall([ c\stopTextSpan)] \bar "||"
\varD
 c4\startTextSpan b8\prall\noBeam a\stopTextSpan \bar "||"
\varE
 a4\startTextSpan( b16[ a g8\stopTextSpan)]
 \bar "|."
}
\addlyrics { Гъ- \startTextSpan лъ- бо, Гъ- лъ- бо, ма- ри, \stopTextSpan 
по- съ- брал бе- ше, Гъ- лъ- бо }
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
%
\header{
  opus = "ТД-138,2,6"
  tagline = ##f
}


