# module BigOParser
module BigOParser
  class << self
    ARRAY_INDEX_OFFSET = 1

    def run(file, line_number, word_number)
      line_content = get_line_from_file(file, line_number)
      extracted_word = get_word_from_line(line_content, word_number)
      display_extracted_word(extracted_word)
    end

    # read file and remove unwanted characters
    def get_line_from_file(file, line_number)
      line = File.readlines(file)[line_number - ARRAY_INDEX_OFFSET]
      display_not_found('line', line_number) if line.nil?
      line.strip
    end

    def get_word_from_line(line_content, word_number)
      word = line_content.split(' ')[word_number - ARRAY_INDEX_OFFSET]
      display_not_found('word', word_number) if word.nil?
      word
    end

    def display_extracted_word(word)
      puts word
    end

    def display_not_found(type, number)
      abort("#{type} #{number} was not found!")
    end
  end
end
