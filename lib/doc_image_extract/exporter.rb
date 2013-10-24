module DocImageExtract
  class Exporter
    def save picture
      File.write picture.suggest_full_file_name, picture.get_content
    end
  end
end