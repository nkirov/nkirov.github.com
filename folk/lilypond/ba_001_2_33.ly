%{
BA_1_2_33
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 3/8
d8\noBeam e8\noBeam e | e8\noBeam e8( d) | d8\noBeam d8\noBeam d | 
\varA
d16\startTextSpan ( c) c4\stopTextSpan | 
\varB
d8\startTextSpan\noBeam e\noBeam e\stopTextSpan | 
\varC
e8\startTextSpan\noBeam e( d\stopTextSpan) | 
\varD
d8\startTextSpan\noBeam c\noBeam  c\stopTextSpan | 
\varE
d16\startTextSpan( e) e4\stopTextSpan | 
d8\noBeam c\noBeam c | c16( [ b ] ) b8\noBeam a | a8 a8.( [ g16 ] ) | a16( [ b ] ) c8( d) | 
\varFG
a16\startTextSpan( [ b ] ) c8\noBeam c\stopTextSpan | 
c16( [ b ] ) b8\noBeam a | d8 a4 | a8 a4 
 \bar "|."
\set Score.measureLength = #(ly:make-moment 1 16)  
 s16 \bar ""  
 \set Score.measureLength = #(ly:make-moment 3 8)  
 \clef treble 
\varA 
e'16\startTextSpan([ d)] c4\stopTextSpan \bar "||" 
\varB
e8\startTextSpan\noBeam e\noBeam e\stopTextSpan \bar "||"  
\varC
e8\startTextSpan\noBeam e4\stopTextSpan \bar "||"  
\varD
d8\startTextSpan\noBeam d\noBeam  c\stopTextSpan \bar "||"  
\varE
d16\startTextSpan( e) c4\stopTextSpan \bar "||"  
\varF
g8\startTextSpan c\noBeam c\stopTextSpan \bar "||"  
\varG
d8\startTextSpan c\noBeam c\stopTextSpan
\bar "|." 
}
\addlyrics { Къ- щи- ца и- мам, къщ- ни- ца ня- мам, къ- щи- ца и- мам, 
къщ- ни- ца ня- мам, ай туй ми, бож- ни ле, най до- те- гна, 
ай туй ми, бож- ни ле, най до- тег- на }
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
  opus = "ВА-1,2,33"
  tagline = ##f
}


