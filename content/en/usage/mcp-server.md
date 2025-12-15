---
title: MCP Server - AI Agent Integration
weight: 26
---

Lem includes an MCP (Model Context Protocol) server that allows AI agents like Claude Code to interact with the editor. Through this server, AI tools can read and edit buffers, execute commands, and access resources.

## Overview

The MCP server exposes Lem's functionality via HTTP endpoints using the JSON-RPC protocol. This enables:

- **Buffer operations**: Create, read, edit, and delete buffers
- **Text editing**: Insert, replace, and delete text at specific positions
- **Command execution**: Run any Lem command programmatically
- **Resource access**: Read files and buffer contents

## Getting Started

### Starting the Server

Start the MCP server in Lem:

```
M-x mcp-server-start
```

You'll be prompted for hostname and port. Press Enter to use defaults:
- **Hostname**: 127.0.0.1
- **Port**: 7890

### Registering with Claude Code

After starting the server, register it with Claude Code:

```bash
claude mcp add --transport http lem http://localhost:7890/mcp
```

Verify the connection:

```bash
claude mcp list
```

### Testing the Connection

You can test the server with curl:

```bash
curl -X POST http://localhost:7890/mcp \
  -H "Content-Type: application/json" \
  -H "Mcp-Protocol-Version: 2024-11-05" \
  -d '{"jsonrpc":"2.0","id":1,"method":"tools/list","params":{}}'
```

## Server Commands

| Command | Description |
|---------|-------------|
| `mcp-server-start` | Start the MCP server |
| `mcp-server-stop` | Stop the running server |
| `mcp-server-status` | Show server URL and active sessions |
| `mcp-server-restart` | Restart with new configuration |
| `mcp-server-toggle-logging` | Toggle debug logging to `*mcp-log*` buffer |

## Available Tools

### Buffer Operations

| Tool | Description |
|------|-------------|
| `buffer_list` | Get list of all buffers |
| `buffer_get_content` | Get buffer content (with optional line range) |
| `buffer_create` | Create new buffer with optional initial content |
| `buffer_delete` | Delete a buffer |
| `buffer_info` | Get buffer info (name, filename, line count, cursor) |

### Editing Operations

| Tool | Description |
|------|-------------|
| `buffer_insert` | Insert text at position (line, column) |
| `buffer_replace` | Replace text in region |
| `buffer_delete_region` | Delete text in region |
| `buffer_set_content` | Replace entire buffer content |
| `buffer_save` | Save buffer to file |

### Command Operations

| Tool | Description |
|------|-------------|
| `command_list` | List available commands (with optional prefix filter) |
| `command_execute` | Execute a command with arguments |
| `command_info` | Get command information |
| `eval_expression` | Evaluate Lisp expression |

## Use Cases

### AI-Assisted Coding with Claude Code

Once connected, Claude Code can directly edit your code in Lem:

1. Start Lem and the MCP server
2. Register the server with Claude Code
3. Ask Claude to edit files - it will use Lem's buffers directly

### Remote Editor Control

The MCP server enables remote control of Lem for:
- Automation scripts
- IDE integrations
- Custom tooling

### Collaborative Editing

Multiple AI agents or tools can connect to the same Lem instance, enabling collaborative workflows.

## Configuration

### Custom Port

Start the server on a different port:

```
M-x mcp-server-start
Hostname: 127.0.0.1
Port: 8080
```

### Listen on All Interfaces

To allow remote connections (use with caution):

```
M-x mcp-server-start
Hostname: 0.0.0.0
Port: 7890
```

### Debugging

Enable logging to see MCP requests and responses:

```
M-x mcp-server-toggle-logging
```

View logs in the `*mcp-log*` buffer.

## Protocol Details

The server implements **MCP 2024-11-05** specification:

- **Transport**: HTTP with JSON-RPC 2.0
- **Server Name**: lem-mcp-server
- **Server Version**: 0.1.0

### Supported Methods

**Lifecycle**:
- `initialize` / `notifications/initialized`
- `shutdown` / `exit`
- `ping`

**Tools**:
- `tools/list`
- `tools/call`

**Resources**:
- `resources/list`
- `resources/read`

## Security Considerations

- By default, the server only listens on localhost (127.0.0.1)
- No authentication is required - ensure your firewall is configured appropriately
- Avoid exposing the server to untrusted networks
