%{
BA_2_1_24
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
\varA  
  g8\startTextSpan a4.\stopTextSpan | 
a4~( a8.[ g16]) | 
\varB
c8\startTextSpan( b) b4\stopTextSpan | 
c8( [ b]~ \times 2/3 { b8 [ a b]) } | a4 g8( fis) | 
g8 a4( b8) | 
\break
b4~( b8[ a16 b16]) | a8( g) g8( fis) | e2 | e4 e   
 \bar ":|" 
\endm 
\varA  
  g4\startTextSpan a4\stopTextSpan \bar "||"
\varB
a8\startTextSpan b4.\stopTextSpan \bar "|."  
 }
\addlyrics { Ма- ма Ба- ла- за ду- ма- ши: Ба- ла- зо, ми- ла ма- мя- на, }
\addlyrics { де ти, Ба- ла- зо, гир- да- ня, гир- да- ня, мир- джан- ли- я- та }
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
  opus = "ВА-2,1,24"
  tagline = ##f
}


