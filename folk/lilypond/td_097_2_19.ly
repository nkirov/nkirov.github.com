%{
td_097_2_19
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 8 = 252
\time 5/8
\varA
g8.\startTextSpan a16\noBeam b8 c4\stopTextSpan | 
b a8 b4 | 
\varB
\time 6/8 a4\startTextSpan g2\stopTextSpan | 
a4 b r8 r |
\varA
\time 5/8 g8.\startTextSpan a16\noBeam b8 c4\stopTextSpan | 
\varC
b\startTextSpan a8 b4\stopTextSpan | 
\varDE
\time 6/8 a16\startTextSpan[( b a8]) g2\stopTextSpan | 
g4 g r8 r
 \bar "|." 
 \set Score.measureLength = #(ly:make-moment 2 4)
s4 \fixB g^↓ \fixC 
 \bar "|." 
\set Score.measureLength = #(ly:make-moment 1 16)  
 s16 \bar ""  
 \set Score.measureLength = #(ly:make-moment 5 8)  
 \clef treble
\varA
\time 5/8 g8\startTextSpan a\noBeam b8 c4\stopTextSpan \bar "||"
\varB
\time 6/8 a16\startTextSpan[( b a g]) g2\stopTextSpan \bar "||"
\varC
\time 5/8 b16\startTextSpan[( c b8)] a8 b4\stopTextSpan \bar "||"
\varD
\time 6/8 a4\startTextSpan g2\stopTextSpan \bar "||"
\varE
a16\startTextSpan[( b a g]) g2\stopTextSpan
  \bar "|." 
}
\addlyrics { Фрък- на- ли са, 
мом- \startTextSpan ни ле, \stopTextSpan два гъ- лъ- ба 
 Фрък- на- ли са, мом- \startTextSpan ни ле, \stopTextSpan два гъ- лъ- ба }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 252 8)
		}
	}
}
%
\header{
  opus = "ТД-97,2,19"
  tagline = ##f
}


