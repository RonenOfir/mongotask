class Customer
  include Mongoid::Document
  include SimpleEnum::Mongoid

  field :first_name, type: String
  field :last_name, type: String
  field :mail, type: String
  field :company, type: String
  field :phone, type: String
  field :address, type: String
  field :age, type: Integer
  
  
  as_enum :gender, [:female , :male], map: :string
  # as_enum :status, [:deleted, :active, :disabled], map: :strin

  field :gender_cd, type: Integer

 
  validates_uniqueness_of :mail, :phone
  validates_presence_of :first_name, :last_name, :mail, :phone


 end
