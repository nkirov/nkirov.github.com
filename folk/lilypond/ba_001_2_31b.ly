%{
BA_1_2_31
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 7/16 
g16^"II изпълнение"( [ aes ] ) c8\noBeam c8. | d8\noBeam bes8~ \afterGrace bes8.( { aes16 [ g aes ] ) } | bes8 aes16( [ g ] ) f8. | g16( [ aes ] ) c8\noBeam c8. | bes8\noBeam bes8~ \afterGrace bes8.( { aes16 [ g aes ] ) }  
bes8.( [ aes16 ] ) aes8^>( [ g16 ] ) | g8 r8 r8. 
 \bar "|:" 
aes8\noBeam aes g8. | g16( [ aes ] ) bes8~ bes8. | bes8 aes16( [ g ] ) f8.
f8\noBeam f f8. | g16( [ aes ] ) bes8 r8. | bes8.( [ aes16 ] ) aes8( [ g16 ] ) | g8~\noBeam g r8.
\bar ":|"
}
\addlyrics { ма- ма ти ли та ни да- ва, ма- ма ти ли та ни да- ва, ма- ма ти и- ли
тей- но ти, ма- ма ти и- ли тей- но ти }
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
%%  opus = "ВА-1,2,31"
  tagline = ##f
}


