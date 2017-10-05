%{
ba_001_1_25
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%\tempo 8 = 152
\time 5/16
\varA
d8\startTextSpan c8.\stopTextSpan\noBeam | 
d8 e8.\noBeam | e8(~ e[ d16]) | e8~ e16.\noBeam d | d8 c16.[( b]) |
\varB
b16\startTextSpan[( c]) d8.\stopTextSpan | 
\varC
e8\startTextSpan d16.[( c\stopTextSpan]) | 
\varD
c8\startTextSpan c16.[( b\stopTextSpan]) | 
a8(~ a[ g16]) |
c8 c[( b16]) | g8 a8.\noBeam | a8 a8.\noBeam
 \bar "|." 
\endmmm
\varA
a16\startTextSpan[( b]) c8.\stopTextSpan\noBeam \bar "||"
\varB
d8\startTextSpan\noBeam d8.\stopTextSpan \bar "||"
\varC
e8\startTextSpan c8.\stopTextSpan\noBeam \bar "||"
\varD
c8\startTextSpan b8.\stopTextSpan\noBeam
 \bar "|."  
}
\addlyrics { По- хва- ли са, 
Дой- \startTextSpan ни ле, ко- ла- ди ле, \stopTextSpan мал- ка мо- ма,
мом- \startTextSpan ни ле, ко- ла- ди ле \stopTextSpan }
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
  opus = "ВА-1,1,25"
  tagline = ##f
}


