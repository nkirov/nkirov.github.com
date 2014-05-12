%{
td_135_1_27
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 168
\time 2/4
\override Glissando #'style = #'zigzag
\phrasingSlurDown
\noteFi \acciaccatura c8\glissando d4 a |
\varA
\noteFi \acciaccatura c8\startTextSpan\glissando d2\stopTextSpan |
\varB
\afterGrace d4\startTextSpan(\( { e16[ d]\) } c8[ b\stopTextSpan]) | 
\varC
\acciaccatura c8\startTextSpan d4 d\stopTextSpan |
\afterGrace d4(\( { e16[ d]\) } c8[ a]) | b4 b | d8[( c]) d4 | 
\afterGrace d4(\( { e16[ d]\) } c8[ b]) | 
\varD
a8\startTextSpan[( b]) c4\stopTextSpan |
\varE
c8\startTextSpan[( b]) b[( a\stopTextSpan]) | 
a2 | a4 a
 \bar "|." 
s4 \fixB e \fixC
  \bar "|." 
\endm
\varA
e'8\startTextSpan[( f e d\stopTextSpan]) \bar "||"
\varB
d8\startTextSpan([ c] c[ b\stopTextSpan]) \bar "||"
\varC
e4\startTextSpan e8[( d\stopTextSpan]) \bar "||"
\varD
a8\startTextSpan[( b]) c8 c\stopTextSpan\noBeam \bar "||"
\varE
d8\startTextSpan[( c]) b[( a\stopTextSpan])
 \bar "|."   
}
\addlyrics { За- бяг- на- ла Ян- ка ро- бин- ка, 
хей, \startTextSpan Ен- ке, Ен- ке, \stopTextSpan 
Ен- \startTextSpan ке ро- бин- ке \stopTextSpan }
%
\layout {
%   \context { 
%	    \Staff \remove "Time_signature_engraver" } 
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
		\Score tempoWholesPerMinute = #(ly:make-moment 168 4)
		}
	}
}
%
\header{
  opus = "ТД-135,1,27"
  tagline = ##f
}


