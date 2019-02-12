def get_first_name_of_season_winner(data, season)
    string = ""
     data.each do |key,value|
        if key.to_s == season
          value.each do |ele|
            ele.each do |key2,value2|
              if key2 == "status"
                if value2 == "Winner"
                  ele.each do |key3,value3|
                    if key3 == "name"
                      value3 = value3.split(" ")
                      string = value3[0]
                    end
                  end
                end
              end
            end
          end
        end
     end
    string
  end
# end

# p get_first_name_of_season_winner(data, "season 15")


def get_contestant_name(data, occupation)
    # name = ""
    data.each do |key,value|
      value.each do |ele|
        ele.each do |key2,value2|
          if value2 == occupation
            ele.each do |key3,value3|
              if key3 == "name"
                return value3
              end
            end
          end
        end
      end
    end
end
#
# get_contestant_name(data, "Cruise Ship Singer")
#
def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |key,value|
    value.each do |ele|
      ele.each do |key2,value2|
        if value2 == hometown
          count += 1
        end
      end
    end
  end
 count
end

def get_occupation(data, hometown)
  array = []
  data.each do |key,value|
    value.each do |ele|
      ele.each do |key2,value2|
        if key2 == "hometown"
          if value2 == hometown
             ele.each do |key3,value3|
               if key3 == "occupation"
                 array << value3
               end
             end
          end
        end
      end
    end
  end
  array[0]
end

# p get_occupation(data,"Cranston, Rhode Island")

def get_average_age_for_season(data, season)
    num = 0
    ages = 0
    count = 0
    data.each do |key,value|
      if key.to_s == season
        value.each do |ele|
          ele.each do |key2,value2|
            if key2 == "age"
              ages += value2.to_i
              count += 1
            end
          end
        end
      end
    end
    num = ages.to_f/count
    num.round
end

# get_average_age_for_season(data,"season 10")
