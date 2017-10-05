%{
BA_2_2_04
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
d4 a |
\varA
d\startTextSpan( c8[ e\stopTextSpan]) | 
\varBC
c4\startTextSpan c8( b\stopTextSpan) | 
a4.( g8) | fis8( g) a4 | c4 c8( b) | a4.( g8) | fis8( g) a4 | a2 | a4 a 
 \bar ":|"
\endm 
\varA
d\startTextSpan( c8[ b\stopTextSpan]) \bar "||"
\varB
d8\startTextSpan( c) c8( b\stopTextSpan)  \bar "||"
\varC
\time 5/16 c8^"(съкратен така)"\startTextSpan c16.( b\stopTextSpan)
\bar "|." 
}
\addlyrics { Па- съл йе Сто- ян ши- лье- та, 
Сто- \startTextSpan йе- не \stopTextSpan ши- 
\startTextSpan ли- га- ря- но, \stopTextSpan }
\addlyrics { Край Тун- джа, край че- сто по- ле }
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
  opus = "ВА-2,2,4"
  tagline = ##f
}


