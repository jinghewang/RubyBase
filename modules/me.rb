$LOAD_PATH.unshift(File.dirname(__FILE__)) unless $LOAD_PATH.include?(File.dirname(__FILE__))

module Me

  PI = 3.14

  def self.get_module_name
    return 'Me'
  end

  def hello(name='wjh')
    puts "hello #{name}"
  end

  def get_file_name(name)
    return File.expand_path(name, __FILE__)
  end


  def ppp(*args)
    for item in args
      print "#{item}\t"
    end
    print "\n"
  end

end