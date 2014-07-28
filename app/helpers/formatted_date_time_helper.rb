module FormattedDateTimeHelper
  def timeFormat(time)
  	time.strftime('%l:%M %p')
  end

  def dateFormat(date)
  	date.strftime('%m/%d/%Y')
  end
end
