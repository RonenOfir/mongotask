class Customer
  include Mongoid::Document
  field :first_name, type: String
  field :last_name, type: String
  field :mail, type: String
  field :company, type: String
  field :phone, type: String
  field :address, type: String
  field :age, type: Integer

  # index({mail:1}, {unique:true, name:"mail_index"})
  # index({phone:1}, {unique:true, name:"phone_index"})

  validates_uniqueness_of :mail, :phone

  validates_presence_of :first_name, :last_name, :mail, :phone


 end
