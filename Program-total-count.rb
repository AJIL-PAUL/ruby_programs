#  We have the latest details of a number of respondents for a Practice Question Challenge. We need to evaluate total questions they answered in each section. This value should be set to a newly created total_count key.

#  The section keys(:html, :css and :javascript) will have values at all times.

def set_total_count(respondent_details)
    respondent_details.each do |respondent_detail|
      respondent_detail[:total_count] = except_name(respondent_detail)values.sum
    end
  end
  
  def except_name(respondent_detail)
    respondent_detail.dup.tap{|detail| detail.delete(:name)}
  end