##| Bjorn Ludwig


quarter = 1
eighth = 0.5
sixteenth = 0.25
triplet = 0.33333333333333333

##| use_synth :prophet
##| use_synth :dsaw
##| use_synth :fm
##| use_synth :tb303
##| use_synth :pulse





##| define :intro do
##|   use_synth :saw
##|   my_note = chord(:c5, :minor7).choose
##|   play my_note, release: 2*quarter
##|   sleep quarter
##|   my_note = chord(:c5, :sus4).choose
##|   play my_note, release: 2*quarter
##|   sleep quarter
##| end



##| intro



live_loop :first do
  use_synth :saw
  
  my_note = chord(:c5, :minor7).choose
  amp_level = [1,2].choose
  
  play my_note, amp: amp_level, release: 2*quarter
  sleep [quarter, 2*quarter, 3*quarter].choose
  
  my_note = chord(:c4, :minor7).choose
  amp_level = [1,2].choose
  
  play my_note, amp: amp_level, release: 2*quarter
  sleep [quarter, 2*quarter, 3*quarter].choose
end


live_loop :second do
  use_synth :tb303
  my_note = chord(:c5, :minor7).choose
  amp_level = [1,2].choose
  
  play my_note, amp: amp_level, release: eighth
  sleep eighth
end


live_loop :third do
  use_synth :tb303
  my_note = chord(:c5, :minor7).choose
  amp_level = [1,2].choose
  
  play my_note, amp: amp_level, release: 2*triplet
  sleep 2*triplet
end


live_loop :fourth do
  use_synth :tb303
  my_note = chord(:c5, :minor7).choose
  amp_level = [1,2].choose
  
  play my_note, amp: amp_level, release: triplet
  sleep triplet
end

