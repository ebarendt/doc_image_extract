module DocImageExtract
  class Exporter
    def save picture
      if picture.file_name
        File.write picture.file_name, picture.data
      end
    end
  end
end
