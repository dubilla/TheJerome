class EntryPolicy
  attr_reader :user, :entry

  def initialize(user, entry)
    @user = user
    @entry = entry
  end

  def edit?
    entry == user.entry
  end

  def update?
    entry == user.entry
  end
end
