1. `rails new user-addresses-and-teams-codealong`
2. `rails g model user`
    `rails g model address`
    `rails g model team`
3. Edit 3 migration files to liking
4. `rake db:migrate`
5. Create associations between objects in their models
6. rails c
7. test out stuff
8. `rails g controller users`
9. In routes.rb:
  resources :users
10. touch new.html.erb and fill out
11. fill out userscontroller with def new
12. start building out form_for in index
13. add def create with raise params.inspect
14. after testing, build out rest of def create
15.

Preview new file versions:


  <!--
  <fieldset>
    <legend>Home Address</legend>
    <p>
      <label>Street 1</label>
      <input type="text" name="user[addresses_attributes][][street_1]">
    </p>
    <p>
      <label>Street 2</label>
      <input type="text" name="user[addresses_attributes][][street_2]">
    </p>

    <input type="hidden" name="user[addresses_attributes][][address_type]" value="Home">
  </fieldset>

  <fieldset>
    <legend>Work Address</legend>
    <p>
      <label>Street 1</label>
      <input type="text" name="user[addresses_attributes][][street_1]">
    </p>
    <p>
      <label>Street 2</label>
      <input type="text" name="user[addresses_attributes][][street_2]">
    </p>

    <input type="hidden" name="user[addresses_attributes][][address_type]" value="Work">
  </fieldset>

  <%= f.submit %>
<% end %> -->







<!-- <form>

  <p>
    <label>Email</label>
    <input type="text" name="name">
  </p>

  <fieldset>
    <legend>Home Address</legend>
    <p>
      <label>Street</label>
      <input type="text" name="name">
    </p>
    <p>
      <label>Street</label>
      <input type="text" name="name">
    </p>
  </fieldset>

  <fieldset>
    <legend>Business Address</legend>
    <p>
      <label>Street</label>
      <input type="text" name="name">
    </p>
    <p>
      <label>Street</label>
      <input type="text" name="name">
    </p>
  </fieldset>

  <fieldset>
    <legend>Existing Team by Name</legend>
    <p>
      <label>Team Name</label>
      <input type="text" name="name">
    </p>
  </fieldset>

  fieldset>
    <legend>Create a New Team</legend>
    <p>
      <label>Name</label>
      <input type="text" name="name">
    </p>
    <p>
      <label>Hometown</label>
      <input type="text" name="name">
    </p>
  </fieldset>

  <input type="submit">
</form> -->
