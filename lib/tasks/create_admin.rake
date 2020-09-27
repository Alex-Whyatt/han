namespace :create_admin do
  desc "TODO"
  task create_admin: :environment do

    User.destroy_all
    Info.destroy_all
    
    p "Existing Users Removed..."
    p "Existing Bio Removed..."

    Info.create!(
      title: "Insert Header Here",
      bio: "This is where the body of the text will go. Log in as an admin to change it.",
    )
    p "Sample Bio Generated"  

    User.create!(
          email: "hannah.whyatt@gmail.com",
          password: "5MnTxV!Yy7Ly",
          password_confirmation: "5MnTxV!Yy7Ly",
          admin: true
    )  
    p "Admin created." 
  end
end