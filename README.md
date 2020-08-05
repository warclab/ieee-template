# ieee-template

LaTeX Template for IEEE Transactions Format

## Quick Start

```bash
make setup
```

## How to use this repo

You can click `use as template` to fork this repo to your own GitHub account and edit it as if it is your own.
We recommend that you first set up the repo as explained below:

1. Go to `Settings` -> `Branches` -> `Add Rule` -> { `Branch Name Pattern` : `master` or `release`, `Require Pull Reviews before Merging`: ✅ }

## How to write collaboratively in LaTeX

1. Always start a new line for a new sentence.
    - This allows for version control of the paper; if everything is one on line, git cannot provide a `diff` of the history.
2. Keep tables, figures and diagrams separate from the LaTeX source files.
    - This allows your to easily adjust/change data without changing the paper itself and creates a single source of truth for your data.
    - Examples of this can be seen in the mock paper provided.
3. Use a new `.tex` file for each chapter.
    - It is easier to organise and easier to review when the paper is sectioned.

## How to use the LaTeX Git Flow

In order to make the process of working with multiple authors more cohesive, we propose the LaTeX git flow, which can be summarised as follows:

1. **Never** commit directly to the `release` or `master` branch, this is reserved for public versions of the paper.
    - We do this to protect the history of the released paper and to ensure that it is clean
    - Ideally, protect the `release` branch from GitHub to ensure that it is never written to unless a PR has been reviewed
2. The `draft` branch should be driven by the 1st author of the paper, this is the main development branch.
    - This is a 'dirty' branch and can be used for messy commits and todos up until it is cleaned and Pull Requested (PR) into `release`
3. When the `draft` branch is ready for public release, i.e. submission to a journal or a conference, a PR should be opened against the master branch.
    - PRs allow the co-authors to provide feedback against the ready to merge paper. This is where feedback can be provided to the 1st author in terms of a PR review.
    - The reviewing should take the place of inline `todos` and should happen entirely on GitHub. 
    - The `release` branch should only ever contain a complete paper, starting from `v1.0.0`
4. All commits should be signed and use the git template for commit messages.
    - This standardises commit history and makes it easier to see large changes.
    - This is also used to track historical versioning of the paper using semantic versioning, e.g. v1.2.1 (`major`,`minor`,`patch` changes)
5. After the `v1.0.0` release, expect to frequently open PRs against the `release` branch
    - Many incremental changes provides a clearer history than a single large change.
6. PRs may contain multiple commits but take care to practice squashing unwieldy commits using `git rebase -i`
    - Fewer clean commits are better than many confusing changes
7. If co-authors wish to contribute beyond reviewing, they should open PRs against the `draft` branch.
    - It is their responsibility to ensure they are up to date with the `draft` branch when opening a PR.
    - The 1st author should then use this PR as a place to discuss the changes against the `draft` branch and it is their responsibility to merge against `draft`
8. Generic comments such as "We should include XYZ table and ABC image", should be opened as issues against the repo.
    - PR reviews are reserved for reviewing the changes of the contributing author, issues should focus on missing/required content.

This repo provides a basis along with templates for getting started writing IEEE conference papers in LaTeX.

### Useful tips

- The GitHub projects board is a good place to get an overview of outstanding issues. This can be used as a good place to organise your paper into a kanban style flow with columns for `incoming`, `in progress`, `completed` and `blocked` issues.