%{
TD_121_1_17
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 160
  \time 2/4
\repeat volta 2 { \acciaccatura g8 a4 a|
\override Glissando #'style = #'zigzag
a8([ g\glissando]) c4 }  
\alternative { { g8( f) f\prall( e) d4 d8( c) }
{ g'4 f8( e) | d4 d8( c) } } \bar "||" 
\break
\acciaccatura e8 f4 \times 2/3 { e8 d\noBeam c } | d2 | 
\times 2/3 { f8 f\noBeam f } g([ a)] | 
%%\noteFi g8.([\glissando f16)] 
\varA
g8.\startTextSpan([\glissando f16)] 
\times 2/3 { f8 e\noBeam c\stopTextSpan } | 
\afterGrace d2( { \stdB c8) \stdE } |
\break
\times 2/3 { f8 f\noBeam f } \times 2/3 { g a\noBeam a } |
\times 2/3 { g f\noBeam f } f8.\glissando([ e16)] |
g4 \times 2/3 { d8 d\noBeam d } | d2
 \bar "|." 
\endm
\varA
\noteFi g8.\startTextSpan([\glissando f16)] 
               \times 2/3 { f8 e\noBeam d\stopTextSpan }
\bar "|."
}
\addlyrics { За- бра- вил бях да са же- ня, да са же- ня,
дзан, \startTextSpan дзъ- гъ- ръ, дзан, \stopTextSpan
дзъ- \startTextSpan гъ- ръ дзан дзан дзъ- гъ- ръ дзан \stopTextSpan
дзъ- \startTextSpan гъ- ръ дзъ- гъ- ръ дзъ- гъ- ръ дзан \stopTextSpan
дзан, \startTextSpan дзъ- гъ- ръ дзан \stopTextSpan }
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
  opus = "ТД-121,1,17"
  tagline = ##f
}


