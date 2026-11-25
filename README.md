# Coders Cantina tap

Homebrew casks and formulae for the coderscantina apps and command line tools.

```sh
brew install coderscantina/tap/<name>
```

| Name | Kind | What it is |
| --- | --- | --- |
| `compactor` | cask | See where disk space goes on a Mac and remove what you mark |
| `druck` | formula | A typesetter for Markdown documents |
| `pr0be` | formula | Finds code on your disk that exists nowhere else |
| `shot-studio` | cask | Record and edit developer videos (after its first release) |

## Updating an entry

After a release, set `version` and every `sha256` from the release's `.sha256` files or the release run's summary, then run `brew style .` and `brew audit --tap coderscantina/tap`.
