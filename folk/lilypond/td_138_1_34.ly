%{
td_138_1_34
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 108
\cadenzaOn
\override Glissando #'style = #'zigzag
\phrasingSlurDown
\varA
a1\startTextSpan\glissando s\stopTextSpan
g4 a \acciaccatura a8 \afterGrace b1(\( { c16[ b]\) } a8[ b])
\acciaccatura { c16[ b] } a1~ a2 r4 \hideNotes a64 \unHideNotes 
\acciaccatura a8 b1( c8[ d] \times 2/3 { e[ d c] } b4 a\prall g8[ a])
\bar ""
b4 c8\prall[( a]) a1~ a2 r4 r \bar ""
\acciaccatura a8 \afterGrace b1\( { c16[ d]\) } \bar ""
d16[( c8.] b8\prall[ a]) \bar ""
\acciaccatura { b16[ a] } \slurUp \afterGrace g1(\( { fis16[ e fis]\) } 
\grace { g16[\( fis!] } e4\)) r \slurNeutral \bar ""
b'8([ c]) b\prall[( a]) 
\varB
 \slurUp a16\startTextSpan[( g8.\stopTextSpan]
\grace { a16[\( g] } fis!4\)) \slurNeutral
\bar ""
\varC
\acciaccatura g8\startTextSpan fis![( e\stopTextSpan]) 
e1~ e2 r4 r \bar ""
\acciaccatura a8 \afterGrace b1\( { \stdB c8\) \stdE } \bar "" 
d[( c] b\prall[ a]) \bar ""
\acciaccatura { a16[ b] }  \slurUp \afterGrace g1(\( { fis16[ e fis]\) } 
\grace { g16[\( fis!] } e4\)) r4 \bar "" \slurNeutral
b'8([ c]) b\prall[( a]) 
a16[( g8.] \grace { a16[\( g] } fis!4\)) 
\acciaccatura g8 fis![( e]) e1~ e2
 \bar "|." 
s4 \fixB b \fixC
  \bar "|." 
 s16 \clef treble
\varA
\afterGrace a'1\startTextSpan\( { g16[ fis!\stopTextSpan]\) } \bar "||"
\varB
a8\startTextSpan\prall[ g\stopTextSpan] \bar "||"
\varC
fis!8\startTextSpan[(\prall e\stopTextSpan]) 
 \bar "|."   
}
\addlyrics { Сте- фан Ди- ля- на, 
" " \startTextSpan  хей, \stopTextSpan 
ду- ма- ше: Лю- бе Ди- ля- но, 
Ди- ля- но, мар, я ще, лю- бе, да и- да }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 108 4)
		}
	}
}
%
\header{
  opus = "ТД-138,1,34"
  tagline = ##f
}


