class Helper

  def self.require_file(name)
    return File.dirname(__FILE__) + name
  end

  def self.out_var(*params)
    for param in params
      puts "value:#{param} type:#{param.class}"
    end
  end

  # @param String title
  # @param String prechar
  # @param String sufchar
  # @param Integer prelength
  # @param Integer suflength
  # @return String
  def self.dividing_line(title, prechar='*', sufchar='*', prelength=20, suflength=20)
    msg = prechar*prelength + title + sufchar*suflength
    puts msg
    return msg
  end


  # @param String name
  def test(name)
    puts name
  end

end