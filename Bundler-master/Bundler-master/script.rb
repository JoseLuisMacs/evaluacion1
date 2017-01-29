require 'rubygems'
require 'bundler/setup'

require 'awesome_print'
require 'pry'
require 'sqlite3'

require './sqlite/sqlite_script'
require './app/permissions'
require './pry/propina_script'

admin_personal_info = {'name'=>'jose', 'last_name'=>'macias', 'birth_year'=>1994}
admin_contact_info = {'email'=>'joselmacs20@gmail.com', 'mob'=>'4281022002'}
admin_role = Role.new('users','contacts','promotions')
admin = User.new(admin_personal_info, admin_contact_info, admin_role)

ap admin_personal_info
ap admin_contact_info
ap admin_role.permissions

ap admin_role.methods - Object.methods

puts tip(80)

save_new_user('Mayra ', 'mayramacias@gmail.com', 1996)
users = save_new_user('Daniel', 'Dani@gmail.com', 2000)
ap users