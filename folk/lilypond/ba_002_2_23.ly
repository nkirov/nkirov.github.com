%{
BA_2_2_23
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
\varA 
a4\startTextSpan g\stopTextSpan | 
b8\noBeam c d8\noBeam c | b4 g | a4. a8 | 
\gliss
\noteFi a4\glissando g | 
g8\noBeam a a8\noBeam c | 
\varB
b4\startTextSpan g\stopTextSpan | 
g4 g  
 \bar ":|" 
\endm 
\varA 
g4\startTextSpan g\stopTextSpan \bar "||" 
\varB
b4\startTextSpan a\stopTextSpan 
\bar "|."
}
\addlyrics { Стой- чо си- ди, 
лю- \startTextSpan бе, \stopTextSpan на дю- кя- на, на дю- кя- на, 
лю- \startTextSpan бе, \stopTextSpan на пюш- кю- ня, }
\addlyrics { кал- па- ка му, 
лю- \startTextSpan би, \stopTextSpan над о- чи- те, о- чи- те му, 
лю- \startTextSpan бе, \stopTextSpan във мо- ми- те }
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
  opus = "ВА-2,2,23"
  tagline = ##f
}


