%{
BA_3_1_14
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
  \repeat volta 2 { g8\noBeam g g4 | 
\varA  
b8\startTextSpan\noBeam c d4\stopTextSpan | 
b8\noBeam c d8\noBeam ees | 
\varB
ees8\startTextSpan\noBeam ees 
\afterGrace d4( { \stdB c8\stopTextSpan) \stdE } | 
\varC
c8\startTextSpan\noBeam b a4\stopTextSpan } 
  \alternative { {  a a8( g) }
%% \bar ":|"
{ a4 a } }
 \bar "|."
\endm
\varA  
b8\startTextSpan\noBeam c d8( b\stopTextSpan)  \bar "||"
\varB
c8\startTextSpan\noBeam d d( c\stopTextSpan)  \bar "||"
\varC
b8\startTextSpan\noBeam a a4\stopTextSpan  
\bar "|."
}
\addlyrics { Ма- рий- ке Ку- ца- ри- че- на, 
ма- \startTextSpan ри, \stopTextSpan Ку- ца- ри- че- но мо- ми- че ми- че }
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
  opus = "ВА-3,1,14"
  tagline = ##f
}


