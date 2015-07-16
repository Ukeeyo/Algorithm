current_folder = File.expand_path('./')
require "#{current_folder}/merge_sort.rb"
require "#{current_folder}/inversion_count.rb"

describe '#merge_sort' do
  it 'return sorted array' do
    random_array = []
    10.times do
     random_array << rand(100)
   end
   expect(merge_sort(random_array)).to eq random_array.sort
 end
end

describe 'Sorter' do
  it 'return sorted array' do
    random_array = []
    10.times do
     random_array << rand(100)
   end
   sorter = Sorter.new(random_array)
   expect(sorter.sort).to eq random_array.sort
 end
 it 'returns accurate number of inversions' do
  sorter = Sorter.new([5,4,3,2,1])
  sorter.sort
  expect(sorter.inversions).to eq 10
 end
end