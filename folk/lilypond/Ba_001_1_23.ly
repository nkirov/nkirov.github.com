%{
ba_001_1_23
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%\tempo 8 = 152
\time 3/8
\varA
g8\startTextSpan \acciaccatura b c\noBeam b\stopTextSpan | 
a a4 | b8 d\noBeam c16[( b]) | a8 a[( g]) |
g8 a8.[( b16]) c8 d8.[( c32 b]) | 
\break
g8 c\noBeam b | a8 a4 | b8 d\noBeam c16[( b]) |
a8 a[( g]) | g8 a4 a8 a4
 \bar "|." 
\set Score.measureLength = #(ly:make-moment 1 16)  
 s16 \bar ""  
 \set Score.measureLength = #(ly:make-moment 3 8)  
 \clef treble
 \varA
b8\startTextSpan d16[( c]) b8\stopTextSpan 
 \bar "|."  
}
\addlyrics { Би- да би- ди- ли Сви- та- та го- ра, 
ко- \startTextSpan ла- ди ле, \stopTextSpan
на \startTextSpan ви- лик съ- бор сви- та Ни- де- ля, ко- ла- ди ле \stopTextSpan }
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
  opus = "ВА-1,1,23"
  tagline = ##f
}


