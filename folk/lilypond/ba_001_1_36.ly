%{
ba_001_1_36
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%\tempo 4 = 100
\cadenzaOn
\phrasingSlurDown
b16[( a]) b[( c]) d[( c]) 
\varA
\afterGrace b8.\startTextSpan\( { c16[ b a\stopTextSpan]\) } \bar "|"
\varBC
b8\startTextSpan b16[( a\stopTextSpan]) 
g16[( a]) 
\varD
s32\startTextSpan b8\stopTextSpan  \bar "|"
a8 
\varE
s32\startTextSpan g8\stopTextSpan\noBeam 
c8 b8.\noBeam  \bar "|" b8.[( a16]) b[( c]) d[( c]) 
\afterGrace b8.\( { \stdB a8\) \stdE }  \bar "|" 
a8 g8.\noBeam g16[( a]) b8  \bar "|"
a8 g8.\noBeam g8 
\varF
s32\startTextSpan g8\stopTextSpan
 \bar "|."
 s16 \clef treble
\varA
\afterGrace b8.\startTextSpan\( { \stdB a8\stopTextSpan\) \stdE } \bar "||"
\varB
a8\startTextSpan a16[( g\stopTextSpan]) \bar "||"
\varC
a8\startTextSpan g8.\stopTextSpan\noBeam \bar "||"
\varD
b8\startTextSpan[( a16\stopTextSpan]) \bar "||"
\varE
g8\startTextSpan[( a16\stopTextSpan]) \bar "||"
\varF
s32\startTextSpan g8.\stopTextSpan
 \bar "||"
  \bar "|."
}
\addlyrics { Ра- но ра- ни мал- ка мо- ма, 
ко- \startTextSpan ла- ди ле, \stopTextSpan 
на- \startTextSpan злъм, на- злъм, \stopTextSpan 
по \startTextSpan кал- дъ- ръм, ко- ла- ди ле \stopTextSpan }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 100 4)
		}
	}
}
%
\header{
  opus = "ВА-1,1,36"
  tagline = ##f
}


