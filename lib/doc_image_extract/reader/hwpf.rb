require "poi"

module DocImageExtract
  module Reader
    class Hwpf
      java_import java.io.FileInputStream
      java_import org.apache.poi.hwpf.HWPFDocument

      attr_reader :file

      def initialize(file)
        @file = file
      end

      def pictures
        document = HWPFDocument.new FileInputStream.new file
        pictures_table = document.get_pictures_table
        pictures_table.get_all_pictures.map do |picture|
          filename = picture.suggest_full_file_name
          data = picture.get_content
          DocImageExtract::Picture.new filename, data
        end
      end
    end
  end
end
