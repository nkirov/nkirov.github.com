%{
td_097_2_28
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 100
\cadenzaOn
\parS
g4-\parenthesize^\ltoe \acciaccatura b8 c4-\parenthesize^\ltoe d ees16[( d c\prall b] c1) r4
\varA
c\startTextSpan d8([ ees!\stopTextSpan]) \bar ""
d4 c16[( b aes\prall g] aes!2.) r4
\bar ""
\acciaccatura c8 d4 c8([ b]) b([ aes!]) \bar ""
c16[( b aes!\prall g]) \bar "" g2. g r4
\bar ""
f4 g8\noBeam aes! b4 \bar ""
c16[( b aes!\prall g] aes!2.) r4 \bar "" \acciaccatura c8 d4 c8([ b]) 
\bar ""
b[( aes!^"↑"]) c16[( b aes!\prall^"↑" g]) g2. g
 \bar "|." 
s4 \fixB g \fixC
 \bar "|." 
 s16 \clef treble
\varA
f'4\startTextSpan ees\stopTextSpan 
 \bar "|." 
}
\addlyrics { Съ- ди- гъ- ди, Ган- ка, 
ма- \startTextSpan мо, \stopTextSpan
Ган- ка да ни хо- ди,
ах, \startTextSpan ми- ла ма- мо, \stopTextSpan "в Дол-" на- та ма- ха- ла }
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
  opus = "ТД-97,2,28"
  tagline = ##f
}


