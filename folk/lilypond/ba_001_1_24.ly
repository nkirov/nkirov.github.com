%{
ba_001_1_24
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%\tempo 8 = 152
\time 3/8
d8 d4 | 
\varA
e16\startTextSpan[( d]) c[( b] g8\stopTextSpan) | 
d'8 a\noBeam a | a g4 | g16 g\noBeam c4 |
c16[( b]) b4 d16 a\noBeam a4 | a16[( g]) g4
 \bar "|." 
\set Score.measureLength = #(ly:make-moment 1 16)  
 s16 \bar ""  
 \set Score.measureLength = #(ly:make-moment 3 8)  
 \clef treble
\varA
d'16\startTextSpan[( c]) c[( b] g8\stopTextSpan) 
 \bar "|." 
}
\addlyrics { По- хва- ли са до- бри- я ю- нак, 
бре, \startTextSpan до- бър ю- нак "с по-" до- бра ко- ня \stopTextSpan }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 152 8)
		}
	}
}
%
\header{
  opus = "ВА-1,1,24"
  tagline = ##f
}


