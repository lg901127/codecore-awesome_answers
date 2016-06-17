class CookieBag
  MAX_COOKIE_COUNT = 5
  def initialize
    @cookies = []
  end

  def add(cookie)
    if @cookies.length >= MAX_COOKIE_COUNT
      puts "Full"
    else
      @cookies.push(cookie)
    end
  end

  def remove
    @cookie.pop
  end

  def num_of_cookies
    @cookies.length
  end

end
