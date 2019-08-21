require 'docking_station'

describe DockingStation do
   it { is_expected.to respond_to('release_bike') }

   it 'docking station to release bike' do
     docking_station = DockingStation.new
     expect(docking_station.release_bike).to be_instance_of Bike
   end

   it 'docking station to expect bike to be working' do
     bike = Bike.new
     expect(bike).to be_working
   end


   it { is_expected.to respond_to('dock').with(1).argument }

end

#
# do
#   expect(DockingStation).to
