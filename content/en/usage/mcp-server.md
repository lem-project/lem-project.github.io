---
title: MCP Server - AI Agent Integration
weight: 26
---

Lem includes an MCP (Model Context Protocol) server that allows AI agents like Claude Code to interact with the editor. Through this server, AI can read and edit your buffers directly within Lem.

## Using with Claude Code

### 1. Start the MCP Server

In Lem, run:

```
M-x mcp-server-start
```

Press Enter twice to use the default settings (localhost:7890).

### 2. Register with Claude Code

In your terminal:

```bash
claude mcp add --transport http lem http://localhost:7890/mcp
```

### 3. Start Using

Now when you use Claude Code, it can directly edit files open in Lem. For example:

- "Edit the function in my current buffer"
- "Add error handling to this code"
- "Refactor this file"

Claude Code will use Lem's buffers instead of reading/writing files directly.

## Server Commands

| Command | Description |
|---------|-------------|
| `mcp-server-start` | Start the server |
| `mcp-server-stop` | Stop the server |
| `mcp-server-status` | Show server status |
| `mcp-server-restart` | Restart the server |

## Troubleshooting

### Check Server Status

```
M-x mcp-server-status
```

This shows the server URL and number of connected sessions.

### Enable Debug Logging

```
M-x mcp-server-toggle-logging
```

View logs in the `*mcp-log*` buffer with `C-x b *mcp-log*`.

### Verify Claude Code Connection

```bash
claude mcp list
```

The `lem` server should appear in the list.
