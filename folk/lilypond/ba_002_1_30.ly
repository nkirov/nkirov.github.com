%{
BA_2_1_30
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
  g4 a8( b) | c8( b) a4 | 
\varA  
\set Score.measureLength = #(ly:make-moment 3 4)
s4\startTextSpan a2\stopTextSpan |
\set Score.measureLength = #(ly:make-moment 2 4)
\varB
 b8\startTextSpan( c) d8( c\stopTextSpan) | 
\varC 
 d8\startTextSpan([ c8~] \times 2/3 {c8[ b a\stopTextSpan])} | 
d8( c) c4 | c8( b) a4 | a2 | 
\varD
b8\startTextSpan a4.\stopTextSpan | a4 r4   
 \bar ":|" 
\endm
\varA
\afterGrace a2(\startTextSpan { b16[ a g])\stopTextSpan } \bar "||"
\varB
 g4\startTextSpan a8( b\stopTextSpan) \bar "||" 
\varC 
 d8\startTextSpan([ c8] b[ a\stopTextSpan]) \bar "||" 
\varD
a8\startTextSpan a4.\stopTextSpan   
\bar "|."
}
\addlyrics { За- спа- "ла~й" дил- бер То- до- ра, То- \startTextSpan до- ро, дил- 
\stopTextSpan бер \startTextSpan То- до- ро \stopTextSpan }
\addlyrics { на- край мо- ре- то, "в по-" ле- то }
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
  opus = "ВА-2,1,30"
  tagline = ##f
}


