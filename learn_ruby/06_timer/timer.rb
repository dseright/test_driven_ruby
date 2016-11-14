class Timer
  attr_accessor :seconds
  def initialize
  	@seconds = 00
  	@minutes = 00
  	@hours = 00
  end
  def seconds
  	@seconds
  end
  def minutes
  	@minutes
  end
  def hours
  	@hours
  end
  def time_string
  	if @seconds >= 60
  		@minutes = @seconds / 60
  		@seconds = @seconds % 60
  	end
  	if @minutes >= 60
  		@hours = @minutes / 60
  		@minutes = @minutes % 60
  	end
  	@time_string = [@hours.to_s.rjust(2,'0'), @minutes.to_s.rjust(2, '0'), @seconds.to_s.rjust(2, '0')].join(':')
  end
end
