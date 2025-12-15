---
title: MCP Server - AIエージェント連携
weight: 26
---

LemにはMCP（Model Context Protocol）サーバーが搭載されており、Claude CodeなどのAIエージェントがエディタと連携できます。このサーバーを通じて、AIはLem内のバッファを直接読み書きできます。

## Claude Codeとの連携

### 1. MCPサーバーを起動

Lemで以下を実行：

```
M-x mcp-server-start
```

Enterを2回押してデフォルト設定（localhost:7890）を使用します。

### 2. Claude Codeに登録

ターミナルで：

```bash
claude mcp add --transport http lem http://localhost:7890/mcp
```

### 3. 使用開始

これでClaude Codeを使う際、Lemで開いているファイルを直接編集できます。例えば：

- 「現在のバッファの関数を編集して」
- 「このコードにエラーハンドリングを追加して」
- 「このファイルをリファクタリングして」

Claude Codeはファイルを直接読み書きする代わりに、Lemのバッファを使用します。

## サーバーコマンド

| コマンド | 説明 |
|---------|------|
| `mcp-server-start` | サーバーを起動 |
| `mcp-server-stop` | サーバーを停止 |
| `mcp-server-status` | サーバー状態を表示 |
| `mcp-server-restart` | サーバーを再起動 |

## トラブルシューティング

### サーバー状態の確認

```
M-x mcp-server-status
```

サーバーURLと接続中のセッション数が表示されます。

### デバッグログの有効化

```
M-x mcp-server-toggle-logging
```

`C-x b *mcp-log*` で `*mcp-log*` バッファのログを確認できます。

### Claude Code接続の確認

```bash
claude mcp list
```

`lem` サーバーがリストに表示されるはずです。
