%{
BA_2_2_19
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
\varA  
  a8\startTextSpan c4.\stopTextSpan | 
  d4 c | c8([ b] a[ g]) | c4-> c | c8([ b] a[ g]) | c4-> c8( b) | 
\break
  \varB  
\set Score.measureLength = #(ly:make-moment 2 8)
  a8\startTextSpan\noBeam a\stopTextSpan | 
\set Score.measureLength = #(ly:make-moment 2 4)  
a2\fermata | a8 a4. | a4 r4  
 \bar ":|" 
\endm
\varA  
  a4\startTextSpan c4\stopTextSpan \bar "||"
\varB  
\set Score.measureLength = #(ly:make-moment 3 8)
  a8\startTextSpan a4\stopTextSpan 
\bar "|."
}
\addlyrics { Ма- ма йе Ка- ля сго- ди- ла,
Ка- \startTextSpan лю \stopTextSpan мо, 
\startTextSpan го- дье- ни- ци ле \stopTextSpan }
\addlyrics { от- как я~й ма- ма сго- ди- ла }
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
  opus = "ВА-2,2,19"
  tagline = ##f
}


