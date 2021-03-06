live_loop :random_bd do
  if one_in (3)
    sample :bd_haus,
           rate: choose([1, 2, 4]), amp: 1.5
  end
  sleep 0.125
end

live_loop :drums do
  sample :bd_haus, cutoff: 80, amp: 2.5
  sleep 0.25
  if one_in (4)
    4.times do
      sample :drum_cymbal_closed, rate: 1.2
      sleep 0.25/4.0
    end
  else
    2.times do
      sample :drum_cymbal_closed, rate: 1.2
      sleep 0.25/2.0
    end
  end
end
