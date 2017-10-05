%{
TD_138_1_19
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 120
  \time 2/4
 b8([ c]) d4 | 
\varAB 
 \acciaccatura d8\startTextSpan ees4 ees\stopTextSpan | 
 d2 | 
\varAC 
 \acciaccatura d8\startTextSpan ees4 ees\stopTextSpan | 
 d2 | d4 c8([ b]) | c8([ b]) a4 | 
\break 
 a2 | a4 a | a2\fermata
 \bar "|." 
 s4 \fixB cis,4 \fixC
 \bar "|."
 \endm
\varA
\acciaccatura d'8\startTextSpan ees4 \acciaccatura { f16[ ees d] } ees4\stopTextSpan \bar "||"
\varB 
 d4\startTextSpan ees\stopTextSpan \bar "||"
\varC 
 c4\startTextSpan d8([ ees\stopTextSpan]) 
 \bar "|."
}
\addlyrics { И- мал е Сто- ян, Сто- е- не, 
Сто- \startTextSpan е- не, ле- \stopTextSpan 
лин \startTextSpan Сто- е- не \stopTextSpan }
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
		tempoWholesPerMinute = #(ly:make-moment 120 4)
		}
	}
}
%
\header{
  opus = "ТД-138,1,19"
  tagline = ##f
}


