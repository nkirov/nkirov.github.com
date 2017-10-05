%{
td_139_2_03
%}

\include "td-preamble.ly"

showMeter = { \once \revert Staff.TimeSignature #'stencil }

\score { 
  \new Staff = "assia" \with
  { \override TimeSignature #'stencil = ##f }
{ \relative c'' {
\tempo 4 = 104
\cadenzaOn
\override Glissando #'style = #'zigzag
\phrasingSlurDown
a4 b b b4.( c8) d4 d c8\prall\noBeam b a1 r4 r
d4 e e\glissando \afterGrace d2\( { c16[ b c]\) }
\bar ""
\times 2/3 { e8[( d c] } b4) b1~ b4 r 
\bar "|:" 
b4 \acciaccatura c8 d4 \times 2/3 { c8[( b a]) } a2 \breathe
\varA
d8\startTextSpan[( c\stopTextSpan]) 
b[( a]) gis\noBeam f e4. r8
\bar ""
e8[( f^"↑"]) gis![( a]) b[( a]) \acciaccatura b8 a( gis!4.) 
\varB
a8\startTextSpan[( gis!] fis4\stopTextSpan) 
e1 r4 
 \bar ":|" 
 s4 \fixB e \fixC
 \bar "|."
s16 \clef treble
\varA
\acciaccatura c'8\startTextSpan d[( c\stopTextSpan]) \bar "||"
\varB
a8\startTextSpan[( gis!] f![ e\stopTextSpan)] 
 \bar "|."
\break
\cadenzaOff
\showMeter \time 5/4
\override Glissando #'style = #'zigzag
\phrasingSlurDown
a4^"или" b b b4.( c8) | d4 d c8\prall\noBeam b a2\fermata | 
d4 e e\glissando \afterGrace d2\( { c16[ b c]\) } |
\times 2/3 { e8[( d c] } b4) b2.\fermata 
\bar "|:" 
b4 \acciaccatura c8 d4 \times 2/3 { c8[( b a]) } a2 \breathe |
d8[( c]) b[( a]) gis\noBeam f e4. r8 |
e8[( f^"↑"]) gis![( a]) b[( a]) \acciaccatura b8 a( gis!4.) |
a8[( gis!] f![ e]) e2.\fermata
\bar ":|" 
} }
\addlyrics { Я сно- щи за- ми- нах, май- \startTextSpan ко бе, \stopTextSpan 
край пу- сти- я Шу- мен,
край пу- сти- я Шу- мен, май- \startTextSpan ко бе, \stopTextSpan 
по- край та- я чеш- ма, }
\addlyrics { " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "
я там си за- ва- рих, май- \startTextSpan ко бе, \stopTextSpan 
мо- ма шу- мен- ки- ня }
%
\layout {
%%   \context { \Staff \remove "Time_signature_engraver" } 
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
		\Score tempoWholesPerMinute = #(ly:make-moment 104 4)
		}
	}
}
%
\header{
  opus = "ТД-139,2,3"
  tagline = ##f
}


