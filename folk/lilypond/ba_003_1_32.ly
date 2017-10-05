%{
BA_3_1_32
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
\varA
c4.\startTextSpan d8\stopTextSpan | 
d4 a | 
\varB
c8\noBeam\startTextSpan b c( b\stopTextSpan) | 
a4 a8\noBeam g | c4. c8 | d4 a | 
\break
\varC
c8\noBeam\startTextSpan c c( b\stopTextSpan) | 
a4 r4
 \bar ":|" 
\endm
\varA
c4.\startTextSpan c8\stopTextSpan \bar "||"
\varA
c4.\startTextSpan e8\stopTextSpan \bar "||"
\varBC
g,8\noBeam\startTextSpan c c( b\stopTextSpan) 
\bar "|."
%\varC
%g8\noBeam\startTextSpan c c( b\stopTextSpan) \bar "|." 
}
\addlyrics { За- па- ля- ла бя- ла Ми- та, ма- \startTextSpan ри, \stopTextSpan 
ма- \startTextSpan ри Ми- то \stopTextSpan 
бя- \startTextSpan ла Ми- то, \stopTextSpan }
\addlyrics { за- па- ля- ла ра- ки- я- та }
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
  opus = "ВА-3,1,32"
  tagline = ##f
}


