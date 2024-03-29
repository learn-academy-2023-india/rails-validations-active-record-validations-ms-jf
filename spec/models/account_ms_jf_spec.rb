require 'rails_helper'

RSpec.describe AccountMsJf, type: :model do
  it 'is not valid without a username' do
  a = AccountMsJf.create(
    username: nil,
    password: 123,
    email: 'thanksjimmy'
  )
  expect(a.errors[:username]).to_not be_empty
  end
  it 'is not valid if username is less than five characters long' do
    a = AccountMsJf.create(
      username: 'abcd',
      password: 246,
      email: 'thanksjimmy'
    )
    expect(a.errors[:username]).to_not be_empty
  end
  it 'is not valid if username is not unique' do
    existing_user = AccountMsJf.create(
      username: 'existing_user',
      password: 1354567,
      email: 'existing@example.com'
    )

    a = AccountMsJf.create(
      username: 'existing_user', 
      password: 78945467,
      email: 'newuser@example.com'
    )
    expect(a.errors[:username]).to_not be_empty
  end
end
RSpec.describe AccountMsJf, type: :model do
  it 'is not valid without a password' do
  b = AccountMsJf.create(
    username: 'cdefg',
    password: nil,
    email: 'ywmckenley'
  )
  expect(b.errors[:password]).to_not be_empty
  end
  it 'is not valid if password is not unique' do
    existing_user = AccountMsJf.create(
      username: 'ggtehy',
      password: 456605,
      email: 'existing@example.com'
    )

    b = AccountMsJf.create(
      username: 'hergfd', 
      password: 456605,
      email: 'newuser@example.com'
    )
    expect(b.errors[:password]).to_not be_empty
  end
  it 'is not valid if password is less than six characters long' do
    b = AccountMsJf.create(
      username: 'abcde',
      password: 23460,
      email: 'thanksjimmy1'
    )
    expect(b.errors[:password]).to_not be_empty
  end
end
RSpec.describe AccountMsJf, type: :model do
  it 'is not valid without a email' do
  c = AccountMsJf.create(
    username: 'certgf',
    password: 986345,
    email: nil
  )
  expect(c.errors[:email]).to_not be_empty
  end
end
