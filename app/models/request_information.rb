# == Schema Information
# Schema version: 20110513130439
#
# Table name: request_informations
#
#  id          :integer         not null, primary key
#  request_id  :string(255)
#  opentok_id  :string
#  status      :boolean
#  created_at  :datetime
#  updated_at  :datetime
#
class RequestInformation < ActiveRecord::Base

  def self.addRequestInfo(request_id, opentok_id)
    RequestInformation.create!( :request_id => request_id, :opentok_id => opentok_id, :status=>false )
  end
  
  def self.getsid request_id
    request_info = RequestInformation.find_by_request_id request_id
    request_info.opentok_id
  end
end
