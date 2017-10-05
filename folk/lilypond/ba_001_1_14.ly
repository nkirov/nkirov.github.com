%{
ba_001_1_14
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%\tempo 8 = 152
\time 5/16
\varAB
d8\startTextSpan e8.\stopTextSpan\noBeam | 
\varC
e16\startTextSpan[( d]) d[( e8\stopTextSpan]) | 
\varD
e8\startTextSpan d8.\stopTextSpan\noBeam | 
c16[( b]) a8. |
c8 c16.\noBeam d | 
\varE
d8\startTextSpan c16.\noBeam b\stopTextSpan | 
a8 a8.\noBeam a8 a8.\noBeam 
 \bar "|." 
\endmmm
\varA
e'8\startTextSpan e8.\stopTextSpan\noBeam \bar "||"
\varB
g8\startTextSpan e8.\stopTextSpan\noBeam \bar "||"
\varC
e8\startTextSpan e[( d16\stopTextSpan]) \bar "||"
\varD
e16\startTextSpan[( d]) d8.\stopTextSpan\noBeam \bar "||"
\varE
d16\startTextSpan[( c]) c16.\noBeam b\stopTextSpan
 \bar "|."  
}
\addlyrics { За- бле- я- ла~й вак- ла ру- да, 
рой- \startTextSpan ни ле, ро- до льо, ро- гов- \stopTextSpan 
чи- \startTextSpan це \stopTextSpan }
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
  opus = "ВА-1,1,14"
  tagline = ##f
}


