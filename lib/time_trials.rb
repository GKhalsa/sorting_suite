class TimeTrials
  def for_loop
    start = Time.new.to_f
    for i in 0..9999999
      i
    end
    finish = Time.new.to_f
    puts time = (finish - start)
    #averages .452
  end

  def while_loop
    start = Time.new.to_f
    i = 0
    while i < 9999999
      i += 1
    end
    finish = Time.new.to_f
    puts time = (finish - start)
    #averages .188
  end

  def dot_each
    start = Time.new.to_f
    (0..9999999).each do |i|
      i
    end
    finish = Time.new.to_f
    puts time = (finish - start)
    #averages .430
  end

  def upto
    start = Time.new.to_f
    0.upto 9999999 do |i|
      i
    end
    finish = Time.new.to_f
    puts time = (finish - start)
    #averages .432
  end

  def times_do
    start = Time.new.to_f
    9999999.times do |i|
      i
    end
    finish = Time.new.to_f
    puts time = (finish - start)
    #varies wildy from .410 - .444
  end
end

time = TimeTrials.new
time.times_do
