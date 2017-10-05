%{
BA_2_1_04
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 7/16
g8 a16([ b]) b16 b8 | b8\noBeam b8 b16 b8 | a4 a8 g16 | a16([ b]) b16([ a]) g8.
 \bar ":|"
 \repeat volta 2 { a8\noBeam a b16 g8 | g8 g16([ fis]) e16 e8 | }
\alternative  {  {
  e4 e16 e8 | g16([ a]) a16([ g]) g8 r16 }
%% \bar ":|"
{ e4 e8 d16 | e8\noBeam e8 e8. } }
 \bar "|."
}
\addlyrics { О- гън го- ри на пла- ни- на, виж- дам го, гле- дам го, 
дай ми, ма- мо, ве- рян дру- гар да и- да, да ви- дя да и- да, да ви- дя }
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
  opus = "ВА-2,1,4"
  tagline = ##f
}


