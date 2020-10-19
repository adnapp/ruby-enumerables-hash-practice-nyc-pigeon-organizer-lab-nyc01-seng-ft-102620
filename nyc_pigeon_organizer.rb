require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
   pigeon_list = {}
  final_results = data.each_with_object({}) do |(key_cgl,value_cgl), final_array|
    value_cgl.each do | key_detail, value_detail|
      value_detail.each do |inner_array|
        if !final_array[inner_array]  #if there is no final array with this name,  we want to create a value, empty hash
          final_array[inner_array] = {}
          binding.pry
        end
        if !final_array[inner_array][key_cgl]
          final_array[inner_array][key_cgl] = []
        end
        final_array[inner_array][key_cgl].push(key_detail.to_s)
      end
    end
  end
end
