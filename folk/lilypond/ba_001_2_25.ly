%{
BA_1_2_25
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 5/16
\varAB  
d8\noBeam\startTextSpan d8.\stopTextSpan |   
\acciaccatura e8 d16( [ c ] c8.) | 
\varCD
e8\startTextSpan e16([ d8\stopTextSpan)] | 
d16->( [ c ] c8.) | c8 bes16( [ a g) ] | 
%%\break
a16( [ bes) ] c8. | c8\noBeam ( c8.) | 
\break
d16( [ c) ] bes8. | a8\noBeam( a8.) | a8\noBeam a8. 
 \bar ":|" 
\set Score.measureLength = #(ly:make-moment 1 16)  
 s16 \bar ""  
\set Score.measureLength = #(ly:make-moment 5 16)  
 \clef treble  
\varA  
a8\noBeam\startTextSpan d8.\stopTextSpan \bar "||"
\varB  
c8\noBeam\startTextSpan d8.\stopTextSpan  \bar "||"  
\varC
\acciaccatura d8\startTextSpan e e16([ d8\stopTextSpan)]  \bar "||" 
\varD
d8\startTextSpan e16([ d8\stopTextSpan)]  
\bar "|." 
}
\addlyrics { При-  смя съ Ра- да на Гер- гя, на Гер- гя, на чо- бан Гер- гя }
\addlyrics { Чи Гер- ги, чи чи- ляк ли йе, за чи- ляк и- ма- ти ли го }
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
  opus = "ВА-1,2,25"
  tagline = ##f
}


