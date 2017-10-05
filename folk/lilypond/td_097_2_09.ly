%{
laz_097_2_09
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 8 = 216
 \time 3/8
c8 g4 | c8 c\noBeam c | d c\noBeam b | d c4 | b8 aes[( g]) | g4. |
\break\bar "|:"
f8 f4 | aes8 aes\noBeam aes | bes aes\noBeam g | f f4 | aes8 \acciaccatura bes8 aes[( g]) |
g4.\fermata
 \bar ":|" 
s8 \fixB d4
 \bar "|."
}
\addlyrics { Тук ни ка- за- ха, 
Ла- \startTextSpan за- ре, \stopTextSpan мо- ма ху- ба- ва, 
мо- ма ху- ба- ва, Ла- \startTextSpan за- ре, \stopTextSpan мо- ма гиз- да- ва }
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
		tempoWholesPerMinute = #(ly:make-moment 216 8)
		}
	}
}
%
\header{
  opus = "ТД-97,2,9"
  tagline = ##f
}


