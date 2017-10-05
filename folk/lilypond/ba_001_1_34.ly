%{
ba_001_1_34
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%\tempo 8 = 152
\time 3/8
\varA
d8^>\startTextSpan d4\stopTextSpan | 
d16^>[( c]) b8[( g]) | 
\varB
d'8^>\startTextSpan a\noBeam a\stopTextSpan | 
b^> g4 |
g16^> a\noBeam c4 | d16^> c\noBeam b8.[( g16]) | d'16^> a\noBeam a4 | 
\varC
b8^>\startTextSpan g\noBeam r\stopTextSpan
 \bar "|." 
\set Score.measureLength = #(ly:make-moment 1 16)  
 s16 \bar ""  
 \set Score.measureLength = #(ly:make-moment 3 8)  
 \clef treble
 \varA
g8^>\startTextSpan d'4\stopTextSpan \bar "||"
\varB
d16^>\startTextSpan a\noBeam a4\stopTextSpan \bar "||"
\varC
a8^>\startTextSpan g\noBeam r\stopTextSpan
 \bar "|."  
}
\addlyrics { По- хва- ли са Ми- ря- на май- ка, 
Ми- \startTextSpan ро льо, бя- ло льо, \stopTextSpan 
бя-  \startTextSpan ло гър- кин- че \stopTextSpan }
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
  opus = "ВА-1,1,34"
  tagline = ##f
}


