%{
laz_093_1_21
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%%\tempo 4 = 138
\time 4/8
a8\noBeam a b a\noBeam | g4 g | a8\noBeam a f^"↑"\noBeam g | 
\varA
a\startTextSpan\noBeam g a\noBeam f\stopTextSpan | 
g4 g | g r
 \bar "|." 
s4. \fixB cis,8 \fixC
  \bar "|." 
\set Score.measureLength = #(ly:make-moment 1 16)  
 s16 \bar ""  
 \set Score.measureLength = #(ly:make-moment 4 8)  
 \clef treble 
\varA
a'8\startTextSpan\noBeam a b\noBeam a\stopTextSpan   
  \bar "|."  
}
\addlyrics { Чер- но- о- ка ни- вя- ста, 
Ла- \startTextSpan за- ре, \stopTextSpan чер- но- о- ка ни- вя- ста }
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
  opus = "ТД-93,1,21"
  tagline = ##f
}


