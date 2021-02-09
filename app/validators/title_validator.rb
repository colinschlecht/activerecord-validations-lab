class TitleValidator < ActiveModel::Validator
    def validate(record)
      if record.title == nil || !record.title.include?("Won't Believe") || record.title.include?("Secret") || record.title.include?("guess") || record.title.include?("Top")
        record.errors[:title] << "Nope!"
      end
    end
  end 