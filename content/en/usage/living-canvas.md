---
title: Living Canvas - Visual Code Analysis
weight: 25
---

Living Canvas is a visual code analysis feature that displays function call graphs as an interactive, Figma-like canvas. It helps developers understand code structure, relationships, and execution flow.

Supported languages:

- Common Lisp

![](/living-canvas-demo.gif "Living Canvas - interactive function call graph visualization")

## Overview

Living Canvas transforms Common Lisp source code into a navigable graph where:
- **Nodes** represent functions, macros, and generic functions
- **Edges** represent function calls between them
- **Colors** distinguish different types (function, macro, generic-function)

This visualization helps with:
- Onboarding to new codebases
- Understanding function relationships
- Code review and impact analysis
- Finding circular dependencies

![](/living-canvas-graph.png "Call graph visualization of multiple packages")

## Getting Started

### Visualize a Package

Use `Alt-x living-canvas` and enter a package name:

```
Alt-x living-canvas
Package name: lem-core
```

This displays all functions in the package and their call relationships.

### Visualize Current File

Use `Alt-x living-canvas-current-file` to visualize functions in the current buffer:

```
Alt-x living-canvas-current-file
```

### Visualize an ASDF System

Use `Alt-x living-canvas-system` to visualize an entire ASDF system:

```
Alt-x living-canvas-system
System name: lem
```

## Canvas Interaction

### Viewing Node Details

**Single-click** on a node to see detailed information in the info panel:
- Function name and argument list
- Source file and line number
- Documentation string
- Number of callers and callees

### Navigating to Source Code

**Double-click** on a node to jump to its source code. The function definition will be highlighted in a split window.

![](/living-canvas-split.png "Split view with source code and canvas")

### Rearranging the Graph

**Drag nodes** to rearrange the layout. Node positions are preserved for the session.

### Searching

Use the search box to find functions by name. Matching nodes are highlighted while others are dimmed.

## Keybindings

When the canvas buffer is active:

| Key | Command | Description |
|-----|---------|-------------|
| `g` | Refresh | Reload the graph |
| `q` | Close | Close the canvas buffer |
| `t` | Toggle Trace | Toggle execution tracing (Phase 2) |
| `s` | Statistics | Show execution statistics (Phase 2) |

## Use Cases

### New Developer Onboarding

When joining a project, use `living-canvas-system` to get a visual overview of the codebase structure. Explore entry points and understand how components interact.

### Code Review

Before reviewing changes, visualize the affected package to understand the impact scope. Identify which functions depend on the changed code.

### Bug Investigation

Visualize the relevant module and trace the call path from the entry point to the problematic function. This helps identify where data transformations occur.

### Refactoring Planning

Use the graph to identify:
- Highly connected functions (potential bottlenecks)
- Circular dependencies that need breaking
- Functions that could be extracted to separate modules

## Configuration

Living Canvas uses the `lem-living-canvas` package. You can customize keybindings:

```lisp
(define-key lem-living-canvas:*living-canvas-mode-keymap*
            "r" 'lem-living-canvas:living-canvas-refresh)
```

## Future work

- use the Language Server Protocol to make it usable with other languages.
