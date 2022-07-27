class Spirardigrada
  def devour(matrix)

        return if matrix.empty?
        [matrix.shift,
          devour(matrix.transpose.reverse)
        ].join(' ').strip
    
  end
end
