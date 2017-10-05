%{
BA_3_1_22
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
  g4^"I изпълнение" a8\noBeam a | 
  \acciaccatura b8 c4 d8( e) | e4( d8\( c\)) | \acciaccatura d8 e4 e4 | e8 d4 c8 | c8( b) a4 | a2 | b8( c) d( c) | e8 d4 b8 | c8( b) a4 | a2 | a4 a  
 \bar "||" 
%\break
g4^"II изпълнение" a8\noBeam a | 
c4 d8( e) | \acciaccatura d8 e4( d8[ c]) | \acciaccatura d8 e4 e8( d) | d8 d4 b8 | c8( b) a4 | 
%\break 
a2 | b8( c) d( c) | d8 d4 b8 | c8( b) a4 | a2 | a4 a
 \bar "|."
}
\addlyrics { Дим- чо Ка- лин- ки ду- ма- ше: Ка- лин- ке, лю- бе Ка- лин- ке, 
Ка- лин- ке, лю- бе Ка- лин- ке, аз ша, Ка- лин- ке, 
да и- да го- ря ми, го- ря "в Е-" ле- на, ша и- да лом да ко- па- я }
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
  opus = "ВА-3,1,22"
  tagline = ##f
}


