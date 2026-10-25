# Third-party notices and provenance

The [MIT grant in LICENSE](LICENSE) covers Lance Wilhelm's original contributions only.
Third-party material retains the terms documented below. These notices record source
history and license declarations. They do not establish a complete chain of permissions.

## Solarized Osaka and Tokyo Night lineage

The following files contain code that matches or adapts
[Solarized Osaka at revision 126d394c0c979a99206214a2b6b8c86e456c9c0f](https://github.com/craftzdog/solarized-osaka.nvim/tree/126d394c0c979a99206214a2b6b8c86e456c9c0f),
dated July 3, 2024:

- `lua/horizon-extended/hsl.lua` matches the upstream helper after whitespace normalization and removal of the added "Borrowed from solarized-osaka" line.
- `lua/horizon-extended/treesitter.lua` retains substantial matching compatibility functions and highlight tables, with local changes to highlight mappings.
- `lua/horizon-extended/utils.lua` retains matching highlight helpers and loading logic, with local terminal colors and reduced utility functions.
- `lua/horizon-extended/config.lua` and `lua/horizon-extended/theme.lua` share configuration and theme construction patterns and some matching blocks. Local options, palettes, and highlight definitions differ.

These files first appear in this repository's
[initial commit 1318ba7688a3a06fde96997e4e9fcc95bf84d5ac](https://github.com/lancewilhelm/horizon-extended.nvim/commit/1318ba7688a3a06fde96997e4e9fcc95bf84d5ac),
dated July 8, 2024. The precise upstream checkout used for the import was not recorded.
The revision above is the latest upstream commit preceding that import and is a comparison reference.

Solarized Osaka's [LICENSE at that revision](https://github.com/craftzdog/solarized-osaka.nvim/blob/126d394c0c979a99206214a2b6b8c86e456c9c0f/LICENSE)
declares Apache License 2.0 and contains this notice:

> Copyright 2024 Takuya Matsuyama

The complete upstream file is preserved in
[licenses/solarized-osaka-Apache-2.0.txt](licenses/solarized-osaka-Apache-2.0.txt).
The inspected upstream tree contains no separate NOTICE file.

Solarized Osaka's history includes Folke Lemaitre's Tokyo Night code.
For example, its [module conversion commit c33992c](https://github.com/craftzdog/solarized-osaka.nvim/commit/c33992c77a3630711ea5415ddc94a4c4eec5b260)
renames Tokyo Night modules and adds the HSL helper. This notice preserves that
authorship credit; it does not assign all shared code to Takuya or Lance.
The Apache license text already existed at that commit. The
[January 5, 2024 correction](https://github.com/craftzdog/solarized-osaka.nvim/commit/2391e4f4c04f0f286428ffe65faa944ef215de8a)
filled its copyright placeholders before Horizon Extended's initial import.

## HSL helper and Columns

`lua/horizon-extended/hsl.lua` retains its original Solarized Osaka and Columns
references and its Wikipedia formula reference. Solarized Osaka
[added the helper on October 3, 2023](https://github.com/craftzdog/solarized-osaka.nvim/commit/c33992c77a3630711ea5415ddc94a4c4eec5b260)
and [updated its annotations and made hue2rgb local on November 27, 2023](https://github.com/craftzdog/solarized-osaka.nvim/commit/e361a73841b3240eb1e2c0c118a8d904eb675185).
Horizon Extended adds a source attribution line and changes indentation.

The helper derives from the HSL-to-RGB function in
[Columns utils/color.lua at 836312be76b85b7f85e0cb2c31f5f22624c62d3e](https://github.com/EmmanuelOga/columns/blob/836312be76b85b7f85e0cb2c31f5f22624c62d3e/utils/color.lua).
The adaptation uses a module, omits the alpha argument and other conversions,
adds a hexadecimal wrapper, and changes formatting, annotations, and helper scope.

Columns' [LICENSE in its July 6, 2011 initial release](https://github.com/EmmanuelOga/columns/blob/836312be76b85b7f85e0cb2c31f5f22624c62d3e/LICENSE)
states:

> Copyright 2011 Emmanuel Oga.

It declares Creative Commons Attribution 3.0 Unported.
The unchanged upstream declaration and summary are in
[licenses/columns-LICENSE.txt](licenses/columns-LICENSE.txt).
The full terms are in [licenses/CC-BY-3.0.txt](licenses/CC-BY-3.0.txt),
copied from the [SPDX license text](https://github.com/spdx/license-list-data/blob/main/text/CC-BY-3.0.txt),
Git blob `1a16e05564d2aaa880bbe9e506a0a0226d8742cc`.
The [official legal code](https://creativecommons.org/licenses/by/3.0/legalcode.en)
is the authoritative source. The Columns source and license paths have no later
commits in the inspected repository history.

### Earlier provenance remains unresolved

Columns links to an
[Axon Flux article](https://axonflux.com/handy-rgb-to-hsl-and-rgb-to-hsv-color-model-c)
that republishes JavaScript conversions credited to an earlier mjijackson.com article.
The reviewed article provides no explicit license grant. This review did not establish
the earlier permissions or any separate permission to relicense that material.
The Apache and CC declarations above document the repositories' terms; they do not
resolve this earlier chain. These findings are not an allegation of infringement
or a guarantee of legal compliance.

## nvim-treesitter fallback mappings

`lua/horizon-extended/treesitter.lua` explicitly credits
`nvim-treesitter/nvim-treesitter/lua/nvim-treesitter/highlight.lua` for
`M.fallbacks`. Its Solarized Osaka intermediary retains the same credit.
The local table and surrounding compatibility code include modified mappings.

A historical source reference is
[highlight.lua at 557123a6168936983d7b980df195057ca6b370ed](https://github.com/nvim-treesitter/nvim-treesitter/blob/557123a6168936983d7b980df195057ca6b370ed/lua/nvim-treesitter/highlight.lua),
dated September 9, 2022, before the
[September 11 compatibility implementation in the intermediary's history](https://github.com/craftzdog/solarized-osaka.nvim/commit/933030d3d08aa6bd4d277baf477e5dc794948640).
The exact fallback source revision was not recorded.
Its [Apache-2.0 LICENSE](https://github.com/nvim-treesitter/nvim-treesitter/blob/557123a6168936983d7b980df195057ca6b370ed/LICENSE)
is preserved unchanged in
[licenses/nvim-treesitter-Apache-2.0.txt](licenses/nvim-treesitter-Apache-2.0.txt).
That file contains copyright placeholders rather than a named owner.
No owner or year has been substituted here.

## Existing theme credits

The README credits Lance Wilhelm's Horizon Extended VSCode theme and akinsho's
horizon.nvim. Those credits remain in place. A README reference alone does not
establish which code was copied. This review did not establish additional copied
material from akinsho/horizon.nvim or claim its MIT license for this repository.

## Scope of this documentation change

This change adds license documentation without altering the imported source files.
The modification descriptions above identify adaptations already present in this repository.
This record does not certify that every upstream notice or file-level change-notice
requirement has been satisfied.

The MIT notice uses Lance Wilhelm's recorded full name and 2024-2025 contribution
years from this repository's history. It makes no ownership claim over upstream code.
