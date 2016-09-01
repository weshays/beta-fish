Beta Fish
======

The Beta Fish SaaS application


### Rails Version
* Rails 5.0.0.1 (latest stable version)

### Ruby version
* Ruby 2.2.4


### System dependencies
* Apache 2.2 or 2.4 or Nginx 1.6
* PostgreSQL 9.5.4


### Configuration
    > cp ./env ./.env
    > cp ./foreman ./.foreman
    > cp ./ruby-version ./.ruby-version
    > cp ./ruby-gemset ./.ruby-gemset
    > cp ./config/database.example.yml ./config/database.yml

### Database creation and initialization
    > rake app:setup


### Services (job queues, cache servers, search engines, etc.)
Running "foreman start" it will start the background processes found in the ".foreman" file.


### Code
* Use Rails 5 standards - RuboCop will enforce standards
* Rails Best Practices will enforce code quality


### Contributing
* Master should always be deployable and stable
* For each feature, task, or bug:
  * Branch from Master
  * Name your branch username/feature-name
* Commits:
  * At minimum a commit should be done at the end of every working day even if not finished.
  * Commits should contain a comment that explains what was done.
  * Each tracker story should have a corresponding branch that is prefixed with the authors name and has the story name.
  * Examples:
    * if I worked on feature, "User Login", I would have a branch "wes/feature-user-login,
    * if Jason worked on bug, "User Login Bug", it would be "jason/bug-user-login".
* When a feature or bug is ready to merge you will make sure your branch is up to date with master and then issue a pull request on Github.
  * Make sure all your code is commited for your branch
  * Change to master and do a git pull
  * Switch back to your branch and "git rebase master -i"
  * Squash all your WIP commits and make the feature a single commit.
  * Push your branch to Github
  * Create a pull request for your branch
* You should not merge your own pull requests into master unless it's an emergency.
* Another team member should review the pull request and do the merge if everything looks good.
* The deployment master will deploy code to the servers (Phill currently)


### Testing (RSpec)
* Code must be tested using RSpec.
* Code will be checked with RuboCopy.
* Code will be checked with Rails Best Practices
