class AddIconToStoryParagraphs < ActiveRecord::Migration[5.0]
  def change
    add_column :story_paragraphs :string
  end
end
