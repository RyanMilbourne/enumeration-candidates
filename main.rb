# This is the main entrypoint into the program
# It requires the other files/gems that it needs
require 'pp'
require './candidates'
require './filters'

## Your test code can go here

# pp @candidates

find(15)
find(51)

experienced?(@candidates[0])
experienced?(@candidates[1])

qualified_candidates(@candidates)

ordered_by_qualifications(@candidates)
