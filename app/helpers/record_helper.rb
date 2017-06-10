module RecordHelper
  def type_css_for(record)
    case record.type
    when 'Income'
      'info'
    when 'Expense'
      'warning'
    else
      'default'
    end
  end
end
