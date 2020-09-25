class Robot
  attr_reader :name
  @@current_serial = "RO807"

  def initialize(name = @@current_serial)
    @name = name
    increment_serial_num
  end

  def reset
    @name = @@current_serial
    increment_serial_num
  end

  def increment_serial_num
    new_num = @@current_serial.split('RO').last.to_i + 1
    @@current_serial = "RO#{new_num}"
  end

end