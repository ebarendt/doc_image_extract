module DocImageExtract
  class Document
    attr_reader :file

    def initialize file
      @file = file
    end

    def reader
      @reader ||= begin
        if file =~ /docx\Z/
          Reader::Xwpf.new file
        else
          Reader::Hwpf.new file
        end
      end
    end

    def pictures
      reader.pictures
    end
  end
end
