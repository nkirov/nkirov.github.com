%{
laz_096_2_28
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 160
 \time 2/4
\varA 
g4\startTextSpan g8( a\stopTextSpan) | 
\varB
b4\startTextSpan\prall( c\stopTextSpan) |  
\acciaccatura b8 c4 b | 
\varC
g\startTextSpan c\stopTextSpan^"↓" | 
b8( a) b4 |
\varD
a16\startTextSpan^"↓"( g8.) g4\stopTextSpan | 
\break
g2
 \bar "|." 
 s8 \fixB e4 \fixC s8
  \bar "|." 
\endm
\varA 
g4\startTextSpan g8( aes\stopTextSpan) \bar "||"
\varB
\times 2/3 { b8\startTextSpan[( c b] } c4\stopTextSpan) \bar "||"
\varC
\acciaccatura aes8\startTextSpan g4 \acciaccatura b8 c4\stopTextSpan^"↓" \bar "||"
\varD
\acciaccatura b8\startTextSpan aes16^"↓"( g8.) g4\stopTextSpan 
   \bar "|." 
}
\addlyrics { Пи- ле ми пе- и, 
ма- \startTextSpan мо, \stopTextSpan пи- ле ми пе- и }
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
%
\header{
  opus = "ТД-96,2,28"
  tagline = ##f
}


