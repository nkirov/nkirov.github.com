%{
BA_1_2_31
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 7/16
g16( [ aes] ) c8\noBeam c8. | d8\noBeam b8^"↓"~( b8 [ aes16 ] ) | c8 b16^"↓"( [ aes ] ) f8. | g16( [ aes ] ) c8\noBeam c8. | 
c8\noBeam b8^"↓"~ \afterGrace b8.( { aes16 [ g aes ] ) } | b8.^"↓"( [ aes16 ] ) aes8\prall( [ g16 ] ) | g8~ g8~ g8.  
 \bar "||"
aes8\noBeam aes8 g8. | g16( [ aes ] ) b8^"↓"~( b8 [ aes!32 g32 ] ) | b8 aes16( [ g ] ) f8. | f8\noBeam f f8. | 
g16( [ aes ] ) b8^"↓"~\noBeam ( b8 [ aes!32 g ] ) | b8.^"↓"( [ aes16 ] ) aes8( [ g16 ] ) | g8 r8 r8.
b8 aes16( [ g ] ) f8. | g16( [ aes ] ) b8~( b [ aes!32 g ] ) | b8 aes16( [ g ] ) f8. | f8\noBeam f8 f8. | g16( [ aes ] ) b8~\noBeam( b [ aes!32 g ] ) | b8.( [ aes16 ] ) aes8( [ g16 ] ) | g8~\noBeam g8 r8. 
\bar ":|"
}
\addlyrics { Йор- дан на Ан- ка ду- ма- ши, Йор- дан на Ан- ка ду- ма- ши: 
А- ни мо, бя- ло мо- ми- че, лят- но- про- лят- но ко- ки- че, 
А- ни мо, бя- ло мо- ми- че, лят- но- про- лят- но ко- ки- че, }
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
		tempoWholesPerMinute = #(ly:make-moment 152 8)
		}
	}
}
%
\header{
  opus = "ВА-1,2,31"
  tagline = ##f
}


