require "poi"

module DocImageExtract
  class Document
    include Java
    java_import "org.apache.poi.hwpf.HWPFDocument"
    java_import "java.io.FileInputStream"

    attr_reader :file

    def initialize file
      @file = file
    end

    def pictures
      document = HWPFDocument.new FileInputStream.new file
      pictures_table = document.get_pictures_table
      pictures_table.get_all_pictures
    end
  end
end