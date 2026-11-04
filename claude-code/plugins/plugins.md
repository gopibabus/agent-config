# Plugins

`settings.json` enables these plugins, but a new machine still has to add the marketplaces and install them. Run in order.

## Marketplaces

`claude-plugins-official` is built in. Add the rest:

```sh
claude plugin marketplace add warpdotdev/claude-code-warp
claude plugin marketplace add JuliusBrussee/caveman
claude plugin marketplace add https://github.com/ComposioHQ/composio-plugin-cc.git
claude plugin marketplace add thedotmack/claude-mem
claude plugin marketplace add GoogleChrome/modern-web-guidance
```

`thedotmack` and `GoogleChrome` are known marketplaces with no plugin enabled from them.

## Plugins

```sh
claude plugin install claude-code-setup@claude-plugins-official
claude plugin install code-simplifier@claude-plugins-official
claude plugin install claude-md-management@claude-plugins-official
claude plugin install code-review@claude-plugins-official
claude plugin install commit-commands@claude-plugins-official
claude plugin install feature-dev@claude-plugins-official
claude plugin install frontend-design@claude-plugins-official
claude plugin install php-lsp@claude-plugins-official
claude plugin install learning-output-style@claude-plugins-official
claude plugin install Notion@claude-plugins-official
claude plugin install typescript-lsp@claude-plugins-official
claude plugin install security-guidance@claude-plugins-official
claude plugin install skill-creator@claude-plugins-official
claude plugin install pyright-lsp@claude-plugins-official
claude plugin install pr-review-toolkit@claude-plugins-official
claude plugin install explanatory-output-style@claude-plugins-official
claude plugin install warp@claude-code-warp
claude plugin install caveman@caveman
claude plugin install composio@composio
```

Installed but disabled: `circleback@claude-plugins-official`.
