class RnaSplicer
  def splice(rna, introns)
    introns.each do |intron|
      rna.slice!(intron)
    end

    rna
  end
end
