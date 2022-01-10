class LotDecorator < Draper::Decorator
  delegate_all

  def end_date
    object.end_date.strftime('%d/%m/%Y')
  end
end
