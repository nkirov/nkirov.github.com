%{
BA_1_2_20
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
  g8 a4. | c2 |
\varA  
  c4\startTextSpan d8( c\stopTextSpan) |
\varB  
  d8.\startTextSpan( c16) c16( d c bes\stopTextSpan) |  
  a4.( g8) | a4 c8( bes) | g8( a~ a4) | bes4 bes8( a) | g8 a4. | a4 r4
 \bar ":|" 
\endm
\varA  
  d4\startTextSpan d8( c\stopTextSpan) \bar "||"
\varB  
  c4\startTextSpan c16( d c bes\stopTextSpan) \bar ".|"
}
\addlyrics { На ко- "го~й" тъж-  но, ка-  хър- но? 
На Ра- да~й тъж- но, ка- хър- но }
\addlyrics {Чи за- "що~й," чи за- рад ка- "ко~й?" Де- "то~й" съ 
лю- би сго- ди- ло }
%
\layout {
  indent = #0
  line-width = 190\mm
  ragged-right=##f
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
  opus = "ВА-1,2,20"
  tagline = ##f
}


