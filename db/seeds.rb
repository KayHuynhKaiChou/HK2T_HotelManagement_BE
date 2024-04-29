# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
#
# Fake data for model User
#
# User.create([
#   {
#     firstname: "Nguyễn",
#     surname: "Công Minh",
#     email: "nguyencongminh123@email.com",
#     password: "123456",
#     birth_day: "1990-01-15",
#     gender: 0,
#     address: "12 Lê Lợi",
#     city: "Hà Nội",
#     district: "Ba Đình",
#     ward: "Phúc Xã",
#     position: 0,
#     salary: nil
#   },
#   {
#     firstname: "Trần",
#     surname: "Thị Mỹ Châu",
#     email: "tranthimc@email.com",
#     password: "123456",
#     birth_day: "1994-03-05",
#     gender: 1,
#     address: "135 Ly Lai",
#     city: "Vũng Tàu",
#     district: "Long Biên",
#     ward: "An Phuoc",
#     position: 0,
#     salary: nil
#   },{
#     firstname: "Admin",
#     surname: "System",
#     email: "hotelManagementHK2T@gmail.com",
#     password: "123456",
#     birth_day: "1988-03-18",
#     gender: 1,
#     address: "135 Ly Lai",
#     city: "Vũng Tàu",
#     district: "Long Biên",
#     ward: "An Phuoc",
#     position: 1,
#     salary: nil
#   }
#   # Thêm các bản ghi khác tương tự ở các thành phố và vị trí khác nhau trong Việt Nam
# ])
