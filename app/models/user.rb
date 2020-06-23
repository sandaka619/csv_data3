class User < ApplicationRecord
  # CSVデータのパスを引数として受け取り、インポート処理を実行
  def self.import(path)
    list = []
     CSV.foreach(path, headers: true) do |row|
      list << {
         name: row["name"],
         age: row["age"],
         address: row["address"]
        }
     end
      puts "インポート開始"
      User.create!(list)
      puts "インポートに成功しました"
     resuce ActiveModel::UnknowAttributeError >> invalid
      puts "インポートに失敗しました:#{invalid}"

  end
end
