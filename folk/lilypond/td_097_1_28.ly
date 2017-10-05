%{
laz_097_1_28
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 8 = 176
 \time 3/8
\override Glissando #'style = #'zigzag 
\set Score.measureLength = #(ly:make-moment 7 16) 
{ \noteFi \hideNotes a16\glissando \unHideNotes } c8\noBeam { g4 } | 
\set Score.measureLength = #(ly:make-moment 3 8)
c8 c\noBeam c | 
\set Score.measureLength = #(ly:make-moment 7 16) 
{ \noteFi \hideNotes a16\glissando \unHideNotes } d8 c\noBeam b |
{ \noteFi \hideNotes a16\glissando \unHideNotes } d8\noBeam c4 | 
\set Score.measureLength = #(ly:make-moment 3 8) 
\varA
b8\startTextSpan \afterGrace aes(\( { \stdB bes) \stdE } 
aes\stopTextSpan\noBeam\) |  
g4.\fermata
\bar ":|:"
f8 f4 | g16[( aes]) aes8\noBeam aes | \acciaccatura aes bes aes\noBeam g | 
f8 f4 |
\acciaccatura g8 aes bes16[( aes g aes)] | g4.\fermata
 \bar ":|" 
 s8 \fixB d4 \fixC
 \bar "|."
\set Score.measureLength = #(ly:make-moment 1 16)  
 s16 \bar ""  
 \set Score.measureLength = #(ly:make-moment 3 8)  
 \clef treble
 \varA
b'8\startTextSpan\noBeam aes16[( b] aes8\noBeam\stopTextSpan)
 \bar "|." 
}
\addlyrics { " " Тук ни ка- за- ха, " " 
Ла- \startTextSpan за- ре, \stopTextSpan " " мо- ма ху- ба- " " ва, 
мо- ма ху- ба- ва, 
Ла- \startTextSpan за- ре, \stopTextSpan мо- ма гиз- да- ва }
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
		tempoWholesPerMinute = #(ly:make-moment 176 8)
		}
	}
}
%
\header{
  opus = "ТД-97,1,28"
  tagline = ##f
}


