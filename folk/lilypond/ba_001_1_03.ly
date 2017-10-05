%{
ba_001_1_03
td_113_2_5
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%\tempo 8 = 152
\time 5/16
\varA
d8\startTextSpan e8.\stopTextSpan\noBeam | 
\varBC
e8\startTextSpan e8.\stopTextSpan\noBeam | 
\varD
e8\startTextSpan d8.\stopTextSpan\noBeam | 
c16[( b]) a8. | c8 c16\noBeam d8 | 
d c16\noBeam b8 | 
\break
a8 a8.\noBeam | a8 a8.\noBeam
 \bar "|." 
\endmmm
\varA
g'8\startTextSpan e8.\stopTextSpan\noBeam \bar "||"
\varB
e16\startTextSpan[( d])  e8[( d16\stopTextSpan]) \bar "||"
\varC
e8\startTextSpan e[( d16\stopTextSpan])  \bar "||" 
\varD
g8\startTextSpan d8.\stopTextSpan\noBeam
\bar "|." 
}
\addlyrics { Сед- на- ла йе мо- ма Ка- ля, 
Кай- \startTextSpan ни ле, Ка- льо мо, \stopTextSpan 
ка- \startTextSpan лин- чи- це \stopTextSpan }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 152 8)
		}
	}
}
%
\header{
  opus = "ВА-1,1,3 (ТД-113,2,5)"
  tagline = ##f
}


