8.times do
  use_synth:fm
  play 33, amp: 3
  play 31, amp: 3
  play 28, amp: 3
  sleep 0.5
  play 33, amp: 3, release: 0.5
  play 31, amp: 3, release: 0.5
  play 28, amp: 3, release: 0.5
  sleep 0.5
  play 33, amp: 3
  play 31, amp: 3
  play 28, amp: 3
  use_synth:dtri
  play 40, amp: 1, attack: 0.1, decay: 1, release: 0.7
  play 35, amp: 1, attack: 0.1, decay: 0.1, release: 0.7
  play 38, amp: 1, attack: 0.1, decay: 0.1, release: 0.7
  sleep 0.5
  use_synth:fm
  play 33, amp: 3
  play 31, amp: 3
  play 28, amp: 3
  sleep 0.5
end