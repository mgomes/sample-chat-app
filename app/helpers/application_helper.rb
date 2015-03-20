module ApplicationHelper

  def render_count(number)
    number_to_human(number, delimiter: ',', format: "%n%u", units: { thousand: 'K', million: 'M' })
  end

end
