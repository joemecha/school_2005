class School
  attr_reader :start_time,
              :hours_in_school_day,
              :student_names
  def initialize(start_time, hours_in_school_day)
    @start_time = start_time
    @hours_in_school_day = hours_in_school_day
    @student_names = []
  end

  def start_time
    @start_time
  end

  def add_student_name(name)
    @student_names << name
  end

  def end_time
    final_time = @start_time.to_i + hours_in_school_day
    "#{final_time}:00"
  end

  def is_full_time?
    @hours_in_school_day > 4
  end

  def standard_student_names
    @student_names.map do |name|
      name.capitalize
    end
  end

  def convert_end_time_to_clock_time
    time = end_time.to_i
    return "#{(time - 12)}:00" if time > 12
    end_time
  end


end
