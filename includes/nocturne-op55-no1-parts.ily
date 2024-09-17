%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

slurShapeA = \shape #'((0 . 2) (0 . 0.5) (0 . 0.5) (0 . 2.5)) \etc
slurShapeB = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0.25))
                        ) \etc
slurShapeC = \shape #'(
                        ((0 . 3) (0 . 1) (0 . 0) (0 . 0))
                        ((0.25 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ) \etc
slurShapeD = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.25 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ) \etc
slurShapeE = \shape #'((0 . 0) (0 . 0) (0 . 0) (0 . 0.25)) \etc
slurShapeF = \shape #'((0 . 0) (0 . 0.5) (0 . 0.5) (0 . 0)) \etc
slurShapeG = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 3) (0 . 3) (0 . 3) (0 . 3))
                        ) \etc
slurShapeH = \shape #'((0 . -2) (0 . 0) (0 . 2) (0 . -2)) \etc
slurShapeI = \shape #'((0 . 0) (0 . 0) (0 . 0) (0 . 1)) \etc
slurShapeJ = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 1.5) (1 . 1.25) (0 . 0) (0 . 0))
                        ) \etc
slurShapeK = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . -1) (0.5 . -0.75) (0 . -0.25) (0 . 0))
                        ) \etc
slurShapeL = \shape #'(
                        ((0 . 2) (0 . 2) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ) \etc
slurShapeM = \shape #'(
                        ((0 . 2) (0 . 2) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ) \etc
slurShapeN = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 1.5) (0 . 1.5))
                        ) \etc
slurShapeO = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (3 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 1) (0 . -2) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . -0.5) (0 . 0) (0 . 0) (0 . 0))
                        ) \etc

tieShapeA = \shape #'((0 . 0) (0 . 0.25) (0 . 0.25) (0 . 0)) \etc

moveTextA = \tweak X-offset 4 \etc

%%% Music %%%

global = {
  \time 4/4
  \key f \minor
}

rightHandUpper = \relative {
  \partial 4 c''4(~_\> |
  c4 f\! ef df |
  c8.[ b16 c8. df16] c2~ |
  c4) f( ef df |
  c8.[ b16 c8. \slashedGrace { ef8*1/8 } df16] c2~ |
  c4) f( ef df |
  c2 \trillUnderSlur bf4\trill \grace { a16*1/8 bf } c8. df16 |
  af!2 \voiceOne af4\arpeggio g8. f16 |
  \oneVoice \acciaccatura { af,8 } f'2) c'4( c~ |
  
  \barNumberCheck 9
  c4 f ef df |
  c8.[ b16 c8. df16] c2~ |
  c4) f-\slurShapeB ( ef df |
  c8.[ b16 c8. \slashedGrace { ef8*1/8 } df16] c2~ |
  c4) f( ef df |
  c2 \grace { a16 bf } \trillUnderSlur bf2*1/2\trill \magnifyMusic #2/3 { 
    \scaleDurations 2/5 { \stemUp a8-. bf-. c-. ef-. df-. \stemNeutral } 
  } |
  af!2) \voiceOne af4-\slurShapeA ^( g8. f16 |
  \oneVoice \acciaccatura { af,8 } f'2) af4-\slurShapeC ( af |
  
  \barNumberCheck 17
  bf4 d,8 ef f ef af bf |
  c2) c4-\slurShapeD ( c |
  % SrcB has af8. g16, but this disagrees with the autograph
  d4 fs,8 g af g c d |
  e2 f4 ef8. df16 |
  df4 c df c8. bf16 |
  bf4 af g \slashedGrace { bf8*1/8 } af8. g16 |
  g4 g g \slashedGrace { bf8*1/8 } af8. g16 |
  g4 c) c c(~ | 
  
  \barNumberCheck 25
  c4 f^\inTempo ef df |
  c8.[ b16 c8. df16] c2~ |
  c4) \tupletOff \tuplet 3/2 4 { e8-\slurShapeE ( g f  ef ef, bf'  c ef df } |
  \tuplet 3/2 4 { c8 c, ef  af b df } c2~ |
  c4) f-\slurShapeF ( ef df |
  c2 \grace { a16 bf } c2*1/2-\underSlur \trill \magnifyMusic #2/3 { 
    \scaleDurations 1/2 { 
      \stemUp a8-. bf-. c-. df-. \stemNeutral
  } } |
  af!2) \voiceOne af4-\slurShapeG ^(\arpeggio g8. f16 |
  \oneVoice \acciaccatura { af,8 } f'2) af4( af |
  
  \barNumberCheck 33
  bf4 d,8 ef f ef af bf |
  c2) c4( c |
  % SrcB has af8. g16, but this disagrees with the autograph
  d4 fs,8 g af g c d |
  e2 f4 ef8. df!16 |
  df4 c df c8. bf16 |
  bf4 af g \slashedGrace { bf8*1/8 } af8. g16 |
  g4 g g \slashedGrace { bf8*1/8 } af8. g16 |
  g4 c) c c(~ | 
  
  \barNumberCheck 41
  c4 f^\inTempo ef df |
  c8.[ b16 c8. \slashedGrace { ef8*1/8 } df16] c2~ |
  c4) \tuplet 3/2 4 { e8-\slurShapeH \( g f  ef ef, bf'  c ef df } |
  \tupletOn
  \tuplet 7/4 { c8( c, ef af b c \slashedGrace { ef8*1/8 } df8) } c2~ |
  c4\) f( ef df |
  c2 \grace { a16 bf } c2*1/2-\underSlur \trill \magnifyMusic #2/3 { 
    \scaleDurations 1/3 { 
      \stemUp a8-. bf-. b-. c-. ef-. df-. \stemNeutral
  } } |
  af!2) \voiceOne af4-\slurShapeG ( g8. f16 |
  \oneVoice <af, f'>4)-\moveTextA ^\piuMosso \staffDown \voiceOne 
    \tuplet 3/2 4 { b8( c df  c g bf  af e g } |
  
  \barNumberCheck 49
  f4-.) \staffUp \oneVoice <af' f'>2( <g bf f'>4 |
  <af c f>4) \tupletOff \staffDown \voiceOne \tuplet 3/2 4 { 
    b,8( c df  c g bf  af e f 
  } |
  g4-.) \staffUp \oneVoice <ef' g ef'>2^( <f g d'>4 |
  \slashedGrace { d'8*1/8 } <ef, g c>8.) <f g b>16^( <ef g c>4) \staffDown
    \voiceOne \tuplet 3/2 4 { fs,8-\slurShapeJ ( g af  g d ef } |
  c4-.) \staffUp \oneVoice <ef' c'>2^( <d f c'>4 |
  <ef g c>4) \staffDown \voiceOne \tuplet 3/2 4 { fs,8( g af  g d f  ef b c } |
  d4-.) \staffUp \oneVoice <bf'! d bf'!>2^( <c d a'>4 |
  \slashedGrace { a'8*1/8 } <bf, d g>8.) <c d fs>16^( <bf d g>4) g'( g |
  
  \barNumberCheck 57
  df'!2 \tuplet 3/2 4 { c8 df c  df ef df } |
  \voiceOne c4 f f2) |
  df2( \tuplet 3/2 4 { c8 df c  df ef! df } |
  c4 f f2) |
  gf2-\slurShapeL ( \tuplet 3/2 4 { f8 gf f  gf af gf } |
  f4 bf bf2) |
  gf2( \tuplet 3/2 4 { f8 gf f  gf af! gf } |
  f4 bf bf2) |
  
  \barNumberCheck 65
  bf2-\slurShapeM ( af4. gf8 |
  \voiceFour <gf, gf'>2 <f f'> |
  <f f'>2 <e~ e'^~> |
  <e bf' e>2 <e e'>4. <f f'>8 |
  \oneVoice <f af f'>4) f''16-\slurShapeN ( ef df c  cf af g f  e f ef df |
  c16 cf af g  bf af g f  e f ef df  c! df af bf |
  c4-\noStaffPriority ^\stretto df f e |
  e4-\noStaffPriority ^\ritenuto f \voiceOne af g8.\noBeam\fermata c16)~ |
  
  \barNumberCheck 73
  \oneVoice c4 f( ef df |
  c8.[ b16 c8. df16] c2~ |
  c4 \tuplet 3/2 4 { e8 g f  ef ef, bf'  c ef df } |
  \tuplet 3/2 4 { c8 c, ef  af b df } c2~ |
  c4) \tuplet 3/2 4 { 
    f8-\slurShapeO ( f' f,  e' g, e'  af, ef' a, |
    d8 bf d  df df, df'  c d, c'  ef, bf' e, |
    bff'8 f bff  af af, af'  aff df, aff'  gf gf, gf' |
    f8 f, af  c ef df  c e, g  b c bf |
    
    \barNumberCheck 81
    a8 af f  f' f, f'  g, e' af,  ef' a, ef' |
    d8 bf d  df df, df'  d, c' ef,  bf' e, bf' |
    bff8 f bff  af df, af'  gf df gf  f df f |
    gf8 df gf  f df f  c' c, f  e bf c |
    f8 af, c  a c ef  gf a c  ef gf a |
    gf'8 c, ef  a, gf c,  ef a, gf  \voiceOne c, ef a, |
    \staffDown bf8 f g!  \staffUp \oneVoice bf df f  g bf df  f g bf |
    df8 g, bf  e, df g,  bf e, df \voiceOne \staffDown g, bf e, |
    
    \barNumberCheck 89
    f8-> a c  \staffUp f bf, c  \staffDown a \staffUp c f  a d, f |
    \oneVoice c8 f a  c g a  f a c  f bf, c |
    a8 c f  a d, f  c f a  c g a |
    f8 a c  f bf, c  a c f  a d, f |
    \ottava 1 c8 f a  c g a  f a c  f g, a |
    f a c  f g, a  f a c  f g, a  |
    f a c  f g, a  f a c  f g, a  |
    f a c  f g, a  f a c  f g, a  |
  }
  
  \barNumberCheck 97
  f4) \ottava 0 r r2 |
  \voiceOne <df,, f df'>2(^\inTempo <bf e c'> |
  <a c f a>1)\arpeggio |
  q2-.(\arpeggio q-.\arpeggio |
  q1)\arpeggio\fermata |
  \bar "|."
}

rightHandLower = \relative {
  \partial 4 s4 |
  s1 * 6 |
  s2 \voiceFour <bf e>4.\arpeggio r8 |
  s1 |
  
  \barNumberCheck 9
  s1 * 6 |
  s2 \slashedGrace { bf8*1/8 } <bf e>4. r8 |
  s1 |
  
  \barNumberCheck 17
  s1 * 8 |
  
  \barNumberCheck 25
  s1 * 6 |
  s2 \slashedGrace { bf8*1/8 } \voiceFour <bf e>4.\arpeggio r8 |
  s1 |
  
  \barNumberCheck 33
  s1 * 8 |
  
  \barNumberCheck 41
  s1 * 6 |
  s2 \slashedGrace { bf8*1/8 } <bf e>4. r8 |
  s1 |
  
  \barNumberCheck 49
  s1 * 8 |
  
  \barNumberCheck 57
  s1 |
  bf'4 af g f |
  f2 e |
  g2 f |
  ef'1~ |
  ef4 df c bf |
  bf2 a |
  c2 bf |
  
  \barNumberCheck 65
  <bf df>1 |
  \voiceOne bf1 |
  bf1-\tieShapeA _~ |
  \hideNoteHead bf2 bf |
  s1 * 4 |
  
  \barNumberCheck 73
  s1 * 8 |
  
  \barNumberCheck 81
  s1 * 3 |
  s2 \tupletOff \voiceFour \tuplet 3/2 { c4*1/2 c,4  e4 s8 }
  s1 * 4 |
  
  \barNumberCheck 89
  s1 * 8 |
  
  \barNumberCheck 97
  s1 |
  \voiceThree g1 |
}

rightHand = {
  \global
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHandUpper = \relative {
  \partial 4 s4 |
  s1 * 8 |
  
  \barNumberCheck 9
  s1 * 7 |
  \voiceThree r4 <af c>2( <af d>4) |
  
  \barNumberCheck 17
  r4 <af df!> s2 |
  s1 * 4 |
  r4 <ef c'>( r <df f b> |
  r4 <e c'> r <df f b>~ |
  <f b>4) <e bf'!>2 s4 |
  
  \barNumberCheck 25
  s1 * 7 |
  \voiceThree r4 <af c>2( <af d>4) |
  
  \barNumberCheck 33
  r4 <af df!> s2 |
  s1 * 4 |
  r4 <ef c'>( r <df f b> |
  r4 <e c'> r <df f b>~ |
  <f b>4) <e bf'!>2 s4 |
  
  \barNumberCheck 41
  s1 * 8 |
  
  \barNumberCheck 49
  s1 * 8 |
  
  \barNumberCheck 57
  s1 * 8 |
  
  \barNumberCheck 65
  s1 * 6 |
  r8 <e g>4 <f af> <af d> <gs d'>8~ |
  q8 <g! cs>4 <f c'> \staffUp \voiceFour <b f'> <bf e>16\fermata r |
  
  \barNumberCheck 73
  s1 * 8 |
  
  \barNumberCheck 81
  s1 * 4 |
  \staffDown \voiceThree f,1_~ |
  f1_~ |
  f1_~ |
  f1 |
  
  \barNumberCheck 89
  s2 \once \stemDown a'~ |
  a1~ |
  a1~ |
  a1~ |
  a1~ |
  a1~ |
  a1~ |
  a1~ |
  
  \barNumberCheck 97
  \hideNoteHead a4 s2. |
}

leftHandLower = \relative {
  \partial 4 r4 |
  f,4-. <af' c f>-. g,-. <ef' bf' ef>-. |
  af,4-. <c' af'>-. e,,-. <bf''! c g'>-. |
  f,4-. <af' c f>-. g,-. <ef'! bf' ef!>-. |
  af,4-. <c' af'>-. e,,-. <bf''! c g'>-. |
  f,4-. <af' c f>-. g,-. <ef'! bf' ef!>-. |
  af,4-. <c' af'>-. bf,-. <gf' df' gf>-. |
  c,4-. <af' c f>-. c,,-. <c' c'>-. |
  f,4-. <af' c>-. f,-. <g' e'>-. |
  
  \barNumberCheck 9
  f,4-. <af' c f>-. g,-. <ef'! bf' ef!>-. |
  af,4-. <c' af'>-. e,,-. <bf''! c g'>-. |
  f,4-. <af' c f>-. g,-. <ef'! bf' ef!>-. |
  af,4-. <c' af'>-. e,,-. <bf''! c g'>-. |
  f,4-. <af' c f>-. g,-. <ef' bf' ef>-. |
  af,4-. <c' af'>-. bf,-. <gf' df' gf>-. |
  c,4-. <af' c f>-. c,,-. <c' c'>-. |
  f,4-. \voiceTwo r f' ff |
  
  \barNumberCheck 17
  ef2 \oneVoice ef,4-. <g' df'>-. |
  af,4-. <ef' af c>-. af,-. <d f c'>-. |
  g,4-. <d' f! c'>-. g,-. <f' b>-. |
  c,4-. <bf''! c g'>-. c,-. <af' c af'>-. |
  c,4-. <g' ef'>-. c,-. <f af f'>-. |
  \voiceTwo c2 c |
  c2 c |
  c2. \oneVoice r4 |
  
  \barNumberCheck 25
  f,4-. <c' af'>-. g-. <ef' bf' ef>-. |
  af,4-. <c' af'>-. e,,-. <bf''! c g'>-. |
  f,4-. <af' c f>-. g,-. <ef' bf' ef>-. |
  af,4-. <ef' af ef'>-. e,-. <bf''! c g'>-. |
  f,4-. <af' c f>-. g,-. <ef' bf' ef>-. |
  af,4-. <ef' af c ef>-. bf-. <gf' df' gf>-. |
  c,4-. <af' c f>-. c,,-. <c' c'>-. |
  f,4-. \voiceTwo r f' ff |
  
  \barNumberCheck 33
  ef2 \oneVoice ef,4-. <g' df'>-. |
  af,4-. <ef' af c>-. af,-. <d f c'>-. |
  g,4-. <d' f! c'>-. g,-. <d' f b>-. |
  c,4-. <bf''! c g'>-. c,-. <af' c af'>-. |
  c,4-. <g' ef'>-. c,-. <f af f'>-. |
  \voiceTwo c2 c |
  c2 c |
  c2. \oneVoice r4 |
  
  \barNumberCheck 41 
  f,4-. <c' af'>-. g-. <ef' bf' ef>-. |
  af,4-. <c' af'>-. e,,-. <bf'' c g'>-. |
  f,4-. <af' c f>-. g,-. <ef' bf' ef>-. |
  af,4-. <ef' c'>-. e,-. <bf'' c g'>-. |
  f,4-. <af' c f>-. g,-. <ef' bf' ef>-. |
  af,4-. <c' ef af>-. bf,-. <gf' df' gf>-. |
  c,4-. <af' c f>-. c,,-. <c' c'>-. |
  <f c'>4 \voiceTwo \tuplet 3/2 4 { b,8-\slurShapeI ( c df  c g bf  af e g } |
  
  \barNumberCheck 49
  f4-.) \oneVoice <f' c' f>2 <f df' f>4 |
  <f c' f>4 \tupletOff \voiceTwo \tuplet 3/2 4 { b,8( c df  c g bf  af e f } |
  g4-.) \oneVoice <g' c>2 < g b>4 |
  <c, g' c>8. <c g' d'>16 <c g' c>4 \voiceTwo \tuplet 3/2 4 { 
    fs,8-\slurShapeK ( g af  g d ef 
  } |
  % SrcB has <d af' c>4 for the last chord, disagrees with autograph
  c4-.) \oneVoice <c' g' c>2 <c af' c>4 |
  <c g' c>4 \voiceTwo \tuplet 3/2 4 { fs,8( g af  g d f  ef b c } |
  d4-.) <d' g>2 <d fs>4 |
  <g, d' g>8. <g d' a'>16 <g d' g>4 \oneVoice r2 |
  
  \barNumberCheck 57
  \tupletOn \tuplet 3/2 { e8( df'! bf } g'4) \tuplet 3/2 { e,8( df' bf } g'4) |
  \tuplet 3/2 { f,8( c' af } af'4) \tuplet 3/2 { af,8( f' c } c'4) |
  \tupletOff 
  \tuplet 3/2 { g,8( f' df } bf'4) \tuplet 3/2 { g,8( e' df } bf'4) |
  \tuplet 3/2 { af,8( g' c, } c'4) \tuplet 3/2 { af,8( f' c } c'4) |
  \tuplet 3/2 { a,8( gf' ef } c'4) \tuplet 3/2 { a,8( gf' ef } c'4) |
  \tuplet 3/2 { bf,8( f' df } df'4) \tuplet 3/2 { df,8( bf' f } f'4) |
  \tuplet 3/2 { c,8( bf' gf } ef'4) \tuplet 3/2 { c,8( a' f } ef'4) |
  \tuplet 3/2 { df,8( c' f, } f'4) \tuplet 3/2 { df,8( bf' f } f'4) |
  
  \barNumberCheck 65
  \tuplet 3/2 { df,,8( bf'' gf } gf'4) \tuplet 3/2 { df,8( bf' gf } gf'4) |
  \tuplet 3/2 { df,8( bf' gf } df'4) \tuplet 3/2 { df,8( bf' gf } df'4) |
  \tuplet 3/2 { df,8( bf' g! } df'4) \tuplet 3/2 { df,8( bf' g } df'4) |
  \tuplet 3/2 { df,8( bf' g } df'4) \tuplet 3/2 { df,8( bf' g } df'4) |
  <df, af' cf>4 r r2 |
  R1 |
  \voiceTwo r8 c4( cf bf e,8~ |
  e8 a4 af g c,16)\fermata r |
  
  \barNumberCheck 73
  \oneVoice f4-. <af' f'>-. g,-. <ef' bf' ef>-. |
  af,4-. <c' af'>-. e,,-. <bf''! c g'>-. |
  f,4-. <af' c f>-. g,-. <ef' bf' ef>-. |
  af,4-. <ef' af c>-. e,-. <bf''! c g'>-. |
  f,4-. \clef treble <c'' af'>-. \clef bass f,-. \clef treble <c' f c'>-. |
  \clef bass bf,4-. \clef treble <df' f bf>-. \clef bass c,-. 
    \clef treble <c' g' bf>-. |
  \clef bass df,4-. <af' df f>-. bf,-. <bf' df>-. |
  c,4-. <af' c>-. c,,-. <g'' c>-. |
    
  \barNumberCheck 81
  f,4-. <c' af' c>-. f,-. <f' c' f>-. |
  % SrcB, second chord is missing the lower f, present in autograph
  bf,4-. <f' bf f'>-. c-. <g' c>-. |
  % SrcB, has <df, df'>4 for first beat, disagrees with autograph
  df,4( <df' af'> <bf bf'> <cf af'> |
  <bf bf'>4 <cf af'> <c af'> <c g'>)_~ |
  \voiceTwo c4 gf'_\> f ef\! |
  ef2 f4 ef |
  df2 c4. bf8 |
  bf2 df |
  
  \barNumberCheck 89
  % whole note chord, according to SrcB, autograph
  <f, c'>1~ |
  q1~ |
  q1~ |
  q1~ |
  q1~ |
  q1~ |
  q1~ |
  q1~ |
  
  \barNumberCheck 97
  \oneVoice <f c' a'>4 r r2 |
  <bf, bf'>2( <c c'>) |
  <f c' f>1\arpeggio |
  q2\arpeggio q\arpeggio |
  q1\arpeggio_\fermata |
}

leftHand = {
  \global
  \clef bass
  <<
    \new Voice \leftHandUpper
    \new Voice \leftHandLower
  >>
}

dynamics = {
  \override TextScript.Y-offset = -0.5
  \partial 4 s4 |
  s1\p |
  s1 * 7 |
  
  \barNumberCheck 9
  s1 * 8 |
  
  \barNumberCheck 17
  s4 s2.-\tweak to-barline ##f \< |
  s2\! s |
  s4 s2.-\tweak to-barline ##f \< |
  s2\! s-\tweak to-barline ##f \> |
  s1 * 2 |
  s4\! s2. |
  s2.^\ritenuto s4\> |
  
  \barNumberCheck 25
  s4 s\! s2 |
  s1 * 3 |
  s1\f |
  s1 * 3 |
  
  \barNumberCheck 33
  s4. s8\< s2 <>\! |
  s1 |
  s1\< <>\! |
  s2 s2\> |
  s1 |
  s2 s2\! |
  s1 |
  s2.^\ritenuto s4-\tweak to-barline ##f \> |
  
  \barNumberCheck 41
  s4\! s2. |
  s1 * 3 |
  s1\f |
  s1 * 2 |
  s4 s2.\f |
  
  \barNumberCheck 49
  s4 s2.-\tweak to-barline ##f \> |
  s4\! s2. |
  s4 s2\> s4\! |
  s4\< s2.\! |
  s4 s2.-\tweak to-barline ##f \> |
  s4\! s2. |
  s4 s2\> s4\! |
  s4\< s\! s2\p |
  
  \barNumberCheck 57
  s1 |
  s1\> <>\!
  s1 * 3 |
  s1-\tweak to-barline ##f \> |
  s8\! s\< s2. |
  s2 s\! |
  
  \barNumberCheck 65
  s1\f\> |
  s1 |
  s1 <>\! |
  s2 s\< <>\! |
  s4 s\f s2^\rallentando |
  s1 |
  s1\< <>\!
  s1 |
  
  \barNumberCheck 73
  s1\p |
  s1 * 3 |
  s4 s2.^\moltoLegto |
  s1 * 3 |
  
  \barNumberCheck 81
  s1 * 4 |
  s4 s2.\< |
  s2\> \tuplet 3/2 { s4 s8\! } s4 |
  s4 s2.\< |
  s2\> \tuplet 3/2 { s4 s8\! } s4 |
  
  \barNumberCheck 89
  s2. s4\cresc |
  s2. s4\dim |
  s1-\alterBroken Y-offset #'(0 1.5) \edAccel |
  s1 * 5 |
  
  \barNumberCheck 97
  s4\! s2. |
  s2\> s\! |
  s1 |
  s1-\tweak Y-offset -1 \f |
}

tempi = {
  \set Score.tempoHideNote = ##t
  \tempo "Andante" 4 = 76
  \partial 4 s4 |
  s1 * 8 |
  
  \barNumberCheck 9
  s1 * 8 |
  
  \barNumberCheck 17
  s1 * 7 |
  \tempo 4 = 69
  s1 |
  
  \barNumberCheck 25
  s4 \tempo 4 = 76 s2. |
  s1 * 7 |
  
  \barNumberCheck 33
  s1 * 8 |
  
  \barNumberCheck 41
  s1 * 7 |
  s4 \tempo 4 = 108 s2. |
  
  \barNumberCheck 49
  s1 * 8 |
  
  \barNumberCheck 57
  s1 * 8 |
  
  \barNumberCheck 65
  s1 * 4 |
  s2 \tempo 4 = 100 s2 |
  \tempo 4 = 92 s2 \tempo 4 = 84 s2 |
  \tempo 4 = 76 s2 \tempo 4 = 69 s2 |
  \tempo 4 = 63 s2 \tempo 4 = 60 s4. \tempo 4 = 20 s8 |
  
  \barNumberCheck 73
  \tempo 4 = 76
  s1 * 4 |
  s4 \tempo 4 = 100 s2. |
  s1 * 3 |
  
  \barNumberCheck 81
  s1 * 8 |
  
  \barNumberCheck 89
  s1 * 2 |
  \tempo 4 = 108
  s1 |
  \tempo 4 = 116
  s1 |
  \tempo 4 = 126
  s1 |
  \tempo 4 = 138
  s1 |
  \tempo 4 = 152
  s1 |
  \tempo 4 = 168
  s1 |
  
  \barNumberCheck 97
  s1 |
  \tempo 4 = 76
  s1 * 3 |
  \tempo 4 = 40
  s1 |
}

pedal = {
  \partial 4 s4 |
  \repeat unfold 6 { s2\sd s4.\su\sd s8\su | }
  s4\sd s\su s4.\tweak Y-offset -1 \sd s8\su |
  s2\sd s4.\su\sd s8\su |
  
  \barNumberCheck 9
  \repeat unfold 5 { s2\sd s4.\su\sd s8\su | }
  s2\sd s4..\su\sd s16\su |
  s4.\sd s8\su s4.-\tweak Y-offset -1 \sd s8\su |
  s4.\sd s8\su s2 |
  
  \barNumberCheck 17
  s2 s4.\sd s8\su |
  s2\sd s4.\su\sd s8\su |
  s2\sd s4.\su\sd s8\su |
  s2-\tweak Y-offset -1.5 \sd s4.\su\sd s8\su |
  s2\sd s4.\su\sd s8\su |
  s1 * 3 |
  
  \barNumberCheck 25
  \repeat unfold 6 { s2\sd s4.\su\sd s8\su | }
  s4.\sd s8\su s4..-\tweak Y-offset -1 \sd s16\su |
  s4.\sd s8\su s2 |
  
  \barNumberCheck 33
  s2 s4.\sd s8\su |
  s2\sd s4.\su\sd s8\su |
  s2\sd s4.\su\sd s8\su |
  s2-\tweak Y-offset -1 \sd s4.\su\sd s8\su |
  \override SustainPedal.Y-offset = 2
  s2\sd s4.\su\sd s8\su |
  \revert SustainPedal.Y-offset
  s1 * 3 |
  
  \barNumberCheck 41
  \repeat unfold 5 { s2\sd s4.\su\sd s8\su | }
  s2\sd s4..\su\sd s16\su |
  s4.\sd s8\su s4..-\tweak Y-offset -1 \sd s16\su |
  s1 |
  
  \barNumberCheck 49
  s2.\sd s4\su |
  s1 |
  s2.\sd s4\su |
  s1 |
  s2.\sd s4\su |
  s1 |
  s2.\sd s4\su |
  s1 |
  
  \barNumberCheck 57
  \override SustainPedal.Y-offset = 3
  s2\sd s4.\su\sd s8\su |
  \revert SustainPedal.Y-offset
  \repeat unfold 7 { s2\sd s4.\su\sd s8\su | }
  
  \barNumberCheck 65
  s2\sd s4.\su\sd s8\su |
  s2\sd s4.\su\sd s8\su |
  s2\sd s\su\sd | 
  s2.. s8\su |
  s1 * 4 |
  
  \barNumberCheck 73
  \repeat unfold 3 { s2\sd s4.\su\sd s8\su | }
  s4.\sd s8\su s4.-\tweak Y-offset -1 \sd s8\su |
  \repeat unfold 3 { s2\sd s4.\su\sd s8\su | }
  s4.\sd s8\su s4.-\tweak Y-offset -1 \sd s8\su |
  
  \barNumberCheck 81
  s2\sd s4.\su\sd s8\su |
  s2\sd s4.\su\sd s8\su |
  s4\sd s2.\su |
  s1 * 2 |
  s2\sd s\su |
  s2\sd s\su |
  s2..\sd s8\su |
  
  \barNumberCheck 89
  s1 * 3 |
  s1\sd |
  s1 * 4 |
  
  \barNumberCheck 97
  s2 s\su |
}

forceBreaks = {
  % page 1
  \partial 4 s4 |
  s1 * 5 \break
  s1 * 6 \break
  s1 * 5 \break
  s1 * 5 \break
  s1 * 5 \pageBreak
  
  % page 2
  s1 * 5 \break
  \grace { s8 } s1 * 5 \break
  s1 * 6 \break
  s1 * 5 \break
  s1 * 5 \pageBreak
  
  % page 3
  s1 * 5 \break
  s1 * 4 \break
  s1 * 4 \break
  s1 * 4 \break
  s1 * 5 \pageBreak
  
  % page 4
  s1 * 4 \break
  s1 * 4 \break
  s1 * 4 \break
  s1 * 4 \break
  s1 * 4 \break
}

nocturneOneNotes =
\score {
  \header {
    title = "Nocturne One"
    composer = "Frédéric Chopin"
    opus = "Opus 55, No. 1"
  }
  \keepWithTag layout  
  \new PianoStaff \with {
    connectArpeggios = ##t
  } <<
    \new Staff = "upper" \rightHand
    \new Dynamics \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics \pedal
    \new Dynamics \tempi
    \new Devnull \forceBreaks
  >>
  \layout {
    \context {
      \Staff
      \consists Span_arpeggio_engraver
    }
  }
}

\include "articulate.ly"

nocturneOneMidi =
\book {
  \bookOutputName "nocturne-op55-no1"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \pedal \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \pedal \tempi >>
    >>
    \midi {}
  }
}
