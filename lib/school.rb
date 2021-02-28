class School
  attr_reader :start_time, :hours_in_school_day, :student_names

  def initialize(start_time, hours_in_school_day)
    @start_time = start_time
    @hours_in_school_day = hours_in_school_day
    @student_names = []
  end

  def add_student_name(name)
    @student_names << name
  end

  def end_time
    start_hour = @start_time.split(":")
                            .first
                            .to_i
    "#{(start_hour + @hours_in_school_day)}:00"
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
    end_hour = end_time.split(":").first.to_i
    "#{((end_hour - 12) if end_hour > 12)}:00"
  end
end
