%{
TD_096_2_29
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 88
%\time 5/16
\cadenzaOn
\override Glissando #'style = #'zigzag
\phrasingSlurDown
g4 \acciaccatura b8 c4.( d16[ c] b4 \grace { \stdB c8\( \stdE } 
b16[\) a g8.]) a4^\rtoe
\varA
\acciaccatura a8\startTextSpan b\stopTextSpan( 
\afterGrace b4^\ltoe)\( { c16[ b a b]\) } 
\acciaccatura b8 a16[( g8.]) g1\fermata r4
\bar ""
g4^\rtoe\glissando c2( d32[ c \afterGrace b8.]\( { \stdB c8\) \stdE } b32[ a g8.]) a4
\varA
\acciaccatura a8\startTextSpan b\stopTextSpan( 
\grace { c16[\( b] } a4\)) a a1\fermata
 \bar "|." 
s4 \fixB d, \fixC
 \bar "|."
s16 \clef treble
\varA
\acciaccatura a'8\startTextSpan b[ \grace { \stdB c\( \stdE } b\stopTextSpan]\)
 \bar "|." 
}
\addlyrics { Раз- бо- ля са Я- на, 
Я- \startTextSpan но, мо- ме Я- но \stopTextSpan }
%
\layout {
     \context { 
	    \Staff \remove "Time_signature_engraver" } 
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
		tempoWholesPerMinute = #(ly:make-moment 88 4)
		}
	}
}
%
\header{
  opus = "ТД-96,2,29"
  tagline = ##f
}


