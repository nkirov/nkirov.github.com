%{
ba_001_1_15
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%\tempo 8 = 152
\time 5/16
\varAB
d16\startTextSpan[( c]) b8.\stopTextSpan | 
\varC
c8\startTextSpan d8.\noBeam | d16[( c]) b8. | c8 d8.\noBeam | g,8 g8.\stopTextSpan\noBeam |
b16[( c]) c8[( a16]) |
b16[( c]) b8[( a16]) | b16[( c]) d8. | c8 b8.\noBeam | b16[( c]) d8. | 
\varD
a8\startTextSpan g8.\stopTextSpan\noBeam | 
g8 g8.\noBeam
 \bar "|." 
\endmmm
\varA
c8\startTextSpan b8.\stopTextSpan\noBeam \bar "||" 
\varB
c8\startTextSpan b8[( a16\stopTextSpan]) \bar "||" 
\varC
b16\startTextSpan[( c]) d8.\noBeam | c8\noBeam b8. | b16[( c]) d8.\noBeam | 
g,8 g[( a16\stopTextSpan]) \bar "||" 
\varD
g8\startTextSpan g8.\stopTextSpan\noBeam
 \bar "|." 
}
\addlyrics { По- ма- ми си Га- ни чо- бан, 
ко- \startTextSpan ла- ди ле, \stopTextSpan 
на \startTextSpan чар- да- ци по- зла- \stopTextSpan 
те- \startTextSpan ни, ко- ла- ди ле \stopTextSpan }
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
  opus = "ВА-1,1,15"
  tagline = ##f
}


