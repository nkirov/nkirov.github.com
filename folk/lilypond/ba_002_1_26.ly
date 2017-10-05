%{
BA_2_1_26
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
\repeat volta 2 {  
\varA  
g8\noBeam\startTextSpan a8 a8~\noBeam a8\stopTextSpan | 
\acciaccatura c8 d4 c8( b)  }
\alternative  { {
  c4.( b8) | 
c8\noBeam d8 c8\([ b\)] }
%% \bar ":|"
{ c4( \times 2/3 { d8[ c b]) } | \acciaccatura c8 d4 c4 } }
\varB
c8\startTextSpan  c4 d8\stopTextSpan | 
c4 b4 | 
\varC
\set Score.measureLength = #(ly:make-moment 3 4)
s4\startTextSpan  a2\stopTextSpan | 
\set Score.measureLength = #(ly:make-moment 2 4)
a8\noBeam d8 c4 | b8 b4 d8 | c4 b4 | a2 | a4 a4 
 \bar "|."
\endm
\varA  
g4\startTextSpan g8(\noBeam a8\stopTextSpan) \bar "||"
\varB
b8\startTextSpan  b4 d8\stopTextSpan \bar "||" 
\varC
a4\startTextSpan  r4\stopTextSpan 
\bar "|."
}
\addlyrics { За- лю- ля- ла "съ~й" Ка- лин- ка,  
 "" \startTextSpan дос, \stopTextSpan
Ка- лин- ка сред мо- ре на два ка- и- ка, 
 дос, сред мо- ре на два ка- и- ка }
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
  opus = "ВА-2,1,26"
  tagline = ##f
}


