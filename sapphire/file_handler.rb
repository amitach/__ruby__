class FileHandler
  def check_if_file_exists?
    filename = __FILE__
    call_other_methods_on_file(filename) if File.exists?(filename)
  end

  def call_other_methods_on_file(fn)
    puts "Basename: #{File.basename(fn)}"
    puts "expand_path: #{File.expand_path(fn)}"
    puts "dirname: #{File.dirname(fn)}"
    puts "extname: #{File.extname(fn)}"
    puts "mtime: #{File.mtime(fn)}"
    puts "size: #{File.size(fn)} bytes"
  end
end
puts FileHandler.new.check_if_file_exists?
puts __FILE__