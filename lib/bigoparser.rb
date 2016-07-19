# module BigOParser
module BigOParser
  class << self
    ARRAY_INDEX_OFFSET = 1

    def run(file, line_number, word_number)
      line_content = get_line_from_file(file, line_number)
      display_not_found('line', line_number) if line_content.nil?
      extracted_word = get_word_from_line(line_content, word_number)
      display_not_found('word', word_number) if extracted_word.nil?
      display_extracted_word(extracted_word)
    end

    # read file and remove unwanted characters
    def get_line_from_file(file, line)
      File.readlines(file)[line - ARRAY_INDEX_OFFSET]
    end

    def get_word_from_line(line_content, word)
      line_content.split(' ')[word - ARRAY_INDEX_OFFSET]
    end

    def display_extracted_word(word)
      puts word
    end

    def display_not_found(type, number)
      abort("#{type} #{number} was not found!")
    end
  end
end
