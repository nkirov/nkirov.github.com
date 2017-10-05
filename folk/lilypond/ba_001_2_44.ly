%{
BA_1_2_44
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
d8( c) c4 | b4. a8 | b8( g) g4 | g8\noBeam g g8\noBeam a | b8( c) c4 | b4. a8 | a4 g | g8( a) b4  
 \bar "|:"
a4 g8( fis) | e2 | 
\par
\varAB
b'4\startTextSpan  b\stopTextSpan | 
b8\noBeam b b8\noBeam b | a4 g8( fis) | e4. d8 | fis8( g) a4 | a4 a
 \bar ":|"
\endm 
\varA
 g4\startTextSpan b\stopTextSpan \bar "||"
\varB
 fis8\startTextSpan([ g)] a4\stopTextSpan
 \bar "|."
}
\addlyrics { Кой ти ку- пи кон- дур- ки- те, 
ма- \startTextSpan ри, \stopTextSpan
кой ти ку- пи кон- дур- ки- те? 
Ха- \startTextSpan хо \stopTextSpan хо, 
\startTextSpan кон- дур- ки- те, ма- ри, де- де де- де, 
кон- дур- ки- те \stopTextSpan }
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
		tempoWholesPerMinute = #(ly:make-moment 152 4)
		}
	}
}
%
\header{
  opus = "ВА-1,2,44"
  tagline = ##f
}


