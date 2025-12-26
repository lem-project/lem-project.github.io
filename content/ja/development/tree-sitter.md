---
title: Tree-sitter 統合
weight: -3
---

Lemは[tree-sitter](https://tree-sitter.github.io/tree-sitter/)を統合し、高度な構文ハイライトとインデントを提供しています。Tree-sitterはインクリメンタルパースを提供し、編集に応じて構文木を効率的に更新できるため、パターンマッチングだけでなくコード構造を理解した機能が可能になります。

## 概要

LemのTree-sitter統合は以下を提供します：

- **構文ハイライト**: ASTノードに基づいた正確で言語対応のハイライト
- **インデント**: Tree-sitterクエリを使用した構造ベースのインデント
- **インクリメンタルパース**: ファイル全体を再パースせずに効率的な更新
- **グレースフルフォールバック**: Tree-sitterが利用できない場合は正規表現ベースのハイライトにフォールバック

## アーキテクチャ

```
                              ┌─────────────────┐
                              │  tree-sitter-cl │
                              │  (FFIバインディング) │
                              └────────┬────────┘
                                       │
┌─────────────────┐           ┌────────▼────────┐
│   言語モード    │──────────▶│ lem-tree-sitter │
│  (json, nix...) │           │   (拡張機能)    │
└─────────────────┘           └────────┬────────┘
                                       │
                              ┌────────▼────────┐
                              │   Lem バッファ   │
                              │  (syntax-parser) │
                              └─────────────────┘
```

統合は以下のコンポーネントで構成されます：

| コンポーネント | 場所 | 目的 |
|-------------|------|-----|
| `tree-sitter-cl` | 外部 | ネイティブtree-sitterへのFFIバインディング |
| `lem-tree-sitter` | `extensions/tree-sitter/` | コア統合モジュール |
| クエリファイル | `extensions/<mode>/tree-sitter/` | 言語ごとのハイライト/インデントルール |

## 対応言語

以下のモードがTree-sitterをサポートしています：

| 言語 | 構文ハイライト | インデント |
|-----|:------------:|:---------:|
| JSON | ✓ | - |
| YAML | ✓ | - |
| Nix | ✓ | ✓ |
| Markdown | ✓ | - |
| WAT (WebAssembly Text) | ✓ | - |

## モードにTree-sitterサポートを追加する

### ステップ1: クエリファイルの作成

モードの拡張フォルダ内に`tree-sitter/`ディレクトリを作成します：

```
extensions/your-mode/
├── your-mode.lisp
├── your-mode.asd
└── tree-sitter/
    ├── highlights.scm    # 構文ハイライトルール
    └── indents.scm       # インデントルール（オプション）
```

### ステップ2: ハイライトクエリの作成

ハイライトクエリはTree-sitterのS式クエリ構文を使用します。各クエリはASTノードをキャプチャし、ハイライトグループに割り当てます。

簡単な言語の`highlights.scm`の例：

```scheme
;; コメント
(comment) @comment

;; キーワード
[
  "if"
  "else"
  "let"
  "in"
  "function"
] @keyword

;; リテラル
(string) @string
(number) @number
(boolean) @constant.builtin

;; 関数
(function_definition
  name: (identifier) @function)

(function_call
  function: (identifier) @function.call)

;; 変数
(variable_declaration
  name: (identifier) @variable)

;; 演算子
["+" "-" "*" "/" "==" "!="] @operator

;; 括弧
["(" ")" "{" "}" "[" "]"] @punctuation.bracket
["," ";" ":"] @punctuation.delimiter
```

### ステップ3: モード定義でTree-sitterを有効化

モードのLispファイル内：

```lisp
(defpackage :lem-your-mode
  (:use :cl :lem :lem/language-mode))
(in-package :lem-your-mode)

(defvar *your-syntax-table*
  (let ((table (make-syntax-table ...)))
    ;; ベースの構文テーブルを設定
    table))

(defun tree-sitter-query-path ()
  "Tree-sitterハイライトクエリのパスを返す。"
  (asdf:system-relative-pathname :lem-your-mode "tree-sitter/highlights.scm"))

(defun tree-sitter-indent-query-path ()
  "Tree-sitterインデントクエリのパスを返す。"
  (asdf:system-relative-pathname :lem-your-mode "tree-sitter/indents.scm"))

(define-major-mode your-mode language-mode
    (:name "Your Mode"
     :syntax-table *your-syntax-table*
     :mode-hook *your-mode-hook*)
  ;; Tree-sitterを有効化（オプションのインデントクエリ付き）
  (lem-tree-sitter:enable-tree-sitter-for-mode
   *your-syntax-table*
   "your-language"  ; tree-sitter言語名
   (tree-sitter-query-path)
   :indent-query-path (tree-sitter-indent-query-path))
  (setf (variable-value 'enable-syntax-highlight) t))
```

### ステップ4: フォールバック処理（オプション）

Tree-sitterが利用できない場合の堅牢なエラーハンドリング：

```lisp
(defun try-enable-tree-sitter ()
  "Tree-sitterの有効化を試み、成功時にT、失敗時にNILを返す。"
  (ignore-errors
    (when (and (find-package :lem-tree-sitter)
               (funcall (find-symbol "TREE-SITTER-AVAILABLE-P" :lem-tree-sitter)))
      (funcall (find-symbol "ENABLE-TREE-SITTER-FOR-MODE" :lem-tree-sitter)
               *your-syntax-table* "your-language" (tree-sitter-query-path))
      t)))

(define-major-mode your-mode language-mode
    (:syntax-table *your-syntax-table*)
  (unless (try-enable-tree-sitter)
    ;; tmlanguageベースのハイライトにフォールバック
    (set-syntax-parser *your-syntax-table* (make-tmlanguage-your-lang)))
  (setf (variable-value 'enable-syntax-highlight) t))
```

## キャプチャ名リファレンス

LemはTree-sitterのキャプチャ名を構文属性にマッピングします。以下のキャプチャがサポートされています：

### コード要素

| キャプチャ | Lem属性 | 用途 |
|----------|---------|-----|
| `@keyword` | `syntax-keyword-attribute` | 言語キーワード |
| `@keyword.control` | `syntax-keyword-attribute` | 制御フローキーワード |
| `@keyword.function` | `syntax-keyword-attribute` | 関数関連キーワード |
| `@string` | `syntax-string-attribute` | 文字列リテラル |
| `@string.escape` | `syntax-constant-attribute` | エスケープシーケンス |
| `@number` | `syntax-constant-attribute` | 数値リテラル |
| `@comment` | `syntax-comment-attribute` | コメント |
| `@function` | `syntax-function-name-attribute` | 関数名 |
| `@function.call` | `syntax-function-name-attribute` | 関数呼び出し |
| `@function.builtin` | `syntax-builtin-attribute` | ビルトイン関数 |
| `@type` | `syntax-type-attribute` | 型名 |
| `@variable` | `syntax-variable-attribute` | 変数名 |
| `@variable.builtin` | `syntax-builtin-attribute` | ビルトイン変数 |
| `@constant` | `syntax-constant-attribute` | 定数 |
| `@constant.builtin` | `syntax-constant-attribute` | ビルトイン定数 |
| `@operator` | `syntax-builtin-attribute` | 演算子 |
| `@property` | `syntax-variable-attribute` | オブジェクトプロパティ |

### Markdown/ドキュメント要素

| キャプチャ | Lem属性 | 用途 |
|----------|---------|-----|
| `@markup.heading.1` - `@markup.heading.6` | `document-header1-attribute` - `document-header6-attribute` | 見出し |
| `@markup.bold` | `document-bold-attribute` | 太字 |
| `@markup.italic` | `document-italic-attribute` | イタリック |
| `@markup.raw` | `document-code-block-attribute` | コードブロック |
| `@markup.link` | `document-link-attribute` | リンク |
| `@markup.quote` | `document-blockquote-attribute` | 引用ブロック |

### 階層的フォールバック

キャプチャ名は階層的フォールバックをサポートしています。例えば、`@keyword.control`は特定のマッピングが存在しない場合、`@keyword`にフォールバックします。

## インデントクエリの作成

インデントクエリはHelixエディタの形式に従い、`@indent`と`@outdent`キャプチャを使用します。

### 基本構文

```scheme
;; インデントを増やすノード
[
  (block)
  (object)
  (array)
] @indent

;; インデントを減らすトークン
[
  "}"
  "]"
  ")"
] @outdent
```

### スコープルール

インデントシステムはスコープルールを使用します：

- **`@indent`**（スコープ: tail）: ノードが前の行で始まる場合のみ適用
- **`@outdent`**（スコープ: all）: トークンが行の先頭に現れる場合に適用

### 例: Nixのインデント

```scheme
;; インデントに寄与するノード
[
  (attrset_expression)
  (rec_attrset_expression)
  (let_expression)
  (list_expression)
  (function_expression)
  (if_expression)
] @indent

;; 閉じトークン
[
  "}"
  "]"
  ")"
] @outdent

;; 特別: "in"は"let"と同じレベル
(let_expression "in" @outdent)

;; 特別: "then"と"else"は"if"と同じレベル
(if_expression "then" @outdent)
(if_expression "else" @outdent)
```

## APIリファレンス

### 主要関数

#### `enable-tree-sitter-for-mode`

```lisp
(enable-tree-sitter-for-mode syntax-table language query-path &key indent-query-path)
```

モードの構文テーブルに対してTree-sitterを有効化します。

| パラメータ | 説明 |
|-----------|-----|
| `syntax-table` | モードの構文テーブル |
| `language` | Tree-sitter言語名（例: `"json"`） |
| `query-path` | `highlights.scm`へのパス |
| `indent-query-path` | `indents.scm`へのオプションパス |

成功時に`T`、失敗時に`NIL`を返します。

#### `tree-sitter-available-p`

```lisp
(tree-sitter-available-p) => boolean
```

システムでTree-sitterが利用可能かどうかをチェックします。

#### `get-buffer-treesitter-parser`

```lisp
(get-buffer-treesitter-parser buffer) => treesitter-parser or NIL
```

バッファのTree-sitterパーサーを取得します（存在する場合）。

### `treesitter-parser`クラス

Tree-sitter統合のコアクラス：

| スロット | アクセサ | 説明 |
|---------|---------|-----|
| `language-name` | `treesitter-parser-language-name` | 言語名（例: "json"） |
| `tree` | `treesitter-parser-tree` | 現在の構文木 |
| `highlight-query` | `treesitter-parser-highlight-query` | コンパイル済みハイライトクエリ |
| `indent-query` | `treesitter-parser-indent-query` | コンパイル済みインデントクエリ |

## インクリメンタルパース

Lemは自動的にインクリメンタルパースを処理します。バッファを編集すると：

1. 編集イベントが`after-change-functions`フックで記録される
2. 保留中の編集が既存の木に適用される
3. Tree-sitterが変更されていないASTノードを再利用
4. 変更された部分のみが再パースされる

これにより、大きなファイルでも効率的なパフォーマンスが得られます。

## Tree-sitter文法のインストール

Tree-sitter文法はシステムにインストールする必要があります。一般的な方法：

### tree-sitter CLIを使用

```bash
# tree-sitter CLIをインストール
npm install -g tree-sitter-cli

# 文法をクローンしてビルド
git clone https://github.com/tree-sitter/tree-sitter-json
cd tree-sitter-json
tree-sitter generate
```

### システムパッケージマネージャを使用

多くのディストリビューションがビルド済み文法を提供しています：

```bash
# Arch Linux
pacman -S tree-sitter-grammars

# macOS (Homebrew)
brew install tree-sitter

# Nix
nix-env -iA nixpkgs.tree-sitter-grammars.tree-sitter-json
```

## トラブルシューティング

### Tree-sitterが動作しない

1. Tree-sitterが利用可能かチェック：
   ```lisp
   (lem-tree-sitter:tree-sitter-available-p)
   ```

2. 言語文法がインストールされているかチェック：
   ```lisp
   (tree-sitter:get-language "json")
   ```

3. クエリファイルの存在を確認：
   ```lisp
   (probe-file (tree-sitter-query-path))
   ```

### 不正確なハイライト

1. tree-sitter CLIでクエリをテスト：
   ```bash
   tree-sitter query highlights.scm example.json
   ```

2. クエリファイルの構文エラーをチェック

3. キャプチャ名がサポートされている名前と一致しているか確認（キャプチャ名リファレンスを参照）

### パフォーマンスの問題

- Tree-sitterはインクリメンタルパースを使用しますが、非常に大きなファイルでは遅くなる可能性があります
- 極めて大きなファイルではハイライト範囲の制限を検討してください
- 文法に既知のパフォーマンス問題がないか確認してください

## リソース

- [Tree-sitterドキュメント](https://tree-sitter.github.io/tree-sitter/)
- [クエリの書き方](https://tree-sitter.github.io/tree-sitter/using-parsers#pattern-matching-with-queries)
- [tree-sitter-cl](https://github.com/lem-project/tree-sitter-cl) - Common Lispバインディング
- [Helixインデントクエリ](https://docs.helix-editor.com/guides/indent.html) - インデントクエリリファレンス
