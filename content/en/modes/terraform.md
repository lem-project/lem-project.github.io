---
title: Terraform
---

Lem supports Terraform files and editing them with the Terraform Language Server.

>! Terraform support was added on September 20th, 2024.

This is the default LSP configuration:

```lisp

(define-language-spec (terraform-spec lem-terraform-mode:terraform-mode)
  :language-id "terraform"
  :root-uri-patterns '()
  :command (lambda (port) `("terraform-ls" "serve" "-port" ,(princ-to-string port)))
  :install-command ""
  :readme-url "https://github.com/hashicorp/terraform-ls"
  :connection-mode :tcp)
```
