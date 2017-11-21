def starts_with_a_vowel?(word)
  word.to_s.scan(/\A[aeiouAEIOU]/).size > 0

end

def words_starting_with_un_and_ending_with_ing(text)
  text.scan(/un+\w+ing*/)
end

def words_five_letters_long(text)
  text_array = text.split(/ /)
  new_array = []
  text_array.each do |i|
    if i.to_s.length == 5
    new_array << i
    end
  end
  new_array
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  if text.scan(/^[A-Z]/).size > 0
    if text.scan(/[.]\z/).size > 0
      true
    else
      false
    end
  else
    false
  end
end

def valid_phone_number?(phone)
  phone.scan(/[0-9]/).size == 10
end
