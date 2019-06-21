class KeepAlive
  @directories : Array(String)

  def initialize(directories : Array(String))
    @directories = directories
  end

  def write_file
    @directories.each do |directory|
      if (File.exists? "#{directory}/KeepAlive.txt")
        File.delete("#{directory}/KeepAlive.txt")
      end
      file = File.new("#{directory}/KeepAlive.txt", "wb")
      file.print "0"
      file.close
    end
  end
end
