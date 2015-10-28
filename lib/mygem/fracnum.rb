class Fractnum

    attr_accessor :num, :den
    def initialize(x,y)
        
        @num=x
        @den=y
        
    end
    
    def gcd(m, n)
        m, n = n, m % n until n.zero?
        m.abs
    end

    def lcm(*args)
        args.inject(1) do |m, n|
            return 0 if n.zero?
            (m * n).abs / gcd(m, n)
        end
    end

end