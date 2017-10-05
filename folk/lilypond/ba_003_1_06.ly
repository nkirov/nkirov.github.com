%{
BA_3_1_06
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
\varA  
a8\startTextSpan a\noBeam a e'\noBeam\stopTextSpan | 
d4 c8( b) | b4 d | d c | 
c8( b) a4 | 
\varB
b4.\startTextSpan( a8\stopTextSpan) | 
a8 a\noBeam a d\noBeam | 
\gliss
d4 \noteFi \afterGrace c4\glissando( { \stdB b8) \stdE } |
b8( c) d4 | d c | c8( b) a4 a r
 \bar ":|" 
\endm 
\varA  
e'8\startTextSpan e\noBeam e d\noBeam\stopTextSpan \bar "||"
\varB
b4\startTextSpan r\stopTextSpan 
\bar "|."
}
\addlyrics { Ма- \startTextSpan ри \stopTextSpan 
Ди- мит- ро- льо, ру- со- ко- со мо- ми- че,  
	     ма- \startTextSpan ри \stopTextSpan 
Ди- мит- ро- льо, ру- со- ко- со мо- ми- че }
\addlyrics { ма- \startTextSpan ри, \stopTextSpan 
и- ди ка- жи на май- ка си, Ди- мит- ро,  
	     ма- \startTextSpan ри, \stopTextSpan 
и- ди ка- жи на май- ка си, Ди- мит- ро }
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
  opus = "ВА-3,1,6"
  tagline = ##f
}


