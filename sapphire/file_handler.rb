class FileHandler
  def check_if_file_exists?
    filename = __FILE__
    File.exists?(filename)
  end
end
puts FileHandler.new.check_if_file_exists?
puts __FILE__