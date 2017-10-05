%{
TD_180_1_23
%}
\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 108
  \time 2/4
\afterGrace g4\( { \stdB a8\) \stdE } a4 
 g8( f ) g8.( a16 ) |
 a8( g~ \afterGrace g\( { \stdB a8\) \stdE } \times 2/3 { g16 f e) } | 
f8\prall( e) d^\rtoe( e^\ltoe ) | 
g8.( f16 ) f8\noBeam f | g( a) a4 g8( f) g8.( a16)
 a8[( g~]  g[ a32 g f e])  | 
  f16([ g]  \times 2/3 { f16[ e d)] } d4 | d~ d8 r8 
 \bar "|." 
 s4 \fixB d4 
 \bar "|." 
}
\addlyrics { Бя- ри ми, ма- мо, гря- хо- ве, ма- \startTextSpan ри, \stopTextSpan
гря- хо- ве, теж- ки ка- хъ- ри }
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
		tempoWholesPerMinute = #(ly:make-moment 108 4)
		}
	}
}

\header{
%%  title = "Бяри ми, мамо, гряхуве"
  composer = "ТД-180,1,23"
  tagline = ##f
}



