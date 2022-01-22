# Welcome to Sonic Pi
use_debug false
load_samples [:drum_heavy_kick, :drum_snare_soft]


live_loop :drums do
  puts "slow drums"
  6.times do
    sample :drum_heavy_kick, rate: 0.8, amp:1
    sleep 0.5
  end
  
  puts "fast drums"
  8.times do
    sample :drum_heavy_kick, rate: 0.8, amp:1
    sleep 0.125
  end
end

live_loop :synths, delay: 6 do
  puts "how does it feel?"
  use_synth :mod_saw
  use_synth_defaults amp: 0.2, attack: 0, sustain: 1, release: 0.25, mod_range: 12, mod_phase: 0.5, mod_invert_wave: 1
  notes = (ring :F)
  notes.each do |n|
    tick
    play note(n, octave: 1), cutoff: (line 90, 130, steps: 16).look
    play note(n, octave: 2), cutoff: (line 90, 130, steps: 32).look
    sleep 1
  end
end

live_loop :snare, delay: 5 do
  sample :drum_snare_soft
  sleep 1
end

live_loop :own do
  sample "/Users/berndjonas/Downloads/ownyourshift.wav", amp:3
  sleep 5
  sample "/Users/berndjonas/Downloads/Winforourcustomersfirst.wav", amp:3
  sleep 5
  sample "/Users/berndjonas/Downloads/neverstopchallenging.wav", amp:3
  sleep 5
end


