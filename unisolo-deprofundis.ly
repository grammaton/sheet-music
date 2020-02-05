\header {
  title = "UNISOLO : appunti sul DE PROFUNDIS"
  composer = "Giuseppe Silvi"
  tagline = ""
}

\paper {
  %system-separator-markup = \slashSeparator
}

global = {
  \key c \major
  \time 4/2
  \dynamicUp
}
sopranonotes = \relative c'' {
  r1. r2 r1 g1. g2 g1 c,1 f2. e4 f g a2. g4 f4 e4 \break
  d2 g1 fis2 g d1 d2

  d2 d e2. d4 c2 e2. d4 e f g2 a2. g4 a b
  c2 a b g4 a b c d2. c4 c2 b2 c1. 
}
sopranowords = \lyricmode { }
altonotes = \relative c' {
  d1. d2 d1 g,1 c2. b4 c d e2. d4 c4 b4 a2 d1
  c2 d2. c4 b2 g2 a1 g2 b1 b2

  b2 b2 c2. d4 e2 c2. b4 c d e2 f2 c1
  r2 c b c g g'1 f2 g1 e1
}
altowords = \lyricmode { }
tenornotes = \relative c'' {
  \clef "G_8"
  r\breve r\breve r\breve r\breve
  r\breve r\breve r\breve
  
  r1 g1. g2 g1 c, f e2 f d e d b c1 d c 
}
tenorwords = \lyricmode { }
bassnotes = \relative c' {
  \clef bass
  r\breve r\breve r\breve r\breve
  r\breve r\breve g1. g2 g1 c,1. c2 c1 c2 f2. e4 f g a2 f g c b g a1 g r1
}
basswords = \lyricmode { }

\score {
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "soprano" <<
        \global
        \sopranonotes
        \set Staff.midiInstrument = #"choir aahs"
      >>
      \lyricsto "soprano" \new Lyrics \sopranowords
    >>
    \new Staff <<
      \new Voice = "alto" <<
        \global
        \altonotes
        \set Staff.midiInstrument = #"choir aahs"
      >>
      \lyricsto "alto" \new Lyrics \altowords
    >>
    \new Staff <<
      \new Voice = "tenor" <<
        \global
        \tenornotes
        \set Staff.midiInstrument = #"choir aahs"
      >>
      \lyricsto "tenor" \new Lyrics \tenorwords
    >>
    \new Staff <<
      \new Voice = "bass" <<
        \global
        \bassnotes
        \set Staff.midiInstrument = #"choir aahs"
      >>
      \lyricsto "bass" \new Lyrics \basswords
    >>
  >>
  \layout{}
  \midi{}
}
