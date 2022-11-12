# all_repos

A set of tools to help manage a large number of git repositories from a single organization. 

## Installation

- [ ] Install the dependencies

      ```
      brew install parallel jq gh
      ```

- [ ] Authenticate gh:

      ```
      gh auth login
      ```

- [ ] Clone all_repos. 

      ```
      git clone git@github.com:jim80net/all_repos
      ```

- [ ] add `all_repos` to your path.

      ```
      export PATH=$PATH:/path/to/all_repos
      ```

## Usage

- [ ] Navigate to a directory **named after the github organization**.

Command   | Description
----------|------------
all_clone | Clone all the repos in the organization.
all_fetch | Fetch all the repos in the organization. The working directory will be left alone.
all_non_main_branches | List all the repos in the organization that are not on the main or master branch.
all_pull | Pull all the repos in the organization. Any repositories that have uncommitted changes will be skipped.
all_repos | List all the repos in the organization.
all_unclean | List all the repos in the organization that have uncommitted changes.
repo_reset  [repo name] | Reset the repo to the main or master branch. Any uncommitted changes will be lost.
