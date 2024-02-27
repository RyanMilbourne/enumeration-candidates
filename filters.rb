# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

def find(id)
  #Find candidate with matching id
  found_candidate = @candidates.find { |candidate| candidate[:id] == id}

  #Response if found_candidate is true / false
  if found_candidate
    puts "id #{id} found. #{found_candidate}"
  else
    puts "id #{id} not found. Candidate does not exist"
  end

end

def experienced?(candidate)
  if candidate[:years_of_experience] >= 2
    puts "This candidate is experienced: They have #{candidate[:years_of_experience]} years of experience"
  else
    puts "This candidate does not pass the years-of-experience requirement"
  end
end

def qualified_candidates(candidates)
  # loop through each candidate
  candidates.each do |candidate|
    #check params
    if
      candidate[:years_of_experience] > 0 &&
      candidate[:github_points] >= 100 &&
      (candidate[:languages].include?('Ruby') || candidate[:languages].include?('Python')) &&
      candidate[:date_applied].day <= 15

      # print candidate
      pp candidate

    end
  end
end

  # More methods will go below
def ordered_by_qualifications(candidates)
  # store sorted candidates in new variable
  sorted_candidates = candidates.sort_by do |candidate|
    [-candidate[:years_of_experience], -candidate[:github_points]] #sort hi/low from years_of_experience then github_points if matching years
  end

  # print sorted candidates
  pp sorted_candidates
end
