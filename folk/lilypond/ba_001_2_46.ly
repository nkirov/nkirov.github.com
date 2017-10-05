%{
BA_1_2_46
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
a4 e'4 | e4.( d8) | 
\varA
d4\startTextSpan c8\noBeam c\stopTextSpan | 
\varB
e8\startTextSpan( f) e8( d\stopTextSpan) | 
d8([ c] c8\prall[ b]) | a2  
 \bar "|:" 
%% \break
a8( b) c8( d) | c4.( b8) | b4 a8\noBeam b | c4 c8( b) | a2 | a4 r4
 \bar ":|"
\endm
\varA
d4\startTextSpan c8\noBeam d\stopTextSpan \bar "||"
\varB
e4\startTextSpan e8( d\stopTextSpan) 
\bar "|."
}
\addlyrics { Съ- бра- ли са, ма-  \startTextSpan ри, \stopTextSpan 
все ов- ча- ри, все ов- ча- ри, ма- \startTextSpan ри, \stopTextSpan
все дру- га- ри }
\addlyrics { " " " " " "  " " " " " " " " " " " " " " 
на ли- чен ден, ма- \startTextSpan ри, \stopTextSpan на Ви- лик- ден }
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
  opus = "ВА-1,2,46"
  tagline = ##f
}


