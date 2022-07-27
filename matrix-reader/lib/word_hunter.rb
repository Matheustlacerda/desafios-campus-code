class WordHunter
  def hunt(matrix, words)
    words.split(' ').select do |word|
      matrix_words(matrix).any? do |matrix_word|
        matrix_word.include?(word) || matrix_word.include?(word.reverse)
      end
    end.sort.join(' ')
  end

  private

  def matrix_words(matrix)
    @matrix_words ||= [
      by_rows(matrix),
      by_columns(matrix),
      by_transversal(matrix)
    ].flatten
  end

  def by_rows(matrix)
    matrix.map(&:join)
  end

  def by_columns(matrix)
    rows_size = matrix.size - 1
    (0..rows_size).to_a.map do |row_index|
      (0..rows_size).to_a.map do |column_index|
        matrix[column_index][row_index]
      end.join
    end
  end

    def by_transversal(matrix)
    rows_size = matrix.size - 1
    [
      (0..rows_size).to_a.map do |row_index|
        matrix[row_index][row_index]
      end.join,
      (0..rows_size).to_a.map do |row_index|
        matrix[row_index][rows_size - row_index]
      end.join
    ]
  end
end
