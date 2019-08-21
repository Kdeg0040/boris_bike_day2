require 'docking_station'

describe DockingStation do
   it { is_expected.to respond_to('release_bike') }

   it 'docking station to release bike' do
     docking_station = DockingStation.new
     expect(docking_station.release_bike).to be_instance_of Bike
   end

  end

#
# do
#   expect(DockingStation).to
