require 'humanize'
class Read
    def demo
      infile = "file.csv"
      outfile = "output.csv"
      File.open(outfile, 'w') do |out|
        out << File.open(infile).read.gsub(/\d+/) { |r| r.to_i.humanize }
      end  
      puts "Output.csv file created and numbers chanded into words"
   end
end
fileWrite = Read.new
fileWrite.demo
