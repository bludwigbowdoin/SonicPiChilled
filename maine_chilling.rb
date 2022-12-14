##| Bjorn Ludwig
##| CSCI 3725
##| M8: Hakuna Fermata


quarter = 1
eighth = 0.5
sixteenth = 0.25
triplet = 0.33333333333333333

amp_low = 0.4           ##| low volume level
amp_med = 0.5           ##| medium volume level
amp_high = 0.6          ##| high volume level

slow_attack = 1

##| NOTE: The following six chord options sound nice in progression

main_chord = chord(:c4, :minor7)
main_chord_8va = chord(:c5, :minor7)

##| main_chord = chord(:f4, :m7)
##| main_chord_8va = chord(:f5, :m7)

##| main_chord = chord(:c4, :m)
##| main_chord_8va = chord(:c5, :m)

##| main_chord = chord(:ab4, :maj11)
##| main_chord_8va = chord(:ab4, :maj11)

##| main_chord = chord(:g4, :major7)
##| main_chord_8va = chord(:g4, :major7)

##| main_chord = chord(:c4, :minor7)
##| main_chord_8va = chord(:c4, :minor7)



##| NOTE: The following are more rambunctious chords (not for the faint of heart)
##| main_chord = chord(:g4, :dom7)
##| main_chord_8va = chord(:g5, :dom7)

##| main_chord = chord(:d4, :dom7)
##| main_chord_8va = chord(:d5, :dom7)

##| main_chord = chord(:f4, :dom7)
##| main_chord_8va = chord(:f5, :dom7)


##| A 25 second long ocean wave sample 
sample "/Users/bjornludwig/Desktop/CompCreat/SonicPiChilled/ocean-wave.wav", rate: -0.66


live_loop :first do
  ##| stop

  use_synth :saw
  my_note = main_chord_8va.choose
  amp_level = [amp_low, amp_med].choose
  
  play my_note, amp: amp_level, attack: slow_attack, release: 3*quarter - slow_attack
  sleep [quarter, 2*quarter].choose
  
  my_note = main_chord
  amp_level = [amp_med, amp_high].choose
  
  play my_note, amp: amp_level, attack: slow_attack, release: 3*quarter - slow_attack
  sleep [quarter, 2*quarter, 3*quarter].choose
end


live_loop :second do
  ##| stop
  
  use_synth :tb303
  my_note = main_chord_8va.choose
  amp_level = [amp_low,amp_med].choose
  
  play my_note, amp: amp_level, release: eighth
  sleep [eighth, 2*eighth, 3*eighth].choose
end


live_loop :third do
  ##| stop
  
  use_synth :tb303
  my_note = main_chord_8va.choose
  amp_level = [amp_low,amp_med].choose
  
  play my_note, amp: amp_level, release: 4*triplet
  sleep 2*triplet
end


live_loop :fourth do
  ##| stop
  
  use_synth :tb303
  my_note = main_chord_8va.choose
  amp_level = [amp_low,amp_med].choose
  
  play my_note, amp: amp_level, release: 2*triplet
  sleep triplet
end

