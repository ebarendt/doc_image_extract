module DocImageExtract
  class Picture
    attr_reader :file_name, :data

    def initialize(file_name, data)
      @file_name = file_name
      @data = data
    end
  end
end
