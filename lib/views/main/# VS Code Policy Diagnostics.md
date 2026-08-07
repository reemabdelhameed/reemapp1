# VS Code Policy Diagnostics

*WARNING: This file may contain sensitive information.*

## System Information

| Property | Value |
|----------|-------|
| Generated | 2026-07-21T17:21:58.288Z |
| Product | Visual Studio Code 1.126.0 |
| Commit | 7e7950df89d055b5a378379db9ee14290772148a |

## Account Information

*No default account configured*

## Account Policy Gate

| Property | Value |
|----------|-------|
| State | `inactive` |
| Reason | *n/a* |
| ChatApprovedAccountOrganizations | *not set* |

**Legend**

- `inactive`: gate disabled (no approved orgs configured) — policies behave as account data dictates.
- `satisfied`: gate active and approved — account policy values flow normally.
- `restricted`: gate active and not satisfied — opted-in policies forced to their restricted value.
  - `noAccount`: no default account signed in.
  - `wrongProvider`: signed in with a non-GitHub provider.
  - `orgNotApproved`: signed in but account is not a member of any approved organization.
  - `policyNotResolved`: signed in to an approved org but account-side policy data has not yet been fetched.

## Managed Settings

| Property | Value |
|----------|-------|
| Last fetch | *not yet fetched* |
| Fetched at | *n/a* |

### Processed (after projection)

```json
{}
```

## Policy-Controlled Settings

### Applied Policy

*No settings are currently controlled by policies*

###  Non-applied Policy

| Setting Key | Policy Name  
|-------------|-------------|
| extensions.allowed | AllowedExtensions|
| chat.agentHost.enabled | ChatAgentHostEnabled|
| chat.agentHost.codexAgent.enabled | Codex3PIntegration|
| chat.tools.global.autoApprove | ChatToolsAutoApprove|
| chat.sessionSync.enabled | CopilotSessionSync|
| chat.tools.eligibleForAutoApproval | ChatToolsEligibleForAutoApproval|
| chat.mcp.access | ChatMCP|
| mcp.enterpriseManagedAuth.idp | McpEnterpriseManagedAuthIdp|
| chat.extensionTools.enabled | ChatAgentExtensionTools|
| chat.plugins.enabled | ChatPluginsEnabled|
| chat.plugins.enabledPlugins | ChatEnabledPlugins|
| chat.plugins.extraMarketplaces | ChatExtraMarketplaces|
| chat.plugins.strictMarketplaces | ChatStrictMarketplaces|
| chat.agent.enabled | ChatAgentMode|
| chat.agent.networkFilter | ChatAgentNetworkFilter|
| chat.agent.allowedNetworkDomains | ChatAgentAllowedNetworkDomains|
| chat.agent.deniedNetworkDomains | ChatAgentDeniedNetworkDomains|
| chat.mcp.gallery.serviceUrl | McpGalleryServiceUrl|
| chat.useHooks | ChatHooks|
| chat.approvedAccountOrganizations | ChatApprovedAccountOrganizations|
| extensions.autoUpdate | ExtensionsAutoUpdate|
| extensions.autoUpdateDelay | ExtensionsAutoUpdateDelay|
| extensions.gallery.serviceUrl | ExtensionGalleryServiceUrl|
| chat.tools.terminal.enableAutoApprove | ChatToolsTerminalEnableAutoApprove|
| chat.agent.sandbox.enabled | ChatAgentSandboxEnabled|
| chat.agent.sandbox.allowUnsandboxedCommands | ChatAgentSandboxAllowUnsandboxedCommands|
| chat.agent.sandbox.allowAutoApprove | ChatAgentSandboxAllowAutoApprove|
| update.mode | UpdateMode|
| telemetry.telemetryLevel | TelemetryLevel|
| telemetry.feedback.enabled | EnableFeedback|
| workbench.browser.enableChatTools | BrowserChatTools|
| chat.agentHost.claudeAgent.enabled | Claude3PIntegration|

## Authentication Information

### Authentication Providers

| Provider ID | Sessions | Accounts |
|-------------|----------|----------|
| github | 0 | None |
| github-enterprise | 0 | None |

### Detailed Session Information

