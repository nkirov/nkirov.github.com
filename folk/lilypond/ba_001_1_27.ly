%{
ba_001_1_27
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%\tempo 8 = 152
\time 3/8
g8 c\noBeam c16[( b]) | a8 a4 | b16[( c]) d8 c16[( b]) | a8 a[( g]) | g a[( b]) |
c8 d8.[( c32 b]) | g8 c\noBeam b | a8 a4 | g8 c\noBeam b | a8 a[( g]) |
g8 a4 | a8 a4
 \bar "|." 
}
\addlyrics { Раз- и- гра- ло съ~й Чер- но- то мо- ре, 
ко- \startTextSpan ла- ди ле, \stopTextSpan
на \startTextSpan ви- лик съ- бор, сви- та Ни- де- льо, 
ко- ла- ди ле \stopTextSpan }
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
  opus = "ВА-1,1,27"
  tagline = ##f
}


