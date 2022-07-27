class DoubleStrand
  def complementary_strip(strip)
    nucleotides = {
      'T' => 'A',
      'A' => 'T',
      'G' => 'C',
      'C' => 'G'
    }
    strip.gsub!(/\w/, nucleotides )
  end
end
