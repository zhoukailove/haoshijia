class CreateConvenients < ActiveRecord::Migration
  def change
    create_table :convenients do |t|
      t.boolean :dianshi,:default => 0
      t.boolean :nuanqi,:default => 0
      t.boolean :zaocan,:default => 0
      t.boolean :youxian,:default => 0
      t.boolean :chufang,:default => 0
      t.boolean :youyong,:default => 0
      t.boolean :bingxiang,:default => 0
      t.boolean :canju,:default => 0
      t.boolean :jianshen,:default => 0
      t.boolean :xiyiji,:default => 0
      t.boolean :smoking,:default => 0
      t.boolean :dianti,:default => 0
      t.boolean :kongtiao,:default => 0
      t.boolean :shangwang,:default => 0
      t.boolean :wuzhangai,:default => 0
      t.boolean :reshui,:default => 0
      t.boolean :wuxian,:default => 0
      t.boolean :baoan,:default => 0
      t.boolean :linyu,:default => 0
      t.boolean :huodong,:default => 0
      t.boolean :menjin,:default => 0
      t.boolean :yugang,:default => 0
      t.boolean :chewei,:default => 0
      t.boolean :chaoshi,:default => 0
      t.boolean :chongwu,:default => 0
      t.boolean :yinhang,:default => 0
      t.integer :room_id

      t.timestamps
    end
  end
end
