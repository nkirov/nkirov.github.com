%{
BA_2_2_22
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
\varA  
  b4\startTextSpan-">" b\stopTextSpan | 
\varB  
  e\startTextSpan^">" d\stopTextSpan | 
\varC  
  d8\startTextSpan^">"( c) b4\stopTextSpan | 
\varD  
  b8\startTextSpan^">"( a) g4\stopTextSpan | 
\varE  
  b\startTextSpan^">" b\stopTextSpan | 
\varF  
  e8\startTextSpan^">"( c) d4\stopTextSpan | 
d8^">"( c) b4 | b b 
 \bar ":|" 
\endm
\varA
  a4\startTextSpan^">" b\stopTextSpan \bar "||"
\varB  
  e8\startTextSpan^">"( d) d4\stopTextSpan \bar "||"
\varC  
  d4\startTextSpan^">" b4\stopTextSpan \bar "||"
\varD  
  a4\startTextSpan^">" g\stopTextSpan \bar "||"
\varE  
  a\startTextSpan^">" b\stopTextSpan \bar "||"
\varF  
  d8\startTextSpan^">"( c) d4\stopTextSpan 
 \bar "|."  
}
\addlyrics { Тън- ка Най- да во- да га- зи, 
Най- \startTextSpan до, Най- до, тън- ка \stopTextSpan 
Най- \startTextSpan до, \stopTextSpan }
\addlyrics { во- да га- зи, жед- на хо- ди }
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
  opus = "ВА-2,2,22"
  tagline = ##f
}


