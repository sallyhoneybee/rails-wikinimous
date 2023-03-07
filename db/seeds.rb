require 'faker'

10.times do
  Article.new(title: Faker::TvShows::Spongebob.episode, content: Faker::TvShows::Spongebob.quote).save
end
