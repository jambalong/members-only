# Members only!

This project is part of The Odin Project: [Members Only](https://www.theodinproject.com/lessons/ruby-on-rails-members-only) in Ruby on Rails Curriculum.

## Learning Objectives

By the end of this project, you will be able to:

- Set up a Rails application with user authentication using Devise.
- Implement user registration and authentication.
- Create and manage resources with restrictions based on user authentication.
- Understand and implement controller filters to restrict access to certain actions.

## Assignment

1. Create a new members-only Rails application.
2. Add Devise to your Gemfile and install it.
3. Create the User model and Post model.
4. Restrict access to the `#new` and `#create` methods using `#before_action`.
5. Complete authentication logic to manage user access.

## Basic Setup

1. **Data Models**: Plan and set up the data models for this application. You will need users with attributes such as name, email, and password. Users will also need to create posts.
2. **Create Rails App**: Generate your new members-only Rails app and initialize a GitHub repository. Update your README file accordingly.
3. **Integrate Devise**: Add Devise to your Gemfile and follow the installation instructions from the Devise README. 
   - Ensure you handle delete requests for signing out users properly.

## Authentication and Posts

1. **Post Model**: Create a Post model along with a Posts controller, and configure the routes to allow `[:new, :create, :index]` methods.
2. **Restrict Access**: Use `#before_action` in your Posts Controller to restrict access to the `#new` and `#create` methods for signed-in users only.
3. **Create New Post**: Prepare the `#new` action in your Posts Controller and build a form in `app/views/posts/new.html.erb` to create new posts.
4. **Auto-Populate Author**: Ensure the `#create` action automatically populates the user_id foreign key based on the signed-in user. Redirect to the Index view upon success.
5. **Index Action**: Implement the `#index` action in the Posts Controller and create a corresponding view to display all posts.
6. **Display Author**: Modify the Index view to show the author's name only if a user is signed in.

## Testing Your Application

- Sign in and create several secret posts.
- Test the functionality by signing out and visiting the index page. You should see a list of posts without author names.
- Sign back in to ensure that author names are displayed next to their respective posts.

## Technologies Used

- Ruby on Rails
- Devise for authentication

## Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/jambalong/members-only.git
   ```

2. Navigate to the project directory:
   ```bash
   cd members-only
   ```

3. Install dependencies:
   ```bash
   bundle install
   ```

4. Set up the database:
   ```bash
   rails db:create
   rails db:migrate
   ```

5. Start the Rails server:
   ```bash
   rails server
   ```

Access the application at `http://localhost:3000`.
