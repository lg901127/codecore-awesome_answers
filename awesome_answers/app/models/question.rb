class Question < ActiveRecord::Base
  #has_many helps us set up the assciation between question model and the answer model. in this case "has _many" assumes that the answers table contain a field named question_id that is an integer ( this is a Rails convention)
  #the dependent option takes values like "destroy" and "nullify"
  #destroy will make rails automatically delete associated answers before deleting the question.
  #nullify will make Rails turn question_id values of associated records to NULL before deleting the question.
  has_many :answers, dependent: :destroy
  belongs_to :category
  belongs_to :user
  validates(:title, {presence: {message: "must be present!"}, uniqueness: true})
  #by having the option: uniqueness: {scope: :title}, it ensures that the body must be unique in combination with the title
  validates :body, presence: true,
                    length: {minimum: 7},
                    uniqueness: {scope: :title}

  validates :view_count, numericality: {greater_than_or_equal_to: 0}

  # validates :name, presence: true

  # VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  # validates :email, format: VALID_EMAIL_REGEX
  validate :no_monkey
  validate :no_title_in_body

  after_initialize :set_defaults
  # before_save :cap_title
  before_validation :squeeze_title, :cap_title

  before_destroy :notify_admin
  # def self.recent(count)
  #   where("created_at > ?", 3.day.ago).limit(count)
  # end

  # def created_after(days)
  #   where("created_at >?", days)
  # end
  # def updated_after(date)
  #   where("updated_at >?", date)
  # end

  #Product.where("price != sale_price").order("sale_price, updated_at").limit(10)

  scope :recent, lambda {|count| where("created_at > ?", 3.day.ago).limit(count)}

  def self.search(content)
    where("title ILIKE :word OR body ILIKE :word", {word: "%#{content}%"} )
  end

  def new_first_answers
    answers.order(created_at: :desc)
  end

  # def self.search_last_first_email(last_name, first_name, email)
  #   where("first_name ILIKE :first_name AND last_name ILIKE :last_name AND email ILIKE :email", {first_name: "#{first_name}", last_name: "#{last_name}", email: "#{email}"})
  # end
  # def self.search_term(term)
  #   where("first_name ILIKE :term OR last_name ILIKE :term OR email ILIKE :term", {term: "%#{term}%"})
  # end

  #Product.where("price BETWEEN 100 AND 300").order(name: :desc).limit(10)
  #User.where("first_name != ? OR last_name != ?", "john")
  #User.where("created_at BETWEEN #{date1} AND #{date2}")


  private

  def notify_admin
    puts "Product is about to be deleted"
    Rails.logger.debug("Product is about to be deleted")
  end

  def squeeze_title
    self.title = title.squeeze(" ")
  end

  def cap_title
    self.title = title.capitalize
  end

  def set_defaults
    # puts title
    self.view_count ||= 0
  end

  def no_monkey
   if title && title.downcase.include?("monkey")
     errors.add(:title, "No monkey please!")
   end
 end

  def no_title_in_body
    if body.downcase.include?(title)
      errors.add(:body, "NO TITLE IN BODY!")
    end
  end

end
