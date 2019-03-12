class PigLatinizer

  def piglatinize(text)
    vowels = ["a", "e", "i", "o", "u"]
    other_letters = ["l", "n", "r", "h", "p", "k", "t"]
    array = text.split
    array.map do |word|
      first_letter = word.chr
      second_letter = word[1]
      third_letter = word[2]

      if vowels.include?(first_letter.downcase)
        final_string = word + "way"

      else
        pig_add_on = "ay"

        if second_letter != nil && other_letters.include?(second_letter.downcase)
          first_letter += second_letter

          if third_letter != nil && other_letters.include?(third_letter.downcase)
            first_letter += third_letter
            rest_of_string = word[3..-1]
          else
            rest_of_string = word[2..-1]
          end

        else
          rest_of_string = word[1..-1]
        end

        final_string = rest_of_string + first_letter + pig_add_on
      end

    end.join(" ")
  end

end
