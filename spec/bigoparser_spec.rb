require 'spec_helper'
require 'bigoparser.rb'

# BigOParser Tests
module BigOParser
  describe self do
    describe 'get_line_from_file' do
      it 'should return the correct line number' do
        file = double('file')

        line1 = 'my name is mike'
        line2 = 'what is your name'
        line3 = 'jack was here'

        data = <<-data
          #{line1}
          #{line2}
          #{line3}
        data

        allow(File).to receive(:readlines)
          .with(file)
          .and_return(StringIO.new(data).readlines)
        expect(BigOParser.get_line_from_file(file, 2)).to eq(line2)
      end
    end

    describe 'get_word_from_line' do
      it 'should return the correct word' do
        line_content = 'my name is mike'
        word_number = 2
        expect(BigOParser.get_word_from_line(line_content, word_number)).to eq('name')
      end
    end
  end
end
