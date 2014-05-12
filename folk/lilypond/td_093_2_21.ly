%{
laz_093_2_21
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%%\tempo 4 = 138
\time 4/8
\varA
a8\startTextSpan g\noBeam g\noBeam g16( a\stopTextSpan) | 
a8.\noBeam( b16) g16( a g8) | a8\noBeam a16( b) g8\noBeam g | a8\noBeam a16( g) g8\noBeam g16( a) | 
\break
a4 a | a2 
 \bar "|." 
s4 \fixB f \fixC 
  \bar "|." 
\set Score.measureLength = #(ly:make-moment 1 16)  
 s16 \bar ""  
 \set Score.measureLength = #(ly:make-moment 4 8)  
 \clef treble   
\varA
a8\startTextSpan\noBeam a16( g) g8\noBeam g16( a\stopTextSpan)  
  \bar "|."  
}
\addlyrics { Ран- гел на стол сто- йе- ши, 
Ла- \startTextSpan за- ре, \stopTextSpan Ран- гел на стол сто- йе- ши }
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
		\Score
		tempoWholesPerMinute = #(ly:make-moment 138 4)
		}
	}
}
%
\header{
  opus = "ТД-93,2,21"
  tagline = ##f
}


