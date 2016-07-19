require 'clamp'
require 'bigoparser'

module BigOParser
  class Cli < Clamp::Command
    subcommand 'extract', 'extract a word from an input file...' do
      option ["-f", "--file"], "FILE", "required: Input file", :required => true
      option ["-l", "--line"], "LINE", "required: Line number to look at", :required => true
      option ["-w", "--word"], "WORD", "required: Word number to return", :required => true

      def execute
        BigOParser.run(file, line.to_i, word.to_i)
      end
    end
  end
end
