---
title: Lisp mode (jp)
weight: -10
---
lemでのlisp-modeはデフォルトでemacsや他のエディタにあるのと同じslimeを提供しています。

slimeはクライアントサーバモデルで、エディタ(クライント)とcommon lispランタイム(サーバ)がやりとりをして  
common lispの開発に必要な機能を実現しています。

emacsやvimなどでのslimeの実装はクライアント側がエディタプロセスで、サーバ側はcommon lispプロセスでlemも同様ですが、  
lemの場合はエディタがcommon lispなのでサーバとクライアントを同じプロセスで動作させる事が可能です。  
なのでlem自身の開発をslimeの機能を使って行うことが出来ます。

lemではlisp-modeを開始したときにサーバと接続されていければ自動でlemプロセス内でサーバが起動、  
接続が行われslimeが始まるようになっています。

キーバインドはemacsのslimeとよく似ています。  
少し違う点はサーバプロセスをlem自身で起動しているか、別のプロセスかを区別しているのでコマンドを分けているところです。  
コマンド名にselfプリフィクスが付いているのが印です。

## keybind
`C-M-q (lisp-indent-sexp)`  
現在のカーソル位置の式をインデントします。

`C-c M-p (lisp-set-package)`  
現在のパッケージを変更します。
これはreplでだけ意味があります。
ファイル内では自動でin-package式からパッケージ名を決めるので変更してもそれに上書きされます。

`C-c M-: (lisp-eval-string)`  
ミニバッファに入力した式を評価します。

`M-: (self-lisp-eval-string)`  
現在のプロセスでミニバッファに入力した式を評価します。

`C-c C-e (lisp-eval-last-expression)`  
カーソル位置の前の式を評価します。

`C-x C-e (self-lisp-eval-last-expression)`  
現在のプロセスでカーソル位置の前の式を評価します。

`C-M-x (lisp-eval-defun)`  
カーソル位置にあるトップレベルの式を評価します。

`C-c C-r (lisp-eval-region)`  
選択した範囲を評価します。

`C-c C-l (lisp-load-file)`  
ファイルをロードします。
デフォルトでは現在のファイルです。

`C-c C-k (lisp-compile-and-load-file)`  
現在のファイルをコンパイルしロードします。

`C-c C-c (lisp-compile-defun)`  
カーソル位置にあるトップレベルの式をコンパイルします。

`C-c M-c (lisp-remove-notes)`  
コンパイルすると警告箇所に赤線が付くので、それを消すコマンドです。
正しい式に修正してコンパイルをやりなおすと消えますが、このコマンドでも消すことが出来ます。

`C-c Return (lisp-macroexpand)`  
カーソル位置にある式のmacroexpand-1の結果を別ウィンドウに表示します。

`C-c M-m (lisp-macroexpand-all)`  
カーソル位置にある式のmacroexpand-allの結果を別ウィンドウに表示します。

`C-c C-d C-a (lisp-autodoc-with-typeout)`  
関数の引数の情報を別ウィンドウに表示します。

`C-c C-d d (lisp-describe-symbol)`  
カーソル位置のシンボルのdescribeの結果を別ウィンドウに表示します。

`C-c C-z (lisp-switch-to-repl-buffer)`  
replウィンドウに切り替えます。

`C-c C-b (lisp-connection-list)`  
接続しているサーバのリストを表示します。

`C-c g (lisp-interrupt)`  
別スレッドで実行中の式を中断します。

`C-c C-q (lisp-quickload)`  
現在のパッケージ名でql:quickloadします。
主にpackage-inferred-systemを想定しています。
