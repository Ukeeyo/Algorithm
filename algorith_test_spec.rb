current_folder = File.expand_path('./')
require "#{current_folder}/merge_sort.rb"

describe '#merge_sort' do
  it 'return sorted array' do

    random_array = []
    10.times do
     random_array << rand(100)
   end

   expect(merge_sort(random_array)).to eq random_array.sort
 end
end