admin = User.create! do |user|
         user.name         = 'lukas'
         user.email        = 'lukas@hammocktent.com'
         user.password     = 'lukaslukas'
         user.confirmed_at = Time.now
       end

admin.add_role :admin

Page.create! do |page|
  page.title            = 'About Base',
  page.navigation_title = 'About',
  page.lead             = 'This is the lead.',
  page.content          = 'This is the about page. Put markdown formatted content here.',
  page.notes            = 'These are notes. Only admins can see them.',
  page.system           = true
  page.creator          = admin
end
