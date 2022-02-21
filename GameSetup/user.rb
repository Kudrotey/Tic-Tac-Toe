class UserName
    attr_accessor :name
    def initialize
        @name = 'Not defined'
    end

    def change_user_name(username_instance)
        puts "Name: "
        username_instance.name = gets
        # puts "You are playing as #{username_instance.name }"
    end

end