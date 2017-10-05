%{
TD_121_1_18
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 160
  \time 2/4
\repeat volta 2 { \acciaccatura g8 a4 a|
\override Glissando #'style = #'zigzag
a8([ \noteFi g\glissando]) c4 }  
\alternative { { g8( f) f\prall( e) d4 d8( c) }
{ g'4 f8( e) | d4 d8( c) } } 
\bar "||" 
e8 f\noBeam g4 | g8 bes\noBeam a f\noBeam | g2 | 
\set Score.measureLength = #(ly:make-moment 3 4)
c4 g\glissando \hideNotes d4 \unHideNotes | 
\set Score.measureLength = #(ly:make-moment 2 4)
e8 f\noBeam g g\noBeam
\noteF g4.(\glissando c8) | g4 g
 \bar "|." 
 s4 \fixB c,4
 \bar "|."
}
\addlyrics { За- бра- вил бях да са же- ня да са же- ня
До- \startTextSpan бри- ян, \stopTextSpan 
До- \startTextSpan бри- йе- ни- но, и- ху, \stopTextSpan " "
И- \startTextSpan чи- ре- ни- но, и- ху \stopTextSpan }
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
  opus = "ТД-121,1,18"
  tagline = ##f
}


