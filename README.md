# all_repos

A set of tools to help manage a large number of git repositories from a single organization. 

## Installation

- [ ] Install parallel: `brew install parallel`

- [ ] Install jq: `brew install jq`

- [ ] Install gh: `brew install gh`

- [ ] Authenticate gh: `gh auth login`

- [ ] `git clone git@github.com:jim80net/all_repos # to any directory.` 

- [ ] add `all_repos` to your path.
      ```
      export PATH=$PATH:/path/to/all_repos
      ```

## Usage

- [ ] Navigate to a directory named after the github organization you want to manage.

- [ ] Run `all_clone` to clone all the repositories in the organization.

- [ ] Run `all_fetch` to fetch all the repositories in the organization. The working directory will be left alone.

- [ ] Run `all_pull` to pull all the repositories in the organization.
      Any repositories that have uncommitted changes will be skipped.