%{
TD_095_1_15
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 100
%\time 5/16
\cadenzaOn
\phrasingSlurDown
\override Glissando #'style = #'zigzag
g8[( a]) a4 a8[( bes]\glissando g4) c8[( d^↓] c1\fermata \afterGrace d4\( { c16[ b]\) }
c8[ \grace { \stdB d\( \stdE } c16\) b] c8 \times 2/3 { b16 c b] } a4^\ltoe)
\bar ""
b8 c16[( d]) \bar "" b16[( \afterGrace c8.]\( { b16[ c b]\) } a8[ bes]) a1 r4 \bar ""
b16 c8\noBeam( d16 
\grace { c16[\( d c b] } c4\))
\bar ""
\afterGrace c4(\( { \stdB b8^↓\) \stdE } \grace { c16[\( bes! a] } bes!4\)) a2. a1
 \bar "|." 
 s4 \fixB e
 \bar "|." 
}
\addlyrics { Гар- ван гра- чи на- край ни- ва 
бя- \startTextSpan ла Ра- до льо \stopTextSpan }
%
\layout {
     \context { 
	    \Staff \remove "Time_signature_engraver" } 
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
		tempoWholesPerMinute = #(ly:make-moment 100 4)
		}
	}
}
%
\header{
  opus = "ТД-95,1,15"
  tagline = ##f
}


