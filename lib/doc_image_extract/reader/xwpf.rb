require "poi"

module DocImageExtract
  module Reader
    class Xwpf
      # java_import java.io.FileInputStream
      # java_import org.apache.poi.xwpf.usermodel.XWPFDocument

      attr_reader :file

      def initialize(file)
        @file = file
      end

      def pictures
        document = XWPFDocument.new FileInputStream.new file
        pictures = document.get_all_pictures
        pictures.map do |picture|
          filename = picture.get_file_name
          data = picture.get_data
          Picture.new filename, data
        end
      end
    end
  end
end
