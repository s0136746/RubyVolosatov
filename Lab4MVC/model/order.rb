class Order
    attr_reader :id, :company_name, :auto_model, :part_model, :amount

    def initialize(id, company_name, auto_model, part_model, amount)
        @id = id
        @company_name = company_name
        @auto_model = auto_model
        @part_model = part_model
        @amount = amount
    end
end