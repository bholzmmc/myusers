#  retrieves users for the platform the chef client is running on
system_users = search("users", "platform:#{node['platform']}")
# create the user
# loop thru the users
system_users.each do |user_data|
# define the user resource as the userid
user user_data['id'] do
# give the user a commend and the create action
comment user_data['comment']
action :create
end
end
