class Brownie
    def initialize
        @baked = false
    end

    def bake!
        @baked = true
    end

    def baked?
        @baked
    end
end


b = Brownie.new
p b.baked?
b.bake!
p b.baked?
