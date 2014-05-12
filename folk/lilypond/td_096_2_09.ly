%{
eng_096_2_09
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 160
\time 2/4
\acciaccatura g8 a4 a8\noBeam g | \acciaccatura g8 a([ g a]) e | 
\acciaccatura g8 a4 g | \acciaccatura f8^> e4.( f8) | 
g4^\rtoe f8\noBeam \acciaccatura { g16[ f] } e8 |
e4. e8 | e4^\rtoe e^\ltoe | e2
 \bar "|." 
 s4 \fixB c
  \bar "|." 
}
\addlyrics { Ка- чи са Ра- да на люш- ки, 
 Ра- \startTextSpan до льо, у- ба- ви- ци ле \stopTextSpan }
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
  opus = "ТД-96,2,9"
  tagline = ##f
}


