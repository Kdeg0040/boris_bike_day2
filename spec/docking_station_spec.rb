require 'docking_station'

describe DockingStation do
   it { is_expected.to respond_to('release_bike') }

   # describe '#release_bike' do
   #   it 'releases a bike' do
   #     bike = Bike.new
   #     subject.dock(bike)
   #
   #     expect(subject.release_bike).to eq bike
   #   end
   it 'docking station to release bike' do
     docking_station = DockingStation.new
     bike = Bike.new
     docking_station.dock(bike)
     expect(docking_station.release_bike).to be_instance_of Bike
   end

   it 'docking station to expect bike to be working' do

     expect(Bike.new).to be_working
   end

   it { is_expected.to respond_to('dock').with(1).argument }

   it 'docks something' do
     bike = Bike.new
     expect(subject.dock(bike)).to eq bike
   end

   it { is_expected.to respond_to :bike }

   it 'returns docked bike' do
     bike = Bike.new
     subject.dock(bike)
     expect(subject.bike).to eq bike
   end
   it 'raises an error when there are no bikes available' do
     expect { subject.release_bike }.to raise_error 'No bikes available'
   end
end
# it 'docking a bike adds the bike to docking station record' do
#  docking_station = DockingStation.new
#  bike = Bike.new
#  docked_bike = docking_station.dock(bike)
#  expect(@storage).to include(docked_bike)
# => end
