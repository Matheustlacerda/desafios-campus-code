class PasswordValidator
  def valid_passwords(list)
    list.map do |item|
      verifier = item[5]
      min = item[0].to_i
      max = item[3].to_i
      psswd = item[7..-1]
      quantidade = psswd.scan(/#{verifier}/).count
    
      next unless quantidade >= min && quantidade <= max
      psswd
    
    end.compact
  end
end

