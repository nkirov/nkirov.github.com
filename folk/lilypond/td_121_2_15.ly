%{
TD_121_2_15
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 152
  \time 2/4
g4. a8 | b8( a) a( g) | f\noBeam g \acciaccatura g8 f( e) | 
\varA
e8\startTextSpan e4 f8\stopTextSpan | 
g4. a8 | b8( a) a( g) | f\noBeam g \acciaccatura g8 f( e) | 
\varB
e4.\startTextSpan( c8\stopTextSpan) |  
e4. f8 | g8( f) f( e) | e\noBeam d \acciaccatura e8 d( c) | 
\varC
c8\startTextSpan c4 d8\stopTextSpan | 
e4. f8 | g8( f) f( e) | d\noBeam e \acciaccatura e8 d( c) | c2 
 \bar "|." 
 s4 \fixB c4 \fixC
 \bar "|." 
 \endm
\varA
e4\startTextSpan e8\noBeam f8\stopTextSpan \bar "||"
\varB
\set Score.measureLength = #(ly:make-moment 3 4)
e2\startTextSpan  \hideNotes  e4\stopTextSpan \unHideNotes \bar "||"  
\set Score.measureLength = #(ly:make-moment 2 4)
\varC
c4\startTextSpan c8\noBeam d8\stopTextSpan 
 \bar "|." 
}
\addlyrics { За- ли- бих си но- во лю- би, 
ма- \startTextSpan мо, \stopTextSpan 
за- ли- бих си но- во лю- би, но- во лю- би, дър- во- дел- чи, 
ма- \startTextSpan мо, \stopTextSpan 
но- во лю- би, дър- во- дел- чи }
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
		tempoWholesPerMinute = #(ly:make-moment 152 4)
		}
	}
}
%
\header{
  opus = "ТД-121,2,15"
  tagline = ##f
}


