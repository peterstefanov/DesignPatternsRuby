
module ObservableSubject

    def initialize
      @observers=[]
    end

    def add_observer(&observer)
      @observers.push(observer)
    end

    def delete_observer(observer)
      puts("#{observer.player_name} has been deleted!")
      @observers.delete(observer)
    end

    def notify_observers
      @observers.each do |observer|
        observer.call(self)
      end
    end

end