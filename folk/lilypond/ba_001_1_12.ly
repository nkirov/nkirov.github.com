%{ ba_001_1_12
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%\tempo 8 = 152
\time 3/4
\varAB
a8\startTextSpan a\noBeam e'4 e8[( d16 e\stopTextSpan]) | 
\varCDE
d16\startTextSpan[( e]) d[( c]) d8.[( c16]) c8.[( b16\stopTextSpan]) |
d8 c16[( b]) a4 g8 c\noBeam | c16[( b]) a8 a4 a8 a\noBeam
 \bar "|." 
%\set Score.measureLength = #(ly:make-moment 1 16)  
% s16 \bar ""  
% \set Score.measureLength = #(ly:make-moment 3 4)  
% \clef treble
 \varA
a8\startTextSpan a\noBeam e'4 e8.[( d16\stopTextSpan]) \bar "||"
 \varB
a8\startTextSpan a\noBeam e'4 e8[( d\stopTextSpan]) \bar "||"
\varC
b16\startTextSpan[( c]) d[( e]) d8.[( c16]) c4\stopTextSpan  \bar "||"
\varD
c8\startTextSpan d16[( e]) d8.[( c16]) c4\stopTextSpan  \bar "||"
\varE
e8\startTextSpan d16[( e]) d8.[( c16]) c8.[( b16\stopTextSpan]) 
  \bar "|." 
}
\addlyrics { Раз- сър- ди са мал- ко мом- че, 
хей, \startTextSpan ко- ла- ди ле, мой ко- ла- ди ле \stopTextSpan }
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
  opus = "ВА-1,1,12"
  tagline = ##f
}


