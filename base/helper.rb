class Helper

  def self.require_file(name)
    return File.dirname(__FILE__) + name
  end

  def self.out_var(*params)
    for param in params
      puts "value:#{param} type:#{param.class}"
    end
  end

end