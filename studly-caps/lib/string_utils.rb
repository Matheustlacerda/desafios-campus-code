class StringUtils
  def wavefy(string)
    new_string = ''
    string.split('').each_with_index do |letter, position|
      new_string += position % 2 == 0 ? letter.downcase : letter.upcase
    end
    new_string
  end
end
