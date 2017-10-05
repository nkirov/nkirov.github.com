%{
TD_112_1_02
%}

\include "td-preamble.ly"
\include "Rhythm_marks.ly"

\score {
\relative c'' {
%\tempo 8 = 176
%\time 5/16
\override Score.RehearsalMark #'self-alignment-X = #LEFT
\once \override Score.RehearsalMark #'X-offset = #8
  \rhythmMarkA \rhyMarkDdot #"192-200"
\cadenzaOn
\override Glissando #'style = #'zigzag
\phrasingSlurDown
g8 \acciaccatura a \afterGrace b4\( { \stdB a8\) \stdE } a4.\fermata 
\varA
s8\startTextSpan b8\stopTextSpan 
\acciaccatura { c16[ b a] } b1\fermata( c8 b16\prall[ a] b[ a] g8) r4
\varB
s8\startTextSpan g8\stopTextSpan 
\varC
\acciaccatura a\startTextSpan \afterGrace b4\fermata\( { a16[ g]\) } 
b8.\mordent[( c16\stopTextSpan]) 
\bar ""
\varDEF
s8\startTextSpan \noteFi b8\stopTextSpan \bar ""
\varG
s8\startTextSpan a1\stopTextSpan\fermata \bar ""
r4 \bar "" g8 \acciaccatura g \afterGrace a4\fermata\( { \stdB b8\) \stdE } \bar ""
\acciaccatura c \afterGrace b4\( { a16[ b]\) } a8 a1\fermata
 \bar "|." 
s4 \fixB bes! \fixC
 \bar "|." 
s16 \clef treble
\varA
s16\startTextSpan b\stopTextSpan \bar "||"
\varB
s16\startTextSpan g\stopTextSpan \bar "||"
\varC
\afterGrace a4\startTextSpan\fermata\( { \stdB b8\) \stdE } 
\acciaccatura c8 \afterGrace b4\( { a16[ b\stopTextSpan]\) } \bar "||"
\varD
s16\startTextSpan b\stopTextSpan \bar "||"
\varE
s8\startTextSpan a8\stopTextSpan \bar "||"
\varF
s8\startTextSpan \noteFi b8\glissando \hideNotes g64\stopTextSpan\noBeam \unHideNotes \bar "||" 
\varG
\afterGrace a1\startTextSpan\fermata\( { b16[ a g\stopTextSpan]\) }
 \bar "|."  
}
\addlyrics { Пра- ти- ла~й ма- ма ху- ба- ва Дим- ка, 
Дим- \startTextSpan ке, Дай- мя- на \stopTextSpan }
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
		tempoWholesPerMinute = #(ly:make-moment 196 8)
		}
	}
}
%
\header{
  opus = "ТД-112,1,2"
  tagline = ##f
}


