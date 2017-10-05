%{
ba_001_1_37
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%\tempo 8 = 152
\time 2/4
\varAB
b4.\startTextSpan c8\stopTextSpan | 
b4 a | b4. a8 | g4 b | a4.( b8) | c4 b8 b\noBeam |
d4. c8 | b4 a | b4. a8 | 
\varC
g4\startTextSpan d'\stopTextSpan | 
a2 | a4 a8 a\noBeam
 \bar "|." 
 \endm
\varA
d4.\startTextSpan c8\stopTextSpan \bar "||"
\varB
a4.\startTextSpan c8\stopTextSpan \bar "||"
\varC
g4\startTextSpan b\stopTextSpan
 \bar "|."  
}
\addlyrics { За- зо- ри са, за- бя- ли са, 
ко- \startTextSpan ла- ди ле, \stopTextSpan
по ху- ба- ва Влаш- ка зи- мя, 
ко- \startTextSpan ла- ди ле \stopTextSpan }
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
  opus = "ВА-1,1,37"
  tagline = ##f
}


