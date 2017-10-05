%{
BA_3_1_24
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
  \repeat volta 2 { a4 a | e'4 d | 
\varA
\gliss
d8\noBeam\startTextSpan c \noteFi c\glissando( b\stopTextSpan) | 
d8\noBeam d d8\noBeam b }
  \alternative { { c4 c8( b) }
%% \bar ":|"
{ c4 c } }
%% \bar "||"
 b8\noBeam b b8\noBeam d | c8\noBeam b a4 | d8\noBeam c b8\noBeam a | a4 d | a8\noBeam g g8\noBeam c | c8\noBeam b a4 | d8\noBeam c b8\noBeam a | a4 a
 \bar "|."
\endm
\varA
d8\noBeam\startTextSpan d c4\stopTextSpan  
\bar "|." 
}
\addlyrics { Хо- ди, дой- ди, 
лю- \startTextSpan би ле, \stopTextSpan 
д'ве- че- ра към до- ма, до- ма, чи по- слу- шай, 
лю- \startTextSpan би ле, \stopTextSpan 
ма- ма как та къл- не, чи по- слу- шай, 
лю- \startTextSpan би ле, \stopTextSpan 
ма- ма как та къл- не }
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
  opus = "ВА-3,1,24"
  tagline = ##f
}


