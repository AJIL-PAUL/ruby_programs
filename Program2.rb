# Finish the function definition below.

# Given an object of department and newsletters, the function should return an alphabetically sorted single dimensional array of newsletters of the given departments in the ‘department_names_list’ array given as input.

# Note:

# The department_newsletter_list object may not have all the department names given in department_names_list array.
# If none of departments specified in department_names_list is present in department_newsletter_list, then return false.

def newsletter_list(department_newsletter_list, department_names_list)
    list = []
    department_names_list.each do |department_name|
      if department_newsletter_list.has_key? department_name
        list << department_newsletter_list[department_name]
      end
    end
  
    list.empty? ? false : list.flatten.sort
  end
  