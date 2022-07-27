class Ribosome
  def translate(rna_messenger)
    amino_acid = {
        'GCC' => 'aa8-', 'GGU' => 'aa7-', 'CCA' => 'aa6-', 'AUC' => 'aa5-',
        'AAA' => 'aa4-', 'UUU' => 'aa3-', 'AAC' => 'aa2-', 'UCA' => 'aa1-'
    }

    translate = rna_messenger.tr('AUCG', 'UAGC').scan(/.{3}/).join(' ')

    amino_acid.each do |unstranscripted, transcripted|
      translate = translate.gsub(unstranscripted, transcripted)
    end

    translate.split(' ').each do |item|
      return 'Translation aborted' unless item.include? '-'
    end

    translate[0..translate.size - 2].delete(' ')
  end
end
