require 'dirge'

$LOAD_PATH.instance_eval do
  def find_file(file)
    find_all_files(file){|f| return f}
    nil
  end

  def find_all_files(file)
    inject([]){|ary, path| 
      target = File.expand_path(file, path)
      if File.readable?(target)
        ary << target
        yield target if block_given?
      end
      ary
    }
  end

  def add_current
    self << __DIR_REL__(caller.first)
  end

  def add_current!
    self.unshift(__DIR_REL__(caller.first))
  end

end

module Kernel
  def require_all(req)
    $LOAD_PATH.find_all_files(File.extname(req) == '.rb' ? req : "#{req}.rb") { |file| require file }
  end
end