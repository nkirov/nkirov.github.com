%{
BA_3_1_27
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
g8^"I изпълнение" \acciaccatura a8 b4 b8 | 
\gliss
b4 \noteFi b8\glissando( a) | 
g8 a16([ b]) b8( a) | a8 a4 fis8 | g8([ fis8]) e4 | e2 | 
\noteFi a8\glissando(  g) \noteFi g\glissando( fis) | 
g8.\noBeam g16 \acciaccatura a8 b4 | b8 b4. | a8.\noBeam g16 a4 | a8.\noBeam g16 a4 | 
a\prall g8( fis) | e2 | e4 e    
 \bar "||"
\break 
 d'8^"II изпълнение" b4 b8 | 
 b8 b4( a8) | a8\noBeam g a4 | g8 a4 a8 | b8( a) g( fis) | e4.( d8) | a'8( g) g( fis) | g8 g4 a16( b) | b4 b8( a) | g8 a16([ b]) b8( a) | a8 a4 fis8 | g8( fis) e4 | e2 | e4 e
 \bar "|."
}
\addlyrics { Ми- тьо на Бой- ка ду- ма- ше, Ми- тьо  на Бой- ка ду- ма- ше: 
Бой- ки мо, лю- бе Бой- ки мо, Бой- ки мо, лю- бе Бой- ки мо,
до- хо- дят ли ти, Бой- ки мо, до- хо- дят ли ти, Бой- ки мо, 
су- тра- на ме- ки ми- лин- ки, су- тра- на ме- ки ми- лин- ки }
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
  opus = "ВА-3,1,27"
  tagline = ##f
}


