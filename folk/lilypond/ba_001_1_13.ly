%{
ba_001_1_13
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%\tempo 8 = 152
\time 5/16
\varA
d16\startTextSpan[( c]) b16.[( g\stopTextSpan]) | 
\varB
c8\startTextSpan c[( b16]) | g8 a[( b16]) | c8 d8.\stopTextSpan\noBeam | 
\varC
d16\startTextSpan[( c]) b16.[( g\stopTextSpan]) | 
\varD
c8\startTextSpan c[( b16\stopTextSpan]) | 
g8 a8.\noBeam a8 a8.\noBeam
 \bar "|." 
\endmmm
\varA
d16\startTextSpan[( c]) b8[( g16\stopTextSpan]) \bar "||"
\varB
d'16\startTextSpan[( c]) b16.[( g]) | a8 a8.\noBeam | b16[( c]) d8.\stopTextSpan\noBeam  \bar "||"
\varC
d16\startTextSpan[( c]) c16[( b g\stopTextSpan])  \bar "||"
\varD
b16\startTextSpan[( c]) c8[( a32 b\stopTextSpan]) 
 \bar "|."  
}
\addlyrics { О- гре- ли са, 
ко- \startTextSpan ла- ди ле, \stopTextSpan три ме- си- ца 
ко- \startTextSpan ла- \stopTextSpan ди \startTextSpan ле \stopTextSpan }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 152 8)
		}
	}
}
%
\header{
  opus = "ВА-1,1,13"
  tagline = ##f
}


