class Windows

  BROKEN = 'X'
  FIXED = 'O'

  def execute(actions) 
    actions
      .split(/\n/)
      .map { |event| build_results(event) }
      .insert(0, [])
      .inject { |last_targets, event| compare(last_targets, event) }
      .uniq
      .count
  end

  def build_results(event)
    init_row, init_column, final_row, final_column, action = event.scan(/\d|\w/)

    targets = (init_row..final_row).to_a.map do |row|
      (init_column..final_column).to_a.map{|column| [row,column] }
    end.flatten(1)

    [action.eql?(BROKEN) ? :+ : :-, targets]
  end

  def compare(last_targets, event)
    action, targets = event

    last_targets.send(action, targets)
    
  end
end
