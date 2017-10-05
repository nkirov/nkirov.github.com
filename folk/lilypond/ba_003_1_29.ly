%{
BA_3_1_29
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
e4. d8 | d4 a | b8\noBeam c d4 | a2 
 \bar ":|"
\varA
 b4\startTextSpan b8 b8\stopTextSpan\noBeam | 
 d4 c | 
 \gliss
 b4\glissando a | 
\varB
 b4.\startTextSpan\glissando( g8\stopTextSpan) | 
 b4 b8\noBeam c | \noteFi d\glissando( c) c4 | 
 \noteFi b8\glissando( a) a4 | a r4
 \bar "|." 
 \endm
\varA
 b4\startTextSpan b8 c8\stopTextSpan\noBeam  \bar "||" 
 \varB
 b4.\startTextSpan\glissando( a8\stopTextSpan)  
 \bar "|." 
}
\addlyrics { Фи- \startTextSpan ли, джа- нъм, Ди- ли- я- но, \stopTextSpan
сно- щи на Ду- нав о- ти- дах, сно- щи на Ду- нав о- ти- дах }
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
  opus = "ВА-3,1,29"
  tagline = ##f
}


