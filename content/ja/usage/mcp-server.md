---
title: MCP Server - AIエージェント連携
weight: 26
---

LemにはMCP（Model Context Protocol）サーバーが搭載されており、Claude CodeなどのAIエージェントがエディタと連携できます。このサーバーを通じて、AIツールはバッファの読み書き、コマンドの実行、リソースへのアクセスが可能です。

## 概要

MCPサーバーはJSON-RPCプロトコルを使用してHTTPエンドポイント経由でLemの機能を公開します。以下のことが可能になります：

- **バッファ操作**: バッファの作成、読み取り、編集、削除
- **テキスト編集**: 特定位置へのテキスト挿入、置換、削除
- **コマンド実行**: Lemの任意のコマンドをプログラムから実行
- **リソースアクセス**: ファイルやバッファ内容の読み取り

## 使い方

### サーバーの起動

LemでMCPサーバーを起動：

```
M-x mcp-server-start
```

ホスト名とポートの入力を求められます。Enterを押すとデフォルト値が使用されます：
- **ホスト名**: 127.0.0.1
- **ポート**: 7890

### Claude Codeへの登録

サーバー起動後、Claude Codeに登録：

```bash
claude mcp add --transport http lem http://localhost:7890/mcp
```

接続を確認：

```bash
claude mcp list
```

### 接続テスト

curlでサーバーをテスト：

```bash
curl -X POST http://localhost:7890/mcp \
  -H "Content-Type: application/json" \
  -H "Mcp-Protocol-Version: 2024-11-05" \
  -d '{"jsonrpc":"2.0","id":1,"method":"tools/list","params":{}}'
```

## サーバーコマンド

| コマンド | 説明 |
|---------|------|
| `mcp-server-start` | MCPサーバーを起動 |
| `mcp-server-stop` | 実行中のサーバーを停止 |
| `mcp-server-status` | サーバーURLとアクティブセッションを表示 |
| `mcp-server-restart` | 新しい設定でサーバーを再起動 |
| `mcp-server-toggle-logging` | `*mcp-log*`バッファへのデバッグログを切替 |

## 利用可能なツール

### バッファ操作

| ツール | 説明 |
|--------|------|
| `buffer_list` | 全バッファのリストを取得 |
| `buffer_get_content` | バッファ内容を取得（行範囲指定可） |
| `buffer_create` | 新規バッファを作成（初期内容指定可） |
| `buffer_delete` | バッファを削除 |
| `buffer_info` | バッファ情報を取得（名前、ファイル名、行数、カーソル位置） |

### 編集操作

| ツール | 説明 |
|--------|------|
| `buffer_insert` | 指定位置（行、列）にテキストを挿入 |
| `buffer_replace` | 範囲内のテキストを置換 |
| `buffer_delete_region` | 範囲内のテキストを削除 |
| `buffer_set_content` | バッファ全体の内容を置換 |
| `buffer_save` | バッファをファイルに保存 |

### コマンド操作

| ツール | 説明 |
|--------|------|
| `command_list` | 利用可能なコマンドを一覧（プレフィックスでフィルタ可） |
| `command_execute` | 引数付きでコマンドを実行 |
| `command_info` | コマンド情報を取得 |
| `eval_expression` | Lisp式を評価 |

## ユースケース

### Claude CodeによるAI支援コーディング

接続後、Claude CodeはLemで直接コードを編集できます：

1. LemとMCPサーバーを起動
2. Claude Codeにサーバーを登録
3. Claudeにファイル編集を依頼 - Lemのバッファを直接使用

### リモートエディタ制御

MCPサーバーにより以下のLemリモート制御が可能：
- 自動化スクリプト
- IDE連携
- カスタムツール

### 協調編集

複数のAIエージェントやツールが同じLemインスタンスに接続し、協調ワークフローを実現。

## 設定

### カスタムポート

別のポートでサーバーを起動：

```
M-x mcp-server-start
Hostname: 127.0.0.1
Port: 8080
```

### 全インターフェースでリッスン

リモート接続を許可する場合（注意して使用）：

```
M-x mcp-server-start
Hostname: 0.0.0.0
Port: 7890
```

### デバッグ

MCPリクエストとレスポンスを確認するにはロギングを有効化：

```
M-x mcp-server-toggle-logging
```

ログは`*mcp-log*`バッファで確認できます。

## プロトコル詳細

サーバーは**MCP 2024-11-05**仕様を実装：

- **トランスポート**: HTTP + JSON-RPC 2.0
- **サーバー名**: lem-mcp-server
- **サーバーバージョン**: 0.1.0

### サポートされるメソッド

**ライフサイクル**:
- `initialize` / `notifications/initialized`
- `shutdown` / `exit`
- `ping`

**ツール**:
- `tools/list`
- `tools/call`

**リソース**:
- `resources/list`
- `resources/read`

## セキュリティに関する注意

- デフォルトではlocalhostのみでリッスン（127.0.0.1）
- 認証は不要 - ファイアウォールを適切に設定してください
- 信頼できないネットワークへの公開は避けてください
