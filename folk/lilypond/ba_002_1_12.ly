%{
BA_2_1_12
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
\par
\varA  
g4\startTextSpan c | b4 a | d c | b a\stopTextSpan | 
gis8( a) b8( c) | b4. a8 | e4 e | gis8( a) b8( a) | 
\varB
a4\startTextSpan b8( c\stopTextSpan) | 
b4. a8 | 
\varC
gis4\startTextSpan gis\stopTextSpan | 
gis gis 
 \bar "|." 
 s4 \fixB fis4 \fixC 
 \bar "|."
\endm 
\varA
d'4\startTextSpan c | b4 a | gis8( a) b( c) | b4 a\stopTextSpan \bar "||"
\varB
gis8\startTextSpan( a) b8( c\stopTextSpan) \bar "||"
\varC
a4\startTextSpan gis\stopTextSpan 
\bar "|."
}
\addlyrics { Сно- щи ми- нах по- край сел' то, 
То- \startTextSpan  до- ро льо, Дюл- ге- рю- ва, 
То- до- ро льо, \stopTextSpan Дюл- \startTextSpan ге- рю- ва \stopTextSpan }
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
  opus = "ВА-2,1,12"
  tagline = ##f
}


