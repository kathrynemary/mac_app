class BoardPresenter
  attr_reader :user

  def self.present(user)
    new(user).call
  end

  def initialize(user)
    @user = user
  end

  def call
    return nil unless user && user.organizer
    board_data
  end

  def board_data
    board_members.map do |bm|
      OrganizerPresenter.new(bm.user).call
    end
  end

  def board_members
    @board_members ||= Organizer.where(board_member: true)
  end
end
