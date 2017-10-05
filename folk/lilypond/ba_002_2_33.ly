%{
BA_2_2_33
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 7/16
g8 a16([ b]) b8\noBeam b16 | b8\noBeam b b8\noBeam a16 |
\varA
b8\startTextSpan\noBeam a a8\noBeam g16\stopTextSpan | 
\varB
a8\startTextSpan\noBeam b g8([ fis16\stopTextSpan]) | 
\varC
d8\startTextSpan\noBeam  e g8 fis16\stopTextSpan | 
d4 d8.  
 \bar ":|"
\varD 
g4\startTextSpan g8 fis16^"↑"\stopTextSpan | 
e8\noBeam a a8([ g16]) | g4 fis8 d16 | e8\noBeam e e8([ d16]) | d8\noBeam g fis16 e8 | 
e8\noBeam a a16.([ g16.]) | g8 g16([ fis]) d16\noBeam e8 | e4 e8.
 \bar "|."
\set Score.measureLength = #(ly:make-moment 1 16)  
 s16 \bar ""  
 \set Score.measureLength = #(ly:make-moment 7 16)  
 \clef treble  
\varA
a8\startTextSpan\noBeam a a8\noBeam g16\stopTextSpan \bar "||"
\varB
a8\startTextSpan\noBeam b g8.\stopTextSpan \bar "||"
\varC
e8\startTextSpan\noBeam  e fis8 e16\stopTextSpan \bar "||"
\varD 
g4\startTextSpan g8 f!16\stopTextSpan 
\bar "|." 
}
\addlyrics { Пър- ва ве- чер ви- че- ря- ли пет ко- кош- ки пър- дош- ки, ид- на 
я- ре- бич- ка. Пак ба- ба ни я- ла, пак ба- ба ни пи- ла, ба- ба би- ла зло- я- да, 
чи са ни на- я- ла }
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
  opus = "ВА-2,2,33"
  tagline = ##f
}


