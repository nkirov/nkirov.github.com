%{
TD_121_2_02
%}

\include "td-preamble.ly"

\score {
\relative c' {
 \tempo 4 = 160
  \time 2/4
c4 d8\noBeam e8 | f4 f | f8( g) a4 | bes8( a) g8\noBeam f | 
\varA
f\startTextSpan( g) g( a\stopTextSpan) |
\varB
a4\startTextSpan\prall^\markup { \flat } g\stopTextSpan | 
\varC
g8\startTextSpan( f4.\stopTextSpan) |
g8( f) \acciaccatura f8 ees( d) | d2 | a'4 bes |
a4 g | 
\par
\varCD
g8\startTextSpan( f4.\stopTextSpan) | 
\varE
g8\startTextSpan( f)  ees( d\stopTextSpan) | 
d2 
 \bar "|." 
s4 \fixB b4 \fixC
 \bar "|." 
\endm
\varA
f'8\startTextSpan( g) a4\stopTextSpan \bar "||"
\varB
bes8\startTextSpan( a) g4\stopTextSpan \bar "||"
\set Score.measureLength = #(ly:make-moment 3 4)
\varC
s4\startTextSpan f2\stopTextSpan \bar "||"
\set Score.measureLength = #(ly:make-moment 2 4)
\varD
\acciaccatura a8\startTextSpan g8( f4.\stopTextSpan) \bar "||"
\varE
g8\startTextSpan( f) \acciaccatura f8 ees( d\stopTextSpan) 
 \bar "|." 
}
\addlyrics { Чуд- на са~й тла- ка съ- бра- ла, 
ма- \startTextSpan ри, \stopTextSpan "в И-" чи- ра се- ло
го- ля- мо, "в И-" чи- ра се- ло го- ля- мо }
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
		tempoWholesPerMinute = #(ly:make-moment 160 4)
		}
	}
}
%
\header{
  opus = "ТД-121,2,2"
  tagline = ##f
}


