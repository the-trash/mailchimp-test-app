# mailchimp-test-app
For use need set api key and get list id
```
https://us9.admin.mailchimp.com/account/api/
http://kb.mailchimp.com/lists/managing-subscribers/find-your-list-id
```
and replace in app/controller/index.rb:
```
def add_mail
  gb = Gibbon::API.new(YOUR_API_KEY)
  gb.lists.subscribe({:id => YOUR_LIST_ID, :email => {:email => params[:email]}, :merge_vars => {:FNAME => 'First Name', :LNAME => 'Last Name'}, :double_optin => false})
```
