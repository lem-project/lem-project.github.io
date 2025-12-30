---
title: Zig
---

`zig-mode` adds Zig language support to Lem:

- syntax highlighting, auto-indentation
- LSP integration via [zls](https://github.com/zigtools/zls)


### Syntax Highlighting

- Keywords (`fn`, `const`, `var`, `if`, `else`, `while`, `for`, `struct`, etc.)
- Builtin functions (`@import`, `@sizeOf`, `@TypeOf`, etc.)
- Primitive types (`u8`, `i32`, `bool`, `void`, `anytype`, etc.)
- Constants (`true`, `false`, `null`, `undefined`)
- Numeric literals (hex, binary, octal, decimal, float)
- Strings and comments (including doc comments `///`)

### Commands

| Key | Command | Description |
|-----|---------|-------------|
| `C-c C-f` | `zig-format-buffer` | Format with zig fmt |
| `C-c C-r` | `zig-run` | Run with zig run |
| `C-c C-b` | `zig-build` | Build with zig build |
| `C-c C-t` | `zig-test` | Test with zig test |

### Other Features

- Auto-indentation (4 spaces default)
- Function navigation (`beginning-of-defun`/`end-of-defun`)
- Electric close (`}`, `)`, `]` auto-indent)

### File Associations

- `.zig`, `.zon` → `zig-mode`
