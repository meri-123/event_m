class  Schedule< ApplicationRecord
    validates :name, presence: true
  validates :phn_no, presence: true, length: { minimum: 10 }
  validates :start_date, presence: true
  validates :end_date, presence: true 

end
