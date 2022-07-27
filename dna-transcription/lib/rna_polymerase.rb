class RnaPolymerase
  def transcribe(dna, beginning, ending)
    if dna.index(beginning) != nil && dna.rindex(ending) != nil && beginning != '' && ending != ''
      start = dna.index(beginning) + (beginning.length)
      finish = dna.rindex(ending) - 1
    else
      return "Sequence not found"
    end

    transcription_section = dna.slice(start..finish)

    dna_to_rna(transcription_section)
  end

  def dna_to_rna(dna)
    rna = ''
    conversion = {'A' => 'U', 'T' => 'A', 'C' => 'G', 'G' => 'C' }
    dna.each_char { |nucleotides| rna += conversion[nucleotides] }
    rna
  end
end
