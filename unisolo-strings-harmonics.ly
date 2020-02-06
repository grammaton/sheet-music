#(set-global-staff-size 19)

\header {
  title 	= \markup \fontsize #6 { "UNISOLO" \vspace #2 }
  subtitle 	= \markup { \italic "string quartet • natural harmonics"}
  subsubtitle	= ""
  composer 	= \markup \override #'(baseline-skip . 2){
    \right-column {"Giuseppe Silvi" "[2020]" } \vspace #4 }
  instrument	= ""
  arranger	= ""
  copyright	= ""
  tagline	= ##f
}

\paper {
  #(set-paper-size "a4" 'landscape)
  ragged-last-bottom = ##f
  line-width = 280
  %left-margin = 15
  bottom-margin = 10
  top-margin = 10
}

rigo = \relative c''' {
  \clef "treble^23"
  \cadenzaOn
    s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 
  \cadenzaOff
\break \bar "||"  
  \hideNotes c1
}

rigoa = \relative c''' {
  \clef "treble^15"
  \cadenzaOn
    s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 
  \cadenzaOff
}

rigob = \relative c' {
  \clef "treble"
    s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 d1 a' e'
}

rigoc = \relative c {
  \clef bass
    s1 s1 s1 s1 s1 s1 s1 c1 d g f
}

rigod = \relative c,, {
  \clef "bass_8"
    s1 fis1 b c e g a
}

\score {
  \new StaffGroup <<
    \new Staff = with \rigo
    \new Staff = with \rigoa
    \new Staff = with \rigob
    \new Staff = with \rigoc
    \new Staff = with \rigod
  >>

\layout {
    indent = 0\cm
    \context {
      \Staff
      \remove "Time_signature_engraver"
      %\remove "Clef_engraver"
      %\remove "Bar_engraver"
    }
    \context {
      \Score
      \remove "Bar_number_engraver"
    }
  }

  \midi {}
}