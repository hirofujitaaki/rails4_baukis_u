require 'rails_helper'

describe StaffMember do
  describe '#password=' do
    it 'returns a string of 60 characters if a string is given.' do
      member = StaffMember.new
      member.password = 'baukis'
      expect(member.hashed_password).to be_kind_of(String)
      expect(member.hashed_password.size).to eq(60)
    end

    example 'hashed_password returns nil if nil is give.' do
      member = StaffMember.new(hashed_password: 'x')
      member.password = nil
      expect(member.hashed_password).to be_nil
    end
  end
end
