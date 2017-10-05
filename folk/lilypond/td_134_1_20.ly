%{
TD_134_1_20
%}

\include "td-preamble.ly"

\score {
\relative c' {
 \tempo 4 = 160
 \time 2/4
e8([ f]) g4 | 
\varA
g8\startTextSpan([ f]) \acciaccatura bes8 c4\stopTextSpan | 
c8[( bes]) c4 | bes8[( a]) g4 |
f8([ e]) d([ c]) | e[( f)] g4 | g8([ f)] bes4 | 
\varB
bes8\startTextSpan([ a]) g([ f\stopTextSpan]) | 
g2 | g4 r4
 \bar "|." 
 s4 \fixB g4 \fixC
\bar "|."
\endm
\varA
g4\startTextSpan \acciaccatura bes8 c4\stopTextSpan \bar "||"
\varB
bes8\startTextSpan([ a]) a([ f\stopTextSpan])
\bar "|."
}
\addlyrics { Ру- се, Ру- се, тън- ко Ру- се, 
джа- \startTextSpan нъм, \stopTextSpan раз- ше- та са тън- ко Ру- се }
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
  opus = "ТД-134,1,20"
  tagline = ##f
}


