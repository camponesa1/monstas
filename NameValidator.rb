# we really want to do is validate the incoming data (in our case the name), 
#and only accept and store it when we find it’s valid. If it’s not,
#then we want to display a message to the user, and ask them to submit the form again
#
class NameValidator
  def initialize(name, names)
    @name = name.to_s
    @names = names
  end

  def valid?
    validate
    @message.nil?
  end

  def message
    @message
  end

  private

    def validate
      if @name.empty?
        @message = "You need to enter a name."
      elsif @names.include?(@name)
        @message = "#{@name} is already included in our list."
      end
    end
end
