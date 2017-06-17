module AnalysisHelper
  def between_time
    year = (params[:year].blank? ? Date.today.year.to_s : params[:year]) + '年'
    month = (params[:month].blank? ? '' : (params[:month] + '月'))
    "在#{year}#{month}之間"
  end
end
