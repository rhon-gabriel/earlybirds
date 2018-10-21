# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
category = Category.create!(name: 'Politics')
Article.create!(category: category, header: 'A happy day', subheader: 'What larks', body: 'Lets get this party started', status: 0 )