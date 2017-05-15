require "pry"
class MorseCodeInt

  def morse_code()
    morse = {'a' => '.-',
              'b' => '-...',
              'c' => '-.-.',
              'd' =>'-..',
              'e' => '.',
              'f' => '..-.',
              'g' => '--.',
              'h' => '....',
              'i' => '..',
              'j' => '.---',
              'k' => '-.-',
              'l' => '.-..',
              'm' => '--',
              'n' => '-.',
              'o' => '---',
              'p' => '.--.',
              'q' => '--.-',
              'r' => '.-.',
              's' => '...',
              't' => '-',
              'u' => '..-',
              'v' => '...-',
              'w' => '.--',
              'x' => '-..-',
              'y' => '-.--',
              'z' => '--..'}

        morse.invert
    end

    def read_morse_code(input, morse)
      code_matches = Array.new
      matches = Array.new
      translation_list = Array.new

      if input.nil?
        return translation_list << ""
      end
    code_matches = morse.collect {|code, letter| input.match('^' + Regexp.escape(code))}
    code_matches.delete(nil)

    code_matches.each do | code_match|
    temp_input = String.new(input)
    binding.pry 

      if temp_input == code_match.to_s
        translation_list << morse[code_match.to_s]
      else
        matches = read_morse_code(temp_input.gsub!(Regexp.new('^' + Regexp.escape(code_match.to_s)), ''), morse)
        matches.each do |match|
          translation_list << morse[code_match.to_s] + match
        end
      end

  translation_list.delete(nil)
  return translation_list
  morse = morse_code
  translations = read_morse_code(String.new(ARGV[0]), morse)

  translations.each do |translation|
    puts translation
  end
end

end
end

morse_code.MorseCodeInt("Today is ging to be a good day")
