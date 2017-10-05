%{
ba_001_1_10
td_113_2_12
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%\tempo 8 = 152
\time 5/16
\varA
d8\startTextSpan d8.\stopTextSpan\noBeam | 
\varB
d16\startTextSpan[( c]) b8[( g16\stopTextSpan]) | 
\varC
g8\startTextSpan a[( b16\stopTextSpan]) |
\varD
c8\startTextSpan d8.\stopTextSpan\noBeam | 
d16[( c]) c[( b g]) | 
\varE
b\startTextSpan[( c]) c[( b8\stopTextSpan]) |
a8 a8.\noBeam | a8 a8.\noBeam
 \bar "|." 
\endmmm
\varA
d16\startTextSpan[( c]) c[( b g\stopTextSpan]) \bar "||"
\varB
c8\startTextSpan c16.[( b\stopTextSpan]) \bar "||" 
\varC
a8\startTextSpan a8.\stopTextSpan\noBeam \bar "||"
\varD
b16\startTextSpan[( c]) d8.\stopTextSpan\noBeam \bar "||"
\varE
c8\startTextSpan c16.[( b\stopTextSpan])
  \bar "|." 
}
\addlyrics { За- пра- вил е, 
ко- \startTextSpan ла- ди ле, \stopTextSpan све- ти И- ван, 
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
  opus = "ВА-1,1,10 (ТД-113,2,12)"
  tagline = ##f
}


