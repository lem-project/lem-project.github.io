---
title: How Lem works on each implementation
weight: 1
---

## Tests 
Lem has a test suite that uses [rove](https://github.com/fukamachi/rove) a great package to test systems, this page is inteded to show
the progress of each implementation. SBCL should be the default one, with all test green.

For now, this table reflect the implementation status from the branch `other-lisp-implementations`
from this pull request https://github.com/lem-project/lem/pull/686

### Implementations
{{< expand "SBCL - 2.3.3" >}}
{{< progress title="Progress" value="98" icon="gdoc_info_outline" >}}
## copy-ring
| Test        | Description                                                                                          | Result                |
|-------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (copy-ring) | Expect (EQ LEM/COMMON/RING:RING LEM-TESTS/COMMON/RING::RING2) to be false.                           | <strong> OK </strong> |
| (copy-ring) | Expect (EQUAL (LEM/COMMON/RING:RING-REF LEM/COMMON/RING:RING 0)
              (LEM/COMMON/RING:RI...                                                                                 | <strong> OK </strong> |
| (copy-ring) | Expect (EQUAL (LEM/COMMON/RING:RING-REF LEM/COMMON/RING:RING 1)
              (LEM/COMMON/RING:RI...                                                                                 | <strong> OK </strong> |

## ring-push
| Test        | Description                                                                                          | Result                |
|-------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (ring-push) | Expect (STRING=
        (WITH-OUTPUT-TO-STRING (LEM-TESTS/COMMON/RING::OUT)
          (LOOP :FOR ...                                                                                             | <strong> OK </strong> |

## ring-empty-p
| Test           | Description                                                             | Result                |
|----------------|-------------------------------------------------------------------------|-----------------------|
| (ring-empty-p) | Expect (LEM/COMMON/RING:RING-EMPTY-P LEM/COMMON/RING:RING) to be true.  | <strong> OK </strong> |
| (ring-empty-p) | Expect (LEM/COMMON/RING:RING-EMPTY-P LEM/COMMON/RING:RING) to be false. | <strong> OK </strong> |
| (ring-empty-p) | Expect (LEM/COMMON/RING:RING-EMPTY-P LEM/COMMON/RING:RING) to be false. | <strong> OK </strong> |
| (ring-empty-p) | Expect (LEM/COMMON/RING:RING-EMPTY-P LEM/COMMON/RING:RING) to be false. | <strong> OK </strong> |
| (ring-empty-p) | Expect (LEM/COMMON/RING:RING-EMPTY-P LEM/COMMON/RING:RING) to be false. | <strong> OK </strong> |
| (ring-empty-p) | Expect (LEM/COMMON/RING:RING-EMPTY-P LEM/COMMON/RING:RING) to be false. | <strong> OK </strong> |
| (ring-empty-p) | Expect (LEM/COMMON/RING:RING-EMPTY-P LEM/COMMON/RING:RING) to be false. | <strong> OK </strong> |
| (ring-empty-p) | Expect (LEM/COMMON/RING:RING-EMPTY-P LEM/COMMON/RING:RING) to be false. | <strong> OK </strong> |
| (ring-empty-p) | Expect (LEM/COMMON/RING:RING-EMPTY-P LEM/COMMON/RING:RING) to be false. | <strong> OK </strong> |
| (ring-empty-p) | Expect (LEM/COMMON/RING:RING-EMPTY-P LEM/COMMON/RING:RING) to be false. | <strong> OK </strong> |
| (ring-empty-p) | Expect (LEM/COMMON/RING:RING-EMPTY-P LEM/COMMON/RING:RING) to be false. | <strong> OK </strong> |

## ring-length
| Test          | Description                                                                                          | Result                |
|---------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (ring-length) | Expect (= 0 (LEM/COMMON/RING:RING-LENGTH LEM/COMMON/RING:RING)) to be true.                          | <strong> OK </strong> |
| (ring-length) | Expect (= (MIN 3 LEM-TESTS/COMMON/RING::I)
          (LEM/COMMON/RING:RING-LENGTH LEM/COMMON/RING...                                                              | <strong> OK </strong> |
| (ring-length) | Expect (= (MIN 3 LEM-TESTS/COMMON/RING::I)
          (LEM/COMMON/RING:RING-LENGTH LEM/COMMON/RING...                                                              | <strong> OK </strong> |
| (ring-length) | Expect (= (MIN 3 LEM-TESTS/COMMON/RING::I)
          (LEM/COMMON/RING:RING-LENGTH LEM/COMMON/RING...                                                              | <strong> OK </strong> |
| (ring-length) | Expect (= (MIN 3 LEM-TESTS/COMMON/RING::I)
          (LEM/COMMON/RING:RING-LENGTH LEM/COMMON/RING...                                                              | <strong> OK </strong> |
| (ring-length) | Expect (= (MIN 3 LEM-TESTS/COMMON/RING::I)
          (LEM/COMMON/RING:RING-LENGTH LEM/COMMON/RING...                                                              | <strong> OK </strong> |
| (ring-length) | Expect (= (MIN 3 LEM-TESTS/COMMON/RING::I)
          (LEM/COMMON/RING:RING-LENGTH LEM/COMMON/RING...                                                              | <strong> OK </strong> |
| (ring-length) | Expect (= (MIN 3 LEM-TESTS/COMMON/RING::I)
          (LEM/COMMON/RING:RING-LENGTH LEM/COMMON/RING...                                                              | <strong> OK </strong> |
| (ring-length) | Expect (= (MIN 3 LEM-TESTS/COMMON/RING::I)
          (LEM/COMMON/RING:RING-LENGTH LEM/COMMON/RING...                                                              | <strong> OK </strong> |
| (ring-length) | Expect (= (MIN 3 LEM-TESTS/COMMON/RING::I)
          (LEM/COMMON/RING:RING-LENGTH LEM/COMMON/RING...                                                              | <strong> OK </strong> |
| (ring-length) | Expect (= (MIN 3 LEM-TESTS/COMMON/RING::I)
          (LEM/COMMON/RING:RING-LENGTH LEM/COMMON/RING...                                                              | <strong> OK </strong> |

## ring-ref
| Test       | Description                                                                                          | Result                |
|------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (ring-ref) | Expect (EQL 5 (LEM/COMMON/RING:RING-REF LEM/COMMON/RING:RING 0)) to be true.                         | <strong> OK </strong> |
| (ring-ref) | Expect (EQL 4 (LEM/COMMON/RING:RING-REF LEM/COMMON/RING:RING 1)) to be true.                         | <strong> OK </strong> |
| (ring-ref) | Expect (EQL 3 (LEM/COMMON/RING:RING-REF LEM/COMMON/RING:RING 2)) to be true.                         | <strong> OK </strong> |
| (ring-ref) | Expect (EQL 2 (LEM/COMMON/RING:RING-REF LEM/COMMON/RING:RING 3)) to be true.                         | <strong> OK </strong> |
| (ring-ref) | Expect (EQL 1 (LEM/COMMON/RING:RING-REF LEM/COMMON/RING:RING 4)) to be true.                         | <strong> OK </strong> |
| (ring-ref) | Expect (LEM/COMMON/RING:RING-REF LEM/COMMON/RING:RING -1) to signal INVALID-INDEX-ERROR.             | <strong> OK </strong> |
| (ring-ref) | Expect (LEM/COMMON/RING:RING-REF LEM/COMMON/RING:RING LEM-TESTS/COMMON/RING::I) to signal INVALID... | <strong> OK </strong> |
| (ring-ref) | Expect (LEM/COMMON/RING:RING-REF LEM/COMMON/RING:RING LEM-TESTS/COMMON/RING::I) to signal INVALID... | <strong> OK </strong> |
| (ring-ref) | Expect (LEM/COMMON/RING:RING-REF LEM/COMMON/RING:RING LEM-TESTS/COMMON/RING::I) to signal INVALID... | <strong> OK </strong> |
| (ring-ref) | Expect (LEM/COMMON/RING:RING-REF LEM/COMMON/RING:RING LEM-TESTS/COMMON/RING::I) to signal INVALID... | <strong> OK </strong> |
| (ring-ref) | Expect (LEM/COMMON/RING:RING-REF LEM/COMMON/RING:RING LEM-TESTS/COMMON/RING::I) to signal INVALID... | <strong> OK </strong> |
| (ring-ref) | Expect (LEM/COMMON/RING:RING-REF LEM/COMMON/RING:RING LEM-TESTS/COMMON/RING::I) to signal INVALID... | <strong> OK </strong> |
| (ring-ref) | Expect (LEM/COMMON/RING:RING-REF LEM/COMMON/RING:RING LEM-TESTS/COMMON/RING::I) to signal INVALID... | <strong> OK </strong> |
| (ring-ref) | Expect (LEM/COMMON/RING:RING-REF LEM/COMMON/RING:RING LEM-TESTS/COMMON/RING::I) to signal INVALID... | <strong> OK </strong> |
| (ring-ref) | Expect (LEM/COMMON/RING:RING-REF LEM/COMMON/RING:RING LEM-TESTS/COMMON/RING::I) to signal INVALID... | <strong> OK </strong> |
| (ring-ref) | Expect (LEM/COMMON/RING:RING-REF LEM/COMMON/RING:RING LEM-TESTS/COMMON/RING::I) to signal INVALID... | <strong> OK </strong> |
| (ring-ref) | Expect (LEM/COMMON/RING:RING-REF LEM/COMMON/RING:RING LEM-TESTS/COMMON/RING::I) to signal INVALID... | <strong> OK </strong> |
| (ring-ref) | Expect (LEM/COMMON/RING:RING-REF LEM/COMMON/RING:RING LEM-TESTS/COMMON/RING::I) to signal INVALID... | <strong> OK </strong> |
| (ring-ref) | Expect (LEM/COMMON/RING:RING-REF LEM/COMMON/RING:RING LEM-TESTS/COMMON/RING::I) to signal INVALID... | <strong> OK </strong> |
| (ring-ref) | Expect (LEM/COMMON/RING:RING-REF LEM/COMMON/RING:RING LEM-TESTS/COMMON/RING::I) to signal INVALID... | <strong> OK </strong> |
| (ring-ref) | Expect (LEM/COMMON/RING:RING-REF LEM/COMMON/RING:RING LEM-TESTS/COMMON/RING::I) to signal INVALID... | <strong> OK </strong> |
| (ring-ref) | Expect (LEM/COMMON/RING:RING-REF LEM/COMMON/RING:RING LEM-TESTS/COMMON/RING::I) to signal INVALID... | <strong> OK </strong> |
| (ring-ref) | Expect (EQUAL 100 (SETF (LEM/COMMON/RING:RING-REF LEM/COMMON/RING:RING 0) 100)) to be true.          | <strong> OK </strong> |
| (ring-ref) | Expect (EQUAL 100 (LEM/COMMON/RING:RING-REF LEM/COMMON/RING:RING 0)) to be true.                     | <strong> OK </strong> |
| (ring-ref) | Expect (EQUAL "xx"
              (SETF (LEM/COMMON/RING:RING-REF LEM/COMMON/RING:RING 3) "xx")) t...                                   | <strong> OK </strong> |
| (ring-ref) | Expect (EQUAL "xx" (LEM/COMMON/RING:RING-REF LEM/COMMON/RING:RING 3)) to be true.                    | <strong> OK </strong> |
| (ring-ref) | Expect (SETF (LEM/COMMON/RING:RING-REF LEM/COMMON/RING:RING 5)
               'LEM-TESTS/COMMON/R...                                                                               | <strong> OK </strong> |

## simple-test
| Test                           | Description                                                                                          | Result                |
|--------------------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (simple-test)                  | Expect (NULL (LEM/COMMON/HISTORY:LAST-HISTORY LEM-TESTS/HISTORY::HISTORY)) to be true.               | <strong> OK </strong> |
| (simple-test)                  | Expect (EQUAL "foo"
              (LEM/COMMON/HISTORY:LAST-HISTORY LEM-TESTS/HISTORY::HISTORY)) t...                                                        | <strong> OK </strong> |
| (simple-test)                  | Expect (EQUAL "bar"
              (LEM/COMMON/HISTORY:LAST-HISTORY LEM-TESTS/HISTORY::HISTORY)) t...                                                        | <strong> OK </strong> |
| (simple-test previous-history) | Expect (EQUAL '("bar" T)
              (MULTIPLE-VALUE-LIST
               (LEM/COMMON/HISTORY:PR...                                                                                                | <strong> OK </strong> |
| (simple-test previous-history) | Expect (EQUAL '("foo" T)
              (MULTIPLE-VALUE-LIST
               (LEM/COMMON/HISTORY:PR...                                                                                                | <strong> OK </strong> |
| (simple-test previous-history) | Expect (NULL (LEM/COMMON/HISTORY:PREVIOUS-HISTORY LEM-TESTS/HISTORY::HISTORY)) to be true.           | <strong> OK </strong> |
| (simple-test next-history)     | Expect (EQUAL '("bar" T)
              (MULTIPLE-VALUE-LIST
               (LEM/COMMON/HISTORY:NE...                                                                                                | <strong> OK </strong> |
| (simple-test next-history)     | Expect (NULL (LEM/COMMON/HISTORY:NEXT-HISTORY LEM-TESTS/HISTORY::HISTORY)) to be true.               | <strong> OK </strong> |

## appending-if-empty
| Test                 | Description                                                                                          | Result                |
|----------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (appending-if-empty) | Expect (EQUAL "abc"
              (LEM/COMMON/KILLRING:PEEK-KILLRING-ITEM
               LEM-TEST...                                                                                                    | <strong> OK </strong> |

## before-inserting
| Test               | Description                                                                                          | Result                |
|--------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (before-inserting) | Expect (EQUAL "ba"
              (LEM/COMMON/KILLRING:PEEK-KILLRING-ITEM
               LEM-TESTS...                                                                                                 | <strong> OK </strong> |
| (before-inserting) | Expect (EQUAL "cba"
              (LEM/COMMON/KILLRING:PEEK-KILLRING-ITEM
               LEM-TEST...                                                                                                  | <strong> OK </strong> |

## rotate-to-empty-killring
| Test | Description | Result                |
|------|-------------|-----------------------|
| NIL  | no error    | <strong> OK </strong> |

## rotate
| Test     | Description                                                                                          | Result                |
|----------|------------------------------------------------------------------------------------------------------|-----------------------|
| (rotate) | Expect (EQUAL "a"
              (LEM/COMMON/KILLRING:PEEK-KILLRING-ITEM
               LEM-TESTS/...                                                                                      | <strong> OK </strong> |
| (rotate) | Expect (EQUAL "b"
              (LEM/COMMON/KILLRING:PEEK-KILLRING-ITEM
               LEM-TESTS/...                                                                                      | <strong> OK </strong> |
| (rotate) | Expect (EQUAL "b"
              (LEM/COMMON/KILLRING:PEEK-KILLRING-ITEM
               LEM-TESTS/...                                                                                      | <strong> OK </strong> |
| (rotate) | Expect (EQUAL "a"
              (LEM/COMMON/KILLRING:PEEK-KILLRING-ITEM
               LEM-TESTS/...                                                                                      | <strong> OK </strong> |

## internal-option
| Test              | Description                                                                                          | Result                |
|-------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (internal-option) | Expect (EQUAL '("foo" (:TEST))
              (MULTIPLE-VALUE-LIST
               (LEM/COMMON/KILL...                                                                                         | <strong> OK </strong> |
| (internal-option) | Expect (EQUAL '("foobar" (:TEST :TEST2))
              (MULTIPLE-VALUE-LIST
               (LEM/C...                                                                                                   | <strong> OK </strong> |
| (internal-option) | Expect (EQUAL '("bazfoobar" (:TEST3 :TEST :TEST2))
              (MULTIPLE-VALUE-LIST
           ...                                                                                                             | <strong> OK </strong> |

## peek-killring-item-when-empty
| Test                            | Description                                                                                          | Result                |
|---------------------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (peek-killring-item-when-empty) | Expect (NULL
        (LEM/COMMON/KILLRING:PEEK-KILLRING-ITEM
         LEM-TESTS/COMMON/KILLRING::...                                                                                                  | <strong> OK </strong> |

## timer-name-tests
| Test               | Description                                                         | Result                |
|--------------------|---------------------------------------------------------------------|-----------------------|
| (timer-name-tests) | Expect (STRING= "TESTING-TIMER" LEM-TESTS/TIMER::VALUE) to be true. | <strong> OK </strong> |
| (timer-name-tests) | Expect (STRING= "TESTING-TIMER" LEM-TESTS/TIMER::VALUE) to be true. | <strong> OK </strong> |
| (timer-name-tests) | Expect (STRING= "HELLO" LEM-TESTS/TIMER::VALUE) to be true.         | <strong> OK </strong> |
| (timer-name-tests) | Expect (STRING= "foo" LEM-TESTS/TIMER::VALUE) to be true.           | <strong> OK </strong> |

## simple-timer-test
| Test                | Description                                                                              | Result                |
|---------------------|------------------------------------------------------------------------------------------|-----------------------|
| (simple-timer-test) | Expect (LEM-MAILBOX:RECEIVE-MESSAGE LEM-TESTS/TIMER::MAILBOX :TIMEOUT 0.01) to be true.  | <strong> OK </strong> |
| (simple-timer-test) | Expect LEM-TESTS/TIMER::TIMEOUT to be true.                                              | <strong> OK </strong> |
| (simple-timer-test) | Expect (LEM-MAILBOX:RECEIVE-MESSAGE LEM-TESTS/TIMER::MAILBOX :TIMEOUT 0.01) to be false. | <strong> OK </strong> |
| (simple-timer-test) | Expect (LEM/COMMON/TIMER:TIMER-EXPIRED-P LEM/COMMON/TIMER:TIMER) to be true.             | <strong> OK </strong> |

## compute-the-time-for-the-next-idle-timer-to-be-called
| Test                                                    | Description                                                           | Result                |
|---------------------------------------------------------|-----------------------------------------------------------------------|-----------------------|
| (compute-the-time-for-the-next-idle-timer-to-be-called) | Expect (NULL (LEM/COMMON/TIMER:GET-NEXT-TIMER-TIMING-MS)) to be true. | <strong> OK </strong> |
| (compute-the-time-for-the-next-idle-timer-to-be-called) | Expect (= 10 (LEM/COMMON/TIMER:GET-NEXT-TIMER-TIMING-MS)) to be true. | <strong> OK </strong> |
| (compute-the-time-for-the-next-idle-timer-to-be-called) | Expect (= 8 (LEM/COMMON/TIMER:GET-NEXT-TIMER-TIMING-MS)) to be true.  | <strong> OK </strong> |
| (compute-the-time-for-the-next-idle-timer-to-be-called) | Expect (= 0 (LEM/COMMON/TIMER:GET-NEXT-TIMER-TIMING-MS)) to be true.  | <strong> OK </strong> |
| (compute-the-time-for-the-next-idle-timer-to-be-called) | Expect (= -8 (LEM/COMMON/TIMER:GET-NEXT-TIMER-TIMING-MS)) to be true. | <strong> OK </strong> |

## eval-tests
| Test                                | Description                                                                                          | Result                |
|-------------------------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (eval-tests return evaluated value) | Expect (EQUAL "(1 . 2)"
              (MICROS/LSP-API:EVAL-RESULT-VALUE
               LEM-LANGUA...                                                                                                                 | <strong> OK </strong> |
| (eval-tests return evaluated value) | Expect (NULL
        (MICROS/LSP-API:EVAL-RESULT-ERROR
         LEM-LANGUAGE-SERVER/MICROS-TESTS:...                                                                                                | <strong> OK </strong> |
| (eval-tests reader error)           | Expect (NULL
        (MICROS/LSP-API:EVAL-RESULT-VALUE
         LEM-LANGUAGE-SERVER/MICROS-TESTS:...                                                                                                | <strong> OK </strong> |
| (eval-tests reader error)           | Expect (STRINGP
        (MICROS/LSP-API:EVAL-RESULT-ERROR
         LEM-LANGUAGE-SERVER/MICROS-TES...                                                                                                   | <strong> OK </strong> |

## initialize
| Test         | Description                                                                                          | Result                |
|--------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (initialize) | Expect (LEM-LSP-BASE/CONVERTER:CONVERT-FROM-JSON
        LEM-TESTS/LANGUAGE-SERVER/TESTS::RESPONS...                                                                   | <strong> OK </strong> |

## shutdown
| Test       | Description                                                                                          | Result                |
|------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (shutdown) | shutdown without initialize-request results in uninitialized-error                                   | <strong> OK </strong> |
| (shutdown) | Expect (LEM-LANGUAGE-SERVER:SERVER-SHUTDOWN-REQUEST-RECEIVED-P
        (LEM-LANGUAGE-SERVER:CURRE...                                                                               | <strong> OK </strong> |

## exit
| Test   | Description                                                                                          | Result                |
|--------|------------------------------------------------------------------------------------------------------|-----------------------|
| (exit) | Expect (EQL 0
            (LEM-LANGUAGE-SERVER:MOCK-SERVER-EXIT-STATUS
             (LEM-LANGUAGE...                                                                                   | <strong> OK </strong> |
| (exit) | Expect (EQL 1
            (LEM-LANGUAGE-SERVER:MOCK-SERVER-EXIT-STATUS
             (LEM-LANGUAGE...                                                                                   | <strong> OK </strong> |

## textdocument/didopen
| Test                   | Description                                                                                          | Result                |
|------------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (textdocument/didopen) | Expect (EQUAL "file:///hoge/piyo/foo.lisp"
              (LEM-LANGUAGE-SERVER:TEXT-DOCUMENT-URI
 ...                                                                                                                            | <strong> OK </strong> |
| (textdocument/didopen) | Expect (EQUAL "lisp"
              (LEM-LANGUAGE-SERVER:TEXT-DOCUMENT-LANGUAGE-ID
               ...                                                                                                              | <strong> OK </strong> |
| (textdocument/didopen) | Expect (EQUAL 1
              (LEM-LANGUAGE-SERVER:TEXT-DOCUMENT-VERSION
               LEM-TESTS...                                                                                                     | <strong> OK </strong> |
| (textdocument/didopen) | Expect (LEM-BASE:BUFFER-TEMPORARY-P LEM-TESTS/LANGUAGE-SERVER/TESTS::BUFFER) to be true.             | <strong> OK </strong> |
| (textdocument/didopen) | Expect (EQ LEM-LISP-SYNTAX.SYNTAX-TABLE:*SYNTAX-TABLE*
           (LEM-BASE:BUFFER-SYNTAX-TABLE
 ...                                                                                                                            | <strong> OK </strong> |
| (textdocument/didopen) | Expect (EQUAL "(cons 1 2)"
              (LEM-BASE:BUFFER-TEXT LEM-TESTS/LANGUAGE-SERVER/TESTS::B...                                                       | <strong> OK </strong> |

## textdocument/didchange
| Test                                               | Description                                                                                          | Result                |
|----------------------------------------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (textdocument/didchange Change the whole document) | Expect (EQUAL "x" (LEM-TESTS/LANGUAGE-SERVER/TESTS::GET-TEXT)) to be true.                           | <strong> OK </strong> |
| (textdocument/didchange insert)                    | Expect (EQUAL
        (LEM-TESTS/LANGUAGE-SERVER/UTILS:LINES "abchoge" "xyzpiyo" "fuga")
        ...                                                                                                                                                 | <strong> OK </strong> |
| (textdocument/didchange delete)                    | Expect (EQUAL (LEM-TESTS/LANGUAGE-SERVER/UTILS:LINES "hoge" "yo" "fuga")
              (LEM-TESTS...                                                                                                                                 | <strong> OK </strong> |
| (textdocument/didchange delete)                    | Expect (EQUAL (LEM-TESTS/LANGUAGE-SERVER/UTILS:LINES "hoge" "fuga")
              (LEM-TESTS/LANG...                                                                                                                            | <strong> OK </strong> |

## textdocument/didclose
| Test                    | Description                                                                                          | Result                |
|-------------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (textdocument/didclose) | Expect (NULL
        (LEM-LANGUAGE-SERVER:FIND-TEXT-DOCUMENT
         (MAKE-INSTANCE 'LEM-LSP-BAS...                                                                                          | <strong> OK </strong> |

## cond-1
| Test     | Description | Result                |
|----------|-------------|-----------------------|
| (cond-1) | COND-1      | <strong> OK </strong> |

## defclass-1
| Test         | Description | Result                |
|--------------|-------------|-----------------------|
| (defclass-1) | DEFCLASS-1  | <strong> OK </strong> |

## indent-test-under-lem-base
| Test                         | Description                                                                                          | Result                |
|------------------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:1:(in-package :lem-base)               | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:3:(defun same-line-p (point1 point2)   | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:9:(defun first-line-p (point)          | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:14:(defun last-line-p (point)          | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:19:(defun start-line-p (point)         | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:23:(defun end-line-p (point)           | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:28:(defun start-buffer-p (point)       | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:32:(defun end-buffer-p (point)         | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:36:(defun %move-to-position (point ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:44:(defun move-point (point new-point) | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:53:(defun line-start (point)           | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:58:(defun line-end (point)             | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:64:(defun buffer-start (point)         | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:68:(defun buffer-end (point)           | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:72:(defun line-offset (point n &opt... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:102:(declaim (inline %character-off... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:103:(defun %character-offset (point... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:124:(defun character-offset (point n)  | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:134:(defun character-at (point &opt... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:145:(defun line-string (point)         | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:149:(defun text-property-at (point ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:160:(defun put-text-property (start... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:177:(defun remove-text-property (st... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:192:(defun next-single-property-cha... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:206:(defun previous-single-property... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:220:(defun insert-character (point ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:225:(defun insert-string (point str... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:242:(defun delete-character (point ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:253:(defun erase-buffer (&optional ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:260:(defun region-beginning (&optio... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:265:(defun region-end (&optional (b... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:270:(defun %map-region (start end f... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:289:(defun map-region (start end fu... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:296:(defun points-to-string (start-... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:307:(defun count-characters (start-... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:318:(defun delete-between-points (s... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:327:(defun count-lines (start-point... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:334:(defun apply-region-lines (star... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:347:(defun line-number-at-point (po... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:351:(defun point-column (point)        | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:358:(defun move-to-column (point co... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:379:(defun position-at-point (point)   | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:386:(defun move-to-position (point ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:397:(defun point-bytes (point)         | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:409:(defun move-to-bytes (point bytes) | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:422:(defun move-to-line (point line... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:441:(defun check-marked ()             | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:446:(defun set-current-mark (point)    | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:452:(defun blank-line-p (point)        | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:466:(defun skip-chars-internal (poi... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:477:(defun skip-chars-forward (poin... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:484:(defun skip-chars-backward (poi... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:491:(defun invoke-save-excursion (f... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:504:(defun insert-buffer (point buf... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:513:(defun buffer-text (buffer)        | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-insert.lisp:1:(in-package :lem-base)       | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-insert.lisp:3:(defvar *inhibit-read-onl... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-insert.lisp:6:(defvar *inhibit-modifica... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-insert.lisp:9:(define-editor-variable b... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-insert.lisp:10:(define-editor-variable ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-insert.lisp:12:(defun step-on-read-only... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-insert.lisp:22:(defun check-read-only-a... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-insert.lisp:31:(defmacro with-modify-bu... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-insert.lisp:39:(defun line-next-n (line n) | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-insert.lisp:44:(defun shift-markers (po... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-insert.lisp:104:(defun %insert-newline/... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-insert.lisp:113:(defgeneric insert-char... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-insert.lisp:135:(defun %insert-line-str... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-insert.lisp:143:(defgeneric insert-stri... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-insert.lisp:167:(defun %delete-line-bet... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-insert.lisp:180:(defun %delete-line-eol... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-insert.lisp:187:(defun %delete-line/poi... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-insert.lisp:201:;;TODO: ABCL complains ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-insert.lisp:201:;;TODO: ABCL complains ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-insert.lisp:201:;;TODO: ABCL complains ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-insert.lisp:201:;;TODO: ABCL complains ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-insert.lisp:201:;;TODO: ABCL complains ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-insert.lisp:201:;;TODO: ABCL complains ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-insert.lisp:201:;;TODO: ABCL complains ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-insert.lisp:201:;;TODO: ABCL complains ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-insert.lisp:201:;;TODO: ABCL complains ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-insert.lisp:201:;;TODO: ABCL complains ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-insert.lisp:201:;;TODO: ABCL complains ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-insert.lisp:201:;;TODO: ABCL complains ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-insert.lisp:202:#+abcl                     | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-insert.lisp:202:#+abcl                     | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-insert.lisp:202:#+abcl                     | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-insert.lisp:203:(defparameter n nil)       | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-insert.lisp:205:(defgeneric delete-char... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-insert.lisp:233:                         | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-insert.lisp:234:(declaim (inline call-b... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-insert.lisp:237:(defun call-before-chan... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-insert.lisp:242:(defun call-after-chang... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-insert.lisp:247:(defmacro insert/after-... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-insert.lisp:258:(defmacro delete/after-... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-insert.lisp:269:(defmethod insert-char/... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-insert.lisp:280:(defmethod insert-strin... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-insert.lisp:291:(defmethod delete-char/... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-list-manager.lisp:1:(in-package :lem-base) | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-list-manager.lisp:3:(defgeneric delete-... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-list-manager.lisp:5:(defclass buffer-li... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-list-manager.lisp:11:(defvar *buffer-li... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-list-manager.lisp:13:(defun buffer-list... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-list-manager.lisp:16:(defun call-with-c... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-list-manager.lisp:22:(defmacro with-cur... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:1:(in-package :lem-base)              | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:3:(defparameter +primordial-buffer... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:5:(defclass buffer ()                 | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:88:(defclass text-buffer (buffer)     | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:91:(defmethod buffer-mark ((buffer... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:94:(defmethod buffer-mark-p ((buff... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:97:;; workaround for windows          | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:97:;; workaround for windows          | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:97:;; workaround for windows          | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:97:;; workaround for windows          | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:97:;; workaround for windows          | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:98:#+win32                            | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:98:#+win32                            | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:98:#+win32                            | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:99:(defmethod initialize-instance ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:103:(setf (documentation 'buffer-p... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:104:(setf (documentation 'buffer-m... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:105:(setf (documentation 'buffer-s... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:106:(setf (documentation 'buffer-e... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:108:(defvar *current-buffer*)         | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:110:(defun primordial-buffer ()       | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:113:(defun current-buffer ()          | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:120:(defun (setf current-buffer) (... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:125:(defparameter *undo-modes* '(:... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:126:(defvar *undo-mode* :edit)        | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:128:(defun last-edit-history (buffer) | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:133:(defun make-buffer-start-point... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:136:(defun make-buffer-end-point (... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:139:(defgeneric make-buffer-point ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:143:(defun make-buffer (name &key ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:172:(defun bufferp (x)                | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:176:(defun buffer-modified-p (&opt... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:180:(defun buffer-enable-undo-p (&... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:184:(defun buffer-enable-undo (buf... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:189:(defun buffer-disable-undo (bu... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:196:(defmethod print-object ((buff... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:202:(defun %buffer-clear-keep-binf... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:209:(defun buffer-free (buffer)       | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:214:(defun deleted-buffer-p (buffer)  | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:217:(defun buffer-name (&optional ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:221:(defun buffer-filename (&optio... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:226:(defun (setf buffer-filename) ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:230:(defun buffer-directory (&opti... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:235:(defun (setf buffer-directory)... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:242:(defun buffer-unmark (buffer)     | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:246:(defun buffer-mark-cancel (buf... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:249:(defun buffer-attributes (buffer) | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:259:(defun check-read-only-buffer ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:263:(defun buffer-modify (buffer)     | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:271:(defun push-undo-stack (buffer... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:274:(defun push-redo-stack (buffer... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:277:(defun push-undo (buffer edit)    | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:288:(defun buffer-rename (buffer n... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:296:(defun buffer-undo-1 (point)      | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:305:(defun buffer-undo (point)        | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:319:(defun buffer-redo-1 (point)      | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:327:(defun buffer-redo (point)        | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:340:(defun buffer-undo-boundary (&... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:344:(defun buffer-value (buffer na... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:353:(defun (setf buffer-value) (va... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:360:(defun buffer-unbound (buffer ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:364:(defun clear-buffer-variables ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:368:(defun call-with-buffer-point ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:374:(defmacro with-buffer-point ((... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffers.lisp:1:(in-package :lem-base)             | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffers.lisp:3:(define-editor-variable kill-bu... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffers.lisp:5:(defun buffer-list ()              | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffers.lisp:9:(defun set-buffer-list (buffer-... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffers.lisp:13:(defun add-buffer (buffer)        | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffers.lisp:18:(defun any-modified-buffer-p ()   | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffers.lisp:24:(defun get-buffer (buffer-or-n... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffers.lisp:35:(defun unique-buffer-name (name)  | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffers.lisp:44:(defmethod delete-buffer-using... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffers.lisp:49:(defun delete-buffer (buffer)     | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffers.lisp:55:(defun get-next-buffer (buffer)   | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffers.lisp:61:(defun get-previous-buffer (bu... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffers.lisp:69:(defun unbury-buffer (buffer)     | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffers.lisp:77:(defun bury-buffer (buffer)       | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffers.lisp:86:(defun get-file-buffer (filename) | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/check-corruption.lisp:1:(in-package :lem-base)    | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/check-corruption.lisp:3:(defmacro debug-assert... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/check-corruption.lisp:7:(defun check-line-corr... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/check-corruption.lisp:31:(defun check-lines-co... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/check-corruption.lisp:39:(defun check-buffer-p... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/check-corruption.lisp:50:(defun check-buffer-c... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/check-corruption.lisp:69:(defun check-all-buff... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/eastasian.lisp:1:(in-package :lem-base)           | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/eastasian.lisp:3:(eval-when (:compile-toplevel... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/eastasian.lisp:52:(defmacro %eastasian-code-p ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/eastasian.lisp:59:(defun eastasian-code-p (code)  | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/edit.lisp:1:(in-package :lem-base)                | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/edit.lisp:3:(defun make-edit (kind linum charp... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/edit.lisp:6:(defun %apply-edit (point kind lin... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/edit.lisp:23:(defun apply-inverse-edit (edit p... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/editor-variables.lisp:1:(in-package :lem-base)    | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/editor-variables.lisp:3:(define-editor-variabl... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/encodings.lisp:1:(in-package :lem-base)           | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/encodings.lisp:3:(defclass encoding ()            | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/encodings.lisp:8:(defclass internal-encoding (... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/encodings.lisp:13:(defvar *encoding-collection... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/encodings.lisp:15:(defun register-encoding (sy... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/encodings.lisp:22:(defun unregister-encoding (... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/encodings.lisp:25:(defun encoding (symbol end-... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/encodings.lisp:32:(defun e+ (c) (+ #xe000 c))     | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/encodings.lisp:34:(defun encoding-read-detect-... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/encodings.lisp:79:(defgeneric encoding-read (e... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/encodings.lisp:81:(defgeneric encoding-write (... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/encodings.lisp:83:(defgeneric encoding-check (... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/encodings.lisp:85:(defmethod encoding-check (e... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/errors.lisp:1:(in-package :lem-base)              | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/errors.lisp:3:(define-condition editor-conditi... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/errors.lisp:6:(define-condition directory-does... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/errors.lisp:13:(define-condition read-only-err... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/errors.lisp:19:(define-condition editor-error ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/errors.lisp:28:(defun editor-error (message &r... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/errors.lisp:31:(defun scan-error ()               | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/errors.lisp:34:(define-condition editor-interr... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/file-utils.lisp:1:(in-package :lem-base)          | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/file-utils.lisp:3:(defun guess-host-name (file... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/file-utils.lisp:12:(defun parse-filename (file... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/file-utils.lisp:40:(defun expand-file-name (fi... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/file-utils.lisp:45:(defun tail-of-pathname (pa... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/file-utils.lisp:53:(defun probe-file% (x)         | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/file-utils.lisp:63:(defun virtual-probe-file (... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/file-utils.lisp:68:(defun sort-files (pathname... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/file-utils.lisp:73:(defun sort-files-with-meth... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/file-utils.lisp:83:(defun directory-files (pat... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/file-utils.lisp:90:(defun list-directory (dire... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/file-utils.lisp:100:(defun file-size (pathname)   | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/file-utils.lisp:110:(defun file-mtime (pathname)  | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/file-utils.lisp:117:(defun copy-file-or-direct... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/file-utils.lisp:133:(defparameter *virtual-fil... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/file-utils.lisp:135:(defun open-virtual-file (... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/file-utils.lisp:153:(defmacro with-open-virtua... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/file.lisp:1:(in-package :lem-base)                | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/file.lisp:3:(defvar *find-file-hook* '())         | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/file.lisp:5:(define-editor-variable before-sav... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/file.lisp:6:(define-editor-variable after-save... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/file.lisp:8:(defvar *external-format-function*... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/file.lisp:9:(defvar *find-directory-function* ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/file.lisp:10:(defvar *default-external-format*... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/file.lisp:12:(define-condition encoding-read-e... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/file.lisp:20:(defun %encoding-read (encoding p... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/file.lisp:46:(defun insert-file-contents (poin... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/file.lisp:71:(defun find-file-buffer (filename... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/file.lisp:111:(defun write-to-file-1 (buffer f... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/file.lisp:115:(defun run-before-save-hooks (bu... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/file.lisp:119:(defun run-after-save-hooks (buf... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/file.lisp:123:(defun call-with-write-hook (buf... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/file.lisp:129:(defmacro with-write-hook (buffe... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/file.lisp:132:(defun write-to-file (buffer fil... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/file.lisp:136:(defun %write-region-to-file (en... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/file.lisp:152:(defun %%write-region-to-file (e... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/file.lisp:168:(defun write-region-to-file (sta... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/file.lisp:188:(defun file-write-date* (buffer)    | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/file.lisp:192:(defun update-changed-disk-date ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/file.lisp:196:(defun changed-disk-p (buffer)      | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/hooks.lisp:1:(in-package :lem-base)               | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/hooks.lisp:3:(defgeneric run-hooks (hooks &res... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/hooks.lisp:5:(defmethod run-hooks ((hooks list... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/hooks.lisp:9:(defmacro add-hook (place callbac... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/hooks.lisp:20:(defmacro remove-hook (place cal... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/icon.lisp:1:(in-package :lem-base)                | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/icon.lisp:3:(defvar *icon-name-table* (make-ha... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/icon.lisp:4:(defvar *icon-code-table* (make-ha... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/icon.lisp:5:(defvar *icon-ext-table* (make-has... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/icon.lisp:7:(defstruct icon                       | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/icon.lisp:12:(defun register-icon (name code &... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/icon.lisp:18:(defun register-icon-ext (ext name)  | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/icon.lisp:21:(defun icon-code-p (code)            | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/icon.lisp:24:(defun icon-string (name)            | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/icon.lisp:29:(defun icon-string-by-ext (ext)      | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/icon.lisp:33:(defun icon-value (code key)         | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/icon.lisp:38:(register-icon "folder" #x1f4c1)     | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/indent.lisp:1:(in-package :lem-base)              | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/indent.lisp:3:(define-editor-variable indent-t... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/indent.lisp:4:(define-editor-variable calc-ind... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/indent.lisp:5:(define-editor-variable indent-w... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/indent.lisp:7:(defun back-to-indentation (point)  | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/indent.lisp:11:(defun indent-line-1 (point col... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/indent.lisp:46:(defun calc-indent-default (point) | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/indent.lisp:52:(defun indent-line (point)         | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/indent.lisp:58:(defun indent-points (start end)   | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/indent.lisp:64:(defun indent-buffer (buffer)      | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/indent.lisp:68:(defun insert-string-and-indent... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/line.lisp:1:(in-package :lem-base)                | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/line.lisp:3:(defstruct (line (:constructor %ma... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/line.lisp:11:(defmethod print-object ((object ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/line.lisp:17:(defun make-line (prev next str)     | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/line.lisp:27:(defun make-empty-line ()            | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/line.lisp:30:(defun line-alive-p (line)           | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/line.lisp:33:(defun line-char (line i)            | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/line.lisp:38:(defun line-length (line)            | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/line.lisp:41:(defun remove-elements (elements ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/line.lisp:56:(defun normalization-elements (el... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/line.lisp:75:(defun subseq-elements (elements ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/line.lisp:87:(defun offset-elements (elements n)  | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/line.lisp:91:(defun put-elements (elements sta... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/line.lisp:96:(defun merge-plist (plist1 plist2)   | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/line.lisp:106:(defun line-merge (curr-line nex... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/line.lisp:119:(defun line-normalization-plist ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/line.lisp:123:(defun line-remove-property (lin... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/line.lisp:127:(defun line-add-property (line s... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/line.lisp:135:(defun line-clear-property (line... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/line.lisp:138:(defun line-search-property (lin... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/line.lisp:145:(defun line-search-property-rang... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/line.lisp:155:(defun line-property-insert-pos ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/line.lisp:167:(defun line-property-insert-newl... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/line.lisp:193:(defun line-property-delete-pos ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/line.lisp:217:(defun line-property-delete-line... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/line.lisp:230:(defun line-string/attributes (l... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/line.lisp:234:(defun line-free (line)             | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/macros.lisp:1:(in-package :lem-base)              | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/macros.lisp:3:(defmacro save-excursion (&body ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/macros.lisp:8:(defmacro with-point (bindings &... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/macros.lisp:38:(defmacro with-buffer-read-only... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/macros.lisp:47:(defvar *interrupts-enabled* t)    | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/macros.lisp:48:(defvar *interrupted* nil)         | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/macros.lisp:50:(defmacro %without-interrupts (... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/macros.lisp:56:(defmacro without-interrupts (&... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/macros.lisp:66:;; 別のスレッドから(bt:interrupt-t | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/macros.lisp:66:;; 別のスレッドから(bt:interrupt-t | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/macros.lisp:66:;; 別のスレッドから(bt:interrupt-t | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/macros.lisp:66:;; 別のスレッドから(bt:interrupt-t | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/macros.lisp:66:;; 別のスレッドから(bt:interrupt-t | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/macros.lisp:67:(defun interrupt (&optional force) | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/mark.lisp:1:(in-package :lem-base)hread...hread.. | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/mark.lisp:3:(defclass mark ().hread...hread...hre | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/mark.lisp:11:(defmethod mark-cancel ((mark mark)) | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/mark.lisp:14:(defmethod mark-set-point ((mark ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/package.lisp:1:(defpackage :lem-basead...         | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/parse-partial-sexp.lisp:1:(in-package :lem-base)  | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/parse-partial-sexp.lisp:3:(defstruct pps-state    | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/parse-partial-sexp.lisp:12:(defun parse-partia... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/parse-partial-sexp.lisp:147:(define-editor-var... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/parse-partial-sexp.lisp:149:(defmacro syntax-p... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/parse-partial-sexp.lisp:152:(flet ((cache-poin... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/parse-partial-sexp.lisp:202:(defun pps-state-s... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/parse-partial-sexp.lisp:205:(defun pps-state-c... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/parse-partial-sexp.lisp:208:(defun pps-state-s... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/parse-partial-sexp.lisp:215:(defun in-string-p... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/parse-partial-sexp.lisp:219:(defun in-comment-... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/parse-partial-sexp.lisp:223:(defun in-string-o... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/parse-partial-sexp.lisp:227:(defun maybe-begin... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/parse-partial-sexp.lisp:232:(defun maybe-begin... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/parse-partial-sexp.lisp:237:(defun maybe-begin... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/point.lisp:1:(in-package :lem-base)               | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/point.lisp:3:(defclass point ()                   | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/point.lisp:34:(setf (documentation 'point-buff... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/point.lisp:37:(setf (documentation 'point-kind... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/point.lisp:40:(defun current-point ()             | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/point.lisp:44:(defmethod print-object ((object... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/point.lisp:51:(defun pointp (x)                   | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/point.lisp:55:(defun initialize-point-slot-values | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/point.lisp:68:(defun initialize-point (point k... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/point.lisp:73:(defun make-point (buffer linum ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/point.lisp:85:(defmethod copy-point-using-clas... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/point.lisp:96:(defun copy-point (point &option... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/point.lisp:104:(defun delete-point (point)        | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/point.lisp:115:(defun alive-point-p (point)       | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/point.lisp:119:(defun point-change-line (point... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/point.lisp:136:(defun point-temporary-p (point)   | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/point.lisp:139:(defun %always-same-buffer (poi... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/point.lisp:145:(defun %point= (point1 point2)     | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/point.lisp:151:(defun %point< (point1 point2)     | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/point.lisp:156:(defun point= (point &rest more... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/point.lisp:162:(defun point/= (point &rest mor... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/point.lisp:170:(defun point< (point &rest more... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/point.lisp:177:(defun point<= (point &rest mor... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/point.lisp:185:(defun point> (point &rest more... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/point.lisp:191:(defun point>= (point &rest mor... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/point.lisp:199:(defun point-min (point &rest m... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/point.lisp:207:(defun point-max (point &rest m... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/search.lisp:1:(in-package :lem-base)              | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/search.lisp:3:(defvar *case-fold-search* nil)     | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/search.lisp:5:(defun char-compare-function ()     | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/search.lisp:10:(defun search-step (point first... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/search.lisp:31:(defun search-forward-endp-func... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/search.lisp:38:(defun search-backward-endp-fun... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/search.lisp:44:(defun search-with-case-fold-se... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/search.lisp:50:(defun search-forward (point st... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/search.lisp:72:(defun search-backward (point s... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/search.lisp:102:(defun search-forward-regexp (... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/search.lisp:143:(define-compiler-macro search-... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/search.lisp:150:(defun search-backward-regexp ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/search.lisp:193:(define-compiler-macro search-... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/search.lisp:200:(defun search-symbol (string n... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/search.lisp:215:(defun search-forward-symbol (... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/search.lisp:234:(defun search-backward-symbol ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/search.lisp:257:(defun looking-at (point regex)   | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/search.lisp:271:(define-compiler-macro looking... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/search.lisp:276:(defun match-string-at (point ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/string-width-utils.lisp:1:(in-package :lem-base)  | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/string-width-utils.lisp:3:(defconstant +defaul... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/string-width-utils.lisp:5:(defparameter *char-... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/string-width-utils.lisp:44:(defun control-char... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/string-width-utils.lisp:47:(defun wide-char-p ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/string-width-utils.lisp:54:(defun char-width (... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/string-width-utils.lisp:69:(defun string-width... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/string-width-utils.lisp:76:(defun wide-index (... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-parser.lisp:1:(in-package :lem-base)       | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-parser.lisp:3:(define-editor-variable b... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-parser.lisp:4:(define-editor-variable a... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-parser.lisp:5:(define-editor-variable e... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-parser.lisp:7:(defparameter *global-syn... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-parser.lisp:9:(defun enable-syntax-high... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-parser.lisp:13:(defun current-syntax-pa... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-parser.lisp:16:(defclass syntax-parser ()  | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-parser.lisp:19:(defgeneric %syntax-scan... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-parser.lisp:21:(defvar *recursive-synta... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-parser.lisp:23:(defun syntax-scan-regio... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-scan.lisp:1:(in-package :lem-base)         | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-scan.lisp:3:(flet ((%match (str1 str2 s... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-scan.lisp:56:                            | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-scan.lisp:57:(let ((cache (make-hash-ta... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-scan.lisp:68:(defun syntax-escape-point... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-scan.lisp:78:(defun inline-line-comment... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-scan.lisp:85:(defun %skip-comment-forwa... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-scan.lisp:107:(defun %skip-block-commen... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-scan.lisp:124:(defun %skip-comment-back... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-scan.lisp:136:(defun skip-space-and-com... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-scan.lisp:145:(defun skip-space-and-com... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-scan.lisp:156:(defun %skip-symbol-forwa... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-scan.lisp:171:(defun %skip-symbol-backw... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-scan.lisp:186:(defun %skip-quote-forwar... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-scan.lisp:197:(defun %skip-quote-backwa... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-scan.lisp:208:(defun %skip-string-forwa... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-scan.lisp:211:(defun %skip-string-backw... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-scan.lisp:214:(defun %skip-fence-forwar... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-scan.lisp:217:(defun %skip-fence-backwa... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-scan.lisp:220:(defun %skip-list-forward... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-scan.lisp:258:(defun %skip-list-backwar... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-scan.lisp:301:(defun %form-offset-posit... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-scan.lisp:338:(defun %form-offset-negat... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-scan.lisp:371:(defun form-offset (point n) | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-scan.lisp:384:(defun scan-lists (point ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-scan.lisp:401:(flet ((non-newline-white... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-scan.lisp:417:(defun skip-symbol-forwar... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-scan.lisp:421:(defun skip-symbol-backwa... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-scan.lisp:425:(defun symbol-region-at-p... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-scan.lisp:435:(defun symbol-string-at-p... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-table.lisp:1:(in-package :lem-base)        | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-table.lisp:3:(defstruct syntax-table       | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-table.lisp:21:(defun set-syntax-parser ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-table.lisp:24:(defparameter *fundamenta... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-table.lisp:26:(defun fundamental-syntax... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-table.lisp:29:(defvar *current-syntax* ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-table.lisp:31:(defun current-syntax ()     | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-table.lisp:36:(defmacro with-current-sy... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-table.lisp:40:(defmacro with-point-synt... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-table.lisp:44:(defun syntax-word-char-p... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-table.lisp:48:(defun syntax-space-char-... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-table.lisp:51:(defun syntax-symbol-char... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-table.lisp:55:(defun syntax-open-paren-... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-table.lisp:58:(defun syntax-closed-pare... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-table.lisp:61:(defun syntax-equal-paren... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-table.lisp:68:(defun syntax-string-quot... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-table.lisp:71:(defun syntax-fence-char-... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-table.lisp:74:(defun syntax-escape-char... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-table.lisp:77:(defun syntax-expr-prefix... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-table.lisp:80:(defun syntax-skip-expr-p... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-table.lisp:84:(defun syntax-skip-expr-p... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:1:(in-package :lem-base)          | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:3:(defclass tmlanguage (syntax... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:11:(defclass tm-rule ()           | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:17:(defclass tm-region (tm-rule)  | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:41:(defclass tm-match (tm-rule)   | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:55:(defclass tm-include () ())    | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:56:(defclass tm-include-self (... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:57:(defclass tm-include-reposi... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:62:(defclass tm-patterns ()       | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:67:(defun make-tmlanguage (&ke... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:72:(defun make-tm-repository ()   | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:75:(defun make-tm-match (strin... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:82:(defun make-tm-region (begi... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:99:(defun make-tm-include (spec)  | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:108:(defun make-tm-patterns (&... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:111:(defun make-tm-name (name)    | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:114:(defun add-tm-repository (... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:117:(defun add-tm-pattern (tml... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:120:(defmethod %syntax-scan-re... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:123:                            | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:124:(defun set-syntax-context ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:127:(defun get-syntax-context ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:130:(defun tm-get-repository (... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:133:(defun tm-ahead-matcher (r... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:140:(defun tm-ahead-match (rul... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:146:(defun tm-result-rule     ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:147:(defun tm-result-start    ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:148:(defun tm-result-end      ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:149:(defun tm-result-reg-start... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:150:(defun tm-result-reg-ends ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:151:(defun tm-result-option   ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:152:(defun (setf tm-result-opt... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:154:(defun tm-result= (result1... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:166:(defun tm-get-best-result ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:178:(defun tm-best-rule-in-pat... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:205:(defun tm-recompute-result... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:221:(defun tm-apply-capture (p... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:228:(defun tm-apply-captures (... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:243:(defun tm-apply-content-na... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:249:(defun tm-replace-back-ref... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:267:(defun tm-init-region-end-... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:280:(defun tm-apply-begin-capt... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:285:(defun tm-apply-end-captur... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:289:(defun tm-apply-region (ru... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:337:(defun tm-move-action (rul... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:355:(defun tm-apply-match-in-c... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:362:(defun tm-apply-match (rul... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:375:(defun tm-apply-result (po... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:383:(defun tm-continue-prev-li... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:410:(defun tm-scan-line (point... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:422:(defun tm-syntax-scan-line... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:430:(defun tm-syntax-scan-regi... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/utils.lisp:1:(in-package :lem-base)               | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/utils.lisp:3:(defun ensure-class (class)          | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/utils.lisp:8:(defun collect-subclasses (class ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/utils.lisp:19:(defun utf8-bytes (c)               | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/utils.lisp:27:(defun bests-if (fn list test)      | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/utils.lisp:40:(defun max-if (fn list)             | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/utils.lisp:43:(defun min-if (fn list)             | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/utils.lisp:46:(defun find-tree (x tree)           | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/utils.lisp:53:(defmacro do-sequence ((var-form... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/utils.lisp:75:(defmacro if-push (expression pl... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/var.lisp:1:(in-package :lem-base)                 | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/var.lisp:3:(defvar *editor-variables* '())        | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/var.lisp:5:(defstruct editor-variable             | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/var.lisp:11:(setf (documentation 'editor-varia... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/var.lisp:15:(defmacro define-editor-variable (... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/var.lisp:33:(defun clear-editor-local-variable... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/var.lisp:40:(defun editor-variable-error (symbol) | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/var.lisp:43:(defun check-editor-variable (symbol) | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/var.lisp:47:(defun ensure-buffer (where)          | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/var.lisp:54:(defun variable-value (symbol &opt... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/var.lisp:87:(defun (setf variable-value) (valu... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/var.lisp:111:(defun variable-documentation (sy... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/var.lisp:118:(defun find-editor-variable (var)    | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/var.lisp:121:(defstruct per-buffer-hook           | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/var.lisp:126:(defmethod run-hooks ((hook per-b... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/var.lisp:132:                                   | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/var.lisp:133:;; for test                          | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/var.lisp:133:;; for test                          | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/var.lisp:133:;; for test                          | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/var.lisp:133:;; for test                          | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/var.lisp:134:(defun call-with-global-variable-... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/var.lisp:141:(defmacro with-global-variable-va... | <strong> OK </strong> |

## indent-test-for-sample-case
| Test                          | Description                                                                                          | Result                |
|-------------------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:1:                    | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:2:#|                  | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:3:aaaaaa              | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:4:bbbbbb              | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:5:cccccc              | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:6:|#                  | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:6:|#                  | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:8:#|********()        | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:8:#|********()        | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:8:#|********()        | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:8:#|********()        | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:8:#|********()        | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:8:#|********()        | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:8:#|********()        | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:8:#|********()        | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:8:#|********()        | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:8:#|********()        | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:8:#|********()        | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:9:|#                  | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:9:|#                  | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:12:(aaaaaaa(          | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:18:(defun foo (foo... | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:24:(defmacro foo (... | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:30:(#+sbcl foo        | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:33:(let ((x y)        | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:43:(list ;comment     | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:47:(defun foo (x)     | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:75:(defmacro foo (... | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:82:(defun foo ()      | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:87:(defmacro foofo... | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:95:(loop for i fro... | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:122:(loop for x in... | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:126:(loop for x in... | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:136:(loop for f in... | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:142:(loop (foo)       | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:147:(loop ;; comment  | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:151:(loop             | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:156:(loop             | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:161:(loop ;; comme... | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:166:(loop             | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:171:(loop             | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:177:(loop with foo... | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:182:(progn            | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:192:(loop             | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:200:(defmethod foo    | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:205:(defmethod foo... | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:210:(defgeneric fo... | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:216:(defgeneric fo... | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:222:(defun foo (a     | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:226:(defun foo (a     | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:231:(defun foo (a ... | <strong> OK </strong> |

## parse-name-and-options
| Test                                            | Description                                                                                          | Result                |
|-------------------------------------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (parse-name-and-options (name))                 | Expect (= 2 (LENGTH VALUES)) to be true.                                                             | <strong> OK </strong> |
| (parse-name-and-options (name))                 | Expect (EQ 'LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-DEFCLASS::FOO
           LEM-TESTS/LISP-SYNTAX/DEF...                                                                                                                  | <strong> OK </strong> |
| (parse-name-and-options (name))                 | Expect (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::OPTIONS-INFO-P
        LEM-TESTS/LISP-SYNTAX/DEFST...                                                                                                                   | <strong> OK </strong> |
| (parse-name-and-options (name))                 | Expect (NULL
        (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::OPTIONS-CONC-NAME
         LEM-TESTS...                                                                                                                                    | <strong> OK </strong> |
| (parse-name-and-options :conc-name)             | Expect (= 2 (LENGTH VALUES)) to be true.                                                             | <strong> OK </strong> |
| (parse-name-and-options :conc-name)             | Expect (EQ 'LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-DEFCLASS::FOO
           LEM-TESTS/LISP-SYNTAX/DEF...                                                                                                                  | <strong> OK </strong> |
| (parse-name-and-options :conc-name)             | Expect (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::OPTIONS-INFO-P
        LEM-TESTS/LISP-SYNTAX/DEFST...                                                                                                                   | <strong> OK </strong> |
| (parse-name-and-options :conc-name)             | Expect (STRING= ""
                (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::OPTIONS-CONC-NAME
    ...                                                                                                                                                  | <strong> OK </strong> |
| (parse-name-and-options (:conc-name))           | Expect (= 2 (LENGTH VALUES)) to be true.                                                             | <strong> OK </strong> |
| (parse-name-and-options (:conc-name))           | Expect (EQ 'LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-DEFCLASS::FOO
           LEM-TESTS/LISP-SYNTAX/DEF...                                                                                                                  | <strong> OK </strong> |
| (parse-name-and-options (:conc-name))           | Expect (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::OPTIONS-INFO-P
        LEM-TESTS/LISP-SYNTAX/DEFST...                                                                                                                   | <strong> OK </strong> |
| (parse-name-and-options (:conc-name))           | Expect (STRING= ""
                (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::OPTIONS-CONC-NAME
    ...                                                                                                                                                  | <strong> OK </strong> |
| (parse-name-and-options (:conc-name conc-name)) | Expect (= 2 (LENGTH VALUES)) to be true.                                                             | <strong> OK </strong> |
| (parse-name-and-options (:conc-name conc-name)) | Expect (EQ 'LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-DEFCLASS::FOO
           LEM-TESTS/LISP-SYNTAX/DEF...                                                                                                                  | <strong> OK </strong> |
| (parse-name-and-options (:conc-name conc-name)) | Expect (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::OPTIONS-INFO-P
        LEM-TESTS/LISP-SYNTAX/DEFST...                                                                                                                   | <strong> OK </strong> |
| (parse-name-and-options (:conc-name conc-name)) | Expect (STRING= "PREFIX-"
                (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::OPTIONS-CONC-NA...                                                                               | <strong> OK </strong> |
| (parse-name-and-options invalid)                | (1)                                                                                                  | <strong> OK </strong> |
| (parse-name-and-options invalid)                | (1 CONC-NAME)                                                                                        | <strong> OK </strong> |
| (parse-name-and-options invalid)                | (NIL)                                                                                                | <strong> OK </strong> |
| (parse-name-and-options invalid)                | (FOO (CONC-NAME 1))                                                                                  | <strong> OK </strong> |
| (parse-name-and-options invalid)                | (FOO (CONC-NAME #()))                                                                                | <strong> OK </strong> |

## analyze-defstruct
| Test                                           | Description                                                                                          | Result                |
|------------------------------------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (analyze-defstruct simple)                     | Expect (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::STRUCT-INFO-P
        LEM-TESTS/LISP-SYNTAX/DEFSTR...                                                                                                                 | <strong> OK </strong> |
| (analyze-defstruct simple)                     | Expect (EQUAL "foo"
              (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::STRUCT-NAME
           ...                                                                                                                                          | <strong> OK </strong> |
| (analyze-defstruct simple)                     | Expect (LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-DEFCLASS::EXPECTED-POINT-POSITION-P
        (LEM-LISP-...                                                                                                                                   | <strong> OK </strong> |
| (analyze-defstruct simple)                     | Expect (LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-DEFCLASS::EXPECTED-POINT-POSITION-P
        (LEM-LISP-...                                                                                                                                   | <strong> OK </strong> |
| (analyze-defstruct simple)                     | Expect (LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-DEFCLASS::EXPECTED-POINT-POSITION-P
        (LEM-LISP-...                                                                                                                                   | <strong> OK </strong> |
| (analyze-defstruct simple)                     | Expect (= (LENGTH LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-DEFCLASS::SLOTS) 3) to be true.                 | <strong> OK </strong> |
| (analyze-defstruct simple)                     | Expect (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-INFO-P
        LEM-TESTS/LISP-SYN...                                                                                                                           | <strong> OK </strong> |
| (analyze-defstruct simple)                     | Expect (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-COMPLEX-P
        LEM-TESTS/LISP-...                                                                                                                              | <strong> OK </strong> |
| (analyze-defstruct simple)                     | Expect (EQUAL
        (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-NAME
         LEM-...                                                                                                                                        | <strong> OK </strong> |
| (analyze-defstruct simple)                     | Expect (LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-DEFCLASS::EXPECTED-POINT-POSITION-P
        (LEM-LISP-...                                                                                                                                   | <strong> OK </strong> |
| (analyze-defstruct simple)                     | Expect (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-INFO-P
        LEM-TESTS/LISP-SYN...                                                                                                                           | <strong> OK </strong> |
| (analyze-defstruct simple)                     | Expect (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-COMPLEX-P
        LEM-TESTS/LISP-...                                                                                                                              | <strong> OK </strong> |
| (analyze-defstruct simple)                     | Expect (EQUAL
        (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-NAME
         LEM-...                                                                                                                                        | <strong> OK </strong> |
| (analyze-defstruct simple)                     | Expect (LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-DEFCLASS::EXPECTED-POINT-POSITION-P
        (LEM-LISP-...                                                                                                                                   | <strong> OK </strong> |
| (analyze-defstruct simple)                     | Expect (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-INFO-P
        LEM-TESTS/LISP-SYN...                                                                                                                           | <strong> OK </strong> |
| (analyze-defstruct simple)                     | Expect (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-COMPLEX-P
        LEM-TESTS/LISP-...                                                                                                                              | <strong> OK </strong> |
| (analyze-defstruct simple)                     | Expect (EQUAL
        (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-NAME
         LEM-...                                                                                                                                        | <strong> OK </strong> |
| (analyze-defstruct simple)                     | Expect (LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-DEFCLASS::EXPECTED-POINT-POSITION-P
        (LEM-LISP-...                                                                                                                                   | <strong> OK </strong> |
| (analyze-defstruct complex slot-description)   | Expect (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::STRUCT-INFO-P
        LEM-TESTS/LISP-SYNTAX/DEFSTR...                                                                                                                 | <strong> OK </strong> |
| (analyze-defstruct complex slot-description)   | Expect (EQUAL "foo"
              (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::STRUCT-NAME
           ...                                                                                                                                          | <strong> OK </strong> |
| (analyze-defstruct complex slot-description)   | Expect (= (LENGTH LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-DEFCLASS::SLOTS) 11) to be true.                | <strong> OK </strong> |
| (analyze-defstruct complex slot-description a) | Expect (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-INFO-P
        LEM-TESTS/LISP-SYN...                                                                                                                           | <strong> OK </strong> |
| (analyze-defstruct complex slot-description a) | Expect (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-COMPLEX-P
        LEM-TESTS/LISP-...                                                                                                                              | <strong> OK </strong> |
| (analyze-defstruct complex slot-description a) | Expect (EQUAL
        (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-NAME
         LEM-...                                                                                                                                        | <strong> OK </strong> |
| (analyze-defstruct complex slot-description a) | Expect (LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-DEFCLASS::EXPECTED-POINT-POSITION-P
        (LEM-LISP-...                                                                                                                                   | <strong> OK </strong> |
| (analyze-defstruct complex slot-description a) | Expect (EQUAL LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-DEFCLASS::EXPECTED-INITFORM
              (LEM-T...                                                                                                                                 | <strong> OK </strong> |
| (analyze-defstruct complex slot-description a) | Expect (AND
        (NULL
         (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-TYPE-...                                                                              | <strong> OK </strong> |
| (analyze-defstruct complex slot-description a) | Expect (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-READ-ONLY-P
        LEM-TESTS/LIS...                                                                                                                                | <strong> OK </strong> |
| (analyze-defstruct complex slot-description b) | Expect (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-INFO-P
        LEM-TESTS/LISP-SYN...                                                                                                                           | <strong> OK </strong> |
| (analyze-defstruct complex slot-description b) | Expect (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-COMPLEX-P
        LEM-TESTS/LISP-...                                                                                                                              | <strong> OK </strong> |
| (analyze-defstruct complex slot-description b) | Expect (EQUAL
        (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-NAME
         LEM-...                                                                                                                                        | <strong> OK </strong> |
| (analyze-defstruct complex slot-description b) | Expect (LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-DEFCLASS::EXPECTED-POINT-POSITION-P
        (LEM-LISP-...                                                                                                                                   | <strong> OK </strong> |
| (analyze-defstruct complex slot-description b) | Expect (AND
        (NULL
         (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-INITI...                                                                              | <strong> OK </strong> |
| (analyze-defstruct complex slot-description b) | Expect (AND
        (NULL
         (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-TYPE-...                                                                              | <strong> OK </strong> |
| (analyze-defstruct complex slot-description b) | Expect (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-READ-ONLY-P
        LEM-TESTS/LIS...                                                                                                                                | <strong> OK </strong> |
| (analyze-defstruct complex slot-description c) | Expect (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-INFO-P
        LEM-TESTS/LISP-SYN...                                                                                                                           | <strong> OK </strong> |
| (analyze-defstruct complex slot-description c) | Expect (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-COMPLEX-P
        LEM-TESTS/LISP-...                                                                                                                              | <strong> OK </strong> |
| (analyze-defstruct complex slot-description c) | Expect (EQUAL
        (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-NAME
         LEM-...                                                                                                                                        | <strong> OK </strong> |
| (analyze-defstruct complex slot-description c) | Expect (LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-DEFCLASS::EXPECTED-POINT-POSITION-P
        (LEM-LISP-...                                                                                                                                   | <strong> OK </strong> |
| (analyze-defstruct complex slot-description c) | Expect (EQUAL LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-DEFCLASS::EXPECTED-INITFORM
              (LEM-T...                                                                                                                                 | <strong> OK </strong> |
| (analyze-defstruct complex slot-description c) | Expect (AND
        (NULL
         (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-TYPE-...                                                                              | <strong> OK </strong> |
| (analyze-defstruct complex slot-description c) | Expect (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-READ-ONLY-P
        LEM-TESTS/LIS...                                                                                                                                | <strong> OK </strong> |
| (analyze-defstruct complex slot-description d) | Expect (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-INFO-P
        LEM-TESTS/LISP-SYN...                                                                                                                           | <strong> OK </strong> |
| (analyze-defstruct complex slot-description d) | Expect (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-COMPLEX-P
        LEM-TESTS/LISP-...                                                                                                                              | <strong> OK </strong> |
| (analyze-defstruct complex slot-description d) | Expect (EQUAL
        (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-NAME
         LEM-...                                                                                                                                        | <strong> OK </strong> |
| (analyze-defstruct complex slot-description d) | Expect (LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-DEFCLASS::EXPECTED-POINT-POSITION-P
        (LEM-LISP-...                                                                                                                                   | <strong> OK </strong> |
| (analyze-defstruct complex slot-description d) | Expect (EQUAL LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-DEFCLASS::EXPECTED-INITFORM
              (LEM-T...                                                                                                                                 | <strong> OK </strong> |
| (analyze-defstruct complex slot-description d) | Expect (EQUAL LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-DEFCLASS::EXPECTED-TYPE
              (LEM-TESTS...                                                                                                                             | <strong> OK </strong> |
| (analyze-defstruct complex slot-description d) | Expect (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-READ-ONLY-P
        LEM-TESTS/LIS...                                                                                                                                | <strong> OK </strong> |
| (analyze-defstruct complex slot-description e) | Expect (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-INFO-P
        LEM-TESTS/LISP-SYN...                                                                                                                           | <strong> OK </strong> |
| (analyze-defstruct complex slot-description e) | Expect (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-COMPLEX-P
        LEM-TESTS/LISP-...                                                                                                                              | <strong> OK </strong> |
| (analyze-defstruct complex slot-description e) | Expect (EQUAL
        (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-NAME
         LEM-...                                                                                                                                        | <strong> OK </strong> |
| (analyze-defstruct complex slot-description e) | Expect (LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-DEFCLASS::EXPECTED-POINT-POSITION-P
        (LEM-LISP-...                                                                                                                                   | <strong> OK </strong> |
| (analyze-defstruct complex slot-description e) | Expect (EQUAL LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-DEFCLASS::EXPECTED-INITFORM
              (LEM-T...                                                                                                                                 | <strong> OK </strong> |
| (analyze-defstruct complex slot-description e) | Expect (EQUAL LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-DEFCLASS::EXPECTED-TYPE
              (LEM-TESTS...                                                                                                                             | <strong> OK </strong> |
| (analyze-defstruct complex slot-description e) | Expect (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-READ-ONLY-P
        LEM-TESTS/LIS...                                                                                                                                | <strong> OK </strong> |
| (analyze-defstruct complex slot-description f) | Expect (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-INFO-P
        LEM-TESTS/LISP-SYN...                                                                                                                           | <strong> OK </strong> |
| (analyze-defstruct complex slot-description f) | Expect (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-COMPLEX-P
        LEM-TESTS/LISP-...                                                                                                                              | <strong> OK </strong> |
| (analyze-defstruct complex slot-description f) | Expect (EQUAL
        (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-NAME
         LEM-...                                                                                                                                        | <strong> OK </strong> |
| (analyze-defstruct complex slot-description f) | Expect (LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-DEFCLASS::EXPECTED-POINT-POSITION-P
        (LEM-LISP-...                                                                                                                                   | <strong> OK </strong> |
| (analyze-defstruct complex slot-description f) | Expect (EQUAL LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-DEFCLASS::EXPECTED-INITFORM
              (LEM-T...                                                                                                                                 | <strong> OK </strong> |
| (analyze-defstruct complex slot-description f) | Expect (EQUAL LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-DEFCLASS::EXPECTED-TYPE
              (LEM-TESTS...                                                                                                                             | <strong> OK </strong> |
| (analyze-defstruct complex slot-description f) | Expect (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-READ-ONLY-P
        LEM-TESTS/LIS...                                                                                                                                | <strong> OK </strong> |
| (analyze-defstruct complex slot-description g) | Expect (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-INFO-P
        LEM-TESTS/LISP-SYN...                                                                                                                           | <strong> OK </strong> |
| (analyze-defstruct complex slot-description g) | Expect (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-COMPLEX-P
        LEM-TESTS/LISP-...                                                                                                                              | <strong> OK </strong> |
| (analyze-defstruct complex slot-description g) | Expect (EQUAL
        (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-NAME
         LEM-...                                                                                                                                        | <strong> OK </strong> |
| (analyze-defstruct complex slot-description g) | Expect (LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-DEFCLASS::EXPECTED-POINT-POSITION-P
        (LEM-LISP-...                                                                                                                                   | <strong> OK </strong> |
| (analyze-defstruct complex slot-description g) | Expect (EQUAL LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-DEFCLASS::EXPECTED-INITFORM
              (LEM-T...                                                                                                                                 | <strong> OK </strong> |
| (analyze-defstruct complex slot-description g) | Expect (AND
        (NULL
         (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-TYPE-...                                                                              | <strong> OK </strong> |
| (analyze-defstruct complex slot-description g) | Expect (EQ T
           (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-READ-ONLY-P
    ...                                                                                                                                                 | <strong> OK </strong> |
| (analyze-defstruct complex slot-description h) | Expect (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-INFO-P
        LEM-TESTS/LISP-SYN...                                                                                                                           | <strong> OK </strong> |
| (analyze-defstruct complex slot-description h) | Expect (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-COMPLEX-P
        LEM-TESTS/LISP-...                                                                                                                              | <strong> OK </strong> |
| (analyze-defstruct complex slot-description h) | Expect (EQUAL
        (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-NAME
         LEM-...                                                                                                                                        | <strong> OK </strong> |
| (analyze-defstruct complex slot-description h) | Expect (LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-DEFCLASS::EXPECTED-POINT-POSITION-P
        (LEM-LISP-...                                                                                                                                   | <strong> OK </strong> |
| (analyze-defstruct complex slot-description h) | Expect (EQUAL LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-DEFCLASS::EXPECTED-INITFORM
              (LEM-T...                                                                                                                                 | <strong> OK </strong> |
| (analyze-defstruct complex slot-description h) | Expect (AND
        (NULL
         (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-TYPE-...                                                                              | <strong> OK </strong> |
| (analyze-defstruct complex slot-description h) | Expect (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-READ-ONLY-P
        LEM-TESTS/LIS...                                                                                                                                | <strong> OK </strong> |
| (analyze-defstruct complex slot-description i) | Expect (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-INFO-P
        LEM-TESTS/LISP-SYN...                                                                                                                           | <strong> OK </strong> |
| (analyze-defstruct complex slot-description i) | Expect (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-COMPLEX-P
        LEM-TESTS/LISP-...                                                                                                                              | <strong> OK </strong> |
| (analyze-defstruct complex slot-description i) | Expect (EQUAL
        (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-NAME
         LEM-...                                                                                                                                        | <strong> OK </strong> |
| (analyze-defstruct complex slot-description i) | Expect (LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-DEFCLASS::EXPECTED-POINT-POSITION-P
        (LEM-LISP-...                                                                                                                                   | <strong> OK </strong> |
| (analyze-defstruct complex slot-description i) | Expect (EQUAL LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-DEFCLASS::EXPECTED-INITFORM
              (LEM-T...                                                                                                                                 | <strong> OK </strong> |
| (analyze-defstruct complex slot-description i) | Expect (AND
        (NULL
         (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-TYPE-...                                                                              | <strong> OK </strong> |
| (analyze-defstruct complex slot-description i) | Expect (EQ T
           (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-READ-ONLY-P
    ...                                                                                                                                                 | <strong> OK </strong> |
| (analyze-defstruct complex slot-description j) | Expect (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-INFO-P
        LEM-TESTS/LISP-SYN...                                                                                                                           | <strong> OK </strong> |
| (analyze-defstruct complex slot-description j) | Expect (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-COMPLEX-P
        LEM-TESTS/LISP-...                                                                                                                              | <strong> OK </strong> |
| (analyze-defstruct complex slot-description j) | Expect (EQUAL
        (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-NAME
         LEM-...                                                                                                                                        | <strong> OK </strong> |
| (analyze-defstruct complex slot-description j) | Expect (LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-DEFCLASS::EXPECTED-POINT-POSITION-P
        (LEM-LISP-...                                                                                                                                   | <strong> OK </strong> |
| (analyze-defstruct complex slot-description j) | Expect (EQUAL LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-DEFCLASS::EXPECTED-INITFORM
              (LEM-T...                                                                                                                                 | <strong> OK </strong> |
| (analyze-defstruct complex slot-description j) | Expect (EQUAL LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-DEFCLASS::EXPECTED-TYPE
              (LEM-TESTS...                                                                                                                             | <strong> OK </strong> |
| (analyze-defstruct complex slot-description j) | Expect (EQ T
           (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-READ-ONLY-P
    ...                                                                                                                                                 | <strong> OK </strong> |
| (analyze-defstruct complex slot-description k) | Expect (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-INFO-P
        LEM-TESTS/LISP-SYN...                                                                                                                           | <strong> OK </strong> |
| (analyze-defstruct complex slot-description k) | Expect (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-COMPLEX-P
        LEM-TESTS/LISP-...                                                                                                                              | <strong> OK </strong> |
| (analyze-defstruct complex slot-description k) | Expect (EQUAL
        (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-NAME
         LEM-...                                                                                                                                        | <strong> OK </strong> |
| (analyze-defstruct complex slot-description k) | Expect (LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-DEFCLASS::EXPECTED-POINT-POSITION-P
        (LEM-LISP-...                                                                                                                                   | <strong> OK </strong> |
| (analyze-defstruct complex slot-description k) | Expect (EQUAL LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-DEFCLASS::EXPECTED-INITFORM
              (LEM-T...                                                                                                                                 | <strong> OK </strong> |
| (analyze-defstruct complex slot-description k) | Expect (EQUAL LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-DEFCLASS::EXPECTED-TYPE
              (LEM-TESTS...                                                                                                                             | <strong> OK </strong> |
| (analyze-defstruct complex slot-description k) | Expect (EQ T
           (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-READ-ONLY-P
    ...                                                                                                                                                 | <strong> OK </strong> |
| (analyze-defstruct name-and-options)           | Expect (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::STRUCT-INFO-P
        LEM-TESTS/LISP-SYNTAX/DEFSTR...                                                                                                                 | <strong> OK </strong> |
| (analyze-defstruct name-and-options)           | Expect (EQUAL "foo"
              (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::STRUCT-NAME
           ...                                                                                                                                          | <strong> OK </strong> |
| (analyze-defstruct name-and-options)           | Expect (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::OPTIONS-INFO-P
        (LEM-LISP-SYNTAX.DEFSTRUCT-...                                                                                                                  | <strong> OK </strong> |

## defstruct-to-defclass
| Test | Description             | Result                |
|------|-------------------------|-----------------------|
| NIL  | (EQUAL ACTUAL EXPECTED) | <strong> OK </strong> |
| NIL  | (EQUAL ACTUAL EXPECTED) | <strong> OK </strong> |
| NIL  | (EQUAL ACTUAL EXPECTED) | <strong> OK </strong> |
| NIL  | (EQUAL ACTUAL EXPECTED) | <strong> OK </strong> |

## infer-package-name-1
| Test                   | Description                                                                                          | Result                |
|------------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (infer-package-name-1) | Expect (EQUAL "project-root/foo/bar"
              (LEM-LISP-MODE/PACKAGE-INFERRED-SYSTEM::INFER-...                                                                 | <strong> OK </strong> |
| (infer-package-name-1) | Expect (EQUAL "project-root-tests/a"
              (LEM-LISP-MODE/PACKAGE-INFERRED-SYSTEM::INFER-...                                                                 | <strong> OK </strong> |
| (infer-package-name-1) | Expect (EQUAL "project-root/test/a/b"
              (LEM-LISP-MODE/PACKAGE-INFERRED-SYSTEM::INFER...                                                                  | <strong> OK </strong> |
| (infer-package-name-1) | Expect (EQUAL "project-root/test/a/b"
              (LEM-LISP-MODE/PACKAGE-INFERRED-SYSTEM::INFER...                                                                  | <strong> OK </strong> |
| (infer-package-name-1) | Expect (EQUAL "project-root/main"
              (LEM-LISP-MODE/PACKAGE-INFERRED-SYSTEM::INFER-PAC...                                                              | <strong> OK </strong> |
| (infer-package-name-1) | Expect (EQUAL "lem-project-root/foo/bar"
              (LEM-LISP-MODE/PACKAGE-INFERRED-SYSTEM::IN...                                                                     | <strong> OK </strong> |

## external-option
| Test              | Description                                                                                          | Result                |
|-------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (external-option) | Expect (EQUAL '("baz" (:TEST))
              (MULTIPLE-VALUE-LIST (LEM-CORE:YANK-FROM-CLIPBOARD-O...                                                      | <strong> OK </strong> |
| (external-option) | Expect (EQUAL LEM-TESTS/KILLRING::EXPECTED-RESULT
              (LEM-CORE:YANK-FROM-CLIPBOARD-OR-...                                                                         | <strong> OK </strong> |

## control-char
| Test           | Description                                                                   | Result                |
|----------------|-------------------------------------------------------------------------------|-----------------------|
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |

## wide-char-p
| Test          | Description                                                                                          | Result                |
|---------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (wide-char-p) | Expect (LOOP :FOR CHAR :IN LEM-TESTS/STRING-WIDTH-UTILS::ALPHABET-OR-NUMBERS
             :ALWAYS...                                                                                                | <strong> OK </strong> |
| (wide-char-p) | Expect (LOOP :FOR CHAR :IN LEM-TESTS/STRING-WIDTH-UTILS::CONTROL-CHARS
             :ALWAYS (LEM-...                                                                                          | <strong> OK </strong> |
| (wide-char-p) | Expect (LOOP :FOR (LEM-TESTS/STRING-WIDTH-UTILS::START
                   LEM-TESTS/STRING-WIDTH-...                                                                          | <strong> OK </strong> |
| (wide-char-p) | Expect (LEM-BASE:WIDE-CHAR-P (CODE-CHAR 127798)) to be false.                                        | <strong> OK </strong> |
| (wide-char-p) | Expect (LEM-BASE:WIDE-CHAR-P (CODE-CHAR 128253)) to be false.                                        | <strong> OK </strong> |

## char-width
| Test                  | Description                                                                                          | Result                |
|-----------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (char-width alphabet) | Expect (EQL 1 (LEM-BASE:CHAR-WIDTH #\a 0)) to be true.                                               | <strong> OK </strong> |
| (char-width alphabet) | Expect (EQL 2 (LEM-BASE:CHAR-WIDTH #\a 1)) to be true.                                               | <strong> OK </strong> |
| (char-width tab)      | Expect (LOOP :FOR LEM-TESTS/STRING-WIDTH-UTILS::I :FROM 0 :BELOW 8
             :ALWAYS (EQL 8
  ...                                                                                                                          | <strong> OK </strong> |
| (char-width tab)      | Expect (LOOP :FOR LEM-TESTS/STRING-WIDTH-UTILS::I :FROM 8 :BELOW 16
             :ALWAYS (EQL 16
...                                                                                                                            | <strong> OK </strong> |
| (char-width tab)      | Expect (EQL 10 (LEM-BASE:CHAR-WIDTH #\Tab 9 :TAB-SIZE 10)) to be true.                               | <strong> OK </strong> |
| (char-width control)  | Expect (EQL 2 (LEM-BASE:CHAR-WIDTH #\Nul 0)) to be true.                                             | <strong> OK </strong> |
| (char-width control)  | Expect (EQL 3 (LEM-BASE:CHAR-WIDTH #\Nul 1)) to be true.                                             | <strong> OK </strong> |
| (char-width control)  | Expect (EQL 4 (LEM-BASE:CHAR-WIDTH #\UE0FF 0)) to be true.                                           | <strong> OK </strong> |
| (char-width control)  | Expect (EQL 5 (LEM-BASE:CHAR-WIDTH #\UE0FF 1)) to be true.                                           | <strong> OK </strong> |
| (char-width control)  | Expect (EQL 6 (LEM-BASE:CHAR-WIDTH #\UE0FF 2)) to be true.                                           | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2 (LEM-BASE:CHAR-WIDTH #\HIRAGANA_LETTER_A 0)) to be true.                               | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 3 (LEM-BASE:CHAR-WIDTH #\HIRAGANA_LETTER_A 1)) to be true.                               | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2
            (LEM-BASE:CHAR-WIDTH (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE)
   ...                                                                                                                         | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2
            (LEM-BASE:CHAR-WIDTH (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE)
   ...                                                                                                                         | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2
            (LEM-BASE:CHAR-WIDTH (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE)
   ...                                                                                                                         | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2
            (LEM-BASE:CHAR-WIDTH (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE)
   ...                                                                                                                         | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2
            (LEM-BASE:CHAR-WIDTH (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE)
   ...                                                                                                                         | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2
            (LEM-BASE:CHAR-WIDTH (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE)
   ...                                                                                                                         | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2
            (LEM-BASE:CHAR-WIDTH (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE)
   ...                                                                                                                         | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2
            (LEM-BASE:CHAR-WIDTH (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE)
   ...                                                                                                                         | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2
            (LEM-BASE:CHAR-WIDTH (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE)
   ...                                                                                                                         | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2
            (LEM-BASE:CHAR-WIDTH (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE)
   ...                                                                                                                         | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2
            (LEM-BASE:CHAR-WIDTH (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE)
   ...                                                                                                                         | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2
            (LEM-BASE:CHAR-WIDTH (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE)
   ...                                                                                                                         | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2
            (LEM-BASE:CHAR-WIDTH (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE)
   ...                                                                                                                         | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2
            (LEM-BASE:CHAR-WIDTH (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE)
   ...                                                                                                                         | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2
            (LEM-BASE:CHAR-WIDTH (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE)
   ...                                                                                                                         | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2
            (LEM-BASE:CHAR-WIDTH (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE)
   ...                                                                                                                         | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2
            (LEM-BASE:CHAR-WIDTH (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE)
   ...                                                                                                                         | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2
            (LEM-BASE:CHAR-WIDTH (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE)
   ...                                                                                                                         | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2
            (LEM-BASE:CHAR-WIDTH (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE)
   ...                                                                                                                         | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2
            (LEM-BASE:CHAR-WIDTH (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE)
   ...                                                                                                                         | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2
            (LEM-BASE:CHAR-WIDTH (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE)
   ...                                                                                                                         | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2
            (LEM-BASE:CHAR-WIDTH (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE)
   ...                                                                                                                         | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2
            (LEM-BASE:CHAR-WIDTH (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE)
   ...                                                                                                                         | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2
            (LEM-BASE:CHAR-WIDTH (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE)
   ...                                                                                                                         | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2
            (LEM-BASE:CHAR-WIDTH (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE)
   ...                                                                                                                         | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2
            (LEM-BASE:CHAR-WIDTH (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE)
   ...                                                                                                                         | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2
            (LEM-BASE:CHAR-WIDTH (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE)
   ...                                                                                                                         | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2
            (LEM-BASE:CHAR-WIDTH (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE)
   ...                                                                                                                         | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2
            (LEM-BASE:CHAR-WIDTH (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE)
   ...                                                                                                                         | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2
            (LEM-BASE:CHAR-WIDTH (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE)
   ...                                                                                                                         | <strong> OK </strong> |
| (char-width newline)  | Expect (EQL 0 (LEM-BASE:CHAR-WIDTH #\Newline 0)) to be true.                                         | <strong> OK </strong> |

## string-width
| Test           | Description                                                                                          | Result                |
|----------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (string-width) | Expect (EQL 1 (LEM-BASE:STRING-WIDTH "a")) to be true.                                               | <strong> OK </strong> |
| (string-width) | Expect (EQL 2 (LEM-BASE:STRING-WIDTH "ab")) to be true.                                              | <strong> OK </strong> |
| (string-width) | Expect (EQL 3 (LEM-BASE:STRING-WIDTH "abc")) to be true.                                             | <strong> OK </strong> |
| (string-width) | Expect (EQL 2 (LEM-BASE:STRING-WIDTH "abc" :START 1)) to be true.                                    | <strong> OK </strong> |
| (string-width) | Expect (EQL 2 (LEM-BASE:STRING-WIDTH "abc" :END 2)) to be true.                                      | <strong> OK </strong> |
| (string-width) | Expect (EQL 2 (LEM-BASE:STRING-WIDTH "abcdef" :START 1 :END 3)) to be true.                          | <strong> OK </strong> |
| (string-width) | Expect (EQL 2 (LEM-BASE:STRING-WIDTH "あ")) to be true.                                              | <strong> OK </strong> |
| (string-width) | Expect (EQL 3 (LEM-BASE:STRING-WIDTH "aあ")) to be true.                                             | <strong> OK </strong> |
| (string-width) | Expect (EQL 0 (LEM-BASE:STRING-WIDTH "abcdeあいうえお" :END 0)) to be true.                          | <strong> OK </strong> |
| (string-width) | Expect (EQL 3 (LEM-BASE:STRING-WIDTH "abcdeあいうえお" :END 3)) to be true.                          | <strong> OK </strong> |
| (string-width) | Expect (EQL 1 (LEM-BASE:STRING-WIDTH "abcdeあいうえお" :START 4 :END 5)) to be true.                 | <strong> OK </strong> |
| (string-width) | Expect (EQL 3 (LEM-BASE:STRING-WIDTH "abcdeあいうえお" :START 4 :END 6)) to be true.                 | <strong> OK </strong> |
| (string-width) | Expect (EQL 5 (LEM-BASE:STRING-WIDTH "abcdeあいうえお" :START 4 :END 7)) to be true.                 | <strong> OK </strong> |
| (string-width) | Expect (EQL 10 (LEM-BASE:STRING-WIDTH (FORMAT NIL "~Aab" #\Tab))) to be true.                        | <strong> OK </strong> |
| (string-width) | Expect (EQL 10 (LEM-BASE:STRING-WIDTH (FORMAT NIL "ab~Aab" #\Tab))) to be true.                      | <strong> OK </strong> |
| (string-width) | Expect (EQL 5 (LEM-BASE:STRING-WIDTH (FORMAT NIL "~Aab" #\Tab) :TAB-SIZE 3)) to be true.             | <strong> OK </strong> |
| (string-width) | Expect (EQL 2 (LEM-BASE:STRING-WIDTH (FORMAT NIL "~Aab" #\Tab) :START 1)) to be true.                | <strong> OK </strong> |
| (string-width) | Expect (EQL 5 (LEM-BASE:STRING-WIDTH (FORMAT NIL "ab~Aab" #\Tab) :TAB-SIZE 3)) to be true.           | <strong> OK </strong> |
| (string-width) | Expect (EQL 5 (LEM-BASE:STRING-WIDTH (FORMAT NIL "ab~Aab" #\Tab) :TAB-SIZE 1)) to be true.           | <strong> OK </strong> |
| (string-width) | Expect (EQL 3 (LEM-BASE:STRING-WIDTH (FORMAT NIL "あ~A" #\Tab) :TAB-SIZE 1)) to be true.             | <strong> OK </strong> |
| (string-width) | Expect (EQL 3 (LEM-BASE:STRING-WIDTH (FORMAT NIL "~Aaあ" #\Tab) :START 1)) to be true.               | <strong> OK </strong> |
| (string-width) | Expect (EQL 6
            (LEM-BASE:STRING-WIDTH (FORMAT NIL "~Aaあ" #\Tab) :TAB-SIZE 5 :START
   ...                                                                                                                  | <strong> OK </strong> |

## wide-index
| Test         | Description                                                                                          | Result                |
|--------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (wide-index) | Expect (EQL 1 (LEM-BASE:WIDE-INDEX "abc" 1)) to be true.                                             | <strong> OK </strong> |
| (wide-index) | Expect (EQL 2 (LEM-BASE:WIDE-INDEX "abc" 2)) to be true.                                             | <strong> OK </strong> |
| (wide-index) | Expect (EQL NIL (LEM-BASE:WIDE-INDEX "abc" 3)) to be true.                                           | <strong> OK </strong> |
| (wide-index) | Expect (EQL NIL (LEM-BASE:WIDE-INDEX "abc" 10)) to be true.                                          | <strong> OK </strong> |
| (wide-index) | Expect (EQL 0 (LEM-BASE:WIDE-INDEX "あいえうお" 0)) to be true.                                      | <strong> OK </strong> |
| (wide-index) | Expect (EQL 0 (LEM-BASE:WIDE-INDEX "あいえうお" 1)) to be true.                                      | <strong> OK </strong> |
| (wide-index) | Expect (EQL 1 (LEM-BASE:WIDE-INDEX "あいえうお" 2)) to be true.                                      | <strong> OK </strong> |
| (wide-index) | Expect (EQL 1 (LEM-BASE:WIDE-INDEX "あいえうお" 3)) to be true.                                      | <strong> OK </strong> |
| (wide-index) | Expect (EQL 2 (LEM-BASE:WIDE-INDEX "あいえうお" 4)) to be true.                                      | <strong> OK </strong> |
| (wide-index) | Expect (EQL 2 (LEM-BASE:WIDE-INDEX "あいえ" 5)) to be true.                                          | <strong> OK </strong> |
| (wide-index) | Expect (EQL NIL (LEM-BASE:WIDE-INDEX "あいえ" 6)) to be true.                                        | <strong> OK </strong> |
| (wide-index) | Expect (EQL 0 (LEM-BASE:WIDE-INDEX (FORMAT NIL "~Aabcdefghijk" #\Tab) 5)) to be true.                | <strong> OK </strong> |
| (wide-index) | Expect (EQL 2
            (LEM-BASE:WIDE-INDEX (FORMAT NIL "~Aabcdefghijk" #\Tab) 5 :TAB-SIZE
   ...                                                                                                                | <strong> OK </strong> |
| (wide-index) | Expect (EQL 6
            (LEM-BASE:WIDE-INDEX (FORMAT NIL "~Aabcdefghijk" #\Tab) 5 :START 1)) to...                                | <strong> OK </strong> |
| (wide-index) | Expect (EQL 5
            (LEM-BASE:WIDE-INDEX (FORMAT NIL "~Aa~Abcdefghijk" #\Tab #\Tab) 5
     ...                                                                                                              | <strong> OK </strong> |

## form-offset
| Test                       | Description                                                                                          | Result                |
|----------------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (form-offset skip comment) | Expect (LEM-BASE:START-BUFFER-P LEM-TESTS/SYNTAX-TEST::POINT) to be true.                            | <strong> OK </strong> |
| (form-offset skip comment) | Expect (EQUAL (LEM-BASE:SYMBOL-STRING-AT-POINT LEM-TESTS/SYNTAX-TEST::POINT)
              "bar")...                                                                                                             | <strong> OK </strong> |

## scan-lists
| Test                              | Description                                                                                          | Result                |
|-----------------------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (scan-lists limit-point forward)  | Expect (AND
        (NULL
         (LEM-BASE:SCAN-LISTS LEM-TESTS/SYNTAX-TEST::POINT 1 0 T
      ...                                                                                                                                  | <strong> OK </strong> |
| (scan-lists limit-point forward)  | Expect (AND
        (EQ LEM-TESTS/SYNTAX-TEST::POINT
            (LEM-BASE:SCAN-LISTS LEM-TESTS/S...                                                                                            | <strong> OK </strong> |
| (scan-lists limit-point backward) | Expect (AND
        (NULL
         (LEM-BASE:SCAN-LISTS LEM-TESTS/SYNTAX-TEST::POINT -1 0 T
     ...                                                                                                                                   | <strong> OK </strong> |
| (scan-lists limit-point backward) | Expect (AND
        (EQ LEM-TESTS/SYNTAX-TEST::POINT
            (LEM-BASE:SCAN-LISTS LEM-TESTS/S...                                                                                            | <strong> OK </strong> |

## buffer-list
| Test                        | Description                                                                                          | Result                |
|-----------------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (buffer-list)               | Expect (NULL (LEM-BASE:BUFFER-LIST)) to be true.                                                     | <strong> OK </strong> |
| (buffer-list)               | Expect (LEM-BASE:BUFFERP LEM-TESTS/BUFFER-LIST-TEST::BUFFER) to be true.                             | <strong> OK </strong> |
| (buffer-list)               | Expect (NULL (LEM-BASE:BUFFER-LIST)) to be true.                                                     | <strong> OK </strong> |
| (buffer-list make buffer-a) | Expect (EQUAL (LIST LEM-TESTS/BUFFER-LIST-TEST::BUFFER-A)
              (LEM-BASE:BUFFER-LIST)) t...                                                                                           | <strong> OK </strong> |
| (buffer-list make buffer-b) | Expect (EQUAL
        (LIST LEM-TESTS/BUFFER-LIST-TEST::BUFFER-B
              LEM-TESTS/BUFFER-L...                                                                                                  | <strong> OK </strong> |
| (buffer-list make buffer-c) | Expect (EQUAL
        (LIST LEM-TESTS/BUFFER-LIST-TEST::BUFFER-C
              LEM-TESTS/BUFFER-L...                                                                                                  | <strong> OK </strong> |

## any-modified-buffer-p
| Test                                                               | Description                                                                                          | Result                |
|--------------------------------------------------------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (any-modified-buffer-p)                                            | Expect (EQUAL
        (LIST LEM-TESTS/BUFFER-LIST-TEST::BUFFER-C
              LEM-TESTS/BUFFER-L...                                                                                                                                         | <strong> OK </strong> |
| (any-modified-buffer-p)                                            | Expect (LEM-BASE:ANY-MODIFIED-BUFFER-P) to be false.                                                 | <strong> OK </strong> |
| (any-modified-buffer-p edit buffer-a, any-modified-buffer-p = nil) | Expect (LEM-BASE:ANY-MODIFIED-BUFFER-P) to be false.                                                 | <strong> OK </strong> |
| (any-modified-buffer-p edit buffer-b, any-modified-buffer-p = nil) | Expect (LEM-BASE:ANY-MODIFIED-BUFFER-P) to be false.                                                 | <strong> OK </strong> |
| (any-modified-buffer-p edit buffer-c, any-modified-buffer-p = t)   | Expect (EQ T (LEM-BASE:ANY-MODIFIED-BUFFER-P)) to be true.                                           | <strong> OK </strong> |

## get-buffer
| Test                                          | Description                                                                                          | Result                |
|-----------------------------------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (get-buffer argument type)                    | Expect (FUNCALL FUNCTION NIL) to signal TYPE-ERROR.                                                  | <strong> OK </strong> |
| (get-buffer argument type)                    | Expect (FUNCALL FUNCTION 1) to signal TYPE-ERROR.                                                    | <strong> OK </strong> |
| (get-buffer argument type)                    | Expect (FUNCALL FUNCTION #(#\a #\b)) to signal TYPE-ERROR.                                           | <strong> OK </strong> |
| (get-buffer)                                  | Expect (NULL (LEM-BASE:GET-BUFFER "a")) to be true.                                                  | <strong> OK </strong> |
| (get-buffer buffer-a)                         | Expect (EQ LEM-TESTS/BUFFER-LIST-TEST::BUFFER-A (LEM-BASE:GET-BUFFER "a")) to be true.               | <strong> OK </strong> |
| (get-buffer buffer-b)                         | Expect (EQ LEM-TESTS/BUFFER-LIST-TEST::BUFFER-A (LEM-BASE:GET-BUFFER "a")) to be true.               | <strong> OK </strong> |
| (get-buffer buffer-b)                         | Expect (EQ LEM-TESTS/BUFFER-LIST-TEST::BUFFER-B (LEM-BASE:GET-BUFFER "b")) to be true.               | <strong> OK </strong> |
| (get-buffer buffer-c)                         | Expect (EQ LEM-TESTS/BUFFER-LIST-TEST::BUFFER-A (LEM-BASE:GET-BUFFER "a")) to be true.               | <strong> OK </strong> |
| (get-buffer buffer-c)                         | Expect (EQ LEM-TESTS/BUFFER-LIST-TEST::BUFFER-B (LEM-BASE:GET-BUFFER "b")) to be true.               | <strong> OK </strong> |
| (get-buffer buffer-c)                         | Expect (EQ LEM-TESTS/BUFFER-LIST-TEST::BUFFER-C (LEM-BASE:GET-BUFFER "c")) to be true.               | <strong> OK </strong> |
| (get-buffer receive the buffer-object itself) | Expect (EQ LEM-TESTS/BUFFER-LIST-TEST::BUFFER-A
           (LEM-BASE:GET-BUFFER LEM-TESTS/BUFFER-...                                                                                                   | <strong> OK </strong> |
| (get-buffer receive the buffer-object itself) | Expect (EQ LEM-TESTS/BUFFER-LIST-TEST::BUFFER-B
           (LEM-BASE:GET-BUFFER LEM-TESTS/BUFFER-...                                                                                                   | <strong> OK </strong> |
| (get-buffer receive the buffer-object itself) | Expect (EQ LEM-TESTS/BUFFER-LIST-TEST::BUFFER-C
           (LEM-BASE:GET-BUFFER LEM-TESTS/BUFFER-...                                                                                                   | <strong> OK </strong> |

## unique-buffer-name
| Test                               | Description                                                                                          | Result                |
|------------------------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (unique-buffer-name argument type) | Expect (FUNCALL FUNCTION NIL) to signal TYPE-ERROR.                                                  | <strong> OK </strong> |
| (unique-buffer-name argument type) | Expect (FUNCALL FUNCTION 1) to signal TYPE-ERROR.                                                    | <strong> OK </strong> |
| (unique-buffer-name argument type) | Expect (FUNCALL FUNCTION #(#\a #\b)) to signal TYPE-ERROR.                                           | <strong> OK </strong> |
| (unique-buffer-name)               | Expect (EQUAL "foo" (LEM-BASE:UNIQUE-BUFFER-NAME "foo")) to be true.                                 | <strong> OK </strong> |
| (unique-buffer-name)               | Expect (EQUAL "a<1>" LEM-TESTS/BUFFER-LIST-TEST::NAME) to be true.                                   | <strong> OK </strong> |
| (unique-buffer-name)               | Expect (EQUAL "a<2>" LEM-TESTS/BUFFER-LIST-TEST::NAME) to be true.                                   | <strong> OK </strong> |
| (unique-buffer-name)               | Expect (STRING= (LEM-BASE:BUFFER-NAME LEM-TESTS/BUFFER-LIST-TEST::BUFFER-A) "a") to be true.         | <strong> OK </strong> |
| (unique-buffer-name)               | Expect (STRING= (LEM-BASE:BUFFER-NAME LEM-TESTS/BUFFER-LIST-TEST::BUFFER-A<1>)
                "a...                                                                                                                       | <strong> OK </strong> |
| (unique-buffer-name)               | Expect (STRING= (LEM-BASE:BUFFER-NAME LEM-TESTS/BUFFER-LIST-TEST::BUFFER-A<2>)
                "a...                                                                                                                       | <strong> OK </strong> |
| (unique-buffer-name)               | Expect (EQUAL (LEM-BASE:BUFFER-LIST)
              (LIST LEM-TESTS/BUFFER-LIST-TEST::BUFFER-A<2>
...                                                                                                                                         | <strong> OK </strong> |
| (unique-buffer-name)               | Expect (EQUAL "a<2>" (LEM-BASE:UNIQUE-BUFFER-NAME "a")) to be true.                                  | <strong> OK </strong> |
| (unique-buffer-name)               | Expect (EQUAL (LEM-BASE:BUFFER-LIST)
              (LIST LEM-TESTS/BUFFER-LIST-TEST::BUFFER-A<1>
...                                                                                                                                         | <strong> OK </strong> |
| (unique-buffer-name)               | Expect (EQUAL "a<1>" (LEM-BASE:UNIQUE-BUFFER-NAME "a")) to be true.                                  | <strong> OK </strong> |
| (unique-buffer-name)               | Expect (EQUAL (LEM-BASE:BUFFER-LIST)
              (LIST LEM-TESTS/BUFFER-LIST-TEST::BUFFER-A<2>
...                                                                                                                                         | <strong> OK </strong> |
| (unique-buffer-name)               | Expect (EQUAL "a" (LEM-BASE:UNIQUE-BUFFER-NAME "a")) to be true.                                     | <strong> OK </strong> |
| (unique-buffer-name)               | Expect (EQUAL (LEM-BASE:BUFFER-LIST)
              (LIST LEM-TESTS/BUFFER-LIST-TEST::BUFFER-A<2>
...                                                                                                                                         | <strong> OK </strong> |
| (unique-buffer-name)               | Expect (EQUAL "b" (LEM-BASE:UNIQUE-BUFFER-NAME "b")) to be true.                                     | <strong> OK </strong> |

## delete-buffer
| Test                                                             | Description                                                                                          | Result                |
|------------------------------------------------------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (delete-buffer argument type)                                    | Expect (FUNCALL FUNCTION NIL) to signal TYPE-ERROR.                                                  | <strong> OK </strong> |
| (delete-buffer argument type)                                    | Expect (FUNCALL FUNCTION 1) to signal TYPE-ERROR.                                                    | <strong> OK </strong> |
| (delete-buffer argument type)                                    | Expect (FUNCALL FUNCTION #(#\a #\b)) to signal TYPE-ERROR.                                           | <strong> OK </strong> |
| (delete-buffer argument type)                                    | Expect (FUNCALL FUNCTION "name") to signal TYPE-ERROR.                                               | <strong> OK </strong> |
| (delete-buffer)                                                  | Expect (LEM-BASE:DELETED-BUFFER-P LEM-TESTS/BUFFER-LIST-TEST::DELETING-BUFFER) to be false.          | <strong> OK </strong> |
| (delete-buffer)                                                  | Expect (LEM-BASE:DELETED-BUFFER-P LEM-TESTS/BUFFER-LIST-TEST::DELETING-BUFFER) to be true.           | <strong> OK </strong> |
| (delete-buffer)                                                  | Expect (EQUAL LEM-TESTS/BUFFER-LIST-TEST::RESULT
              LEM-TESTS/BUFFER-LIST-TEST::EXPECT...                                                                                                                       | <strong> OK </strong> |
| (delete-buffer)                                                  | Expect (LEM-BASE:DELETED-BUFFER-P LEM-TESTS/BUFFER-LIST-TEST::DELETING-BUFFER) to be false.          | <strong> OK </strong> |
| (delete-buffer)                                                  | Expect (LEM-BASE:DELETED-BUFFER-P LEM-TESTS/BUFFER-LIST-TEST::DELETING-BUFFER) to be true.           | <strong> OK </strong> |
| (delete-buffer)                                                  | Expect (EQUAL LEM-TESTS/BUFFER-LIST-TEST::RESULT
              LEM-TESTS/BUFFER-LIST-TEST::EXPECT...                                                                                                                       | <strong> OK </strong> |
| (delete-buffer)                                                  | Expect (LEM-BASE:DELETED-BUFFER-P LEM-TESTS/BUFFER-LIST-TEST::DELETING-BUFFER) to be false.          | <strong> OK </strong> |
| (delete-buffer)                                                  | Expect (LEM-BASE:DELETED-BUFFER-P LEM-TESTS/BUFFER-LIST-TEST::DELETING-BUFFER) to be true.           | <strong> OK </strong> |
| (delete-buffer)                                                  | Expect (EQUAL LEM-TESTS/BUFFER-LIST-TEST::RESULT
              LEM-TESTS/BUFFER-LIST-TEST::EXPECT...                                                                                                                       | <strong> OK </strong> |
| (delete-buffer temporary buffer)                                 | Expect (LEM-BASE:DELETED-BUFFER-P LEM-TESTS/BUFFER-LIST-TEST::BUFFER) to be false.                   | <strong> OK </strong> |
| (delete-buffer temporary buffer)                                 | Expect (EQUAL LEM-TESTS/BUFFER-LIST-TEST::BUFFER-LIST
              (LEM-BASE:DELETE-BUFFER LEM-T...                                                                                                                            | <strong> OK </strong> |
| (delete-buffer temporary buffer)                                 | Expect (LEM-BASE:DELETED-BUFFER-P LEM-TESTS/BUFFER-LIST-TEST::BUFFER) to be true.                    | <strong> OK </strong> |
| (delete-buffer kill-buffer-hook buffer local)                    | Expect (EQ LEM-TESTS/BUFFER-LIST-TEST::HOOKED-BUFFER
           LEM-TESTS/BUFFER-LIST-TEST::DELET...                                                                                                                           | <strong> OK </strong> |
| (delete-buffer kill-buffer-hook buffer local)                    | Expect (LEM-BASE:DELETED-BUFFER-P LEM-TESTS/BUFFER-LIST-TEST::HOOKED-BUFFER) to be false.            | <strong> OK </strong> |
| (delete-buffer kill-buffer-hook buffer local)                    | Expect LEM-TESTS/BUFFER-LIST-TEST::CALLED-HOOK-P to be true.                                         | <strong> OK </strong> |
| (delete-buffer kill-buffer-hook global)                          | Expect (EQ LEM-TESTS/BUFFER-LIST-TEST::HOOKED-BUFFER
           LEM-TESTS/BUFFER-LIST-TEST::DELET...                                                                                                                           | <strong> OK </strong> |
| (delete-buffer kill-buffer-hook global)                          | Expect (LEM-BASE:DELETED-BUFFER-P LEM-TESTS/BUFFER-LIST-TEST::HOOKED-BUFFER) to be false.            | <strong> OK </strong> |
| (delete-buffer kill-buffer-hook global)                          | Expect LEM-TESTS/BUFFER-LIST-TEST::CALLED-HOOK-P to be true.                                         | <strong> OK </strong> |
| (delete-buffer kill-buffer-hook local/global called local hook)  | Expect (EQ LEM-TESTS/BUFFER-LIST-TEST::HOOKED-BUFFER
           LEM-TESTS/BUFFER-LIST-TEST::DELET...                                                                                                                           | <strong> OK </strong> |
| (delete-buffer kill-buffer-hook local/global called local hook)  | Expect (LEM-BASE:DELETED-BUFFER-P LEM-TESTS/BUFFER-LIST-TEST::HOOKED-BUFFER) to be false.            | <strong> OK </strong> |
| (delete-buffer kill-buffer-hook local/global called global hook) | Expect (EQ LEM-TESTS/BUFFER-LIST-TEST::HOOKED-BUFFER
           LEM-TESTS/BUFFER-LIST-TEST::DELET...                                                                                                                           | <strong> OK </strong> |
| (delete-buffer kill-buffer-hook local/global called global hook) | Expect (LEM-BASE:DELETED-BUFFER-P LEM-TESTS/BUFFER-LIST-TEST::HOOKED-BUFFER) to be false.            | <strong> OK </strong> |
| (delete-buffer kill-buffer-hook local/global)                    | Expect (EQUAL '(:LOCAL :GLOBAL)
              (NREVERSE LEM-TESTS/BUFFER-LIST-TEST::CALLED-ORDER)...                                                                                                      | <strong> OK </strong> |

## get-next-buffer
| Test                                      | Description                                                                                          | Result                |
|-------------------------------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (get-next-buffer argument type)           | Expect (FUNCALL FUNCTION NIL) to signal TYPE-ERROR.                                                  | <strong> OK </strong> |
| (get-next-buffer argument type)           | Expect (FUNCALL FUNCTION 1) to signal TYPE-ERROR.                                                    | <strong> OK </strong> |
| (get-next-buffer argument type)           | Expect (FUNCALL FUNCTION #(#\a #\b)) to signal TYPE-ERROR.                                           | <strong> OK </strong> |
| (get-next-buffer argument type)           | Expect (FUNCALL FUNCTION "name") to signal TYPE-ERROR.                                               | <strong> OK </strong> |
| (get-next-buffer buffer-list length is 0) | Expect (EQ (FUNCALL FUNCTION (LEM-BASE:MAKE-BUFFER NIL :TEMPORARY T)) NIL) to be true.               | <strong> OK </strong> |
| (get-next-buffer buffer-list length is 1) | Expect (EQ (FUNCALL FUNCTION LEM-TESTS/BUFFER-LIST-TEST::BUFFER-A) NIL) to be true.                  | <strong> OK </strong> |
| (get-next-buffer buffer-list length is 3) | Expect (EQ (LEM-BASE:GET-NEXT-BUFFER LEM-TESTS/BUFFER-LIST-TEST::BUFFER-C)
           LEM-TESTS/B...                                                                                                                          | <strong> OK </strong> |
| (get-next-buffer buffer-list length is 3) | Expect (EQ (LEM-BASE:GET-NEXT-BUFFER LEM-TESTS/BUFFER-LIST-TEST::BUFFER-B)
           LEM-TESTS/B...                                                                                                                          | <strong> OK </strong> |
| (get-next-buffer buffer-list length is 3) | Expect (EQ (LEM-BASE:GET-NEXT-BUFFER LEM-TESTS/BUFFER-LIST-TEST::BUFFER-A) NIL) to be true.          | <strong> OK </strong> |
| (get-next-buffer buffer-list length is 3) | Expect (EQ (LEM-BASE:GET-NEXT-BUFFER (LEM-BASE:MAKE-BUFFER NIL :TEMPORARY T))
           NIL) to ...                                                                                                                             | <strong> OK </strong> |

## get-previous-buffer
| Test                                          | Description                                                                                          | Result                |
|-----------------------------------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (get-previous-buffer argument type)           | Expect (FUNCALL FUNCTION NIL) to signal TYPE-ERROR.                                                  | <strong> OK </strong> |
| (get-previous-buffer argument type)           | Expect (FUNCALL FUNCTION 1) to signal TYPE-ERROR.                                                    | <strong> OK </strong> |
| (get-previous-buffer argument type)           | Expect (FUNCALL FUNCTION #(#\a #\b)) to signal TYPE-ERROR.                                           | <strong> OK </strong> |
| (get-previous-buffer argument type)           | Expect (FUNCALL FUNCTION "name") to signal TYPE-ERROR.                                               | <strong> OK </strong> |
| (get-previous-buffer buffer-list length is 0) | Expect (EQ (FUNCALL FUNCTION (LEM-BASE:MAKE-BUFFER NIL :TEMPORARY T)) NIL) to be true.               | <strong> OK </strong> |
| (get-previous-buffer buffer-list length is 1) | Expect (EQ (FUNCALL FUNCTION LEM-TESTS/BUFFER-LIST-TEST::BUFFER-A) NIL) to be true.                  | <strong> OK </strong> |
| (get-previous-buffer buffer-list length is 3) | Expect (EQ (LEM-BASE:GET-PREVIOUS-BUFFER LEM-TESTS/BUFFER-LIST-TEST::BUFFER-C)
           NIL) to...                                                                                                                                  | <strong> OK </strong> |
| (get-previous-buffer buffer-list length is 3) | Expect (EQ (LEM-BASE:GET-PREVIOUS-BUFFER LEM-TESTS/BUFFER-LIST-TEST::BUFFER-B)
           LEM-TES...                                                                                                                                  | <strong> OK </strong> |
| (get-previous-buffer buffer-list length is 3) | Expect (EQ (LEM-BASE:GET-PREVIOUS-BUFFER LEM-TESTS/BUFFER-LIST-TEST::BUFFER-A)
           LEM-TES...                                                                                                                                  | <strong> OK </strong> |
| (get-previous-buffer buffer-list length is 3) | Expect (EQ
        (LEM-BASE:GET-PREVIOUS-BUFFER (LEM-BASE:MAKE-BUFFER NIL :TEMPORARY T))
       ...                                                                                                                                             | <strong> OK </strong> |

## bury-buffer
| Test                                                   | Description                                                                                          | Result                |
|--------------------------------------------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (bury-buffer argument type)                            | Expect (FUNCALL FUNCTION NIL) to signal TYPE-ERROR.                                                  | <strong> OK </strong> |
| (bury-buffer argument type)                            | Expect (FUNCALL FUNCTION 1) to signal TYPE-ERROR.                                                    | <strong> OK </strong> |
| (bury-buffer argument type)                            | Expect (FUNCALL FUNCTION #(#\a #\b)) to signal TYPE-ERROR.                                           | <strong> OK </strong> |
| (bury-buffer argument type)                            | Expect (FUNCALL FUNCTION "name") to signal TYPE-ERROR.                                               | <strong> OK </strong> |
| (bury-buffer buffer-list length is 1)                  | Expect (EQ LEM-TESTS/BUFFER-LIST-TEST::BUFFER-A
           (LEM-BASE:BURY-BUFFER LEM-TESTS/BUFFER...                                                                                                            | <strong> OK </strong> |
| (bury-buffer buffer-list length is 1)                  | Expect (EQUAL (LEM-BASE:BUFFER-LIST)
              (LIST LEM-TESTS/BUFFER-LIST-TEST::BUFFER-A)) t...                                                                                                 | <strong> OK </strong> |
| (bury-buffer buffer-list length is 3)                  | Expect (EQ LEM-TESTS/BUFFER-LIST-TEST::BUFFER-B
           (LEM-BASE:BURY-BUFFER LEM-TESTS/BUFFER...                                                                                                            | <strong> OK </strong> |
| (bury-buffer buffer-list length is 3)                  | Expect (EQUAL (LEM-BASE:BUFFER-LIST)
              (LIST LEM-TESTS/BUFFER-LIST-TEST::BUFFER-B
   ...                                                                                                                                                          | <strong> OK </strong> |
| (bury-buffer buffer-list length is 3)                  | Expect (EQ LEM-TESTS/BUFFER-LIST-TEST::BUFFER-C
           (LEM-BASE:BURY-BUFFER LEM-TESTS/BUFFER...                                                                                                            | <strong> OK </strong> |
| (bury-buffer buffer-list length is 3)                  | Expect (EQUAL (LEM-BASE:BUFFER-LIST)
              (LIST LEM-TESTS/BUFFER-LIST-TEST::BUFFER-C
   ...                                                                                                                                                          | <strong> OK </strong> |
| (bury-buffer buffer-list length is 3)                  | Expect (EQ LEM-TESTS/BUFFER-LIST-TEST::BUFFER-C
           (LEM-BASE:BURY-BUFFER LEM-TESTS/BUFFER...                                                                                                            | <strong> OK </strong> |
| (bury-buffer buffer-list length is 3)                  | Expect (EQUAL (LEM-BASE:BUFFER-LIST)
              (LIST LEM-TESTS/BUFFER-LIST-TEST::BUFFER-C
   ...                                                                                                                                                          | <strong> OK </strong> |
| (bury-buffer temporary buffer buffer-list length is 0) | Expect (EQ NIL (LEM-BASE:BURY-BUFFER (LEM-BASE:MAKE-BUFFER NIL :TEMPORARY T))) to be true.           | <strong> OK </strong> |
| (bury-buffer temporary buffer buffer-list length is 3) | Expect (EQ LEM-TESTS/BUFFER-LIST-TEST::BUFFER-C
           (LEM-BASE:BURY-BUFFER (LEM-BASE:MAKE-B...                                                                                                            | <strong> OK </strong> |
| (bury-buffer temporary buffer buffer-list length is 3) | Expect (EQUAL (LEM-BASE:BUFFER-LIST)
              (LIST LEM-TESTS/BUFFER-LIST-TEST::BUFFER-C
   ...                                                                                                                                                          | <strong> OK </strong> |

## unbury-buffer
| Test                                                     | Description                                                                                          | Result                |
|----------------------------------------------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (unbury-buffer argument type)                            | Expect (FUNCALL FUNCTION NIL) to signal TYPE-ERROR.                                                  | <strong> OK </strong> |
| (unbury-buffer argument type)                            | Expect (FUNCALL FUNCTION 1) to signal TYPE-ERROR.                                                    | <strong> OK </strong> |
| (unbury-buffer argument type)                            | Expect (FUNCALL FUNCTION #(#\a #\b)) to signal TYPE-ERROR.                                           | <strong> OK </strong> |
| (unbury-buffer argument type)                            | Expect (FUNCALL FUNCTION "name") to signal TYPE-ERROR.                                               | <strong> OK </strong> |
| (unbury-buffer buffer-list length is 1)                  | Expect (EQ LEM-TESTS/BUFFER-LIST-TEST::BUFFER-A
           (LEM-BASE:UNBURY-BUFFER LEM-TESTS/BUFF...                                                                                                              | <strong> OK </strong> |
| (unbury-buffer buffer-list length is 1)                  | Expect (EQUAL (LEM-BASE:BUFFER-LIST)
              (LIST LEM-TESTS/BUFFER-LIST-TEST::BUFFER-A)) t...                                                                                                   | <strong> OK </strong> |
| (unbury-buffer buffer-list length is 3)                  | Expect (EQ LEM-TESTS/BUFFER-LIST-TEST::BUFFER-A
           (LEM-BASE:UNBURY-BUFFER LEM-TESTS/BUFF...                                                                                                              | <strong> OK </strong> |
| (unbury-buffer buffer-list length is 3)                  | Expect (EQUAL (LEM-BASE:BUFFER-LIST)
              (LIST LEM-TESTS/BUFFER-LIST-TEST::BUFFER-A
   ...                                                                                                                                                            | <strong> OK </strong> |
| (unbury-buffer buffer-list length is 3)                  | Expect (EQ LEM-TESTS/BUFFER-LIST-TEST::BUFFER-B
           (LEM-BASE:UNBURY-BUFFER LEM-TESTS/BUFF...                                                                                                              | <strong> OK </strong> |
| (unbury-buffer buffer-list length is 3)                  | Expect (EQUAL (LEM-BASE:BUFFER-LIST)
              (LIST LEM-TESTS/BUFFER-LIST-TEST::BUFFER-B
   ...                                                                                                                                                            | <strong> OK </strong> |
| (unbury-buffer buffer-list length is 3)                  | Expect (EQ LEM-TESTS/BUFFER-LIST-TEST::BUFFER-C
           (LEM-BASE:UNBURY-BUFFER LEM-TESTS/BUFF...                                                                                                              | <strong> OK </strong> |
| (unbury-buffer buffer-list length is 3)                  | Expect (EQUAL (LEM-BASE:BUFFER-LIST)
              (LIST LEM-TESTS/BUFFER-LIST-TEST::BUFFER-C
   ...                                                                                                                                                            | <strong> OK </strong> |
| (unbury-buffer temporary buffer buffer-list length is 0) | Expect (EQ LEM-TESTS/BUFFER-LIST-TEST::BUFFER
           (LEM-BASE:UNBURY-BUFFER LEM-TESTS/BUFFER...                                                                                                            | <strong> OK </strong> |
| (unbury-buffer temporary buffer buffer-list length is 3) | Expect (EQ LEM-TESTS/BUFFER-LIST-TEST::BUFFER
           (LEM-BASE:UNBURY-BUFFER LEM-TESTS/BUFFER...                                                                                                            | <strong> OK </strong> |
| (unbury-buffer temporary buffer buffer-list length is 3) | Expect (EQUAL (LEM-BASE:BUFFER-LIST)
              (LIST LEM-TESTS/BUFFER-LIST-TEST::BUFFER-C
   ...                                                                                                                                                            | <strong> OK </strong> |

## get-file-buffer
| Test                            | Description                                                                                          | Result                |
|---------------------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (get-file-buffer argument type) | Expect (LEM-BASE:GET-FILE-BUFFER NIL) to signal TYPE-ERROR.                                          | <strong> OK </strong> |
| (get-file-buffer argument type) | Expect (LEM-BASE:GET-FILE-BUFFER T) to signal TYPE-ERROR.                                            | <strong> OK </strong> |
| (get-file-buffer argument type) | Expect (LEM-BASE:GET-FILE-BUFFER 1) to signal TYPE-ERROR.                                            | <strong> OK </strong> |
| (get-file-buffer argument type) | Expect (LEM-BASE:GET-FILE-BUFFER #(#\a)) to signal TYPE-ERROR.                                       | <strong> OK </strong> |
| (get-file-buffer)               | Expect (NULL (LEM-BASE:GET-FILE-BUFFER LEM-TESTS/BUFFER-LIST-TEST::FILENAME)) to be true.            | <strong> OK </strong> |
| (get-file-buffer)               | Expect (EQ (LEM-BASE:GET-FILE-BUFFER LEM-TESTS/BUFFER-LIST-TEST::FILENAME)
           LEM-TESTS/B...                                                                                                                | <strong> OK </strong> |

## display-popup-window
| Test                   | Description                                                                                          | Result                |
|------------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (display-popup-window) | Expect (EQUAL "hello"
              (LEM-FAKE-INTERFACE:GET-DISPLAYED-TEXT
               LEM-TES...                                                                                                       | <strong> OK </strong> |
| (display-popup-window) | Expect (EQUAL "hello"
              (LEM-BASE:BUFFER-TEXT
               (LEM-CORE:WINDOW-BUFFER ...                                                                                      | <strong> OK </strong> |
| (display-popup-window) | Expect (EQL 1
            (LEM-CORE:FLOATING-WINDOW-BORDER
             LEM-TESTS/POPUP-WINDOW::P...                                                                                       | <strong> OK </strong> |
| (display-popup-window) | Expect (EQ (LEM-CORE:CURRENT-WINDOW)
           (LEM/POPUP-WINDOW::POPUP-WINDOW-SOURCE-WINDOW
   ...                                                                                                                          | <strong> OK </strong> |
| (display-popup-window) | Expect (= 5
          (LEM/POPUP-WINDOW::POPUP-WINDOW-BASE-WIDTH
           LEM-TESTS/POPUP-WINDO...                                                                                             | <strong> OK </strong> |
| (display-popup-window) | Expect (= 1
          (LEM/POPUP-WINDOW::POPUP-WINDOW-BASE-HEIGHT
           LEM-TESTS/POPUP-WIND...                                                                                              | <strong> OK </strong> |
| (display-popup-window) | Expect (LEM/POPUP-WINDOW::POPUP-WINDOW-GRAVITY
        LEM-TESTS/POPUP-WINDOW::POPUP-WINDOW) to b...                                                                           | <strong> OK </strong> |

## prompt-for-character
| Test                   | Description                                                                                          | Result                |
|------------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (prompt-for-character) | Expect (EQUAL #\a
              (LEM-CORE:PROMPT-FOR-CHARACTER "test: " :GRAVITY
                ...                                                                                                             | <strong> OK </strong> |

## replace-string
| Test             | Description                                                                                          | Result                |
|------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (replace-string) | Expect (EQUAL
        (CL-PPCRE:REGEX-REPLACE-ALL "foo" LEM-TESTS/ISEARCH::*TEXT* "foobar")
     ...                                                                                                                  | <strong> OK </strong> |

## simple-fake-cursor-test
| Test                                                                       | Description                                                                                          | Result                |
|----------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (simple-fake-cursor-test Test the fake-cursor created buffer-fake-cursors) | Expect (ALEXANDRIA:LENGTH= 1
                           (LEM-CORE:BUFFER-FAKE-CURSORS
           ...                                                                                                                                                                      | <strong> OK </strong> |
| (simple-fake-cursor-test Test the fake-cursor created buffer-fake-cursors) | Expect (EQ LEM-TESTS/CURSORS::CURSOR
           (FIRST (LEM-CORE:BUFFER-FAKE-CURSORS LEM-TESTS/CU...                                                                                                                     | <strong> OK </strong> |
| (simple-fake-cursor-test Test the fake-cursor created killring)            | Expect (EQ (LEM-CORE:CURRENT-KILLRING) LEM-TESTS/CURSORS::KILLRING) to be false.                     | <strong> OK </strong> |
| (simple-fake-cursor-test Test the fake-cursor created killring)            | Expect (EQUAL "aaa"
              (LEM/COMMON/KILLRING:PEEK-KILLRING-ITEM
               LEM-TEST...                                                                                                                                                          | <strong> OK </strong> |
| (simple-fake-cursor-test Test the fake-cursor created killring)            | Expect (EQUAL "bbb"
              (LEM/COMMON/KILLRING:PEEK-KILLRING-ITEM
               LEM-TEST...                                                                                                                                                          | <strong> OK </strong> |
| (simple-fake-cursor-test Test the fake-cursor created killring)            | Expect (EQUAL "ccc"
              (LEM/COMMON/KILLRING:PEEK-KILLRING-ITEM
               LEM-TEST...                                                                                                                                                          | <strong> OK </strong> |
| (simple-fake-cursor-test Test the fake-cursor created point-kind)          | Expect (EQ :LEFT-INSERTING (LEM-BASE:POINT-KIND LEM-TESTS/CURSORS::CURSOR)) to be true.              | <strong> OK </strong> |
| (simple-fake-cursor-test Delete cursor)                                    | Expect (NULL (LEM-CORE:BUFFER-FAKE-CURSORS LEM-TESTS/CURSORS::BUFFER)) to be true.                   | <strong> OK </strong> |

## test-to-execute-a-series-of-commands
| Test                                                                             | Description                                                                                          | Result                |
|----------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (test-to-execute-a-series-of-commands execute self-insert command)               | Expect (STRING= (LEM-TESTS/UTILITIES:LINES " abcdefg" " hijklmn" " opqrstu")
                (LEM...                                                                                                                                                                   | <strong> OK </strong> |
| (test-to-execute-a-series-of-commands execute delete-previous-character command) | Expect (STRING= (LEM-TESTS/UTILITIES:LINES "abcdefg" "hijklmn" "opqrstu")
                (LEM-BA...                                                                                                                                                                | <strong> OK </strong> |
| (test-to-execute-a-series-of-commands multiple cursor killring)                  | Expect (EQUAL '("abcd" "opqr" "hijk")
              (MAPCAR
               (LAMBDA (LEM-TESTS/CUR...                                                                                                                                                  | <strong> OK </strong> |

## next-line/previous-line
| Test                      | Description                                                                                          | Result                |
|---------------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (next-line/previous-line) | Expect (LEM-TESTS/CURSORS::POSITIONS-SET-EQUAL '((2 12) (3 10) (4 10))
                          ...                                                                                                      | <strong> OK </strong> |
| (next-line/previous-line) | Expect (LEM-TESTS/CURSORS::POSITIONS-SET-EQUAL '((1 14) (2 12) (3 10))
                          ...                                                                                                      | <strong> OK </strong> |
| (next-line/previous-line) | Expect (LEM-TESTS/CURSORS::POSITIONS-SET-EQUAL '((2 12) (3 10) (4 10))
                          ...                                                                                                      | <strong> OK </strong> |

## self-insert-command
| Test                  | Description                                                                                          | Result                |
|-----------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (self-insert-command) | aaa                                                                                                  | <strong> OK </strong> |
| (self-insert-command) | aaaa                                                                                                 | <strong> OK </strong> |
| (self-insert-command) | Expect (SEARCH "Key not found: "
               (PRINC-TO-STRING LEM-TESTS/SELF-INSERT-COMMAND::E...                                                            | <strong> OK </strong> |

## execute-the-same-command-consecutively
| Test                                     | Description                                                      | Result                |
|------------------------------------------|------------------------------------------------------------------|-----------------------|
| (execute-the-same-command-consecutively) | Expect (EQUAL '(NIL T T) LEM/TESTS/INTERP::*RESULT*) to be true. | <strong> OK </strong> |

## get-file-mode
| Test            | Description                                                                                          | Result                |
|-----------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (get-file-mode) | Expect (EQUAL 'LEM-POSIX-SHELL-MODE:POSIX-SHELL-MODE
              (LEM-CORE:GET-FILE-MODE ".bash...                                                                          | <strong> OK </strong> |
| (get-file-mode) | Expect (EQUAL 'LEM-POSIX-SHELL-MODE:POSIX-SHELL-MODE
              (LEM-CORE:GET-FILE-MODE "foo.b...                                                                          | <strong> OK </strong> |
| (get-file-mode) | Expect (EQUAL 'LEM-LISP-MODE/INTERNAL:LISP-MODE
              (LEM-CORE:GET-FILE-MODE "foo.lisp")...                                                                     | <strong> OK </strong> |
| (get-file-mode) | Expect (NULL (LEM-CORE:GET-FILE-MODE "foo.lisp.bak")) to be true.                                    | <strong> OK </strong> |

## test-completion
| Test              | Description                                                                                          | Result                |
|-------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (test-completion) | Expect (EQUAL '("apple" "banana" "orange" "pineapple")
              (LEM-CORE:COMPLETION "a" LEM...                                                                              | <strong> OK </strong> |
| (test-completion) | Expect (EQUAL '("apple" "pineapple")
              (LEM-CORE:COMPLETION "app" LEM-TESTS/COMPLETIO...                                                            | <strong> OK </strong> |
| (test-completion) | Expect (EQUAL 'NIL (LEM-CORE:COMPLETION "xyz" LEM-TESTS/COMPLETION::ITEMS)) to be true.              | <strong> OK </strong> |
| (test-completion) | Expect (EQUAL 'NIL (LEM-CORE:COMPLETION "APP" LEM-TESTS/COMPLETION::ITEMS)) to be true.              | <strong> OK </strong> |
| (test-completion) | Expect (EQUAL '("apple" "pineapple")
              (LEM-CORE:COMPLETION "APP" LEM-TESTS/COMPLETIO...                                                            | <strong> OK </strong> |
| (test-completion) | Expect (EQUAL '("foo-bar-baz" "foo-bar-y")
              (LEM-CORE:COMPLETION "foo-bar"
         ...                                                                                                               | <strong> OK </strong> |

## simple-eval-test
| Test               | Description                   | Result                   |
|--------------------|-------------------------------|--------------------------|
| (simple-eval-test) | Raise an error while testing. | <strong> ERROR </strong> |

{{< /expand >}}
{{< expand "Clozure Common Lisp - Version 1.12 (v1.12) LinuxX8664" >}}
{{< progress title="Progress" value="100" icon="gdoc_info_outline" >}}
## rotate
| Test     | Description                                                                                          | Result                |
|----------|------------------------------------------------------------------------------------------------------|-----------------------|
| (rotate) | Expect (EQUAL "a" (LEM/COMMON/KILLRING:PEEK-KILLRING-ITEM LEM-TESTS/COMMON/KILLRING::KILLRING 0))... | <strong> OK </strong> |
| (rotate) | Expect (EQUAL "b" (LEM/COMMON/KILLRING:PEEK-KILLRING-ITEM LEM-TESTS/COMMON/KILLRING::KILLRING 1))... | <strong> OK </strong> |
| (rotate) | Expect (EQUAL "b" (LEM/COMMON/KILLRING:PEEK-KILLRING-ITEM LEM-TESTS/COMMON/KILLRING::KILLRING 0))... | <strong> OK </strong> |
| (rotate) | Expect (EQUAL "a" (LEM/COMMON/KILLRING:PEEK-KILLRING-ITEM LEM-TESTS/COMMON/KILLRING::KILLRING 1))... | <strong> OK </strong> |

## analyze-defstruct
| Test                                           | Description                                                                                          | Result                |
|------------------------------------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (analyze-defstruct simple)                     | Expect (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::STRUCT-INFO-P LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-D... | <strong> OK </strong> |
| (analyze-defstruct simple)                     | Expect (EQUAL "foo" (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::STRUCT-NAME LEM-TESTS/LISP-SYNTAX/DEF... | <strong> OK </strong> |
| (analyze-defstruct simple)                     | Expect (LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-DEFCLASS::EXPECTED-POINT-POSITION-P (LEM-LISP-SYNTAX.D... | <strong> OK </strong> |
| (analyze-defstruct simple)                     | Expect (LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-DEFCLASS::EXPECTED-POINT-POSITION-P (LEM-LISP-SYNTAX.D... | <strong> OK </strong> |
| (analyze-defstruct simple)                     | Expect (LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-DEFCLASS::EXPECTED-POINT-POSITION-P (LEM-LISP-SYNTAX.D... | <strong> OK </strong> |
| (analyze-defstruct simple)                     | Expect (= (LENGTH LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-DEFCLASS::SLOTS) 3) to be true.                 | <strong> OK </strong> |
| (analyze-defstruct simple)                     | Expect (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-INFO-P LEM-TESTS/LISP-SYNTAX/DEFS... | <strong> OK </strong> |
| (analyze-defstruct simple)                     | Expect (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-COMPLEX-P LEM-TESTS/LISP-SYNTAX/D... | <strong> OK </strong> |
| (analyze-defstruct simple)                     | Expect (EQUAL (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-NAME LEM-TESTS/LISP-SYNTAX... | <strong> OK </strong> |
| (analyze-defstruct simple)                     | Expect (LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-DEFCLASS::EXPECTED-POINT-POSITION-P (LEM-LISP-SYNTAX.D... | <strong> OK </strong> |
| (analyze-defstruct simple)                     | Expect (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-INFO-P LEM-TESTS/LISP-SYNTAX/DEFS... | <strong> OK </strong> |
| (analyze-defstruct simple)                     | Expect (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-COMPLEX-P LEM-TESTS/LISP-SYNTAX/D... | <strong> OK </strong> |
| (analyze-defstruct simple)                     | Expect (EQUAL (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-NAME LEM-TESTS/LISP-SYNTAX... | <strong> OK </strong> |
| (analyze-defstruct simple)                     | Expect (LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-DEFCLASS::EXPECTED-POINT-POSITION-P (LEM-LISP-SYNTAX.D... | <strong> OK </strong> |
| (analyze-defstruct simple)                     | Expect (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-INFO-P LEM-TESTS/LISP-SYNTAX/DEFS... | <strong> OK </strong> |
| (analyze-defstruct simple)                     | Expect (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-COMPLEX-P LEM-TESTS/LISP-SYNTAX/D... | <strong> OK </strong> |
| (analyze-defstruct simple)                     | Expect (EQUAL (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-NAME LEM-TESTS/LISP-SYNTAX... | <strong> OK </strong> |
| (analyze-defstruct simple)                     | Expect (LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-DEFCLASS::EXPECTED-POINT-POSITION-P (LEM-LISP-SYNTAX.D... | <strong> OK </strong> |
| (analyze-defstruct complex slot-description)   | Expect (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::STRUCT-INFO-P LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-D... | <strong> OK </strong> |
| (analyze-defstruct complex slot-description)   | Expect (EQUAL "foo" (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::STRUCT-NAME LEM-TESTS/LISP-SYNTAX/DEF... | <strong> OK </strong> |
| (analyze-defstruct complex slot-description)   | Expect (= (LENGTH LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-DEFCLASS::SLOTS) 11) to be true.                | <strong> OK </strong> |
| (analyze-defstruct complex slot-description a) | Expect (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-INFO-P LEM-TESTS/LISP-SYNTAX/DEFS... | <strong> OK </strong> |
| (analyze-defstruct complex slot-description a) | Expect (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-COMPLEX-P LEM-TESTS/LISP-SYNTAX/D... | <strong> OK </strong> |
| (analyze-defstruct complex slot-description a) | Expect (EQUAL (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-NAME LEM-TESTS/LISP-SYNTAX... | <strong> OK </strong> |
| (analyze-defstruct complex slot-description a) | Expect (LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-DEFCLASS::EXPECTED-POINT-POSITION-P (LEM-LISP-SYNTAX.D... | <strong> OK </strong> |
| (analyze-defstruct complex slot-description a) | Expect (EQUAL LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-DEFCLASS::EXPECTED-INITFORM (LEM-TESTS/LISP-SYNT... | <strong> OK </strong> |
| (analyze-defstruct complex slot-description a) | Expect (AND (NULL (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-TYPE-START-POINT LEM-T... | <strong> OK </strong> |
| (analyze-defstruct complex slot-description a) | Expect (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-READ-ONLY-P LEM-TESTS/LISP-SYNTAX... | <strong> OK </strong> |
| (analyze-defstruct complex slot-description b) | Expect (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-INFO-P LEM-TESTS/LISP-SYNTAX/DEFS... | <strong> OK </strong> |
| (analyze-defstruct complex slot-description b) | Expect (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-COMPLEX-P LEM-TESTS/LISP-SYNTAX/D... | <strong> OK </strong> |
| (analyze-defstruct complex slot-description b) | Expect (EQUAL (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-NAME LEM-TESTS/LISP-SYNTAX... | <strong> OK </strong> |
| (analyze-defstruct complex slot-description b) | Expect (LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-DEFCLASS::EXPECTED-POINT-POSITION-P (LEM-LISP-SYNTAX.D... | <strong> OK </strong> |
| (analyze-defstruct complex slot-description b) | Expect (AND (NULL (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-INITIAL-VALUE-START-PO... | <strong> OK </strong> |
| (analyze-defstruct complex slot-description b) | Expect (AND (NULL (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-TYPE-START-POINT LEM-T... | <strong> OK </strong> |
| (analyze-defstruct complex slot-description b) | Expect (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-READ-ONLY-P LEM-TESTS/LISP-SYNTAX... | <strong> OK </strong> |
| (analyze-defstruct complex slot-description c) | Expect (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-INFO-P LEM-TESTS/LISP-SYNTAX/DEFS... | <strong> OK </strong> |
| (analyze-defstruct complex slot-description c) | Expect (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-COMPLEX-P LEM-TESTS/LISP-SYNTAX/D... | <strong> OK </strong> |
| (analyze-defstruct complex slot-description c) | Expect (EQUAL (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-NAME LEM-TESTS/LISP-SYNTAX... | <strong> OK </strong> |
| (analyze-defstruct complex slot-description c) | Expect (LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-DEFCLASS::EXPECTED-POINT-POSITION-P (LEM-LISP-SYNTAX.D... | <strong> OK </strong> |
| (analyze-defstruct complex slot-description c) | Expect (EQUAL LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-DEFCLASS::EXPECTED-INITFORM (LEM-TESTS/LISP-SYNT... | <strong> OK </strong> |
| (analyze-defstruct complex slot-description c) | Expect (AND (NULL (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-TYPE-START-POINT LEM-T... | <strong> OK </strong> |
| (analyze-defstruct complex slot-description c) | Expect (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-READ-ONLY-P LEM-TESTS/LISP-SYNTAX... | <strong> OK </strong> |
| (analyze-defstruct complex slot-description d) | Expect (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-INFO-P LEM-TESTS/LISP-SYNTAX/DEFS... | <strong> OK </strong> |
| (analyze-defstruct complex slot-description d) | Expect (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-COMPLEX-P LEM-TESTS/LISP-SYNTAX/D... | <strong> OK </strong> |
| (analyze-defstruct complex slot-description d) | Expect (EQUAL (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-NAME LEM-TESTS/LISP-SYNTAX... | <strong> OK </strong> |
| (analyze-defstruct complex slot-description d) | Expect (LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-DEFCLASS::EXPECTED-POINT-POSITION-P (LEM-LISP-SYNTAX.D... | <strong> OK </strong> |
| (analyze-defstruct complex slot-description d) | Expect (EQUAL LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-DEFCLASS::EXPECTED-INITFORM (LEM-TESTS/LISP-SYNT... | <strong> OK </strong> |
| (analyze-defstruct complex slot-description d) | Expect (EQUAL LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-DEFCLASS::EXPECTED-TYPE (LEM-TESTS/LISP-SYNTAX/D... | <strong> OK </strong> |
| (analyze-defstruct complex slot-description d) | Expect (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-READ-ONLY-P LEM-TESTS/LISP-SYNTAX... | <strong> OK </strong> |
| (analyze-defstruct complex slot-description e) | Expect (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-INFO-P LEM-TESTS/LISP-SYNTAX/DEFS... | <strong> OK </strong> |
| (analyze-defstruct complex slot-description e) | Expect (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-COMPLEX-P LEM-TESTS/LISP-SYNTAX/D... | <strong> OK </strong> |
| (analyze-defstruct complex slot-description e) | Expect (EQUAL (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-NAME LEM-TESTS/LISP-SYNTAX... | <strong> OK </strong> |
| (analyze-defstruct complex slot-description e) | Expect (LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-DEFCLASS::EXPECTED-POINT-POSITION-P (LEM-LISP-SYNTAX.D... | <strong> OK </strong> |
| (analyze-defstruct complex slot-description e) | Expect (EQUAL LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-DEFCLASS::EXPECTED-INITFORM (LEM-TESTS/LISP-SYNT... | <strong> OK </strong> |
| (analyze-defstruct complex slot-description e) | Expect (EQUAL LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-DEFCLASS::EXPECTED-TYPE (LEM-TESTS/LISP-SYNTAX/D... | <strong> OK </strong> |
| (analyze-defstruct complex slot-description e) | Expect (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-READ-ONLY-P LEM-TESTS/LISP-SYNTAX... | <strong> OK </strong> |
| (analyze-defstruct complex slot-description f) | Expect (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-INFO-P LEM-TESTS/LISP-SYNTAX/DEFS... | <strong> OK </strong> |
| (analyze-defstruct complex slot-description f) | Expect (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-COMPLEX-P LEM-TESTS/LISP-SYNTAX/D... | <strong> OK </strong> |
| (analyze-defstruct complex slot-description f) | Expect (EQUAL (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-NAME LEM-TESTS/LISP-SYNTAX... | <strong> OK </strong> |
| (analyze-defstruct complex slot-description f) | Expect (LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-DEFCLASS::EXPECTED-POINT-POSITION-P (LEM-LISP-SYNTAX.D... | <strong> OK </strong> |
| (analyze-defstruct complex slot-description f) | Expect (EQUAL LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-DEFCLASS::EXPECTED-INITFORM (LEM-TESTS/LISP-SYNT... | <strong> OK </strong> |
| (analyze-defstruct complex slot-description f) | Expect (EQUAL LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-DEFCLASS::EXPECTED-TYPE (LEM-TESTS/LISP-SYNTAX/D... | <strong> OK </strong> |
| (analyze-defstruct complex slot-description f) | Expect (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-READ-ONLY-P LEM-TESTS/LISP-SYNTAX... | <strong> OK </strong> |
| (analyze-defstruct complex slot-description g) | Expect (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-INFO-P LEM-TESTS/LISP-SYNTAX/DEFS... | <strong> OK </strong> |
| (analyze-defstruct complex slot-description g) | Expect (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-COMPLEX-P LEM-TESTS/LISP-SYNTAX/D... | <strong> OK </strong> |
| (analyze-defstruct complex slot-description g) | Expect (EQUAL (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-NAME LEM-TESTS/LISP-SYNTAX... | <strong> OK </strong> |
| (analyze-defstruct complex slot-description g) | Expect (LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-DEFCLASS::EXPECTED-POINT-POSITION-P (LEM-LISP-SYNTAX.D... | <strong> OK </strong> |
| (analyze-defstruct complex slot-description g) | Expect (EQUAL LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-DEFCLASS::EXPECTED-INITFORM (LEM-TESTS/LISP-SYNT... | <strong> OK </strong> |
| (analyze-defstruct complex slot-description g) | Expect (AND (NULL (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-TYPE-START-POINT LEM-T... | <strong> OK </strong> |
| (analyze-defstruct complex slot-description g) | Expect (EQ T (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-READ-ONLY-P LEM-TESTS/LISP-... | <strong> OK </strong> |
| (analyze-defstruct complex slot-description h) | Expect (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-INFO-P LEM-TESTS/LISP-SYNTAX/DEFS... | <strong> OK </strong> |
| (analyze-defstruct complex slot-description h) | Expect (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-COMPLEX-P LEM-TESTS/LISP-SYNTAX/D... | <strong> OK </strong> |
| (analyze-defstruct complex slot-description h) | Expect (EQUAL (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-NAME LEM-TESTS/LISP-SYNTAX... | <strong> OK </strong> |
| (analyze-defstruct complex slot-description h) | Expect (LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-DEFCLASS::EXPECTED-POINT-POSITION-P (LEM-LISP-SYNTAX.D... | <strong> OK </strong> |
| (analyze-defstruct complex slot-description h) | Expect (EQUAL LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-DEFCLASS::EXPECTED-INITFORM (LEM-TESTS/LISP-SYNT... | <strong> OK </strong> |
| (analyze-defstruct complex slot-description h) | Expect (AND (NULL (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-TYPE-START-POINT LEM-T... | <strong> OK </strong> |
| (analyze-defstruct complex slot-description h) | Expect (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-READ-ONLY-P LEM-TESTS/LISP-SYNTAX... | <strong> OK </strong> |
| (analyze-defstruct complex slot-description i) | Expect (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-INFO-P LEM-TESTS/LISP-SYNTAX/DEFS... | <strong> OK </strong> |
| (analyze-defstruct complex slot-description i) | Expect (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-COMPLEX-P LEM-TESTS/LISP-SYNTAX/D... | <strong> OK </strong> |
| (analyze-defstruct complex slot-description i) | Expect (EQUAL (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-NAME LEM-TESTS/LISP-SYNTAX... | <strong> OK </strong> |
| (analyze-defstruct complex slot-description i) | Expect (LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-DEFCLASS::EXPECTED-POINT-POSITION-P (LEM-LISP-SYNTAX.D... | <strong> OK </strong> |
| (analyze-defstruct complex slot-description i) | Expect (EQUAL LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-DEFCLASS::EXPECTED-INITFORM (LEM-TESTS/LISP-SYNT... | <strong> OK </strong> |
| (analyze-defstruct complex slot-description i) | Expect (AND (NULL (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-TYPE-START-POINT LEM-T... | <strong> OK </strong> |
| (analyze-defstruct complex slot-description i) | Expect (EQ T (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-READ-ONLY-P LEM-TESTS/LISP-... | <strong> OK </strong> |
| (analyze-defstruct complex slot-description j) | Expect (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-INFO-P LEM-TESTS/LISP-SYNTAX/DEFS... | <strong> OK </strong> |
| (analyze-defstruct complex slot-description j) | Expect (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-COMPLEX-P LEM-TESTS/LISP-SYNTAX/D... | <strong> OK </strong> |
| (analyze-defstruct complex slot-description j) | Expect (EQUAL (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-NAME LEM-TESTS/LISP-SYNTAX... | <strong> OK </strong> |
| (analyze-defstruct complex slot-description j) | Expect (LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-DEFCLASS::EXPECTED-POINT-POSITION-P (LEM-LISP-SYNTAX.D... | <strong> OK </strong> |
| (analyze-defstruct complex slot-description j) | Expect (EQUAL LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-DEFCLASS::EXPECTED-INITFORM (LEM-TESTS/LISP-SYNT... | <strong> OK </strong> |
| (analyze-defstruct complex slot-description j) | Expect (EQUAL LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-DEFCLASS::EXPECTED-TYPE (LEM-TESTS/LISP-SYNTAX/D... | <strong> OK </strong> |
| (analyze-defstruct complex slot-description j) | Expect (EQ T (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-READ-ONLY-P LEM-TESTS/LISP-... | <strong> OK </strong> |
| (analyze-defstruct complex slot-description k) | Expect (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-INFO-P LEM-TESTS/LISP-SYNTAX/DEFS... | <strong> OK </strong> |
| (analyze-defstruct complex slot-description k) | Expect (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-COMPLEX-P LEM-TESTS/LISP-SYNTAX/D... | <strong> OK </strong> |
| (analyze-defstruct complex slot-description k) | Expect (EQUAL (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-NAME LEM-TESTS/LISP-SYNTAX... | <strong> OK </strong> |
| (analyze-defstruct complex slot-description k) | Expect (LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-DEFCLASS::EXPECTED-POINT-POSITION-P (LEM-LISP-SYNTAX.D... | <strong> OK </strong> |
| (analyze-defstruct complex slot-description k) | Expect (EQUAL LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-DEFCLASS::EXPECTED-INITFORM (LEM-TESTS/LISP-SYNT... | <strong> OK </strong> |
| (analyze-defstruct complex slot-description k) | Expect (EQUAL LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-DEFCLASS::EXPECTED-TYPE (LEM-TESTS/LISP-SYNTAX/D... | <strong> OK </strong> |
| (analyze-defstruct complex slot-description k) | Expect (EQ T (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::SLOT-DESCRIPTION-READ-ONLY-P LEM-TESTS/LISP-... | <strong> OK </strong> |
| (analyze-defstruct name-and-options)           | Expect (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::STRUCT-INFO-P LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-D... | <strong> OK </strong> |
| (analyze-defstruct name-and-options)           | Expect (EQUAL "foo" (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::STRUCT-NAME LEM-TESTS/LISP-SYNTAX/DEF... | <strong> OK </strong> |
| (analyze-defstruct name-and-options)           | Expect (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::OPTIONS-INFO-P (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCL... | <strong> OK </strong> |

## indent-test-under-lem-base
| Test                         | Description                                                                                          | Result                |
|------------------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:1:(in-package :lem-base)               | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:3:(defun same-line-p (point1 point2)   | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:9:(defun first-line-p (point)          | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:14:(defun last-line-p (point)          | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:19:(defun start-line-p (point)         | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:23:(defun end-line-p (point)           | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:28:(defun start-buffer-p (point)       | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:32:(defun end-buffer-p (point)         | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:36:(defun %move-to-position (point ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:44:(defun move-point (point new-point) | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:53:(defun line-start (point)           | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:58:(defun line-end (point)             | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:64:(defun buffer-start (point)         | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:68:(defun buffer-end (point)           | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:72:(defun line-offset (point n &opt... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:102:(declaim (inline %character-off... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:103:(defun %character-offset (point... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:124:(defun character-offset (point n)  | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:134:(defun character-at (point &opt... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:145:(defun line-string (point)         | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:149:(defun text-property-at (point ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:160:(defun put-text-property (start... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:177:(defun remove-text-property (st... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:192:(defun next-single-property-cha... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:206:(defun previous-single-property... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:220:(defun insert-character (point ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:225:(defun insert-string (point str... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:242:(defun delete-character (point ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:253:(defun erase-buffer (&optional ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:260:(defun region-beginning (&optio... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:265:(defun region-end (&optional (b... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:270:(defun %map-region (start end f... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:289:(defun map-region (start end fu... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:296:(defun points-to-string (start-... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:307:(defun count-characters (start-... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:318:(defun delete-between-points (s... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:327:(defun count-lines (start-point... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:334:(defun apply-region-lines (star... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:347:(defun line-number-at-point (po... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:351:(defun point-column (point)        | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:358:(defun move-to-column (point co... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:379:(defun position-at-point (point)   | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:386:(defun move-to-position (point ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:397:(defun point-bytes (point)         | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:409:(defun move-to-bytes (point bytes) | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:422:(defun move-to-line (point line... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:441:(defun check-marked ()             | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:446:(defun set-current-mark (point)    | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:452:(defun blank-line-p (point)        | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:466:(defun skip-chars-internal (poi... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:477:(defun skip-chars-forward (poin... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:484:(defun skip-chars-backward (poi... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:491:(defun invoke-save-excursion (f... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:504:(defun insert-buffer (point buf... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/basic.lisp:513:(defun buffer-text (buffer)        | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-insert.lisp:1:(in-package :lem-base)       | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-insert.lisp:3:(defvar *inhibit-read-onl... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-insert.lisp:6:(defvar *inhibit-modifica... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-insert.lisp:9:(define-editor-variable b... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-insert.lisp:10:(define-editor-variable ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-insert.lisp:12:(defun step-on-read-only... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-insert.lisp:22:(defun check-read-only-a... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-insert.lisp:31:(defmacro with-modify-bu... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-insert.lisp:39:(defun line-next-n (line n) | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-insert.lisp:44:(defun shift-markers (po... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-insert.lisp:104:(defun %insert-newline/... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-insert.lisp:113:(defgeneric insert-char... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-insert.lisp:135:(defun %insert-line-str... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-insert.lisp:143:(defgeneric insert-stri... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-insert.lisp:167:(defun %delete-line-bet... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-insert.lisp:180:(defun %delete-line-eol... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-insert.lisp:187:(defun %delete-line/poi... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-insert.lisp:201:;;TODO: ABCL complains ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-insert.lisp:201:;;TODO: ABCL complains ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-insert.lisp:201:;;TODO: ABCL complains ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-insert.lisp:201:;;TODO: ABCL complains ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-insert.lisp:201:;;TODO: ABCL complains ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-insert.lisp:201:;;TODO: ABCL complains ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-insert.lisp:201:;;TODO: ABCL complains ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-insert.lisp:201:;;TODO: ABCL complains ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-insert.lisp:201:;;TODO: ABCL complains ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-insert.lisp:201:;;TODO: ABCL complains ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-insert.lisp:201:;;TODO: ABCL complains ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-insert.lisp:201:;;TODO: ABCL complains ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-insert.lisp:202:#+abcl                     | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-insert.lisp:202:#+abcl                     | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-insert.lisp:202:#+abcl                     | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-insert.lisp:203:(defparameter n nil)       | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-insert.lisp:205:(defgeneric delete-char... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-insert.lisp:233:                         | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-insert.lisp:234:(declaim (inline call-b... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-insert.lisp:237:(defun call-before-chan... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-insert.lisp:242:(defun call-after-chang... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-insert.lisp:247:(defmacro insert/after-... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-insert.lisp:258:(defmacro delete/after-... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-insert.lisp:269:(defmethod insert-char/... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-insert.lisp:280:(defmethod insert-strin... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-insert.lisp:291:(defmethod delete-char/... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-list-manager.lisp:1:(in-package :lem-base) | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-list-manager.lisp:3:(defgeneric delete-... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-list-manager.lisp:5:(defclass buffer-li... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-list-manager.lisp:11:(defvar *buffer-li... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-list-manager.lisp:13:(defun buffer-list... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-list-manager.lisp:16:(defun call-with-c... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer-list-manager.lisp:22:(defmacro with-cur... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:1:(in-package :lem-base)              | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:3:(defparameter +primordial-buffer... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:5:(defclass buffer ()                 | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:88:(defclass text-buffer (buffer)     | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:91:(defmethod buffer-mark ((buffer... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:94:(defmethod buffer-mark-p ((buff... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:97:;; workaround for windows          | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:97:;; workaround for windows          | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:97:;; workaround for windows          | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:97:;; workaround for windows          | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:97:;; workaround for windows          | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:98:#+win32                            | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:98:#+win32                            | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:98:#+win32                            | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:99:(defmethod initialize-instance ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:103:(setf (documentation 'buffer-p... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:104:(setf (documentation 'buffer-m... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:105:(setf (documentation 'buffer-s... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:106:(setf (documentation 'buffer-e... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:108:(defvar *current-buffer*)         | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:110:(defun primordial-buffer ()       | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:113:(defun current-buffer ()          | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:120:(defun (setf current-buffer) (... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:125:(defparameter *undo-modes* '(:... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:126:(defvar *undo-mode* :edit)        | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:128:(defun last-edit-history (buffer) | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:133:(defun make-buffer-start-point... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:136:(defun make-buffer-end-point (... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:139:(defgeneric make-buffer-point ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:143:(defun make-buffer (name &key ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:172:(defun bufferp (x)                | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:176:(defun buffer-modified-p (&opt... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:180:(defun buffer-enable-undo-p (&... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:184:(defun buffer-enable-undo (buf... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:189:(defun buffer-disable-undo (bu... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:196:(defmethod print-object ((buff... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:202:(defun %buffer-clear-keep-binf... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:209:(defun buffer-free (buffer)       | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:214:(defun deleted-buffer-p (buffer)  | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:217:(defun buffer-name (&optional ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:221:(defun buffer-filename (&optio... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:226:(defun (setf buffer-filename) ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:230:(defun buffer-directory (&opti... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:235:(defun (setf buffer-directory)... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:242:(defun buffer-unmark (buffer)     | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:246:(defun buffer-mark-cancel (buf... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:249:(defun buffer-attributes (buffer) | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:259:(defun check-read-only-buffer ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:263:(defun buffer-modify (buffer)     | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:271:(defun push-undo-stack (buffer... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:274:(defun push-redo-stack (buffer... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:277:(defun push-undo (buffer edit)    | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:288:(defun buffer-rename (buffer n... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:296:(defun buffer-undo-1 (point)      | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:305:(defun buffer-undo (point)        | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:319:(defun buffer-redo-1 (point)      | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:327:(defun buffer-redo (point)        | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:340:(defun buffer-undo-boundary (&... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:344:(defun buffer-value (buffer na... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:353:(defun (setf buffer-value) (va... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:360:(defun buffer-unbound (buffer ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:364:(defun clear-buffer-variables ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:368:(defun call-with-buffer-point ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffer.lisp:374:(defmacro with-buffer-point ((... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffers.lisp:1:(in-package :lem-base)             | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffers.lisp:3:(define-editor-variable kill-bu... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffers.lisp:5:(defun buffer-list ()              | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffers.lisp:9:(defun set-buffer-list (buffer-... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffers.lisp:13:(defun add-buffer (buffer)        | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffers.lisp:18:(defun any-modified-buffer-p ()   | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffers.lisp:24:(defun get-buffer (buffer-or-n... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffers.lisp:35:(defun unique-buffer-name (name)  | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffers.lisp:44:(defmethod delete-buffer-using... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffers.lisp:49:(defun delete-buffer (buffer)     | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffers.lisp:55:(defun get-next-buffer (buffer)   | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffers.lisp:61:(defun get-previous-buffer (bu... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffers.lisp:69:(defun unbury-buffer (buffer)     | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffers.lisp:77:(defun bury-buffer (buffer)       | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/buffers.lisp:86:(defun get-file-buffer (filename) | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/check-corruption.lisp:1:(in-package :lem-base)    | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/check-corruption.lisp:3:(defmacro debug-assert... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/check-corruption.lisp:7:(defun check-line-corr... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/check-corruption.lisp:31:(defun check-lines-co... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/check-corruption.lisp:39:(defun check-buffer-p... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/check-corruption.lisp:50:(defun check-buffer-c... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/check-corruption.lisp:69:(defun check-all-buff... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/eastasian.lisp:1:(in-package :lem-base)           | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/eastasian.lisp:3:(eval-when (:compile-toplevel... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/eastasian.lisp:52:(defmacro %eastasian-code-p ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/eastasian.lisp:59:(defun eastasian-code-p (code)  | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/edit.lisp:1:(in-package :lem-base)                | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/edit.lisp:3:(defun make-edit (kind linum charp... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/edit.lisp:6:(defun %apply-edit (point kind lin... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/edit.lisp:23:(defun apply-inverse-edit (edit p... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/editor-variables.lisp:1:(in-package :lem-base)    | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/editor-variables.lisp:3:(define-editor-variabl... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/encodings.lisp:1:(in-package :lem-base)           | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/encodings.lisp:3:(defclass encoding ()            | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/encodings.lisp:8:(defclass internal-encoding (... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/encodings.lisp:13:(defvar *encoding-collection... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/encodings.lisp:15:(defun register-encoding (sy... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/encodings.lisp:22:(defun unregister-encoding (... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/encodings.lisp:25:(defun encoding (symbol end-... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/encodings.lisp:32:(defun e+ (c) (+ #xe000 c))     | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/encodings.lisp:34:(defun encoding-read-detect-... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/encodings.lisp:79:(defgeneric encoding-read (e... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/encodings.lisp:81:(defgeneric encoding-write (... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/encodings.lisp:83:(defgeneric encoding-check (... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/encodings.lisp:85:(defmethod encoding-check (e... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/errors.lisp:1:(in-package :lem-base)              | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/errors.lisp:3:(define-condition editor-conditi... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/errors.lisp:6:(define-condition directory-does... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/errors.lisp:13:(define-condition read-only-err... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/errors.lisp:19:(define-condition editor-error ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/errors.lisp:28:(defun editor-error (message &r... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/errors.lisp:31:(defun scan-error ()               | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/errors.lisp:34:(define-condition editor-interr... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/file-utils.lisp:1:(in-package :lem-base)          | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/file-utils.lisp:3:(defun guess-host-name (file... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/file-utils.lisp:12:(defun parse-filename (file... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/file-utils.lisp:40:(defun expand-file-name (fi... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/file-utils.lisp:45:(defun tail-of-pathname (pa... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/file-utils.lisp:53:(defun probe-file% (x)         | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/file-utils.lisp:63:(defun virtual-probe-file (... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/file-utils.lisp:68:(defun sort-files (pathname... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/file-utils.lisp:73:(defun sort-files-with-meth... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/file-utils.lisp:83:(defun directory-files (pat... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/file-utils.lisp:90:(defun list-directory (dire... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/file-utils.lisp:100:(defun file-size (pathname)   | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/file-utils.lisp:110:(defun file-mtime (pathname)  | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/file-utils.lisp:117:(defun copy-file-or-direct... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/file-utils.lisp:133:(defparameter *virtual-fil... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/file-utils.lisp:135:(defun open-virtual-file (... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/file-utils.lisp:153:(defmacro with-open-virtua... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/file.lisp:1:(in-package :lem-base)                | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/file.lisp:3:(defvar *find-file-hook* '())         | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/file.lisp:5:(define-editor-variable before-sav... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/file.lisp:6:(define-editor-variable after-save... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/file.lisp:8:(defvar *external-format-function*... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/file.lisp:9:(defvar *find-directory-function* ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/file.lisp:10:(defvar *default-external-format*... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/file.lisp:12:(define-condition encoding-read-e... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/file.lisp:20:(defun %encoding-read (encoding p... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/file.lisp:46:(defun insert-file-contents (poin... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/file.lisp:71:(defun find-file-buffer (filename... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/file.lisp:111:(defun write-to-file-1 (buffer f... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/file.lisp:115:(defun run-before-save-hooks (bu... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/file.lisp:119:(defun run-after-save-hooks (buf... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/file.lisp:123:(defun call-with-write-hook (buf... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/file.lisp:129:(defmacro with-write-hook (buffe... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/file.lisp:132:(defun write-to-file (buffer fil... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/file.lisp:136:(defun %write-region-to-file (en... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/file.lisp:152:(defun %%write-region-to-file (e... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/file.lisp:168:(defun write-region-to-file (sta... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/file.lisp:188:(defun file-write-date* (buffer)    | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/file.lisp:192:(defun update-changed-disk-date ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/file.lisp:196:(defun changed-disk-p (buffer)      | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/hooks.lisp:1:(in-package :lem-base)               | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/hooks.lisp:3:(defgeneric run-hooks (hooks &res... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/hooks.lisp:5:(defmethod run-hooks ((hooks list... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/hooks.lisp:9:(defmacro add-hook (place callbac... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/hooks.lisp:20:(defmacro remove-hook (place cal... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/icon.lisp:1:(in-package :lem-base)                | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/icon.lisp:3:(defvar *icon-name-table* (make-ha... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/icon.lisp:4:(defvar *icon-code-table* (make-ha... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/icon.lisp:5:(defvar *icon-ext-table* (make-has... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/icon.lisp:7:(defstruct icon                       | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/icon.lisp:12:(defun register-icon (name code &... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/icon.lisp:18:(defun register-icon-ext (ext name)  | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/icon.lisp:21:(defun icon-code-p (code)            | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/icon.lisp:24:(defun icon-string (name)            | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/icon.lisp:29:(defun icon-string-by-ext (ext)      | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/icon.lisp:33:(defun icon-value (code key)         | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/icon.lisp:38:(register-icon "folder" #x1f4c1)     | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/indent.lisp:1:(in-package :lem-base)              | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/indent.lisp:3:(define-editor-variable indent-t... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/indent.lisp:4:(define-editor-variable calc-ind... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/indent.lisp:5:(define-editor-variable indent-w... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/indent.lisp:7:(defun back-to-indentation (point)  | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/indent.lisp:11:(defun indent-line-1 (point col... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/indent.lisp:46:(defun calc-indent-default (point) | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/indent.lisp:52:(defun indent-line (point)         | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/indent.lisp:58:(defun indent-points (start end)   | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/indent.lisp:64:(defun indent-buffer (buffer)      | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/indent.lisp:68:(defun insert-string-and-indent... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/line.lisp:1:(in-package :lem-base)                | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/line.lisp:3:(defstruct (line (:constructor %ma... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/line.lisp:11:(defmethod print-object ((object ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/line.lisp:17:(defun make-line (prev next str)     | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/line.lisp:27:(defun make-empty-line ()            | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/line.lisp:30:(defun line-alive-p (line)           | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/line.lisp:33:(defun line-char (line i)            | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/line.lisp:38:(defun line-length (line)            | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/line.lisp:41:(defun remove-elements (elements ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/line.lisp:56:(defun normalization-elements (el... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/line.lisp:75:(defun subseq-elements (elements ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/line.lisp:87:(defun offset-elements (elements n)  | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/line.lisp:91:(defun put-elements (elements sta... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/line.lisp:96:(defun merge-plist (plist1 plist2)   | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/line.lisp:106:(defun line-merge (curr-line nex... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/line.lisp:119:(defun line-normalization-plist ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/line.lisp:123:(defun line-remove-property (lin... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/line.lisp:127:(defun line-add-property (line s... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/line.lisp:135:(defun line-clear-property (line... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/line.lisp:138:(defun line-search-property (lin... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/line.lisp:145:(defun line-search-property-rang... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/line.lisp:155:(defun line-property-insert-pos ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/line.lisp:167:(defun line-property-insert-newl... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/line.lisp:193:(defun line-property-delete-pos ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/line.lisp:217:(defun line-property-delete-line... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/line.lisp:230:(defun line-string/attributes (l... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/line.lisp:234:(defun line-free (line)             | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/macros.lisp:1:(in-package :lem-base)              | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/macros.lisp:3:(defmacro save-excursion (&body ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/macros.lisp:8:(defmacro with-point (bindings &... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/macros.lisp:38:(defmacro with-buffer-read-only... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/macros.lisp:47:(defvar *interrupts-enabled* t)    | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/macros.lisp:48:(defvar *interrupted* nil)         | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/macros.lisp:50:(defmacro %without-interrupts (... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/macros.lisp:56:(defmacro without-interrupts (&... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/macros.lisp:66:;; 別のスレッドから(bt:interrupt-t | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/macros.lisp:66:;; 別のスレッドから(bt:interrupt-t | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/macros.lisp:66:;; 別のスレッドから(bt:interrupt-t | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/macros.lisp:66:;; 別のスレッドから(bt:interrupt-t | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/macros.lisp:66:;; 別のスレッドから(bt:interrupt-t | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/macros.lisp:67:(defun interrupt (&optional force) | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/mark.lisp:1:(in-package :lem-base)hread...hread.. | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/mark.lisp:3:(defclass mark ().hread...hread...hre | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/mark.lisp:11:(defmethod mark-cancel ((mark mark)) | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/mark.lisp:14:(defmethod mark-set-point ((mark ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/package.lisp:1:(defpackage :lem-basead...         | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/parse-partial-sexp.lisp:1:(in-package :lem-base)  | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/parse-partial-sexp.lisp:3:(defstruct pps-state    | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/parse-partial-sexp.lisp:12:(defun parse-partia... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/parse-partial-sexp.lisp:147:(define-editor-var... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/parse-partial-sexp.lisp:149:(defmacro syntax-p... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/parse-partial-sexp.lisp:152:(flet ((cache-poin... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/parse-partial-sexp.lisp:202:(defun pps-state-s... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/parse-partial-sexp.lisp:205:(defun pps-state-c... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/parse-partial-sexp.lisp:208:(defun pps-state-s... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/parse-partial-sexp.lisp:215:(defun in-string-p... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/parse-partial-sexp.lisp:219:(defun in-comment-... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/parse-partial-sexp.lisp:223:(defun in-string-o... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/parse-partial-sexp.lisp:227:(defun maybe-begin... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/parse-partial-sexp.lisp:232:(defun maybe-begin... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/parse-partial-sexp.lisp:237:(defun maybe-begin... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/point.lisp:1:(in-package :lem-base)               | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/point.lisp:3:(defclass point ()                   | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/point.lisp:34:(setf (documentation 'point-buff... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/point.lisp:37:(setf (documentation 'point-kind... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/point.lisp:40:(defun current-point ()             | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/point.lisp:44:(defmethod print-object ((object... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/point.lisp:51:(defun pointp (x)                   | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/point.lisp:55:(defun initialize-point-slot-values | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/point.lisp:68:(defun initialize-point (point k... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/point.lisp:73:(defun make-point (buffer linum ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/point.lisp:85:(defmethod copy-point-using-clas... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/point.lisp:96:(defun copy-point (point &option... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/point.lisp:104:(defun delete-point (point)        | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/point.lisp:115:(defun alive-point-p (point)       | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/point.lisp:119:(defun point-change-line (point... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/point.lisp:136:(defun point-temporary-p (point)   | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/point.lisp:139:(defun %always-same-buffer (poi... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/point.lisp:145:(defun %point= (point1 point2)     | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/point.lisp:151:(defun %point< (point1 point2)     | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/point.lisp:156:(defun point= (point &rest more... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/point.lisp:162:(defun point/= (point &rest mor... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/point.lisp:170:(defun point< (point &rest more... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/point.lisp:177:(defun point<= (point &rest mor... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/point.lisp:185:(defun point> (point &rest more... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/point.lisp:191:(defun point>= (point &rest mor... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/point.lisp:199:(defun point-min (point &rest m... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/point.lisp:207:(defun point-max (point &rest m... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/search.lisp:1:(in-package :lem-base)              | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/search.lisp:3:(defvar *case-fold-search* nil)     | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/search.lisp:5:(defun char-compare-function ()     | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/search.lisp:10:(defun search-step (point first... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/search.lisp:31:(defun search-forward-endp-func... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/search.lisp:38:(defun search-backward-endp-fun... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/search.lisp:44:(defun search-with-case-fold-se... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/search.lisp:50:(defun search-forward (point st... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/search.lisp:72:(defun search-backward (point s... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/search.lisp:102:(defun search-forward-regexp (... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/search.lisp:143:(define-compiler-macro search-... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/search.lisp:150:(defun search-backward-regexp ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/search.lisp:193:(define-compiler-macro search-... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/search.lisp:200:(defun search-symbol (string n... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/search.lisp:215:(defun search-forward-symbol (... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/search.lisp:234:(defun search-backward-symbol ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/search.lisp:257:(defun looking-at (point regex)   | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/search.lisp:271:(define-compiler-macro looking... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/search.lisp:276:(defun match-string-at (point ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/string-width-utils.lisp:1:(in-package :lem-base)  | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/string-width-utils.lisp:3:(defconstant +defaul... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/string-width-utils.lisp:5:(defparameter *char-... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/string-width-utils.lisp:44:(defun control-char... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/string-width-utils.lisp:47:(defun wide-char-p ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/string-width-utils.lisp:54:(defun char-width (... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/string-width-utils.lisp:69:(defun string-width... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/string-width-utils.lisp:76:(defun wide-index (... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-parser.lisp:1:(in-package :lem-base)       | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-parser.lisp:3:(define-editor-variable b... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-parser.lisp:4:(define-editor-variable a... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-parser.lisp:5:(define-editor-variable e... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-parser.lisp:7:(defparameter *global-syn... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-parser.lisp:9:(defun enable-syntax-high... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-parser.lisp:13:(defun current-syntax-pa... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-parser.lisp:16:(defclass syntax-parser ()  | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-parser.lisp:19:(defgeneric %syntax-scan... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-parser.lisp:21:(defvar *recursive-synta... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-parser.lisp:23:(defun syntax-scan-regio... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-scan.lisp:1:(in-package :lem-base)         | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-scan.lisp:3:(flet ((%match (str1 str2 s... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-scan.lisp:56:                            | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-scan.lisp:57:(let ((cache (make-hash-ta... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-scan.lisp:68:(defun syntax-escape-point... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-scan.lisp:78:(defun inline-line-comment... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-scan.lisp:85:(defun %skip-comment-forwa... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-scan.lisp:107:(defun %skip-block-commen... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-scan.lisp:124:(defun %skip-comment-back... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-scan.lisp:136:(defun skip-space-and-com... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-scan.lisp:145:(defun skip-space-and-com... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-scan.lisp:156:(defun %skip-symbol-forwa... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-scan.lisp:171:(defun %skip-symbol-backw... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-scan.lisp:186:(defun %skip-quote-forwar... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-scan.lisp:197:(defun %skip-quote-backwa... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-scan.lisp:208:(defun %skip-string-forwa... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-scan.lisp:211:(defun %skip-string-backw... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-scan.lisp:214:(defun %skip-fence-forwar... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-scan.lisp:217:(defun %skip-fence-backwa... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-scan.lisp:220:(defun %skip-list-forward... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-scan.lisp:258:(defun %skip-list-backwar... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-scan.lisp:301:(defun %form-offset-posit... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-scan.lisp:338:(defun %form-offset-negat... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-scan.lisp:371:(defun form-offset (point n) | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-scan.lisp:384:(defun scan-lists (point ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-scan.lisp:401:(flet ((non-newline-white... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-scan.lisp:417:(defun skip-symbol-forwar... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-scan.lisp:421:(defun skip-symbol-backwa... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-scan.lisp:425:(defun symbol-region-at-p... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-scan.lisp:435:(defun symbol-string-at-p... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-table.lisp:1:(in-package :lem-base)        | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-table.lisp:3:(defstruct syntax-table       | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-table.lisp:21:(defun set-syntax-parser ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-table.lisp:24:(defparameter *fundamenta... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-table.lisp:26:(defun fundamental-syntax... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-table.lisp:29:(defvar *current-syntax* ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-table.lisp:31:(defun current-syntax ()     | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-table.lisp:36:(defmacro with-current-sy... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-table.lisp:40:(defmacro with-point-synt... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-table.lisp:44:(defun syntax-word-char-p... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-table.lisp:48:(defun syntax-space-char-... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-table.lisp:51:(defun syntax-symbol-char... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-table.lisp:55:(defun syntax-open-paren-... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-table.lisp:58:(defun syntax-closed-pare... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-table.lisp:61:(defun syntax-equal-paren... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-table.lisp:68:(defun syntax-string-quot... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-table.lisp:71:(defun syntax-fence-char-... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-table.lisp:74:(defun syntax-escape-char... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-table.lisp:77:(defun syntax-expr-prefix... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-table.lisp:80:(defun syntax-skip-expr-p... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/syntax-table.lisp:84:(defun syntax-skip-expr-p... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:1:(in-package :lem-base)          | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:3:(defclass tmlanguage (syntax... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:11:(defclass tm-rule ()           | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:17:(defclass tm-region (tm-rule)  | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:41:(defclass tm-match (tm-rule)   | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:55:(defclass tm-include () ())    | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:56:(defclass tm-include-self (... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:57:(defclass tm-include-reposi... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:62:(defclass tm-patterns ()       | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:67:(defun make-tmlanguage (&ke... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:72:(defun make-tm-repository ()   | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:75:(defun make-tm-match (strin... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:82:(defun make-tm-region (begi... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:99:(defun make-tm-include (spec)  | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:108:(defun make-tm-patterns (&... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:111:(defun make-tm-name (name)    | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:114:(defun add-tm-repository (... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:117:(defun add-tm-pattern (tml... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:120:(defmethod %syntax-scan-re... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:123:                            | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:124:(defun set-syntax-context ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:127:(defun get-syntax-context ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:130:(defun tm-get-repository (... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:133:(defun tm-ahead-matcher (r... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:140:(defun tm-ahead-match (rul... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:146:(defun tm-result-rule     ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:147:(defun tm-result-start    ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:148:(defun tm-result-end      ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:149:(defun tm-result-reg-start... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:150:(defun tm-result-reg-ends ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:151:(defun tm-result-option   ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:152:(defun (setf tm-result-opt... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:154:(defun tm-result= (result1... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:166:(defun tm-get-best-result ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:178:(defun tm-best-rule-in-pat... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:205:(defun tm-recompute-result... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:221:(defun tm-apply-capture (p... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:228:(defun tm-apply-captures (... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:243:(defun tm-apply-content-na... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:249:(defun tm-replace-back-ref... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:267:(defun tm-init-region-end-... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:280:(defun tm-apply-begin-capt... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:285:(defun tm-apply-end-captur... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:289:(defun tm-apply-region (ru... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:337:(defun tm-move-action (rul... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:355:(defun tm-apply-match-in-c... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:362:(defun tm-apply-match (rul... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:375:(defun tm-apply-result (po... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:383:(defun tm-continue-prev-li... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:410:(defun tm-scan-line (point... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:422:(defun tm-syntax-scan-line... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/tmlanguage.lisp:430:(defun tm-syntax-scan-regi... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/utils.lisp:1:(in-package :lem-base)               | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/utils.lisp:3:(defun ensure-class (class)          | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/utils.lisp:8:(defun collect-subclasses (class ... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/utils.lisp:19:(defun utf8-bytes (c)               | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/utils.lisp:27:(defun bests-if (fn list test)      | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/utils.lisp:40:(defun max-if (fn list)             | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/utils.lisp:43:(defun min-if (fn list)             | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/utils.lisp:46:(defun find-tree (x tree)           | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/utils.lisp:53:(defmacro do-sequence ((var-form... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/utils.lisp:75:(defmacro if-push (expression pl... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/var.lisp:1:(in-package :lem-base)                 | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/var.lisp:3:(defvar *editor-variables* '())        | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/var.lisp:5:(defstruct editor-variable             | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/var.lisp:11:(setf (documentation 'editor-varia... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/var.lisp:15:(defmacro define-editor-variable (... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/var.lisp:33:(defun clear-editor-local-variable... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/var.lisp:40:(defun editor-variable-error (symbol) | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/var.lisp:43:(defun check-editor-variable (symbol) | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/var.lisp:47:(defun ensure-buffer (where)          | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/var.lisp:54:(defun variable-value (symbol &opt... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/var.lisp:87:(defun (setf variable-value) (valu... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/var.lisp:111:(defun variable-documentation (sy... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/var.lisp:118:(defun find-editor-variable (var)    | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/var.lisp:121:(defstruct per-buffer-hook           | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/var.lisp:126:(defmethod run-hooks ((hook per-b... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/var.lisp:132:                                   | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/var.lisp:133:;; for test                          | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/var.lisp:133:;; for test                          | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/var.lisp:133:;; for test                          | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/var.lisp:133:;; for test                          | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/var.lisp:134:(defun call-with-global-variable-... | <strong> OK </strong> |
| (indent-test-under-lem-base) | /home/fermin/quicklisp/local-projects/lem/src/base/var.lisp:141:(defmacro with-global-variable-va... | <strong> OK </strong> |

## buffer-list
| Test                        | Description                                                                                          | Result                |
|-----------------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (buffer-list)               | Expect (NULL (LEM-BASE:BUFFER-LIST)) to be true.                                                     | <strong> OK </strong> |
| (buffer-list)               | Expect (LEM-BASE:BUFFERP LEM-TESTS/BUFFER-LIST-TEST::BUFFER) to be true.                             | <strong> OK </strong> |
| (buffer-list)               | Expect (NULL (LEM-BASE:BUFFER-LIST)) to be true.                                                     | <strong> OK </strong> |
| (buffer-list make buffer-a) | Expect (EQUAL (LIST LEM-TESTS/BUFFER-LIST-TEST::BUFFER-A) (LEM-BASE:BUFFER-LIST)) to be true.        | <strong> OK </strong> |
| (buffer-list make buffer-b) | Expect (EQUAL (LIST LEM-TESTS/BUFFER-LIST-TEST::BUFFER-B LEM-TESTS/BUFFER-LIST-TEST::BUFFER-A) (L... | <strong> OK </strong> |
| (buffer-list make buffer-c) | Expect (EQUAL (LIST LEM-TESTS/BUFFER-LIST-TEST::BUFFER-C LEM-TESTS/BUFFER-LIST-TEST::BUFFER-B LEM... | <strong> OK </strong> |

## infer-package-name-1
| Test                   | Description                                                                                          | Result                |
|------------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (infer-package-name-1) | Expect (EQUAL "project-root/foo/bar" (LEM-LISP-MODE/PACKAGE-INFERRED-SYSTEM::INFER-PACKAGE-NAME-1... | <strong> OK </strong> |
| (infer-package-name-1) | Expect (EQUAL "project-root-tests/a" (LEM-LISP-MODE/PACKAGE-INFERRED-SYSTEM::INFER-PACKAGE-NAME-1... | <strong> OK </strong> |
| (infer-package-name-1) | Expect (EQUAL "project-root/test/a/b" (LEM-LISP-MODE/PACKAGE-INFERRED-SYSTEM::INFER-PACKAGE-NAME-... | <strong> OK </strong> |
| (infer-package-name-1) | Expect (EQUAL "project-root/test/a/b" (LEM-LISP-MODE/PACKAGE-INFERRED-SYSTEM::INFER-PACKAGE-NAME-... | <strong> OK </strong> |
| (infer-package-name-1) | Expect (EQUAL "project-root/main" (LEM-LISP-MODE/PACKAGE-INFERRED-SYSTEM::INFER-PACKAGE-NAME-1 (L... | <strong> OK </strong> |
| (infer-package-name-1) | Expect (EQUAL "lem-project-root/foo/bar" (LEM-LISP-MODE/PACKAGE-INFERRED-SYSTEM::INFER-PACKAGE-NA... | <strong> OK </strong> |

## control-char
| Test           | Description                                                                   | Result                |
|----------------|-------------------------------------------------------------------------------|-----------------------|
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |

## simple-fake-cursor-test
| Test                                                                       | Description                                                                                          | Result                |
|----------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (simple-fake-cursor-test Test the fake-cursor created buffer-fake-cursors) | Expect (ALEXANDRIA:LENGTH= 1 (LEM-CORE:BUFFER-FAKE-CURSORS LEM-TESTS/CURSORS::BUFFER)) to be true.   | <strong> OK </strong> |
| (simple-fake-cursor-test Test the fake-cursor created buffer-fake-cursors) | Expect (EQ LEM-TESTS/CURSORS::CURSOR (FIRST (LEM-CORE:BUFFER-FAKE-CURSORS LEM-TESTS/CURSORS::BUFF... | <strong> OK </strong> |
| (simple-fake-cursor-test Test the fake-cursor created killring)            | Expect (EQ (LEM-CORE:CURRENT-KILLRING) LEM-TESTS/CURSORS::KILLRING) to be false.                     | <strong> OK </strong> |
| (simple-fake-cursor-test Test the fake-cursor created killring)            | Expect (EQUAL "aaa" (LEM/COMMON/KILLRING:PEEK-KILLRING-ITEM LEM-TESTS/CURSORS::KILLRING 2)) to be... | <strong> OK </strong> |
| (simple-fake-cursor-test Test the fake-cursor created killring)            | Expect (EQUAL "bbb" (LEM/COMMON/KILLRING:PEEK-KILLRING-ITEM LEM-TESTS/CURSORS::KILLRING 1)) to be... | <strong> OK </strong> |
| (simple-fake-cursor-test Test the fake-cursor created killring)            | Expect (EQUAL "ccc" (LEM/COMMON/KILLRING:PEEK-KILLRING-ITEM LEM-TESTS/CURSORS::KILLRING 0)) to be... | <strong> OK </strong> |
| (simple-fake-cursor-test Test the fake-cursor created point-kind)          | Expect (EQ :LEFT-INSERTING (LEM-BASE:POINT-KIND LEM-TESTS/CURSORS::CURSOR)) to be true.              | <strong> OK </strong> |
| (simple-fake-cursor-test Delete cursor)                                    | Expect (NULL (LEM-CORE:BUFFER-FAKE-CURSORS LEM-TESTS/CURSORS::BUFFER)) to be true.                   | <strong> OK </strong> |

## replace-string
| Test             | Description                                                                                          | Result                |
|------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (replace-string) | Expect (EQUAL (CL-PPCRE:REGEX-REPLACE-ALL "foo" LEM-TESTS/ISEARCH::*TEXT* "foobar") (LEM-BASE:BUF... | <strong> OK </strong> |

## ring-empty-p
| Test           | Description                                                             | Result                |
|----------------|-------------------------------------------------------------------------|-----------------------|
| (ring-empty-p) | Expect (LEM/COMMON/RING:RING-EMPTY-P LEM/COMMON/RING:RING) to be true.  | <strong> OK </strong> |
| (ring-empty-p) | Expect (LEM/COMMON/RING:RING-EMPTY-P LEM/COMMON/RING:RING) to be false. | <strong> OK </strong> |
| (ring-empty-p) | Expect (LEM/COMMON/RING:RING-EMPTY-P LEM/COMMON/RING:RING) to be false. | <strong> OK </strong> |
| (ring-empty-p) | Expect (LEM/COMMON/RING:RING-EMPTY-P LEM/COMMON/RING:RING) to be false. | <strong> OK </strong> |
| (ring-empty-p) | Expect (LEM/COMMON/RING:RING-EMPTY-P LEM/COMMON/RING:RING) to be false. | <strong> OK </strong> |
| (ring-empty-p) | Expect (LEM/COMMON/RING:RING-EMPTY-P LEM/COMMON/RING:RING) to be false. | <strong> OK </strong> |
| (ring-empty-p) | Expect (LEM/COMMON/RING:RING-EMPTY-P LEM/COMMON/RING:RING) to be false. | <strong> OK </strong> |
| (ring-empty-p) | Expect (LEM/COMMON/RING:RING-EMPTY-P LEM/COMMON/RING:RING) to be false. | <strong> OK </strong> |
| (ring-empty-p) | Expect (LEM/COMMON/RING:RING-EMPTY-P LEM/COMMON/RING:RING) to be false. | <strong> OK </strong> |
| (ring-empty-p) | Expect (LEM/COMMON/RING:RING-EMPTY-P LEM/COMMON/RING:RING) to be false. | <strong> OK </strong> |
| (ring-empty-p) | Expect (LEM/COMMON/RING:RING-EMPTY-P LEM/COMMON/RING:RING) to be false. | <strong> OK </strong> |

## string-width
| Test           | Description                                                                                          | Result                |
|----------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (string-width) | Expect (EQL 1 (LEM-BASE:STRING-WIDTH "a")) to be true.                                               | <strong> OK </strong> |
| (string-width) | Expect (EQL 2 (LEM-BASE:STRING-WIDTH "ab")) to be true.                                              | <strong> OK </strong> |
| (string-width) | Expect (EQL 3 (LEM-BASE:STRING-WIDTH "abc")) to be true.                                             | <strong> OK </strong> |
| (string-width) | Expect (EQL 2 (LEM-BASE:STRING-WIDTH "abc" :START 1)) to be true.                                    | <strong> OK </strong> |
| (string-width) | Expect (EQL 2 (LEM-BASE:STRING-WIDTH "abc" :END 2)) to be true.                                      | <strong> OK </strong> |
| (string-width) | Expect (EQL 2 (LEM-BASE:STRING-WIDTH "abcdef" :START 1 :END 3)) to be true.                          | <strong> OK </strong> |
| (string-width) | Expect (EQL 2 (LEM-BASE:STRING-WIDTH "あ")) to be true.                                              | <strong> OK </strong> |
| (string-width) | Expect (EQL 3 (LEM-BASE:STRING-WIDTH "aあ")) to be true.                                             | <strong> OK </strong> |
| (string-width) | Expect (EQL 0 (LEM-BASE:STRING-WIDTH "abcdeあいうえお" :END 0)) to be true.                          | <strong> OK </strong> |
| (string-width) | Expect (EQL 3 (LEM-BASE:STRING-WIDTH "abcdeあいうえお" :END 3)) to be true.                          | <strong> OK </strong> |
| (string-width) | Expect (EQL 1 (LEM-BASE:STRING-WIDTH "abcdeあいうえお" :START 4 :END 5)) to be true.                 | <strong> OK </strong> |
| (string-width) | Expect (EQL 3 (LEM-BASE:STRING-WIDTH "abcdeあいうえお" :START 4 :END 6)) to be true.                 | <strong> OK </strong> |
| (string-width) | Expect (EQL 5 (LEM-BASE:STRING-WIDTH "abcdeあいうえお" :START 4 :END 7)) to be true.                 | <strong> OK </strong> |
| (string-width) | Expect (EQL 10 (LEM-BASE:STRING-WIDTH (FORMAT NIL "~Aab" #\Tab))) to be true.                        | <strong> OK </strong> |
| (string-width) | Expect (EQL 10 (LEM-BASE:STRING-WIDTH (FORMAT NIL "ab~Aab" #\Tab))) to be true.                      | <strong> OK </strong> |
| (string-width) | Expect (EQL 5 (LEM-BASE:STRING-WIDTH (FORMAT NIL "~Aab" #\Tab) :TAB-SIZE 3)) to be true.             | <strong> OK </strong> |
| (string-width) | Expect (EQL 2 (LEM-BASE:STRING-WIDTH (FORMAT NIL "~Aab" #\Tab) :START 1)) to be true.                | <strong> OK </strong> |
| (string-width) | Expect (EQL 5 (LEM-BASE:STRING-WIDTH (FORMAT NIL "ab~Aab" #\Tab) :TAB-SIZE 3)) to be true.           | <strong> OK </strong> |
| (string-width) | Expect (EQL 5 (LEM-BASE:STRING-WIDTH (FORMAT NIL "ab~Aab" #\Tab) :TAB-SIZE 1)) to be true.           | <strong> OK </strong> |
| (string-width) | Expect (EQL 3 (LEM-BASE:STRING-WIDTH (FORMAT NIL "あ~A" #\Tab) :TAB-SIZE 1)) to be true.             | <strong> OK </strong> |
| (string-width) | Expect (EQL 3 (LEM-BASE:STRING-WIDTH (FORMAT NIL "~Aaあ" #\Tab) :START 1)) to be true.               | <strong> OK </strong> |
| (string-width) | Expect (EQL 6 (LEM-BASE:STRING-WIDTH (FORMAT NIL "~Aaあ" #\Tab) :TAB-SIZE 5 :START 0 :END 2)) to b.. | <strong> OK </strong> |

## get-file-buffer
| Test.                           | Description                                                                                          | Result                |
|---------------------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (get-file-buffer argument type) | Expect (LEM-BASE:GET-FILE-BUFFER NIL) to signal TYPE-ERROR.                                          | <strong> OK </strong> |
| (get-file-buffer argument type) | Expect (LEM-BASE:GET-FILE-BUFFER T) to signal TYPE-ERROR.                                            | <strong> OK </strong> |
| (get-file-buffer argument type) | Expect (LEM-BASE:GET-FILE-BUFFER 1) to signal TYPE-ERROR.                                            | <strong> OK </strong> |
| (get-file-buffer argument type) | Expect (LEM-BASE:GET-FILE-BUFFER #(#\a)) to signal TYPE-ERROR.                                       | <strong> OK </strong> |
| (get-file-buffer)               | Expect (NULL (LEM-BASE:GET-FILE-BUFFER LEM-TESTS/BUFFER-LIST-TEST::FILENAME)) to be true.            | <strong> OK </strong> |
| (get-file-buffer)               | Expect (EQ (LEM-BASE:GET-FILE-BUFFER LEM-TESTS/BUFFER-LIST-TEST::FILENAME) LEM-TESTS/BUFFER-LIST-... | <strong> OK </strong> |

## get-buffer
| Test                                          | Description                                                                                          | Result                |
|-----------------------------------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (get-buffer argument type)                    | Expect (FUNCALL FUNCTION NIL) to signal TYPE-ERROR.                                                  | <strong> OK </strong> |
| (get-buffer argument type)                    | Expect (FUNCALL FUNCTION 1) to signal TYPE-ERROR.                                                    | <strong> OK </strong> |
| (get-buffer argument type)                    | Expect (FUNCALL FUNCTION #(#\a #\b)) to signal TYPE-ERROR.                                           | <strong> OK </strong> |
| (get-buffer)                                  | Expect (NULL (LEM-BASE:GET-BUFFER "a")) to be true.                                                  | <strong> OK </strong> |
| (get-buffer buffer-a)                         | Expect (EQ LEM-TESTS/BUFFER-LIST-TEST::BUFFER-A (LEM-BASE:GET-BUFFER "a")) to be true.               | <strong> OK </strong> |
| (get-buffer buffer-b)                         | Expect (EQ LEM-TESTS/BUFFER-LIST-TEST::BUFFER-A (LEM-BASE:GET-BUFFER "a")) to be true.               | <strong> OK </strong> |
| (get-buffer buffer-b)                         | Expect (EQ LEM-TESTS/BUFFER-LIST-TEST::BUFFER-B (LEM-BASE:GET-BUFFER "b")) to be true.               | <strong> OK </strong> |
| (get-buffer buffer-c)                         | Expect (EQ LEM-TESTS/BUFFER-LIST-TEST::BUFFER-A (LEM-BASE:GET-BUFFER "a")) to be true.               | <strong> OK </strong> |
| (get-buffer buffer-c)                         | Expect (EQ LEM-TESTS/BUFFER-LIST-TEST::BUFFER-B (LEM-BASE:GET-BUFFER "b")) to be true.               | <strong> OK </strong> |
| (get-buffer buffer-c)                         | Expect (EQ LEM-TESTS/BUFFER-LIST-TEST::BUFFER-C (LEM-BASE:GET-BUFFER "c")) to be true.               | <strong> OK </strong> |
| (get-buffer receive the buffer-object itself) | Expect (EQ LEM-TESTS/BUFFER-LIST-TEST::BUFFER-A (LEM-BASE:GET-BUFFER LEM-TESTS/BUFFER-LIST-TEST::... | <strong> OK </strong> |
| (get-buffer receive the buffer-object itself) | Expect (EQ LEM-TESTS/BUFFER-LIST-TEST::BUFFER-B (LEM-BASE:GET-BUFFER LEM-TESTS/BUFFER-LIST-TEST::... | <strong> OK </strong> |
| (get-buffer receive the buffer-object itself) | Expect (EQ LEM-TESTS/BUFFER-LIST-TEST::BUFFER-C (LEM-BASE:GET-BUFFER LEM-TESTS/BUFFER-LIST-TEST::... | <strong> OK </strong> |

## parse-name-and-options
| Test                                            | Description                                                                                          | Result                |
|-------------------------------------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (parse-name-and-options (name))                 | Expect (= 2 (LENGTH VALUES)) to be true.                                                             | <strong> OK </strong> |
| (parse-name-and-options (name))                 | Expect (EQ 'LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-DEFCLASS::FOO LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-D... | <strong> OK </strong> |
| (parse-name-and-options (name))                 | Expect (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::OPTIONS-INFO-P LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-... | <strong> OK </strong> |
| (parse-name-and-options (name))                 | Expect (NULL (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::OPTIONS-CONC-NAME LEM-TESTS/LISP-SYNTAX/DEFS... | <strong> OK </strong> |
| (parse-name-and-options :conc-name)             | Expect (= 2 (LENGTH VALUES)) to be true.                                                             | <strong> OK </strong> |
| (parse-name-and-options :conc-name)             | Expect (EQ 'LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-DEFCLASS::FOO LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-D... | <strong> OK </strong> |
| (parse-name-and-options :conc-name)             | Expect (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::OPTIONS-INFO-P LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-... | <strong> OK </strong> |
| (parse-name-and-options :conc-name)             | Expect (STRING= "" (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::OPTIONS-CONC-NAME LEM-TESTS/LISP-SYNTA... | <strong> OK </strong> |
| (parse-name-and-options (:conc-name))           | Expect (= 2 (LENGTH VALUES)) to be true.                                                             | <strong> OK </strong> |
| (parse-name-and-options (:conc-name))           | Expect (EQ 'LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-DEFCLASS::FOO LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-D... | <strong> OK </strong> |
| (parse-name-and-options (:conc-name))           | Expect (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::OPTIONS-INFO-P LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-... | <strong> OK </strong> |
| (parse-name-and-options (:conc-name))           | Expect (STRING= "" (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::OPTIONS-CONC-NAME LEM-TESTS/LISP-SYNTA... | <strong> OK </strong> |
| (parse-name-and-options (:conc-name conc-name)) | Expect (= 2 (LENGTH VALUES)) to be true.                                                             | <strong> OK </strong> |
| (parse-name-and-options (:conc-name conc-name)) | Expect (EQ 'LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-DEFCLASS::FOO LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-D... | <strong> OK </strong> |
| (parse-name-and-options (:conc-name conc-name)) | Expect (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::OPTIONS-INFO-P LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-... | <strong> OK </strong> |
| (parse-name-and-options (:conc-name conc-name)) | Expect (STRING= "PREFIX-" (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::OPTIONS-CONC-NAME LEM-TESTS/LIS... | <strong> OK </strong> |
| (parse-name-and-options invalid)                | (1)                                                                                                  | <strong> OK </strong> |
| (parse-name-and-options invalid)                | (1 CONC-NAME)                                                                                        | <strong> OK </strong> |
| (parse-name-and-options invalid)                | (NIL)                                                                                                | <strong> OK </strong> |
| (parse-name-and-options invalid)                | (FOO (CONC-NAME 1))                                                                                  | <strong> OK </strong> |
| (parse-name-and-options invalid)                | (FOO (CONC-NAME #()))                                                                                | <strong> OK </strong> |

## test-to-execute-a-series-of-commands
| Test                                                                             | Description                                                                                          | Result                |
|----------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (test-to-execute-a-series-of-commands execute self-insert command)               | Expect (STRING= (LEM-TESTS/UTILITIES:LINES " abcdefg" " hijklmn" " opqrstu") (LEM-BASE:BUFFER-TEX... | <strong> OK </strong> |
| (test-to-execute-a-series-of-commands execute delete-previous-character command) | Expect (STRING= (LEM-TESTS/UTILITIES:LINES "abcdefg" "hijklmn" "opqrstu") (LEM-BASE:BUFFER-TEXT L... | <strong> OK </strong> |
| (test-to-execute-a-series-of-commands multiple cursor killring)                  | Expect (EQUAL '("abcd" "opqr" "hijk") (MAPCAR (LAMBDA (LEM-TESTS/CURSORS::KILLRING) (LEM/COMMON/K... | <strong> OK </strong> |

## copy-ring
| Test        | Description                                                                                          | Result                |
|-------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (copy-ring) | Expect (EQ LEM/COMMON/RING:RING LEM-TESTS/COMMON/RING::RING2) to be false.                           | <strong> OK </strong> |
| (copy-ring) | Expect (EQUAL (LEM/COMMON/RING:RING-REF LEM/COMMON/RING:RING 0) (LEM/COMMON/RING:RING-REF LEM-TES... | <strong> OK </strong> |
| (copy-ring) | Expect (EQUAL (LEM/COMMON/RING:RING-REF LEM/COMMON/RING:RING 1) (LEM/COMMON/RING:RING-REF LEM-TES... | <strong> OK </strong> |

## form-offset
| Test                       | Description                                                                                     | Result                |
|----------------------------|-------------------------------------------------------------------------------------------------|-----------------------|
| (form-offset skip comment) | Expect (LEM-BASE:START-BUFFER-P LEM-TESTS/SYNTAX-TEST::POINT) to be true.                       | <strong> OK </strong> |
| (form-offset skip comment) | Expect (EQUAL (LEM-BASE:SYMBOL-STRING-AT-POINT LEM-TESTS/SYNTAX-TEST::POINT) "bar") to be true. | <strong> OK </strong> |

## simple-test
| Test                           | Description                                                                                          | Result                |
|--------------------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (simple-test)                  | Expect (NULL (LEM/COMMON/HISTORY:LAST-HISTORY LEM-TESTS/HISTORY::HISTORY)) to be true.               | <strong> OK </strong> |
| (simple-test)                  | Expect (EQUAL "foo" (LEM/COMMON/HISTORY:LAST-HISTORY LEM-TESTS/HISTORY::HISTORY)) to be true.        | <strong> OK </strong> |
| (simple-test)                  | Expect (EQUAL "bar" (LEM/COMMON/HISTORY:LAST-HISTORY LEM-TESTS/HISTORY::HISTORY)) to be true.        | <strong> OK </strong> |
| (simple-test previous-history) | Expect (EQUAL '("bar" T) (MULTIPLE-VALUE-LIST (LEM/COMMON/HISTORY:PREVIOUS-HISTORY LEM-TESTS/HIST... | <strong> OK </strong> |
| (simple-test previous-history) | Expect (EQUAL '("foo" T) (MULTIPLE-VALUE-LIST (LEM/COMMON/HISTORY:PREVIOUS-HISTORY LEM-TESTS/HIST... | <strong> OK </strong> |
| (simple-test previous-history) | Expect (NULL (LEM/COMMON/HISTORY:PREVIOUS-HISTORY LEM-TESTS/HISTORY::HISTORY)) to be true.           | <strong> OK </strong> |
| (simple-test next-history)     | Expect (EQUAL '("bar" T) (MULTIPLE-VALUE-LIST (LEM/COMMON/HISTORY:NEXT-HISTORY LEM-TESTS/HISTORY:... | <strong> OK </strong> |
| (simple-test next-history)     | Expect (NULL (LEM/COMMON/HISTORY:NEXT-HISTORY LEM-TESTS/HISTORY::HISTORY)) to be true.               | <strong> OK </strong> |

## next-line/previous-line
| Test                      | Description                                                                                          | Result                |
|---------------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (next-line/previous-line) | Expect (LEM-TESTS/CURSORS::POSITIONS-SET-EQUAL '((2 12) (3 10) (4 10)) (LEM-TESTS/CURSORS::ALL-PO... | <strong> OK </strong> |
| (next-line/previous-line) | Expect (LEM-TESTS/CURSORS::POSITIONS-SET-EQUAL '((1 14) (2 12) (3 10)) (LEM-TESTS/CURSORS::ALL-PO... | <strong> OK </strong> |
| (next-line/previous-line) | Expect (LEM-TESTS/CURSORS::POSITIONS-SET-EQUAL '((2 12) (3 10) (4 10)) (LEM-TESTS/CURSORS::ALL-PO... | <strong> OK </strong> |

## ring-ref
| Test       | Description                                                                                          | Result                |
|------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (ring-ref) | Expect (EQL 5 (LEM/COMMON/RING:RING-REF LEM/COMMON/RING:RING 0)) to be true.                         | <strong> OK </strong> |
| (ring-ref) | Expect (EQL 4 (LEM/COMMON/RING:RING-REF LEM/COMMON/RING:RING 1)) to be true.                         | <strong> OK </strong> |
| (ring-ref) | Expect (EQL 3 (LEM/COMMON/RING:RING-REF LEM/COMMON/RING:RING 2)) to be true.                         | <strong> OK </strong> |
| (ring-ref) | Expect (EQL 2 (LEM/COMMON/RING:RING-REF LEM/COMMON/RING:RING 3)) to be true.                         | <strong> OK </strong> |
| (ring-ref) | Expect (EQL 1 (LEM/COMMON/RING:RING-REF LEM/COMMON/RING:RING 4)) to be true.                         | <strong> OK </strong> |
| (ring-ref) | Expect (LEM/COMMON/RING:RING-REF LEM/COMMON/RING:RING -1) to signal INVALID-INDEX-ERROR.             | <strong> OK </strong> |
| (ring-ref) | Expect (LEM/COMMON/RING:RING-REF LEM/COMMON/RING:RING LEM-TESTS/COMMON/RING::I) to signal INVALID... | <strong> OK </strong> |
| (ring-ref) | Expect (LEM/COMMON/RING:RING-REF LEM/COMMON/RING:RING LEM-TESTS/COMMON/RING::I) to signal INVALID... | <strong> OK </strong> |
| (ring-ref) | Expect (LEM/COMMON/RING:RING-REF LEM/COMMON/RING:RING LEM-TESTS/COMMON/RING::I) to signal INVALID... | <strong> OK </strong> |
| (ring-ref) | Expect (LEM/COMMON/RING:RING-REF LEM/COMMON/RING:RING LEM-TESTS/COMMON/RING::I) to signal INVALID... | <strong> OK </strong> |
| (ring-ref) | Expect (LEM/COMMON/RING:RING-REF LEM/COMMON/RING:RING LEM-TESTS/COMMON/RING::I) to signal INVALID... | <strong> OK </strong> |
| (ring-ref) | Expect (LEM/COMMON/RING:RING-REF LEM/COMMON/RING:RING LEM-TESTS/COMMON/RING::I) to signal INVALID... | <strong> OK </strong> |
| (ring-ref) | Expect (LEM/COMMON/RING:RING-REF LEM/COMMON/RING:RING LEM-TESTS/COMMON/RING::I) to signal INVALID... | <strong> OK </strong> |
| (ring-ref) | Expect (LEM/COMMON/RING:RING-REF LEM/COMMON/RING:RING LEM-TESTS/COMMON/RING::I) to signal INVALID... | <strong> OK </strong> |
| (ring-ref) | Expect (LEM/COMMON/RING:RING-REF LEM/COMMON/RING:RING LEM-TESTS/COMMON/RING::I) to signal INVALID... | <strong> OK </strong> |
| (ring-ref) | Expect (LEM/COMMON/RING:RING-REF LEM/COMMON/RING:RING LEM-TESTS/COMMON/RING::I) to signal INVALID... | <strong> OK </strong> |
| (ring-ref) | Expect (LEM/COMMON/RING:RING-REF LEM/COMMON/RING:RING LEM-TESTS/COMMON/RING::I) to signal INVALID... | <strong> OK </strong> |
| (ring-ref) | Expect (LEM/COMMON/RING:RING-REF LEM/COMMON/RING:RING LEM-TESTS/COMMON/RING::I) to signal INVALID... | <strong> OK </strong> |
| (ring-ref) | Expect (LEM/COMMON/RING:RING-REF LEM/COMMON/RING:RING LEM-TESTS/COMMON/RING::I) to signal INVALID... | <strong> OK </strong> |
| (ring-ref) | Expect (LEM/COMMON/RING:RING-REF LEM/COMMON/RING:RING LEM-TESTS/COMMON/RING::I) to signal INVALID... | <strong> OK </strong> |
| (ring-ref) | Expect (LEM/COMMON/RING:RING-REF LEM/COMMON/RING:RING LEM-TESTS/COMMON/RING::I) to signal INVALID... | <strong> OK </strong> |
| (ring-ref) | Expect (LEM/COMMON/RING:RING-REF LEM/COMMON/RING:RING LEM-TESTS/COMMON/RING::I) to signal INVALID... | <strong> OK </strong> |
| (ring-ref) | Expect (EQUAL 100 (SETF (LEM/COMMON/RING:RING-REF LEM/COMMON/RING:RING 0) 100)) to be true.          | <strong> OK </strong> |
| (ring-ref) | Expect (EQUAL 100 (LEM/COMMON/RING:RING-REF LEM/COMMON/RING:RING 0)) to be true.                     | <strong> OK </strong> |
| (ring-ref) | Expect (EQUAL "xx" (SETF (LEM/COMMON/RING:RING-REF LEM/COMMON/RING:RING 3) "xx")) to be true.        | <strong> OK </strong> |
| (ring-ref) | Expect (EQUAL "xx" (LEM/COMMON/RING:RING-REF LEM/COMMON/RING:RING 3)) to be true.                    | <strong> OK </strong> |
| (ring-ref) | Expect (SETF (LEM/COMMON/RING:RING-REF LEM/COMMON/RING:RING 5) 'LEM-TESTS/COMMON/RING::FOO) to si... | <strong> OK </strong> |

## scan-lists
| Test                              | Description                                                                                          | Result                |
|-----------------------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (scan-lists limit-point forward)  | Expect (AND (NULL (LEM-BASE:SCAN-LISTS LEM-TESTS/SYNTAX-TEST::POINT 1 0 T LEM-TESTS/SYNTAX-TEST::... | <strong> OK </strong> |
| (scan-lists limit-point forward)  | Expect (AND (EQ LEM-TESTS/SYNTAX-TEST::POINT (LEM-BASE:SCAN-LISTS LEM-TESTS/SYNTAX-TEST::POINT 1 ... | <strong> OK </strong> |
| (scan-lists limit-point backward) | Expect (AND (NULL (LEM-BASE:SCAN-LISTS LEM-TESTS/SYNTAX-TEST::POINT -1 0 T LEM-TESTS/SYNTAX-TEST:... | <strong> OK </strong> |
| (scan-lists limit-point backward) | Expect (AND (EQ LEM-TESTS/SYNTAX-TEST::POINT (LEM-BASE:SCAN-LISTS LEM-TESTS/SYNTAX-TEST::POINT -1... | <strong> OK </strong> |

## wide-index
| Test         | Description                                                                                          | Result                |
|--------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (wide-index) | Expect (EQL 1 (LEM-BASE:WIDE-INDEX "abc" 1)) to be true.                                             | <strong> OK </strong> |
| (wide-index) | Expect (EQL 2 (LEM-BASE:WIDE-INDEX "abc" 2)) to be true.                                             | <strong> OK </strong> |
| (wide-index) | Expect (EQL NIL (LEM-BASE:WIDE-INDEX "abc" 3)) to be true.                                           | <strong> OK </strong> |
| (wide-index) | Expect (EQL NIL (LEM-BASE:WIDE-INDEX "abc" 10)) to be true.                                          | <strong> OK </strong> |
| (wide-index) | Expect (EQL 0 (LEM-BASE:WIDE-INDEX "あいえうお" 0)) to be true.                                      | <strong> OK </strong> |
| (wide-index) | Expect (EQL 0 (LEM-BASE:WIDE-INDEX "あいえうお" 1)) to be true.                                      | <strong> OK </strong> |
| (wide-index) | Expect (EQL 1 (LEM-BASE:WIDE-INDEX "あいえうお" 2)) to be true.                                      | <strong> OK </strong> |
| (wide-index) | Expect (EQL 1 (LEM-BASE:WIDE-INDEX "あいえうお" 3)) to be true.                                      | <strong> OK </strong> |
| (wide-index) | Expect (EQL 2 (LEM-BASE:WIDE-INDEX "あいえうお" 4)) to be true.                                      | <strong> OK </strong> |
| (wide-index) | Expect (EQL 2 (LEM-BASE:WIDE-INDEX "あいえ" 5)) to be true.                                          | <strong> OK </strong> |
| (wide-index) | Expect (EQL NIL (LEM-BASE:WIDE-INDEX "あいえ" 6)) to be true.                                        | <strong> OK </strong> |
| (wide-index) | Expect (EQL 0 (LEM-BASE:WIDE-INDEX (FORMAT NIL "~Aabcdefghijk" #\Tab) 5)) to be true.                | <strong> OK </strong> |
| (wide-index) | Expect (EQL 2 (LEM-BASE:WIDE-INDEX (FORMAT NIL "~Aabcdefghijk" #\Tab) 5 :TAB-SIZE 4)) to be true.    | <strong> OK </strong> |
| (wide-index) | Expect (EQL 6 (LEM-BASE:WIDE-INDEX (FORMAT NIL "~Aabcdefghijk" #\Tab) 5 :START 1)) to be true.       | <strong> OK </strong> |
| (wide-index) | Expect (EQL 5 (LEM-BASE:WIDE-INDEX (FORMAT NIL "~Aa~Abcdefghijk" #\Tab #\Tab) 5 :START 1 :TAB-SIZ... | <strong> OK </strong> |

## self-insert-command
| Test                  | Description                                                                                      | Result                |
|-----------------------|--------------------------------------------------------------------------------------------------|-----------------------|
| (self-insert-command) | aaa                                                                                              | <strong> OK </strong> |
| (self-insert-command) | aaaa                                                                                             | <strong> OK </strong> |
| (self-insert-command) | Expect (SEARCH "Key not found: " (PRINC-TO-STRING LEM-TESTS/SELF-INSERT-COMMAND::E)) to be true. | <strong> OK </strong> |

## cond-1
| Test     | Description | Result                |
|----------|-------------|-----------------------|
| (cond-1) | COND-1      | <strong> OK </strong> |

## external-option
| Test              | Description                                                                                          | Result                |
|-------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (external-option) | Expect (EQUAL '("baz" (:TEST)) (MULTIPLE-VALUE-LIST (LEM-CORE:YANK-FROM-CLIPBOARD-OR-KILLRING))) ... | <strong> OK </strong> |
| (external-option) | Expect (EQUAL LEM-TESTS/KILLRING::EXPECTED-RESULT (LEM-CORE:YANK-FROM-CLIPBOARD-OR-KILLRING)) to ... | <strong> OK </strong> |

## internal-option
| Test              | Description                                                                                          | Result                |
|-------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (internal-option) | Expect (EQUAL '("foo" (:TEST)) (MULTIPLE-VALUE-LIST (LEM/COMMON/KILLRING:PEEK-KILLRING-ITEM LEM-T... | <strong> OK </strong> |
| (internal-option) | Expect (EQUAL '("foobar" (:TEST :TEST2)) (MULTIPLE-VALUE-LIST (LEM/COMMON/KILLRING:PEEK-KILLRING-... | <strong> OK </strong> |
| (internal-option) | Expect (EQUAL '("bazfoobar" (:TEST3 :TEST :TEST2)) (MULTIPLE-VALUE-LIST (LEM/COMMON/KILLRING:PEEK... | <strong> OK </strong> |

## unique-buffer-name
| Test                               | Description                                                                                          | Result                |
|------------------------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (unique-buffer-name argument type) | Expect (FUNCALL FUNCTION NIL) to signal TYPE-ERROR.                                                  | <strong> OK </strong> |
| (unique-buffer-name argument type) | Expect (FUNCALL FUNCTION 1) to signal TYPE-ERROR.                                                    | <strong> OK </strong> |
| (unique-buffer-name argument type) | Expect (FUNCALL FUNCTION #(#\a #\b)) to signal TYPE-ERROR.                                           | <strong> OK </strong> |
| (unique-buffer-name)               | Expect (EQUAL "foo" (LEM-BASE:UNIQUE-BUFFER-NAME "foo")) to be true.                                 | <strong> OK </strong> |
| (unique-buffer-name)               | Expect (EQUAL "a<1>" LEM-TESTS/BUFFER-LIST-TEST::NAME) to be true.                                   | <strong> OK </strong> |
| (unique-buffer-name)               | Expect (EQUAL "a<2>" LEM-TESTS/BUFFER-LIST-TEST::NAME) to be true.                                   | <strong> OK </strong> |
| (unique-buffer-name)               | Expect (STRING= (LEM-BASE:BUFFER-NAME LEM-TESTS/BUFFER-LIST-TEST::BUFFER-A) "a") to be true.         | <strong> OK </strong> |
| (unique-buffer-name)               | Expect (STRING= (LEM-BASE:BUFFER-NAME LEM-TESTS/BUFFER-LIST-TEST::BUFFER-A<1>) "a<1>") to be true.   | <strong> OK </strong> |
| (unique-buffer-name)               | Expect (STRING= (LEM-BASE:BUFFER-NAME LEM-TESTS/BUFFER-LIST-TEST::BUFFER-A<2>) "a<2>") to be true.   | <strong> OK </strong> |
| (unique-buffer-name)               | Expect (EQUAL (LEM-BASE:BUFFER-LIST) (LIST LEM-TESTS/BUFFER-LIST-TEST::BUFFER-A<2> LEM-TESTS/BUFF... | <strong> OK </strong> |
| (unique-buffer-name)               | Expect (EQUAL "a<2>" (LEM-BASE:UNIQUE-BUFFER-NAME "a")) to be true.                                  | <strong> OK </strong> |
| (unique-buffer-name)               | Expect (EQUAL (LEM-BASE:BUFFER-LIST) (LIST LEM-TESTS/BUFFER-LIST-TEST::BUFFER-A<1> LEM-TESTS/BUFF... | <strong> OK </strong> |
| (unique-buffer-name)               | Expect (EQUAL "a<1>" (LEM-BASE:UNIQUE-BUFFER-NAME "a")) to be true.                                  | <strong> OK </strong> |
| (unique-buffer-name)               | Expect (EQUAL (LEM-BASE:BUFFER-LIST) (LIST LEM-TESTS/BUFFER-LIST-TEST::BUFFER-A<2> LEM-TESTS/BUFF... | <strong> OK </strong> |
| (unique-buffer-name)               | Expect (EQUAL "a" (LEM-BASE:UNIQUE-BUFFER-NAME "a")) to be true.                                     | <strong> OK </strong> |
| (unique-buffer-name)               | Expect (EQUAL (LEM-BASE:BUFFER-LIST) (LIST LEM-TESTS/BUFFER-LIST-TEST::BUFFER-A<2> LEM-TESTS/BUFF... | <strong> OK </strong> |
| (unique-buffer-name)               | Expect (EQUAL "b" (LEM-BASE:UNIQUE-BUFFER-NAME "b")) to be true.                                     | <strong> OK </strong> |

## prompt-for-character
| Test                   | Description                                                                                          | Result                |
|------------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (prompt-for-character) | Expect (EQUAL #\a (LEM-CORE:PROMPT-FOR-CHARACTER "test: " :GRAVITY (MAKE-INSTANCE 'LEM/POPUP-WIND... | <strong> OK </strong> |

## rotate-to-empty-killring
| Test | Description | Result                |
|------|-------------|-----------------------|
| NIL  | no error    | <strong> OK </strong> |

## peek-killring-item-when-empty
| Test                            | Description                                                                                          | Result                |
|---------------------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (peek-killring-item-when-empty) | Expect (NULL (LEM/COMMON/KILLRING:PEEK-KILLRING-ITEM LEM-TESTS/COMMON/KILLRING::KILLRING 0)) to b... | <strong> OK </strong> |

## appending-if-empty
| Test                 | Description                                                                                          | Result                |
|----------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (appending-if-empty) | Expect (EQUAL "abc" (LEM/COMMON/KILLRING:PEEK-KILLRING-ITEM LEM-TESTS/COMMON/KILLRING::KILLRING 0... | <strong> OK </strong> |

## defclass-1
| Test         | Description | Result                |
|--------------|-------------|-----------------------|
| (defclass-1) | DEFCLASS-1  | <strong> OK </strong> |

## get-next-buffer
| Test                                      | Description                                                                                          | Result                |
|-------------------------------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (get-next-buffer argument type)           | Expect (FUNCALL FUNCTION NIL) to signal TYPE-ERROR.                                                  | <strong> OK </strong> |
| (get-next-buffer argument type)           | Expect (FUNCALL FUNCTION 1) to signal TYPE-ERROR.                                                    | <strong> OK </strong> |
| (get-next-buffer argument type)           | Expect (FUNCALL FUNCTION #(#\a #\b)) to signal TYPE-ERROR.                                           | <strong> OK </strong> |
| (get-next-buffer argument type)           | Expect (FUNCALL FUNCTION "name") to signal TYPE-ERROR.                                               | <strong> OK </strong> |
| (get-next-buffer buffer-list length is 0) | Expect (EQ (FUNCALL FUNCTION (LEM-BASE:MAKE-BUFFER NIL :TEMPORARY T)) NIL) to be true.               | <strong> OK </strong> |
| (get-next-buffer buffer-list length is 1) | Expect (EQ (FUNCALL FUNCTION LEM-TESTS/BUFFER-LIST-TEST::BUFFER-A) NIL) to be true.                  | <strong> OK </strong> |
| (get-next-buffer buffer-list length is 3) | Expect (EQ (LEM-BASE:GET-NEXT-BUFFER LEM-TESTS/BUFFER-LIST-TEST::BUFFER-C) LEM-TESTS/BUFFER-LIST-... | <strong> OK </strong> |
| (get-next-buffer buffer-list length is 3) | Expect (EQ (LEM-BASE:GET-NEXT-BUFFER LEM-TESTS/BUFFER-LIST-TEST::BUFFER-B) LEM-TESTS/BUFFER-LIST-... | <strong> OK </strong> |
| (get-next-buffer buffer-list length is 3) | Expect (EQ (LEM-BASE:GET-NEXT-BUFFER LEM-TESTS/BUFFER-LIST-TEST::BUFFER-A) NIL) to be true.          | <strong> OK </strong> |
| (get-next-buffer buffer-list length is 3) | Expect (EQ (LEM-BASE:GET-NEXT-BUFFER (LEM-BASE:MAKE-BUFFER NIL :TEMPORARY T)) NIL) to be true.       | <strong> OK </strong> |

## delete-buffer
| Test                                                             | Description                                                                                          | Result                |
|------------------------------------------------------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (delete-buffer argument type)                                    | Expect (FUNCALL FUNCTION NIL) to signal TYPE-ERROR.                                                  | <strong> OK </strong> |
| (delete-buffer argument type)                                    | Expect (FUNCALL FUNCTION 1) to signal TYPE-ERROR.                                                    | <strong> OK </strong> |
| (delete-buffer argument type)                                    | Expect (FUNCALL FUNCTION #(#\a #\b)) to signal TYPE-ERROR.                                           | <strong> OK </strong> |
| (delete-buffer argument type)                                    | Expect (FUNCALL FUNCTION "name") to signal TYPE-ERROR.                                               | <strong> OK </strong> |
| (delete-buffer)                                                  | Expect (LEM-BASE:DELETED-BUFFER-P LEM-TESTS/BUFFER-LIST-TEST::DELETING-BUFFER) to be false.          | <strong> OK </strong> |
| (delete-buffer)                                                  | Expect (LEM-BASE:DELETED-BUFFER-P LEM-TESTS/BUFFER-LIST-TEST::DELETING-BUFFER) to be true.           | <strong> OK </strong> |
| (delete-buffer)                                                  | Expect (EQUAL LEM-TESTS/BUFFER-LIST-TEST::RESULT LEM-TESTS/BUFFER-LIST-TEST::EXPECTED-BUFFER-LIST... | <strong> OK </strong> |
| (delete-buffer)                                                  | Expect (LEM-BASE:DELETED-BUFFER-P LEM-TESTS/BUFFER-LIST-TEST::DELETING-BUFFER) to be false.          | <strong> OK </strong> |
| (delete-buffer)                                                  | Expect (LEM-BASE:DELETED-BUFFER-P LEM-TESTS/BUFFER-LIST-TEST::DELETING-BUFFER) to be true.           | <strong> OK </strong> |
| (delete-buffer)                                                  | Expect (EQUAL LEM-TESTS/BUFFER-LIST-TEST::RESULT LEM-TESTS/BUFFER-LIST-TEST::EXPECTED-BUFFER-LIST... | <strong> OK </strong> |
| (delete-buffer)                                                  | Expect (LEM-BASE:DELETED-BUFFER-P LEM-TESTS/BUFFER-LIST-TEST::DELETING-BUFFER) to be false.          | <strong> OK </strong> |
| (delete-buffer)                                                  | Expect (LEM-BASE:DELETED-BUFFER-P LEM-TESTS/BUFFER-LIST-TEST::DELETING-BUFFER) to be true.           | <strong> OK </strong> |
| (delete-buffer)                                                  | Expect (EQUAL LEM-TESTS/BUFFER-LIST-TEST::RESULT LEM-TESTS/BUFFER-LIST-TEST::EXPECTED-BUFFER-LIST... | <strong> OK </strong> |
| (delete-buffer temporary buffer)                                 | Expect (LEM-BASE:DELETED-BUFFER-P LEM-TESTS/BUFFER-LIST-TEST::BUFFER) to be false.                   | <strong> OK </strong> |
| (delete-buffer temporary buffer)                                 | Expect (EQUAL LEM-TESTS/BUFFER-LIST-TEST::BUFFER-LIST (LEM-BASE:DELETE-BUFFER LEM-TESTS/BUFFER-LI... | <strong> OK </strong> |
| (delete-buffer temporary buffer)                                 | Expect (LEM-BASE:DELETED-BUFFER-P LEM-TESTS/BUFFER-LIST-TEST::BUFFER) to be true.                    | <strong> OK </strong> |
| (delete-buffer kill-buffer-hook buffer local)                    | Expect (EQ LEM-TESTS/BUFFER-LIST-TEST::HOOKED-BUFFER LEM-TESTS/BUFFER-LIST-TEST::DELETING-BUFFER)... | <strong> OK </strong> |
| (delete-buffer kill-buffer-hook buffer local)                    | Expect (LEM-BASE:DELETED-BUFFER-P LEM-TESTS/BUFFER-LIST-TEST::HOOKED-BUFFER) to be false.            | <strong> OK </strong> |
| (delete-buffer kill-buffer-hook buffer local)                    | Expect LEM-TESTS/BUFFER-LIST-TEST::CALLED-HOOK-P to be true.                                         | <strong> OK </strong> |
| (delete-buffer kill-buffer-hook global)                          | Expect (EQ LEM-TESTS/BUFFER-LIST-TEST::HOOKED-BUFFER LEM-TESTS/BUFFER-LIST-TEST::DELETING-BUFFER)... | <strong> OK </strong> |
| (delete-buffer kill-buffer-hook global)                          | Expect (LEM-BASE:DELETED-BUFFER-P LEM-TESTS/BUFFER-LIST-TEST::HOOKED-BUFFER) to be false.            | <strong> OK </strong> |
| (delete-buffer kill-buffer-hook global)                          | Expect LEM-TESTS/BUFFER-LIST-TEST::CALLED-HOOK-P to be true.                                         | <strong> OK </strong> |
| (delete-buffer kill-buffer-hook local/global called local hook)  | Expect (EQ LEM-TESTS/BUFFER-LIST-TEST::HOOKED-BUFFER LEM-TESTS/BUFFER-LIST-TEST::DELETING-BUFFER)... | <strong> OK </strong> |
| (delete-buffer kill-buffer-hook local/global called local hook)  | Expect (LEM-BASE:DELETED-BUFFER-P LEM-TESTS/BUFFER-LIST-TEST::HOOKED-BUFFER) to be false.            | <strong> OK </strong> |
| (delete-buffer kill-buffer-hook local/global called global hook) | Expect (EQ LEM-TESTS/BUFFER-LIST-TEST::HOOKED-BUFFER LEM-TESTS/BUFFER-LIST-TEST::DELETING-BUFFER)... | <strong> OK </strong> |
| (delete-buffer kill-buffer-hook local/global called global hook) | Expect (LEM-BASE:DELETED-BUFFER-P LEM-TESTS/BUFFER-LIST-TEST::HOOKED-BUFFER) to be false.            | <strong> OK </strong> |
| (delete-buffer kill-buffer-hook local/global)                    | Expect (EQUAL '(:LOCAL :GLOBAL) (NREVERSE LEM-TESTS/BUFFER-LIST-TEST::CALLED-ORDER)) to be true.     | <strong> OK </strong> |

## ring-push
| Test        | Description                                                                                          | Result                |
|-------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (ring-push) | Expect (STRING= (WITH-OUTPUT-TO-STRING (LEM-TESTS/COMMON/RING::OUT) (LOOP :FOR LEM-TESTS/COMMON/R... | <strong> OK </strong> |

## execute-the-same-command-consecutively
| Test                                     | Description                                                      | Result                |
|------------------------------------------|------------------------------------------------------------------|-----------------------|
| (execute-the-same-command-consecutively) | Expect (EQUAL '(NIL T T) LEM/TESTS/INTERP::*RESULT*) to be true. | <strong> OK </strong> |

## unbury-buffer
| Test                                                     | Description                                                                                          | Result                |
|----------------------------------------------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (unbury-buffer argument type)                            | Expect (FUNCALL FUNCTION NIL) to signal TYPE-ERROR.                                                  | <strong> OK </strong> |
| (unbury-buffer argument type)                            | Expect (FUNCALL FUNCTION 1) to signal TYPE-ERROR.                                                    | <strong> OK </strong> |
| (unbury-buffer argument type)                            | Expect (FUNCALL FUNCTION #(#\a #\b)) to signal TYPE-ERROR.                                           | <strong> OK </strong> |
| (unbury-buffer argument type)                            | Expect (FUNCALL FUNCTION "name") to signal TYPE-ERROR.                                               | <strong> OK </strong> |
| (unbury-buffer buffer-list length is 1)                  | Expect (EQ LEM-TESTS/BUFFER-LIST-TEST::BUFFER-A (LEM-BASE:UNBURY-BUFFER LEM-TESTS/BUFFER-LIST-TES... | <strong> OK </strong> |
| (unbury-buffer buffer-list length is 1)                  | Expect (EQUAL (LEM-BASE:BUFFER-LIST) (LIST LEM-TESTS/BUFFER-LIST-TEST::BUFFER-A)) to be true.        | <strong> OK </strong> |
| (unbury-buffer buffer-list length is 3)                  | Expect (EQ LEM-TESTS/BUFFER-LIST-TEST::BUFFER-A (LEM-BASE:UNBURY-BUFFER LEM-TESTS/BUFFER-LIST-TES... | <strong> OK </strong> |
| (unbury-buffer buffer-list length is 3)                  | Expect (EQUAL (LEM-BASE:BUFFER-LIST) (LIST LEM-TESTS/BUFFER-LIST-TEST::BUFFER-A LEM-TESTS/BUFFER-... | <strong> OK </strong> |
| (unbury-buffer buffer-list length is 3)                  | Expect (EQ LEM-TESTS/BUFFER-LIST-TEST::BUFFER-B (LEM-BASE:UNBURY-BUFFER LEM-TESTS/BUFFER-LIST-TES... | <strong> OK </strong> |
| (unbury-buffer buffer-list length is 3)                  | Expect (EQUAL (LEM-BASE:BUFFER-LIST) (LIST LEM-TESTS/BUFFER-LIST-TEST::BUFFER-B LEM-TESTS/BUFFER-... | <strong> OK </strong> |
| (unbury-buffer buffer-list length is 3)                  | Expect (EQ LEM-TESTS/BUFFER-LIST-TEST::BUFFER-C (LEM-BASE:UNBURY-BUFFER LEM-TESTS/BUFFER-LIST-TES... | <strong> OK </strong> |
| (unbury-buffer buffer-list length is 3)                  | Expect (EQUAL (LEM-BASE:BUFFER-LIST) (LIST LEM-TESTS/BUFFER-LIST-TEST::BUFFER-C LEM-TESTS/BUFFER-... | <strong> OK </strong> |
| (unbury-buffer temporary buffer buffer-list length is 0) | Expect (EQ LEM-TESTS/BUFFER-LIST-TEST::BUFFER (LEM-BASE:UNBURY-BUFFER LEM-TESTS/BUFFER-LIST-TEST:... | <strong> OK </strong> |
| (unbury-buffer temporary buffer buffer-list length is 3) | Expect (EQ LEM-TESTS/BUFFER-LIST-TEST::BUFFER (LEM-BASE:UNBURY-BUFFER LEM-TESTS/BUFFER-LIST-TEST:... | <strong> OK </strong> |
| (unbury-buffer temporary buffer buffer-list length is 3) | Expect (EQUAL (LEM-BASE:BUFFER-LIST) (LIST LEM-TESTS/BUFFER-LIST-TEST::BUFFER-C LEM-TESTS/BUFFER-... | <strong> OK </strong> |

## before-inserting
| Test               | Description                                                                                          | Result                |
|--------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (before-inserting) | Expect (EQUAL "ba" (LEM/COMMON/KILLRING:PEEK-KILLRING-ITEM LEM-TESTS/COMMON/KILLRING::KILLRING 0)... | <strong> OK </strong> |
| (before-inserting) | Expect (EQUAL "cba" (LEM/COMMON/KILLRING:PEEK-KILLRING-ITEM LEM-TESTS/COMMON/KILLRING::KILLRING 0... | <strong> OK </strong> |

## wide-char-p
| Test          | Description                                                                                          | Result                |
|---------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (wide-char-p) | Expect (LOOP :FOR CHAR :IN LEM-TESTS/STRING-WIDTH-UTILS::ALPHABET-OR-NUMBERS :ALWAYS (NOT (LEM-BA... | <strong> OK </strong> |
| (wide-char-p) | Expect (LOOP :FOR CHAR :IN LEM-TESTS/STRING-WIDTH-UTILS::CONTROL-CHARS :ALWAYS (LEM-BASE:WIDE-CHA... | <strong> OK </strong> |
| (wide-char-p) | Expect (LOOP :FOR (LEM-TESTS/STRING-WIDTH-UTILS::START LEM-TESTS/STRING-WIDTH-UTILS::END) :IN LEM... | <strong> OK </strong> |
| (wide-char-p) | Expect (LEM-BASE:WIDE-CHAR-P (CODE-CHAR 127798)) to be false.                                        | <strong> OK </strong> |
| (wide-char-p) | Expect (LEM-BASE:WIDE-CHAR-P (CODE-CHAR 128253)) to be false.                                        | <strong> OK </strong> |

## get-previous-buffer
| Test                                          | Description                                                                                          | Result                |
|-----------------------------------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (get-previous-buffer argument type)           | Expect (FUNCALL FUNCTION NIL) to signal TYPE-ERROR.                                                  | <strong> OK </strong> |
| (get-previous-buffer argument type)           | Expect (FUNCALL FUNCTION 1) to signal TYPE-ERROR.                                                    | <strong> OK </strong> |
| (get-previous-buffer argument type)           | Expect (FUNCALL FUNCTION #(#\a #\b)) to signal TYPE-ERROR.                                           | <strong> OK </strong> |
| (get-previous-buffer argument type)           | Expect (FUNCALL FUNCTION "name") to signal TYPE-ERROR.                                               | <strong> OK </strong> |
| (get-previous-buffer buffer-list length is 0) | Expect (EQ (FUNCALL FUNCTION (LEM-BASE:MAKE-BUFFER NIL :TEMPORARY T)) NIL) to be true.               | <strong> OK </strong> |
| (get-previous-buffer buffer-list length is 1) | Expect (EQ (FUNCALL FUNCTION LEM-TESTS/BUFFER-LIST-TEST::BUFFER-A) NIL) to be true.                  | <strong> OK </strong> |
| (get-previous-buffer buffer-list length is 3) | Expect (EQ (LEM-BASE:GET-PREVIOUS-BUFFER LEM-TESTS/BUFFER-LIST-TEST::BUFFER-C) NIL) to be true.      | <strong> OK </strong> |
| (get-previous-buffer buffer-list length is 3) | Expect (EQ (LEM-BASE:GET-PREVIOUS-BUFFER LEM-TESTS/BUFFER-LIST-TEST::BUFFER-B) LEM-TESTS/BUFFER-L... | <strong> OK </strong> |
| (get-previous-buffer buffer-list length is 3) | Expect (EQ (LEM-BASE:GET-PREVIOUS-BUFFER LEM-TESTS/BUFFER-LIST-TEST::BUFFER-A) LEM-TESTS/BUFFER-L... | <strong> OK </strong> |
| (get-previous-buffer buffer-list length is 3) | Expect (EQ (LEM-BASE:GET-PREVIOUS-BUFFER (LEM-BASE:MAKE-BUFFER NIL :TEMPORARY T)) NIL) to be true.   | <strong> OK </strong> |

## any-modified-buffer-p
| Test                                                               | Description                                                                                          | Result                |
|--------------------------------------------------------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (any-modified-buffer-p)                                            | Expect (EQUAL (LIST LEM-TESTS/BUFFER-LIST-TEST::BUFFER-C LEM-TESTS/BUFFER-LIST-TEST::BUFFER-B LEM... | <strong> OK </strong> |
| (any-modified-buffer-p)                                            | Expect (LEM-BASE:ANY-MODIFIED-BUFFER-P) to be false.                                                 | <strong> OK </strong> |
| (any-modified-buffer-p edit buffer-a, any-modified-buffer-p = nil) | Expect (LEM-BASE:ANY-MODIFIED-BUFFER-P) to be false.                                                 | <strong> OK </strong> |
| (any-modified-buffer-p edit buffer-b, any-modified-buffer-p = nil) | Expect (LEM-BASE:ANY-MODIFIED-BUFFER-P) to be false.                                                 | <strong> OK </strong> |
| (any-modified-buffer-p edit buffer-c, any-modified-buffer-p = t)   | Expect (EQ T (LEM-BASE:ANY-MODIFIED-BUFFER-P)) to be true.                                           | <strong> OK </strong> |

## char-width
| Test                  | Description                                                                                          | Result                |
|-----------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (char-width alphabet) | Expect (EQL 1 (LEM-BASE:CHAR-WIDTH #\a 0)) to be true.                                               | <strong> OK </strong> |
| (char-width alphabet) | Expect (EQL 2 (LEM-BASE:CHAR-WIDTH #\a 1)) to be true.                                               | <strong> OK </strong> |
| (char-width tab)      | Expect (LOOP :FOR LEM-TESTS/STRING-WIDTH-UTILS::I :FROM 0 :BELOW 8 :ALWAYS (EQL 8 (LEM-BASE:CHAR-... | <strong> OK </strong> |
| (char-width tab)      | Expect (LOOP :FOR LEM-TESTS/STRING-WIDTH-UTILS::I :FROM 8 :BELOW 16 :ALWAYS (EQL 16 (LEM-BASE:CHA... | <strong> OK </strong> |
| (char-width tab)      | Expect (EQL 10 (LEM-BASE:CHAR-WIDTH #\Tab 9 :TAB-SIZE 10)) to be true.                               | <strong> OK </strong> |
| (char-width control)  | Expect (EQL 2 (LEM-BASE:CHAR-WIDTH #\Null 0)) to be true.                                            | <strong> OK </strong> |
| (char-width control)  | Expect (EQL 3 (LEM-BASE:CHAR-WIDTH #\Null 1)) to be true.                                            | <strong> OK </strong> |
| (char-width control)  | Expect (EQL 4 (LEM-BASE:CHAR-WIDTH #\U+E0FF 0)) to be true.                                          | <strong> OK </strong> |
| (char-width control)  | Expect (EQL 5 (LEM-BASE:CHAR-WIDTH #\U+E0FF 1)) to be true.                                          | <strong> OK </strong> |
| (char-width control)  | Expect (EQL 6 (LEM-BASE:CHAR-WIDTH #\U+E0FF 2)) to be true.                                          | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2 (LEM-BASE:CHAR-WIDTH #\U+3042 0)) to be true.                                          | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 3 (LEM-BASE:CHAR-WIDTH #\U+3042 1)) to be true.                                          | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2 (LEM-BASE:CHAR-WIDTH (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE) 0)) to be true.    | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2 (LEM-BASE:CHAR-WIDTH (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE) 0)) to be true.    | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2 (LEM-BASE:CHAR-WIDTH (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE) 0)) to be true.    | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2 (LEM-BASE:CHAR-WIDTH (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE) 0)) to be true.    | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2 (LEM-BASE:CHAR-WIDTH (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE) 0)) to be true.    | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2 (LEM-BASE:CHAR-WIDTH (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE) 0)) to be true.    | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2 (LEM-BASE:CHAR-WIDTH (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE) 0)) to be true.    | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2 (LEM-BASE:CHAR-WIDTH (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE) 0)) to be true.    | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2 (LEM-BASE:CHAR-WIDTH (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE) 0)) to be true.    | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2 (LEM-BASE:CHAR-WIDTH (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE) 0)) to be true.    | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2 (LEM-BASE:CHAR-WIDTH (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE) 0)) to be true.    | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2 (LEM-BASE:CHAR-WIDTH (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE) 0)) to be true.    | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2 (LEM-BASE:CHAR-WIDTH (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE) 0)) to be true.    | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2 (LEM-BASE:CHAR-WIDTH (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE) 0)) to be true.    | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2 (LEM-BASE:CHAR-WIDTH (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE) 0)) to be true.    | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2 (LEM-BASE:CHAR-WIDTH (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE) 0)) to be true.    | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2 (LEM-BASE:CHAR-WIDTH (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE) 0)) to be true.    | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2 (LEM-BASE:CHAR-WIDTH (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE) 0)) to be true.    | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2 (LEM-BASE:CHAR-WIDTH (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE) 0)) to be true.    | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2 (LEM-BASE:CHAR-WIDTH (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE) 0)) to be true.    | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2 (LEM-BASE:CHAR-WIDTH (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE) 0)) to be true.    | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2 (LEM-BASE:CHAR-WIDTH (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE) 0)) to be true.    | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2 (LEM-BASE:CHAR-WIDTH (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE) 0)) to be true.    | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2 (LEM-BASE:CHAR-WIDTH (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE) 0)) to be true.    | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2 (LEM-BASE:CHAR-WIDTH (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE) 0)) to be true.    | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2 (LEM-BASE:CHAR-WIDTH (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE) 0)) to be true.    | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2 (LEM-BASE:CHAR-WIDTH (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE) 0)) to be true.    | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2 (LEM-BASE:CHAR-WIDTH (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE) 0)) to be true.    | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2 (LEM-BASE:CHAR-WIDTH (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE) 0)) to be true.    | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2 (LEM-BASE:CHAR-WIDTH (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE) 0)) to be true.    | <strong> OK </strong> |
| (char-width newline)  | Expect (EQL 0 (LEM-BASE:CHAR-WIDTH #\Newline 0)) to be true.                                         | <strong> OK </strong> |

## ring-length
| Test          | Description                                                                                          | Result                |
|---------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (ring-length) | Expect (= 0 (LEM/COMMON/RING:RING-LENGTH LEM/COMMON/RING:RING)) to be true.                          | <strong> OK </strong> |
| (ring-length) | Expect (= (MIN 3 LEM-TESTS/COMMON/RING::I) (LEM/COMMON/RING:RING-LENGTH LEM/COMMON/RING:RING)) to... | <strong> OK </strong> |
| (ring-length) | Expect (= (MIN 3 LEM-TESTS/COMMON/RING::I) (LEM/COMMON/RING:RING-LENGTH LEM/COMMON/RING:RING)) to... | <strong> OK </strong> |
| (ring-length) | Expect (= (MIN 3 LEM-TESTS/COMMON/RING::I) (LEM/COMMON/RING:RING-LENGTH LEM/COMMON/RING:RING)) to... | <strong> OK </strong> |
| (ring-length) | Expect (= (MIN 3 LEM-TESTS/COMMON/RING::I) (LEM/COMMON/RING:RING-LENGTH LEM/COMMON/RING:RING)) to... | <strong> OK </strong> |
| (ring-length) | Expect (= (MIN 3 LEM-TESTS/COMMON/RING::I) (LEM/COMMON/RING:RING-LENGTH LEM/COMMON/RING:RING)) to... | <strong> OK </strong> |
| (ring-length) | Expect (= (MIN 3 LEM-TESTS/COMMON/RING::I) (LEM/COMMON/RING:RING-LENGTH LEM/COMMON/RING:RING)) to... | <strong> OK </strong> |
| (ring-length) | Expect (= (MIN 3 LEM-TESTS/COMMON/RING::I) (LEM/COMMON/RING:RING-LENGTH LEM/COMMON/RING:RING)) to... | <strong> OK </strong> |
| (ring-length) | Expect (= (MIN 3 LEM-TESTS/COMMON/RING::I) (LEM/COMMON/RING:RING-LENGTH LEM/COMMON/RING:RING)) to... | <strong> OK </strong> |
| (ring-length) | Expect (= (MIN 3 LEM-TESTS/COMMON/RING::I) (LEM/COMMON/RING:RING-LENGTH LEM/COMMON/RING:RING)) to... | <strong> OK </strong> |
| (ring-length) | Expect (= (MIN 3 LEM-TESTS/COMMON/RING::I) (LEM/COMMON/RING:RING-LENGTH LEM/COMMON/RING:RING)) to... | <strong> OK </strong> |

## bury-buffer
| Test                                                   | Description                                                                                          | Result                |
|--------------------------------------------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (bury-buffer argument type)                            | Expect (FUNCALL FUNCTION NIL) to signal TYPE-ERROR.                                                  | <strong> OK </strong> |
| (bury-buffer argument type)                            | Expect (FUNCALL FUNCTION 1) to signal TYPE-ERROR.                                                    | <strong> OK </strong> |
| (bury-buffer argument type)                            | Expect (FUNCALL FUNCTION #(#\a #\b)) to signal TYPE-ERROR.                                           | <strong> OK </strong> |
| (bury-buffer argument type)                            | Expect (FUNCALL FUNCTION "name") to signal TYPE-ERROR.                                               | <strong> OK </strong> |
| (bury-buffer buffer-list length is 1)                  | Expect (EQ LEM-TESTS/BUFFER-LIST-TEST::BUFFER-A (LEM-BASE:BURY-BUFFER LEM-TESTS/BUFFER-LIST-TEST:... | <strong> OK </strong> |
| (bury-buffer buffer-list length is 1)                  | Expect (EQUAL (LEM-BASE:BUFFER-LIST) (LIST LEM-TESTS/BUFFER-LIST-TEST::BUFFER-A)) to be true.        | <strong> OK </strong> |
| (bury-buffer buffer-list length is 3)                  | Expect (EQ LEM-TESTS/BUFFER-LIST-TEST::BUFFER-B (LEM-BASE:BURY-BUFFER LEM-TESTS/BUFFER-LIST-TEST:... | <strong> OK </strong> |
| (bury-buffer buffer-list length is 3)                  | Expect (EQUAL (LEM-BASE:BUFFER-LIST) (LIST LEM-TESTS/BUFFER-LIST-TEST::BUFFER-B LEM-TESTS/BUFFER-... | <strong> OK </strong> |
| (bury-buffer buffer-list length is 3)                  | Expect (EQ LEM-TESTS/BUFFER-LIST-TEST::BUFFER-C (LEM-BASE:BURY-BUFFER LEM-TESTS/BUFFER-LIST-TEST:... | <strong> OK </strong> |
| (bury-buffer buffer-list length is 3)                  | Expect (EQUAL (LEM-BASE:BUFFER-LIST) (LIST LEM-TESTS/BUFFER-LIST-TEST::BUFFER-C LEM-TESTS/BUFFER-... | <strong> OK </strong> |
| (bury-buffer buffer-list length is 3)                  | Expect (EQ LEM-TESTS/BUFFER-LIST-TEST::BUFFER-C (LEM-BASE:BURY-BUFFER LEM-TESTS/BUFFER-LIST-TEST:... | <strong> OK </strong> |
| (bury-buffer buffer-list length is 3)                  | Expect (EQUAL (LEM-BASE:BUFFER-LIST) (LIST LEM-TESTS/BUFFER-LIST-TEST::BUFFER-C LEM-TESTS/BUFFER-... | <strong> OK </strong> |
| (bury-buffer temporary buffer buffer-list length is 0) | Expect (EQ NIL (LEM-BASE:BURY-BUFFER (LEM-BASE:MAKE-BUFFER NIL :TEMPORARY T))) to be true.           | <strong> OK </strong> |
| (bury-buffer temporary buffer buffer-list length is 3) | Expect (EQ LEM-TESTS/BUFFER-LIST-TEST::BUFFER-C (LEM-BASE:BURY-BUFFER (LEM-BASE:MAKE-BUFFER NIL :... | <strong> OK </strong> |
| (bury-buffer temporary buffer buffer-list length is 3) | Expect (EQUAL (LEM-BASE:BUFFER-LIST) (LIST LEM-TESTS/BUFFER-LIST-TEST::BUFFER-C LEM-TESTS/BUFFER-... | <strong> OK </strong> |

## indent-test-for-sample-case
| Test                          | Description                                                                                          | Result                |
|-------------------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:1:                    | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:2:#|                  | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:3:aaaaaa              | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:4:bbbbbb              | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:5:cccccc              | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:6:|#                  | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:6:|#                  | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:8:#|********()        | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:8:#|********()        | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:8:#|********()        | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:8:#|********()        | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:8:#|********()        | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:8:#|********()        | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:8:#|********()        | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:8:#|********()        | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:8:#|********()        | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:8:#|********()        | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:8:#|********()        | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:9:|#                  | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:9:|#                  | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:12:(aaaaaaa(          | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:18:(defun foo (foo... | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:24:(defmacro foo (... | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:30:(#+sbcl foo        | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:33:(let ((x y)        | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:43:(list ;comment     | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:47:(defun foo (x)     | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:75:(defmacro foo (... | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:82:(defun foo ()      | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:87:(defmacro foofo... | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:95:(loop for i fro... | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:122:(loop for x in... | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:126:(loop for x in... | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:136:(loop for f in... | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:142:(loop (foo)       | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:147:(loop ;; comment  | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:151:(loop             | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:156:(loop             | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:161:(loop ;; comme... | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:166:(loop             | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:171:(loop             | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:177:(loop with foo... | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:182:(progn            | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:192:(loop             | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:200:(defmethod foo    | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:205:(defmethod foo... | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:210:(defgeneric fo... | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:216:(defgeneric fo... | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:222:(defun foo (a     | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:226:(defun foo (a     | <strong> OK </strong> |
| (indent-test-for-sample-case) | /home/fermin/quicklisp/local-projects/lem/tests/sample-code/indent-sample.lisp:231:(defun foo (a ... | <strong> OK </strong> |

## test-completion
| Test              | Description                                                                                          | Result                |
|-------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (test-completion) | Expect (EQUAL '("apple" "banana" "orange" "pineapple") (LEM-CORE:COMPLETION "a" LEM-TESTS/COMPLET... | <strong> OK </strong> |
| (test-completion) | Expect (EQUAL '("apple" "pineapple") (LEM-CORE:COMPLETION "app" LEM-TESTS/COMPLETION::ITEMS)) to ... | <strong> OK </strong> |
| (test-completion) | Expect (EQUAL 'NIL (LEM-CORE:COMPLETION "xyz" LEM-TESTS/COMPLETION::ITEMS)) to be true.              | <strong> OK </strong> |
| (test-completion) | Expect (EQUAL 'NIL (LEM-CORE:COMPLETION "APP" LEM-TESTS/COMPLETION::ITEMS)) to be true.              | <strong> OK </strong> |
| (test-completion) | Expect (EQUAL '("apple" "pineapple") (LEM-CORE:COMPLETION "APP" LEM-TESTS/COMPLETION::ITEMS :KEY ... | <strong> OK </strong> |
| (test-completion) | Expect (EQUAL '("foo-bar-baz" "foo-bar-y") (LEM-CORE:COMPLETION "foo-bar" '("foo-bar-baz" "foo-ba... | <strong> OK </strong> |

## get-file-mode
| Test            | Description                                                                                          | Result                |
|-----------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (get-file-mode) | Expect (EQUAL 'LEM-POSIX-SHELL-MODE:POSIX-SHELL-MODE (LEM-CORE:GET-FILE-MODE ".bashrc")) to be true. | <strong> OK </strong> |
| (get-file-mode) | Expect (EQUAL 'LEM-POSIX-SHELL-MODE:POSIX-SHELL-MODE (LEM-CORE:GET-FILE-MODE "foo.bashrc")) to be... | <strong> OK </strong> |
| (get-file-mode) | Expect (EQUAL 'LEM-LISP-MODE/INTERNAL:LISP-MODE (LEM-CORE:GET-FILE-MODE "foo.lisp")) to be true.     | <strong> OK </strong> |
| (get-file-mode) | Expect (NULL (LEM-CORE:GET-FILE-MODE "foo.lisp.bak")) to be true.                                    | <strong> OK </strong> |

{{< /expand >}}
{{< expand "Armed Bear Common Lisp - 1.9.0" >}}
{{< progress title="Progress" value="83" icon="gdoc_info_outline" >}}
## copy-ring
| Test        | Description                                                                                          | Result                |
|-------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (copy-ring) | Expect (EQ LEM/COMMON/RING:RING LEM-TESTS/COMMON/RING::RING2) to be false.                           | <strong> OK </strong> |
| (copy-ring) | Expect (EQUAL (LEM/COMMON/RING:RING-REF LEM/COMMON/RING:RING 0) (LEM/COMMON/RING:RING-REF LEM-TES... | <strong> OK </strong> |
| (copy-ring) | Expect (EQUAL (LEM/COMMON/RING:RING-REF LEM/COMMON/RING:RING 1) (LEM/COMMON/RING:RING-REF LEM-TES... | <strong> OK </strong> |

## get-previous-buffer
| Test                                          | Description                                                                                          | Result                |
|-----------------------------------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (get-previous-buffer argument type)           | Expect (FUNCALL FUNCTION NIL) to signal TYPE-ERROR.                                                  | <strong> OK </strong> |
| (get-previous-buffer argument type)           | Expect (FUNCALL FUNCTION 1) to signal TYPE-ERROR.                                                    | <strong> OK </strong> |
| (get-previous-buffer argument type)           | Expect (FUNCALL FUNCTION #(#\a #\b)) to signal TYPE-ERROR.                                           | <strong> OK </strong> |
| (get-previous-buffer argument type)           | Expect (FUNCALL FUNCTION "name") to signal TYPE-ERROR.                                               | <strong> OK </strong> |
| (get-previous-buffer buffer-list length is 0) | Expect (EQ (FUNCALL FUNCTION (LEM-BASE:MAKE-BUFFER NIL :TEMPORARY T)) NIL) to be true.               | <strong> OK </strong> |
| (get-previous-buffer buffer-list length is 1) | Expect (EQ (FUNCALL FUNCTION LEM-TESTS/BUFFER-LIST-TEST::BUFFER-A) NIL) to be true.                  | <strong> OK </strong> |
| (get-previous-buffer buffer-list length is 3) | Expect (EQ (LEM-BASE:GET-PREVIOUS-BUFFER LEM-TESTS/BUFFER-LIST-TEST::BUFFER-C) NIL) to be true.      | <strong> OK </strong> |
| (get-previous-buffer buffer-list length is 3) | Expect (EQ (LEM-BASE:GET-PREVIOUS-BUFFER LEM-TESTS/BUFFER-LIST-TEST::BUFFER-B) LEM-TESTS/BUFFER-L... | <strong> OK </strong> |
| (get-previous-buffer buffer-list length is 3) | Expect (EQ (LEM-BASE:GET-PREVIOUS-BUFFER LEM-TESTS/BUFFER-LIST-TEST::BUFFER-A) LEM-TESTS/BUFFER-L... | <strong> OK </strong> |
| (get-previous-buffer buffer-list length is 3) | Expect (EQ (LEM-BASE:GET-PREVIOUS-BUFFER (LEM-BASE:MAKE-BUFFER NIL :TEMPORARY T)) NIL) to be true.   | <strong> OK </strong> |

## get-next-buffer
| Test                                      | Description                                                                                          | Result                |
|-------------------------------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (get-next-buffer argument type)           | Expect (FUNCALL FUNCTION NIL) to signal TYPE-ERROR.                                                  | <strong> OK </strong> |
| (get-next-buffer argument type)           | Expect (FUNCALL FUNCTION 1) to signal TYPE-ERROR.                                                    | <strong> OK </strong> |
| (get-next-buffer argument type)           | Expect (FUNCALL FUNCTION #(#\a #\b)) to signal TYPE-ERROR.                                           | <strong> OK </strong> |
| (get-next-buffer argument type)           | Expect (FUNCALL FUNCTION "name") to signal TYPE-ERROR.                                               | <strong> OK </strong> |
| (get-next-buffer buffer-list length is 0) | Expect (EQ (FUNCALL FUNCTION (LEM-BASE:MAKE-BUFFER NIL :TEMPORARY T)) NIL) to be true.               | <strong> OK </strong> |
| (get-next-buffer buffer-list length is 1) | Expect (EQ (FUNCALL FUNCTION LEM-TESTS/BUFFER-LIST-TEST::BUFFER-A) NIL) to be true.                  | <strong> OK </strong> |
| (get-next-buffer buffer-list length is 3) | Expect (EQ (LEM-BASE:GET-NEXT-BUFFER LEM-TESTS/BUFFER-LIST-TEST::BUFFER-C) LEM-TESTS/BUFFER-LIST-... | <strong> OK </strong> |
| (get-next-buffer buffer-list length is 3) | Expect (EQ (LEM-BASE:GET-NEXT-BUFFER LEM-TESTS/BUFFER-LIST-TEST::BUFFER-B) LEM-TESTS/BUFFER-LIST-... | <strong> OK </strong> |
| (get-next-buffer buffer-list length is 3) | Expect (EQ (LEM-BASE:GET-NEXT-BUFFER LEM-TESTS/BUFFER-LIST-TEST::BUFFER-A) NIL) to be true.          | <strong> OK </strong> |
| (get-next-buffer buffer-list length is 3) | Expect (EQ (LEM-BASE:GET-NEXT-BUFFER (LEM-BASE:MAKE-BUFFER NIL :TEMPORARY T)) NIL) to be true.       | <strong> OK </strong> |

## wide-index
| Test         | Description                                                                                          | Result                |
|--------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (wide-index) | Expect (EQL 1 (LEM-BASE:WIDE-INDEX "abc" 1)) to be true.                                             | <strong> OK </strong> |
| (wide-index) | Expect (EQL 2 (LEM-BASE:WIDE-INDEX "abc" 2)) to be true.                                             | <strong> OK </strong> |
| (wide-index) | Expect (EQL NIL (LEM-BASE:WIDE-INDEX "abc" 3)) to be true.                                           | <strong> OK </strong> |
| (wide-index) | Expect (EQL NIL (LEM-BASE:WIDE-INDEX "abc" 10)) to be true.                                          | <strong> OK </strong> |
| (wide-index) | Expect (EQL 0 (LEM-BASE:WIDE-INDEX "あいえうお" 0)) to be true.                                      | <strong> OK </strong> |
| (wide-index) | Expect (EQL 0 (LEM-BASE:WIDE-INDEX "あいえうお" 1)) to be true.                                      | <strong> OK </strong> |
| (wide-index) | Expect (EQL 1 (LEM-BASE:WIDE-INDEX "あいえうお" 2)) to be true.                                      | <strong> OK </strong> |
| (wide-index) | Expect (EQL 1 (LEM-BASE:WIDE-INDEX "あいえうお" 3)) to be true.                                      | <strong> OK </strong> |
| (wide-index) | Expect (EQL 2 (LEM-BASE:WIDE-INDEX "あいえうお" 4)) to be true.                                      | <strong> OK </strong> |
| (wide-index) | Expect (EQL 2 (LEM-BASE:WIDE-INDEX "あいえ" 5)) to be true.                                          | <strong> OK </strong> |
| (wide-index) | Expect (EQL NIL (LEM-BASE:WIDE-INDEX "あいえ" 6)) to be true.                                        | <strong> OK </strong> |
| (wide-index) | Expect (EQL 0 (LEM-BASE:WIDE-INDEX (FORMAT NIL "~Aabcdefghijk" #\Tab) 5)) to be true.                | <strong> OK </strong> |
| (wide-index) | Expect (EQL 2 (LEM-BASE:WIDE-INDEX (FORMAT NIL "~Aabcdefghijk" #\Tab) 5 :TAB-SIZE 4)) to be true.    | <strong> OK </strong> |
| (wide-index) | Expect (EQL 6 (LEM-BASE:WIDE-INDEX (FORMAT NIL "~Aabcdefghijk" #\Tab) 5 :START 1)) to be true.       | <strong> OK </strong> |
| (wide-index) | Expect (EQL 5 (LEM-BASE:WIDE-INDEX (FORMAT NIL "~Aa~Abcdefghijk" #\Tab #\Tab) 5 :START 1 :TAB-SIZ... | <strong> OK </strong> |

## get-file-mode
| Test            | Description                                                                                          | Result                |
|-----------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (get-file-mode) | Expect (EQUAL (QUOTE LEM-POSIX-SHELL-MODE:POSIX-SHELL-MODE) (LEM-CORE:GET-FILE-MODE ".bashrc")) t... | <strong> OK </strong> |
| (get-file-mode) | Expect (EQUAL (QUOTE LEM-POSIX-SHELL-MODE:POSIX-SHELL-MODE) (LEM-CORE:GET-FILE-MODE "foo.bashrc")... | <strong> OK </strong> |
| (get-file-mode) | Expect (EQUAL (QUOTE LEM-LISP-MODE/INTERNAL:LISP-MODE) (LEM-CORE:GET-FILE-MODE "foo.lisp")) to be... | <strong> OK </strong> |
| (get-file-mode) | Expect (NULL (LEM-CORE:GET-FILE-MODE "foo.lisp.bak")) to be true.                                    | <strong> OK </strong> |

## control-char
| Test           | Description                                                                   | Result                |
|----------------|-------------------------------------------------------------------------------|-----------------------|
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (LEM-BASE:CONTROL-CHAR CHAR) to be false.                              | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |
| (control-char) | Expect (EQUAL (LEM-BASE:CONTROL-CHAR CHAR) LEM-BASE:CONTROL-CHAR) to be true. | <strong> OK </strong> |

## indent-test-under-lem-base
| Test                         | Description                   | Result                   |
|------------------------------|-------------------------------|--------------------------|
| (indent-test-under-lem-base) | Raise an error while testing. | <strong> ERROR </strong> |

## form-offset
| Test                       | Description                   | Result                   |
|----------------------------|-------------------------------|--------------------------|
| (form-offset skip comment) | Raise an error while testing. | <strong> ERROR </strong> |

## any-modified-buffer-p
| Test                    | Description                   | Result                   |
|-------------------------|-------------------------------|--------------------------|
| (any-modified-buffer-p) | Raise an error while testing. | <strong> ERROR </strong> |

## buffer-list
| Test                        | Description                                                                                          | Result                |
|-----------------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (buffer-list)               | Expect (NULL (LEM-BASE:BUFFER-LIST)) to be true.                                                     | <strong> OK </strong> |
| (buffer-list)               | Expect (LEM-BASE:BUFFERP LEM-TESTS/BUFFER-LIST-TEST::BUFFER) to be true.                             | <strong> OK </strong> |
| (buffer-list)               | Expect (NULL (LEM-BASE:BUFFER-LIST)) to be true.                                                     | <strong> OK </strong> |
| (buffer-list make buffer-a) | Expect (EQUAL (LIST LEM-TESTS/BUFFER-LIST-TEST::BUFFER-A) (LEM-BASE:BUFFER-LIST)) to be true.        | <strong> OK </strong> |
| (buffer-list make buffer-b) | Expect (EQUAL (LIST LEM-TESTS/BUFFER-LIST-TEST::BUFFER-B LEM-TESTS/BUFFER-LIST-TEST::BUFFER-A) (L... | <strong> OK </strong> |
| (buffer-list make buffer-c) | Expect (EQUAL (LIST LEM-TESTS/BUFFER-LIST-TEST::BUFFER-C LEM-TESTS/BUFFER-LIST-TEST::BUFFER-B LEM... | <strong> OK </strong> |

## cond-1
| Test     | Description | Result                |
|----------|-------------|-----------------------|
| (cond-1) | COND-1      | <strong> OK </strong> |

## unbury-buffer
| Test                                                     | Description                                                                                          | Result                |
|----------------------------------------------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (unbury-buffer argument type)                            | Expect (FUNCALL FUNCTION NIL) to signal TYPE-ERROR.                                                  | <strong> OK </strong> |
| (unbury-buffer argument type)                            | Expect (FUNCALL FUNCTION 1) to signal TYPE-ERROR.                                                    | <strong> OK </strong> |
| (unbury-buffer argument type)                            | Expect (FUNCALL FUNCTION #(#\a #\b)) to signal TYPE-ERROR.                                           | <strong> OK </strong> |
| (unbury-buffer argument type)                            | Expect (FUNCALL FUNCTION "name") to signal TYPE-ERROR.                                               | <strong> OK </strong> |
| (unbury-buffer buffer-list length is 1)                  | Expect (EQ LEM-TESTS/BUFFER-LIST-TEST::BUFFER-A (LEM-BASE:UNBURY-BUFFER LEM-TESTS/BUFFER-LIST-TES... | <strong> OK </strong> |
| (unbury-buffer buffer-list length is 1)                  | Expect (EQUAL (LEM-BASE:BUFFER-LIST) (LIST LEM-TESTS/BUFFER-LIST-TEST::BUFFER-A)) to be true.        | <strong> OK </strong> |
| (unbury-buffer buffer-list length is 3)                  | Expect (EQ LEM-TESTS/BUFFER-LIST-TEST::BUFFER-A (LEM-BASE:UNBURY-BUFFER LEM-TESTS/BUFFER-LIST-TES... | <strong> OK </strong> |
| (unbury-buffer buffer-list length is 3)                  | Expect (EQUAL (LEM-BASE:BUFFER-LIST) (LIST LEM-TESTS/BUFFER-LIST-TEST::BUFFER-A LEM-TESTS/BUFFER-... | <strong> OK </strong> |
| (unbury-buffer buffer-list length is 3)                  | Expect (EQ LEM-TESTS/BUFFER-LIST-TEST::BUFFER-B (LEM-BASE:UNBURY-BUFFER LEM-TESTS/BUFFER-LIST-TES... | <strong> OK </strong> |
| (unbury-buffer buffer-list length is 3)                  | Expect (EQUAL (LEM-BASE:BUFFER-LIST) (LIST LEM-TESTS/BUFFER-LIST-TEST::BUFFER-B LEM-TESTS/BUFFER-... | <strong> OK </strong> |
| (unbury-buffer buffer-list length is 3)                  | Expect (EQ LEM-TESTS/BUFFER-LIST-TEST::BUFFER-C (LEM-BASE:UNBURY-BUFFER LEM-TESTS/BUFFER-LIST-TES... | <strong> OK </strong> |
| (unbury-buffer buffer-list length is 3)                  | Expect (EQUAL (LEM-BASE:BUFFER-LIST) (LIST LEM-TESTS/BUFFER-LIST-TEST::BUFFER-C LEM-TESTS/BUFFER-... | <strong> OK </strong> |
| (unbury-buffer temporary buffer buffer-list length is 0) | Expect (EQ LEM-TESTS/BUFFER-LIST-TEST::BUFFER (LEM-BASE:UNBURY-BUFFER LEM-TESTS/BUFFER-LIST-TEST:... | <strong> OK </strong> |
| (unbury-buffer temporary buffer buffer-list length is 3) | Expect (EQ LEM-TESTS/BUFFER-LIST-TEST::BUFFER (LEM-BASE:UNBURY-BUFFER LEM-TESTS/BUFFER-LIST-TEST:... | <strong> OK </strong> |
| (unbury-buffer temporary buffer buffer-list length is 3) | Expect (EQUAL (LEM-BASE:BUFFER-LIST) (LIST LEM-TESTS/BUFFER-LIST-TEST::BUFFER-C LEM-TESTS/BUFFER-... | <strong> OK </strong> |

## simple-timer-test
| Test                | Description                                                                              | Result                   |
|---------------------|------------------------------------------------------------------------------------------|--------------------------|
| (simple-timer-test) | Expect (LEM-MAILBOX:RECEIVE-MESSAGE LEM-TESTS/TIMER::MAILBOX :TIMEOUT 0.01) to be true.  | <strong> OK </strong>    |
| (simple-timer-test) | Expect LEM-TESTS/TIMER::TIMEOUT to be true.                                              | <strong> OK </strong>    |
| (simple-timer-test) | Expect (LEM/COMMON/TIMER:TIMER-EXPIRED-P LEM/COMMON/TIMER:TIMER) to be true.             | <strong> OK </strong>    |
| (simple-timer-test) | Expect (LEM-MAILBOX:RECEIVE-MESSAGE LEM-TESTS/TIMER::MAILBOX :TIMEOUT 0.01) to be false. | <strong> ERROR </strong> |

## test-to-execute-a-series-of-commands
| Test                                                                             | Description                                                                                          | Result                |
|----------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (test-to-execute-a-series-of-commands execute self-insert command)               | Expect (STRING= (LEM-TESTS/UTILITIES:LINES " abcdefg" " hijklmn" " opqrstu") (LEM-BASE:BUFFER-TEX... | <strong> OK </strong> |
| (test-to-execute-a-series-of-commands execute delete-previous-character command) | Expect (STRING= (LEM-TESTS/UTILITIES:LINES "abcdefg" "hijklmn" "opqrstu") (LEM-BASE:BUFFER-TEXT L... | <strong> OK </strong> |
| (test-to-execute-a-series-of-commands multiple cursor killring)                  | Expect (EQUAL (QUOTE ("abcd" "opqr" "hijk")) (MAPCAR (LAMBDA (LEM-TESTS/CURSORS::KILLRING) (LEM/C... | <strong> OK </strong> |

## scan-lists
| Test                              | Description                                                                                          | Result                |
|-----------------------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (scan-lists limit-point forward)  | Expect (AND (NULL (LEM-BASE:SCAN-LISTS LEM-TESTS/SYNTAX-TEST::POINT 1 0 T LEM-TESTS/SYNTAX-TEST::... | <strong> OK </strong> |
| (scan-lists limit-point forward)  | Expect (AND (EQ LEM-TESTS/SYNTAX-TEST::POINT (LEM-BASE:SCAN-LISTS LEM-TESTS/SYNTAX-TEST::POINT 1 ... | <strong> OK </strong> |
| (scan-lists limit-point backward) | Expect (AND (NULL (LEM-BASE:SCAN-LISTS LEM-TESTS/SYNTAX-TEST::POINT -1 0 T LEM-TESTS/SYNTAX-TEST:... | <strong> OK </strong> |
| (scan-lists limit-point backward) | Expect (AND (EQ LEM-TESTS/SYNTAX-TEST::POINT (LEM-BASE:SCAN-LISTS LEM-TESTS/SYNTAX-TEST::POINT -1... | <strong> OK </strong> |

## appending-if-empty
| Test                 | Description                                                                                          | Result                |
|----------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (appending-if-empty) | Expect (EQUAL "abc" (LEM/COMMON/KILLRING:PEEK-KILLRING-ITEM LEM-TESTS/COMMON/KILLRING::KILLRING 0... | <strong> OK </strong> |

## rotate
| Test     | Description                                                                                          | Result                |
|----------|------------------------------------------------------------------------------------------------------|-----------------------|
| (rotate) | Expect (EQUAL "a" (LEM/COMMON/KILLRING:PEEK-KILLRING-ITEM LEM-TESTS/COMMON/KILLRING::KILLRING 0))... | <strong> OK </strong> |
| (rotate) | Expect (EQUAL "b" (LEM/COMMON/KILLRING:PEEK-KILLRING-ITEM LEM-TESTS/COMMON/KILLRING::KILLRING 1))... | <strong> OK </strong> |
| (rotate) | Expect (EQUAL "b" (LEM/COMMON/KILLRING:PEEK-KILLRING-ITEM LEM-TESTS/COMMON/KILLRING::KILLRING 0))... | <strong> OK </strong> |
| (rotate) | Expect (EQUAL "a" (LEM/COMMON/KILLRING:PEEK-KILLRING-ITEM LEM-TESTS/COMMON/KILLRING::KILLRING 1))... | <strong> OK </strong> |

## ring-push
| Test        | Description                                                                                          | Result                   |
|-------------|------------------------------------------------------------------------------------------------------|--------------------------|
| (ring-push) | Expect (STRING= (WITH-OUTPUT-TO-STRING (LEM-TESTS/COMMON/RING::OUT) (LOOP :FOR LEM-TESTS/COMMON/R... | <strong> ERROR </strong> |

## get-buffer
| Test                                          | Description                                                                                          | Result                |
|-----------------------------------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (get-buffer argument type)                    | Expect (FUNCALL FUNCTION NIL) to signal TYPE-ERROR.                                                  | <strong> OK </strong> |
| (get-buffer argument type)                    | Expect (FUNCALL FUNCTION 1) to signal TYPE-ERROR.                                                    | <strong> OK </strong> |
| (get-buffer argument type)                    | Expect (FUNCALL FUNCTION #(#\a #\b)) to signal TYPE-ERROR.                                           | <strong> OK </strong> |
| (get-buffer)                                  | Expect (NULL (LEM-BASE:GET-BUFFER "a")) to be true.                                                  | <strong> OK </strong> |
| (get-buffer buffer-a)                         | Expect (EQ LEM-TESTS/BUFFER-LIST-TEST::BUFFER-A (LEM-BASE:GET-BUFFER "a")) to be true.               | <strong> OK </strong> |
| (get-buffer buffer-b)                         | Expect (EQ LEM-TESTS/BUFFER-LIST-TEST::BUFFER-A (LEM-BASE:GET-BUFFER "a")) to be true.               | <strong> OK </strong> |
| (get-buffer buffer-b)                         | Expect (EQ LEM-TESTS/BUFFER-LIST-TEST::BUFFER-B (LEM-BASE:GET-BUFFER "b")) to be true.               | <strong> OK </strong> |
| (get-buffer buffer-c)                         | Expect (EQ LEM-TESTS/BUFFER-LIST-TEST::BUFFER-A (LEM-BASE:GET-BUFFER "a")) to be true.               | <strong> OK </strong> |
| (get-buffer buffer-c)                         | Expect (EQ LEM-TESTS/BUFFER-LIST-TEST::BUFFER-B (LEM-BASE:GET-BUFFER "b")) to be true.               | <strong> OK </strong> |
| (get-buffer buffer-c)                         | Expect (EQ LEM-TESTS/BUFFER-LIST-TEST::BUFFER-C (LEM-BASE:GET-BUFFER "c")) to be true.               | <strong> OK </strong> |
| (get-buffer receive the buffer-object itself) | Expect (EQ LEM-TESTS/BUFFER-LIST-TEST::BUFFER-A (LEM-BASE:GET-BUFFER LEM-TESTS/BUFFER-LIST-TEST::... | <strong> OK </strong> |
| (get-buffer receive the buffer-object itself) | Expect (EQ LEM-TESTS/BUFFER-LIST-TEST::BUFFER-B (LEM-BASE:GET-BUFFER LEM-TESTS/BUFFER-LIST-TEST::... | <strong> OK </strong> |
| (get-buffer receive the buffer-object itself) | Expect (EQ LEM-TESTS/BUFFER-LIST-TEST::BUFFER-C (LEM-BASE:GET-BUFFER LEM-TESTS/BUFFER-LIST-TEST::... | <strong> OK </strong> |

## defclass-1
| Test         | Description | Result                |
|--------------|-------------|-----------------------|
| (defclass-1) | DEFCLASS-1  | <strong> OK </strong> |

## internal-option
| Test              | Description                                                                                          | Result                |
|-------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (internal-option) | Expect (EQUAL (QUOTE ("foo" (:TEST))) (MULTIPLE-VALUE-LIST (LEM/COMMON/KILLRING:PEEK-KILLRING-ITE... | <strong> OK </strong> |
| (internal-option) | Expect (EQUAL (QUOTE ("foobar" (:TEST :TEST2))) (MULTIPLE-VALUE-LIST (LEM/COMMON/KILLRING:PEEK-KI... | <strong> OK </strong> |
| (internal-option) | Expect (EQUAL (QUOTE ("bazfoobar" (:TEST3 :TEST :TEST2))) (MULTIPLE-VALUE-LIST (LEM/COMMON/KILLRI... | <strong> OK </strong> |

## next-line/previous-line
| Test                      | Description                                                                                          | Result                |
|---------------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (next-line/previous-line) | Expect (LEM-TESTS/CURSORS::POSITIONS-SET-EQUAL (QUOTE ((2 12) (3 10) (4 10))) (LEM-TESTS/CURSORS:... | <strong> OK </strong> |
| (next-line/previous-line) | Expect (LEM-TESTS/CURSORS::POSITIONS-SET-EQUAL (QUOTE ((1 14) (2 12) (3 10))) (LEM-TESTS/CURSORS:... | <strong> OK </strong> |
| (next-line/previous-line) | Expect (LEM-TESTS/CURSORS::POSITIONS-SET-EQUAL (QUOTE ((2 12) (3 10) (4 10))) (LEM-TESTS/CURSORS:... | <strong> OK </strong> |

## get-file-buffer
| Test                            | Description                                                    | Result                   |
|---------------------------------|----------------------------------------------------------------|--------------------------|
| (get-file-buffer argument type) | Expect (LEM-BASE:GET-FILE-BUFFER NIL) to signal TYPE-ERROR.    | <strong> OK </strong>    |
| (get-file-buffer argument type) | Expect (LEM-BASE:GET-FILE-BUFFER T) to signal TYPE-ERROR.      | <strong> OK </strong>    |
| (get-file-buffer argument type) | Expect (LEM-BASE:GET-FILE-BUFFER 1) to signal TYPE-ERROR.      | <strong> OK </strong>    |
| (get-file-buffer argument type) | Expect (LEM-BASE:GET-FILE-BUFFER #(#\a)) to signal TYPE-ERROR. | <strong> OK </strong>    |
| (get-file-buffer)               | Raise an error while testing.                                  | <strong> ERROR </strong> |

## replace-string
| Test             | Description                                                                                          | Result                |
|------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (replace-string) | Expect (EQUAL (CL-PPCRE:REGEX-REPLACE-ALL "foo" LEM-TESTS/ISEARCH::*TEXT* "foobar") (LEM-BASE:BUF... | <strong> OK </strong> |

## delete-buffer
| Test                                                             | Description                                                                                          | Result                |
|------------------------------------------------------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (delete-buffer argument type)                                    | Expect (FUNCALL FUNCTION NIL) to signal TYPE-ERROR.                                                  | <strong> OK </strong> |
| (delete-buffer argument type)                                    | Expect (FUNCALL FUNCTION 1) to signal TYPE-ERROR.                                                    | <strong> OK </strong> |
| (delete-buffer argument type)                                    | Expect (FUNCALL FUNCTION #(#\a #\b)) to signal TYPE-ERROR.                                           | <strong> OK </strong> |
| (delete-buffer argument type)                                    | Expect (FUNCALL FUNCTION "name") to signal TYPE-ERROR.                                               | <strong> OK </strong> |
| (delete-buffer)                                                  | Expect (LEM-BASE:DELETED-BUFFER-P LEM-TESTS/BUFFER-LIST-TEST::DELETING-BUFFER) to be false.          | <strong> OK </strong> |
| (delete-buffer)                                                  | Expect (LEM-BASE:DELETED-BUFFER-P LEM-TESTS/BUFFER-LIST-TEST::DELETING-BUFFER) to be true.           | <strong> OK </strong> |
| (delete-buffer)                                                  | Expect (EQUAL LEM-TESTS/BUFFER-LIST-TEST::RESULT LEM-TESTS/BUFFER-LIST-TEST::EXPECTED-BUFFER-LIST... | <strong> OK </strong> |
| (delete-buffer)                                                  | Expect (LEM-BASE:DELETED-BUFFER-P LEM-TESTS/BUFFER-LIST-TEST::DELETING-BUFFER) to be false.          | <strong> OK </strong> |
| (delete-buffer)                                                  | Expect (LEM-BASE:DELETED-BUFFER-P LEM-TESTS/BUFFER-LIST-TEST::DELETING-BUFFER) to be true.           | <strong> OK </strong> |
| (delete-buffer)                                                  | Expect (EQUAL LEM-TESTS/BUFFER-LIST-TEST::RESULT LEM-TESTS/BUFFER-LIST-TEST::EXPECTED-BUFFER-LIST... | <strong> OK </strong> |
| (delete-buffer)                                                  | Expect (LEM-BASE:DELETED-BUFFER-P LEM-TESTS/BUFFER-LIST-TEST::DELETING-BUFFER) to be false.          | <strong> OK </strong> |
| (delete-buffer)                                                  | Expect (LEM-BASE:DELETED-BUFFER-P LEM-TESTS/BUFFER-LIST-TEST::DELETING-BUFFER) to be true.           | <strong> OK </strong> |
| (delete-buffer)                                                  | Expect (EQUAL LEM-TESTS/BUFFER-LIST-TEST::RESULT LEM-TESTS/BUFFER-LIST-TEST::EXPECTED-BUFFER-LIST... | <strong> OK </strong> |
| (delete-buffer temporary buffer)                                 | Expect (LEM-BASE:DELETED-BUFFER-P LEM-TESTS/BUFFER-LIST-TEST::BUFFER) to be false.                   | <strong> OK </strong> |
| (delete-buffer temporary buffer)                                 | Expect (EQUAL LEM-TESTS/BUFFER-LIST-TEST::BUFFER-LIST (LEM-BASE:DELETE-BUFFER LEM-TESTS/BUFFER-LI... | <strong> OK </strong> |
| (delete-buffer temporary buffer)                                 | Expect (LEM-BASE:DELETED-BUFFER-P LEM-TESTS/BUFFER-LIST-TEST::BUFFER) to be true.                    | <strong> OK </strong> |
| (delete-buffer kill-buffer-hook buffer local)                    | Expect (EQ LEM-TESTS/BUFFER-LIST-TEST::HOOKED-BUFFER LEM-TESTS/BUFFER-LIST-TEST::DELETING-BUFFER)... | <strong> OK </strong> |
| (delete-buffer kill-buffer-hook buffer local)                    | Expect (LEM-BASE:DELETED-BUFFER-P LEM-TESTS/BUFFER-LIST-TEST::HOOKED-BUFFER) to be false.            | <strong> OK </strong> |
| (delete-buffer kill-buffer-hook buffer local)                    | Expect LEM-TESTS/BUFFER-LIST-TEST::CALLED-HOOK-P to be true.                                         | <strong> OK </strong> |
| (delete-buffer kill-buffer-hook global)                          | Expect (EQ LEM-TESTS/BUFFER-LIST-TEST::HOOKED-BUFFER LEM-TESTS/BUFFER-LIST-TEST::DELETING-BUFFER)... | <strong> OK </strong> |
| (delete-buffer kill-buffer-hook global)                          | Expect (LEM-BASE:DELETED-BUFFER-P LEM-TESTS/BUFFER-LIST-TEST::HOOKED-BUFFER) to be false.            | <strong> OK </strong> |
| (delete-buffer kill-buffer-hook global)                          | Expect LEM-TESTS/BUFFER-LIST-TEST::CALLED-HOOK-P to be true.                                         | <strong> OK </strong> |
| (delete-buffer kill-buffer-hook local/global called local hook)  | Expect (EQ LEM-TESTS/BUFFER-LIST-TEST::HOOKED-BUFFER LEM-TESTS/BUFFER-LIST-TEST::DELETING-BUFFER)... | <strong> OK </strong> |
| (delete-buffer kill-buffer-hook local/global called local hook)  | Expect (LEM-BASE:DELETED-BUFFER-P LEM-TESTS/BUFFER-LIST-TEST::HOOKED-BUFFER) to be false.            | <strong> OK </strong> |
| (delete-buffer kill-buffer-hook local/global called global hook) | Expect (EQ LEM-TESTS/BUFFER-LIST-TEST::HOOKED-BUFFER LEM-TESTS/BUFFER-LIST-TEST::DELETING-BUFFER)... | <strong> OK </strong> |
| (delete-buffer kill-buffer-hook local/global called global hook) | Expect (LEM-BASE:DELETED-BUFFER-P LEM-TESTS/BUFFER-LIST-TEST::HOOKED-BUFFER) to be false.            | <strong> OK </strong> |
| (delete-buffer kill-buffer-hook local/global)                    | Expect (EQUAL (QUOTE (:LOCAL :GLOBAL)) (NREVERSE LEM-TESTS/BUFFER-LIST-TEST::CALLED-ORDER)) to be... | <strong> OK </strong> |

## char-width
| Test                  | Description                                                                                          | Result                |
|-----------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (char-width alphabet) | Expect (EQL 1 (LEM-BASE:CHAR-WIDTH #\a 0)) to be true.                                               | <strong> OK </strong> |
| (char-width alphabet) | Expect (EQL 2 (LEM-BASE:CHAR-WIDTH #\a 1)) to be true.                                               | <strong> OK </strong> |
| (char-width tab)      | Expect (LOOP :FOR LEM-TESTS/STRING-WIDTH-UTILS::I :FROM 0 :BELOW 8 :ALWAYS (EQL 8 (LEM-BASE:CHAR-... | <strong> OK </strong> |
| (char-width tab)      | Expect (LOOP :FOR LEM-TESTS/STRING-WIDTH-UTILS::I :FROM 8 :BELOW 16 :ALWAYS (EQL 16 (LEM-BASE:CHA... | <strong> OK </strong> |
| (char-width tab)      | Expect (EQL 10 (LEM-BASE:CHAR-WIDTH #\Tab 9 :TAB-SIZE 10)) to be true.                               | <strong> OK </strong> |
| (char-width control)  | Expect (EQL 2 (LEM-BASE:CHAR-WIDTH #\Null 0)) to be true.                                            | <strong> OK </strong> |
| (char-width control)  | Expect (EQL 3 (LEM-BASE:CHAR-WIDTH #\Null 1)) to be true.                                            | <strong> OK </strong> |
| (char-width control)  | Expect (EQL 4 (LEM-BASE:CHAR-WIDTH #\ 0)) to be true.                                            | <strong> OK </strong> |
| (char-width control)  | Expect (EQL 5 (LEM-BASE:CHAR-WIDTH #\ 1)) to be true.                                            | <strong> OK </strong> |
| (char-width control)  | Expect (EQL 6 (LEM-BASE:CHAR-WIDTH #\ 2)) to be true.                                            | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2 (LEM-BASE:CHAR-WIDTH #\あ 0)) to be true.                                              | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 3 (LEM-BASE:CHAR-WIDTH #\あ 1)) to be true.                                              | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2 (LEM-BASE:CHAR-WIDTH (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE) 0)) to be true.    | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2 (LEM-BASE:CHAR-WIDTH (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE) 0)) to be true.    | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2 (LEM-BASE:CHAR-WIDTH (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE) 0)) to be true.    | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2 (LEM-BASE:CHAR-WIDTH (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE) 0)) to be true.    | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2 (LEM-BASE:CHAR-WIDTH (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE) 0)) to be true.    | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2 (LEM-BASE:CHAR-WIDTH (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE) 0)) to be true.    | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2 (LEM-BASE:CHAR-WIDTH (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE) 0)) to be true.    | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2 (LEM-BASE:CHAR-WIDTH (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE) 0)) to be true.    | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2 (LEM-BASE:CHAR-WIDTH (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE) 0)) to be true.    | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2 (LEM-BASE:CHAR-WIDTH (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE) 0)) to be true.    | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2 (LEM-BASE:CHAR-WIDTH (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE) 0)) to be true.    | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2 (LEM-BASE:CHAR-WIDTH (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE) 0)) to be true.    | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2 (LEM-BASE:CHAR-WIDTH (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE) 0)) to be true.    | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2 (LEM-BASE:CHAR-WIDTH (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE) 0)) to be true.    | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2 (LEM-BASE:CHAR-WIDTH (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE) 0)) to be true.    | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2 (LEM-BASE:CHAR-WIDTH (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE) 0)) to be true.    | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2 (LEM-BASE:CHAR-WIDTH (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE) 0)) to be true.    | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2 (LEM-BASE:CHAR-WIDTH (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE) 0)) to be true.    | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2 (LEM-BASE:CHAR-WIDTH (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE) 0)) to be true.    | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2 (LEM-BASE:CHAR-WIDTH (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE) 0)) to be true.    | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2 (LEM-BASE:CHAR-WIDTH (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE) 0)) to be true.    | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2 (LEM-BASE:CHAR-WIDTH (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE) 0)) to be true.    | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2 (LEM-BASE:CHAR-WIDTH (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE) 0)) to be true.    | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2 (LEM-BASE:CHAR-WIDTH (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE) 0)) to be true.    | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2 (LEM-BASE:CHAR-WIDTH (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE) 0)) to be true.    | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2 (LEM-BASE:CHAR-WIDTH (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE) 0)) to be true.    | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2 (LEM-BASE:CHAR-WIDTH (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE) 0)) to be true.    | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2 (LEM-BASE:CHAR-WIDTH (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE) 0)) to be true.    | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2 (LEM-BASE:CHAR-WIDTH (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE) 0)) to be true.    | <strong> OK </strong> |
| (char-width wide)     | Expect (EQL 2 (LEM-BASE:CHAR-WIDTH (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE) 0)) to be true.    | <strong> OK </strong> |
| (char-width newline)  | Expect (EQL 0 (LEM-BASE:CHAR-WIDTH #\Newline 0)) to be true.                                         | <strong> OK </strong> |

## string-width
| Test           | Description                                                                                          | Result                |
|----------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (string-width) | Expect (EQL 1 (LEM-BASE:STRING-WIDTH "a")) to be true.                                               | <strong> OK </strong> |
| (string-width) | Expect (EQL 2 (LEM-BASE:STRING-WIDTH "ab")) to be true.                                              | <strong> OK </strong> |
| (string-width) | Expect (EQL 3 (LEM-BASE:STRING-WIDTH "abc")) to be true.                                             | <strong> OK </strong> |
| (string-width) | Expect (EQL 2 (LEM-BASE:STRING-WIDTH "abc" :START 1)) to be true.                                    | <strong> OK </strong> |
| (string-width) | Expect (EQL 2 (LEM-BASE:STRING-WIDTH "abc" :END 2)) to be true.                                      | <strong> OK </strong> |
| (string-width) | Expect (EQL 2 (LEM-BASE:STRING-WIDTH "abcdef" :START 1 :END 3)) to be true.                          | <strong> OK </strong> |
| (string-width) | Expect (EQL 2 (LEM-BASE:STRING-WIDTH "あ")) to be true.                                              | <strong> OK </strong> |
| (string-width) | Expect (EQL 3 (LEM-BASE:STRING-WIDTH "aあ")) to be true.                                             | <strong> OK </strong> |
| (string-width) | Expect (EQL 0 (LEM-BASE:STRING-WIDTH "abcdeあいうえお" :END 0)) to be true.                          | <strong> OK </strong> |
| (string-width) | Expect (EQL 3 (LEM-BASE:STRING-WIDTH "abcdeあいうえお" :END 3)) to be true.                          | <strong> OK </strong> |
| (string-width) | Expect (EQL 1 (LEM-BASE:STRING-WIDTH "abcdeあいうえお" :START 4 :END 5)) to be true.                 | <strong> OK </strong> |
| (string-width) | Expect (EQL 3 (LEM-BASE:STRING-WIDTH "abcdeあいうえお" :START 4 :END 6)) to be true.                 | <strong> OK </strong> |
| (string-width) | Expect (EQL 5 (LEM-BASE:STRING-WIDTH "abcdeあいうえお" :START 4 :END 7)) to be true.                 | <strong> OK </strong> |
| (string-width) | Expect (EQL 10 (LEM-BASE:STRING-WIDTH (FORMAT NIL "~Aab" #\Tab))) to be true.                        | <strong> OK </strong> |
| (string-width) | Expect (EQL 10 (LEM-BASE:STRING-WIDTH (FORMAT NIL "ab~Aab" #\Tab))) to be true.                      | <strong> OK </strong> |
| (string-width) | Expect (EQL 5 (LEM-BASE:STRING-WIDTH (FORMAT NIL "~Aab" #\Tab) :TAB-SIZE 3)) to be true.             | <strong> OK </strong> |
| (string-width) | Expect (EQL 2 (LEM-BASE:STRING-WIDTH (FORMAT NIL "~Aab" #\Tab) :START 1)) to be true.                | <strong> OK </strong> |
| (string-width) | Expect (EQL 5 (LEM-BASE:STRING-WIDTH (FORMAT NIL "ab~Aab" #\Tab) :TAB-SIZE 3)) to be true.           | <strong> OK </strong> |
| (string-width) | Expect (EQL 5 (LEM-BASE:STRING-WIDTH (FORMAT NIL "ab~Aab" #\Tab) :TAB-SIZE 1)) to be true.           | <strong> OK </strong> |
| (string-width) | Expect (EQL 3 (LEM-BASE:STRING-WIDTH (FORMAT NIL "あ~A" #\Tab) :TAB-SIZE 1)) to be true.             | <strong> OK </strong> |
| (string-width) | Expect (EQL 3 (LEM-BASE:STRING-WIDTH (FORMAT NIL "~Aaあ" #\Tab) :START 1)) to be true.               | <strong> OK </strong> |
| (string-width) | Expect (EQL 6 (LEM-BASE:STRING-WIDTH (FORMAT NIL "~Aaあ" #\Tab) :TAB-SIZE 5 :START 0 :END 2)) to b.. | <strong> OK </strong> |

## rotate-to-empty-killring
| Test | Description | Result.               |
|------|-------------|-----------------------|
| NIL  | no error    | <strong> OK </strong> |

## prompt-for-character
| Test                   | Description                                                                                          | Result                |
|------------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (prompt-for-character) | Expect (EQUAL #\a (LEM-CORE:PROMPT-FOR-CHARACTER "test: " :GRAVITY (MAKE-INSTANCE (QUOTE LEM/POPU... | <strong> OK </strong> |

## analyze-defstruct
| Test                                         | Description                   | Result                   |
|----------------------------------------------|-------------------------------|--------------------------|
| (analyze-defstruct simple)                   | Raise an error while testing. | <strong> ERROR </strong> |
| (analyze-defstruct complex slot-description) | Raise an error while testing. | <strong> ERROR </strong> |
| (analyze-defstruct name-and-options)         | Raise an error while testing. | <strong> ERROR </strong> |

## infer-package-name-1
| Test                   | Description                                                                                          | Result                |
|------------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (infer-package-name-1) | Expect (EQUAL "project-root/foo/bar" (LEM-LISP-MODE/PACKAGE-INFERRED-SYSTEM::INFER-PACKAGE-NAME-1... | <strong> OK </strong> |
| (infer-package-name-1) | Expect (EQUAL "project-root-tests/a" (LEM-LISP-MODE/PACKAGE-INFERRED-SYSTEM::INFER-PACKAGE-NAME-1... | <strong> OK </strong> |
| (infer-package-name-1) | Expect (EQUAL "project-root/test/a/b" (LEM-LISP-MODE/PACKAGE-INFERRED-SYSTEM::INFER-PACKAGE-NAME-... | <strong> OK </strong> |
| (infer-package-name-1) | Expect (EQUAL "project-root/test/a/b" (LEM-LISP-MODE/PACKAGE-INFERRED-SYSTEM::INFER-PACKAGE-NAME-... | <strong> OK </strong> |
| (infer-package-name-1) | Expect (EQUAL "project-root/main" (LEM-LISP-MODE/PACKAGE-INFERRED-SYSTEM::INFER-PACKAGE-NAME-1 (L... | <strong> OK </strong> |
| (infer-package-name-1) | Expect (EQUAL "lem-project-root/foo/bar" (LEM-LISP-MODE/PACKAGE-INFERRED-SYSTEM::INFER-PACKAGE-NA... | <strong> OK </strong> |

## ring-ref
| Test       | Description                                                                                          | Result                |
|------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (ring-ref) | Expect (EQL 5 (LEM/COMMON/RING:RING-REF LEM/COMMON/RING:RING 0)) to be true.                         | <strong> OK </strong> |
| (ring-ref) | Expect (EQL 4 (LEM/COMMON/RING:RING-REF LEM/COMMON/RING:RING 1)) to be true.                         | <strong> OK </strong> |
| (ring-ref) | Expect (EQL 3 (LEM/COMMON/RING:RING-REF LEM/COMMON/RING:RING 2)) to be true.                         | <strong> OK </strong> |
| (ring-ref) | Expect (EQL 2 (LEM/COMMON/RING:RING-REF LEM/COMMON/RING:RING 3)) to be true.                         | <strong> OK </strong> |
| (ring-ref) | Expect (EQL 1 (LEM/COMMON/RING:RING-REF LEM/COMMON/RING:RING 4)) to be true.                         | <strong> OK </strong> |
| (ring-ref) | Expect (LEM/COMMON/RING:RING-REF LEM/COMMON/RING:RING -1) to signal INVALID-INDEX-ERROR.             | <strong> OK </strong> |
| (ring-ref) | Expect (LEM/COMMON/RING:RING-REF LEM/COMMON/RING:RING LEM-TESTS/COMMON/RING::I) to signal INVALID... | <strong> OK </strong> |
| (ring-ref) | Expect (LEM/COMMON/RING:RING-REF LEM/COMMON/RING:RING LEM-TESTS/COMMON/RING::I) to signal INVALID... | <strong> OK </strong> |
| (ring-ref) | Expect (LEM/COMMON/RING:RING-REF LEM/COMMON/RING:RING LEM-TESTS/COMMON/RING::I) to signal INVALID... | <strong> OK </strong> |
| (ring-ref) | Expect (LEM/COMMON/RING:RING-REF LEM/COMMON/RING:RING LEM-TESTS/COMMON/RING::I) to signal INVALID... | <strong> OK </strong> |
| (ring-ref) | Expect (LEM/COMMON/RING:RING-REF LEM/COMMON/RING:RING LEM-TESTS/COMMON/RING::I) to signal INVALID... | <strong> OK </strong> |
| (ring-ref) | Expect (LEM/COMMON/RING:RING-REF LEM/COMMON/RING:RING LEM-TESTS/COMMON/RING::I) to signal INVALID... | <strong> OK </strong> |
| (ring-ref) | Expect (LEM/COMMON/RING:RING-REF LEM/COMMON/RING:RING LEM-TESTS/COMMON/RING::I) to signal INVALID... | <strong> OK </strong> |
| (ring-ref) | Expect (LEM/COMMON/RING:RING-REF LEM/COMMON/RING:RING LEM-TESTS/COMMON/RING::I) to signal INVALID... | <strong> OK </strong> |
| (ring-ref) | Expect (LEM/COMMON/RING:RING-REF LEM/COMMON/RING:RING LEM-TESTS/COMMON/RING::I) to signal INVALID... | <strong> OK </strong> |
| (ring-ref) | Expect (LEM/COMMON/RING:RING-REF LEM/COMMON/RING:RING LEM-TESTS/COMMON/RING::I) to signal INVALID... | <strong> OK </strong> |
| (ring-ref) | Expect (LEM/COMMON/RING:RING-REF LEM/COMMON/RING:RING LEM-TESTS/COMMON/RING::I) to signal INVALID... | <strong> OK </strong> |
| (ring-ref) | Expect (LEM/COMMON/RING:RING-REF LEM/COMMON/RING:RING LEM-TESTS/COMMON/RING::I) to signal INVALID... | <strong> OK </strong> |
| (ring-ref) | Expect (LEM/COMMON/RING:RING-REF LEM/COMMON/RING:RING LEM-TESTS/COMMON/RING::I) to signal INVALID... | <strong> OK </strong> |
| (ring-ref) | Expect (LEM/COMMON/RING:RING-REF LEM/COMMON/RING:RING LEM-TESTS/COMMON/RING::I) to signal INVALID... | <strong> OK </strong> |
| (ring-ref) | Expect (LEM/COMMON/RING:RING-REF LEM/COMMON/RING:RING LEM-TESTS/COMMON/RING::I) to signal INVALID... | <strong> OK </strong> |
| (ring-ref) | Expect (LEM/COMMON/RING:RING-REF LEM/COMMON/RING:RING LEM-TESTS/COMMON/RING::I) to signal INVALID... | <strong> OK </strong> |
| (ring-ref) | Expect (EQUAL 100 (SETF (LEM/COMMON/RING:RING-REF LEM/COMMON/RING:RING 0) 100)) to be true.          | <strong> OK </strong> |
| (ring-ref) | Expect (EQUAL 100 (LEM/COMMON/RING:RING-REF LEM/COMMON/RING:RING 0)) to be true.                     | <strong> OK </strong> |
| (ring-ref) | Expect (EQUAL "xx" (SETF (LEM/COMMON/RING:RING-REF LEM/COMMON/RING:RING 3) "xx")) to be true.        | <strong> OK </strong> |
| (ring-ref) | Expect (EQUAL "xx" (LEM/COMMON/RING:RING-REF LEM/COMMON/RING:RING 3)) to be true.                    | <strong> OK </strong> |
| (ring-ref) | Expect (SETF (LEM/COMMON/RING:RING-REF LEM/COMMON/RING:RING 5) (QUOTE LEM-TESTS/COMMON/RING::FOO)... | <strong> OK </strong> |

## ring-length
| Test          | Description                                                                                          | Result                |
|---------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (ring-length) | Expect (= 0 (LEM/COMMON/RING:RING-LENGTH LEM/COMMON/RING:RING)) to be true.                          | <strong> OK </strong> |
| (ring-length) | Expect (= (MIN 3 LEM-TESTS/COMMON/RING::I) (LEM/COMMON/RING:RING-LENGTH LEM/COMMON/RING:RING)) to... | <strong> OK </strong> |
| (ring-length) | Expect (= (MIN 3 LEM-TESTS/COMMON/RING::I) (LEM/COMMON/RING:RING-LENGTH LEM/COMMON/RING:RING)) to... | <strong> OK </strong> |
| (ring-length) | Expect (= (MIN 3 LEM-TESTS/COMMON/RING::I) (LEM/COMMON/RING:RING-LENGTH LEM/COMMON/RING:RING)) to... | <strong> OK </strong> |
| (ring-length) | Expect (= (MIN 3 LEM-TESTS/COMMON/RING::I) (LEM/COMMON/RING:RING-LENGTH LEM/COMMON/RING:RING)) to... | <strong> OK </strong> |
| (ring-length) | Expect (= (MIN 3 LEM-TESTS/COMMON/RING::I) (LEM/COMMON/RING:RING-LENGTH LEM/COMMON/RING:RING)) to... | <strong> OK </strong> |
| (ring-length) | Expect (= (MIN 3 LEM-TESTS/COMMON/RING::I) (LEM/COMMON/RING:RING-LENGTH LEM/COMMON/RING:RING)) to... | <strong> OK </strong> |
| (ring-length) | Expect (= (MIN 3 LEM-TESTS/COMMON/RING::I) (LEM/COMMON/RING:RING-LENGTH LEM/COMMON/RING:RING)) to... | <strong> OK </strong> |
| (ring-length) | Expect (= (MIN 3 LEM-TESTS/COMMON/RING::I) (LEM/COMMON/RING:RING-LENGTH LEM/COMMON/RING:RING)) to... | <strong> OK </strong> |
| (ring-length) | Expect (= (MIN 3 LEM-TESTS/COMMON/RING::I) (LEM/COMMON/RING:RING-LENGTH LEM/COMMON/RING:RING)) to... | <strong> OK </strong> |
| (ring-length) | Expect (= (MIN 3 LEM-TESTS/COMMON/RING::I) (LEM/COMMON/RING:RING-LENGTH LEM/COMMON/RING:RING)) to... | <strong> OK </strong> |

## test-completion
| Test              | Description                                                                                          | Result                |
|-------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (test-completion) | Expect (EQUAL (QUOTE ("apple" "banana" "orange" "pineapple")) (LEM-CORE:COMPLETION "a" LEM-TESTS/... | <strong> OK </strong> |
| (test-completion) | Expect (EQUAL (QUOTE ("apple" "pineapple")) (LEM-CORE:COMPLETION "app" LEM-TESTS/COMPLETION::ITEM... | <strong> OK </strong> |
| (test-completion) | Expect (EQUAL (QUOTE NIL) (LEM-CORE:COMPLETION "xyz" LEM-TESTS/COMPLETION::ITEMS)) to be true.       | <strong> OK </strong> |
| (test-completion) | Expect (EQUAL (QUOTE NIL) (LEM-CORE:COMPLETION "APP" LEM-TESTS/COMPLETION::ITEMS)) to be true.       | <strong> OK </strong> |
| (test-completion) | Expect (EQUAL (QUOTE ("apple" "pineapple")) (LEM-CORE:COMPLETION "APP" LEM-TESTS/COMPLETION::ITEM... | <strong> OK </strong> |
| (test-completion) | Expect (EQUAL (QUOTE ("foo-bar-baz" "foo-bar-y")) (LEM-CORE:COMPLETION "foo-bar" (QUOTE ("foo-bar... | <strong> OK </strong> |

## ring-empty-p
| Test           | Description                                                             | Result                |
|----------------|-------------------------------------------------------------------------|-----------------------|
| (ring-empty-p) | Expect (LEM/COMMON/RING:RING-EMPTY-P LEM/COMMON/RING:RING) to be true.  | <strong> OK </strong> |
| (ring-empty-p) | Expect (LEM/COMMON/RING:RING-EMPTY-P LEM/COMMON/RING:RING) to be false. | <strong> OK </strong> |
| (ring-empty-p) | Expect (LEM/COMMON/RING:RING-EMPTY-P LEM/COMMON/RING:RING) to be false. | <strong> OK </strong> |
| (ring-empty-p) | Expect (LEM/COMMON/RING:RING-EMPTY-P LEM/COMMON/RING:RING) to be false. | <strong> OK </strong> |
| (ring-empty-p) | Expect (LEM/COMMON/RING:RING-EMPTY-P LEM/COMMON/RING:RING) to be false. | <strong> OK </strong> |
| (ring-empty-p) | Expect (LEM/COMMON/RING:RING-EMPTY-P LEM/COMMON/RING:RING) to be false. | <strong> OK </strong> |
| (ring-empty-p) | Expect (LEM/COMMON/RING:RING-EMPTY-P LEM/COMMON/RING:RING) to be false. | <strong> OK </strong> |
| (ring-empty-p) | Expect (LEM/COMMON/RING:RING-EMPTY-P LEM/COMMON/RING:RING) to be false. | <strong> OK </strong> |
| (ring-empty-p) | Expect (LEM/COMMON/RING:RING-EMPTY-P LEM/COMMON/RING:RING) to be false. | <strong> OK </strong> |
| (ring-empty-p) | Expect (LEM/COMMON/RING:RING-EMPTY-P LEM/COMMON/RING:RING) to be false. | <strong> OK </strong> |
| (ring-empty-p) | Expect (LEM/COMMON/RING:RING-EMPTY-P LEM/COMMON/RING:RING) to be false. | <strong> OK </strong> |

## self-insert-command
| Test                  | Description                                                                                      | Result                |
|-----------------------|--------------------------------------------------------------------------------------------------|-----------------------|
| (self-insert-command) | aaa                                                                                              | <strong> OK </strong> |
| (self-insert-command) | aaaa                                                                                             | <strong> OK </strong> |
| (self-insert-command) | Expect (SEARCH "Key not found: " (PRINC-TO-STRING LEM-TESTS/SELF-INSERT-COMMAND::E)) to be true. | <strong> OK </strong> |

## execute-the-same-command-consecutively
| Test                                     | Description                                                             | Result                |
|------------------------------------------|-------------------------------------------------------------------------|-----------------------|
| (execute-the-same-command-consecutively) | Expect (EQUAL (QUOTE (NIL T T)) LEM/TESTS/INTERP::*RESULT*) to be true. | <strong> OK </strong> |

## bury-buffer
| Test                                                   | Description                                                                                          | Result                |
|--------------------------------------------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (bury-buffer argument type)                            | Expect (FUNCALL FUNCTION NIL) to signal TYPE-ERROR.                                                  | <strong> OK </strong> |
| (bury-buffer argument type)                            | Expect (FUNCALL FUNCTION 1) to signal TYPE-ERROR.                                                    | <strong> OK </strong> |
| (bury-buffer argument type)                            | Expect (FUNCALL FUNCTION #(#\a #\b)) to signal TYPE-ERROR.                                           | <strong> OK </strong> |
| (bury-buffer argument type)                            | Expect (FUNCALL FUNCTION "name") to signal TYPE-ERROR.                                               | <strong> OK </strong> |
| (bury-buffer buffer-list length is 1)                  | Expect (EQ LEM-TESTS/BUFFER-LIST-TEST::BUFFER-A (LEM-BASE:BURY-BUFFER LEM-TESTS/BUFFER-LIST-TEST:... | <strong> OK </strong> |
| (bury-buffer buffer-list length is 1)                  | Expect (EQUAL (LEM-BASE:BUFFER-LIST) (LIST LEM-TESTS/BUFFER-LIST-TEST::BUFFER-A)) to be true.        | <strong> OK </strong> |
| (bury-buffer buffer-list length is 3)                  | Expect (EQ LEM-TESTS/BUFFER-LIST-TEST::BUFFER-B (LEM-BASE:BURY-BUFFER LEM-TESTS/BUFFER-LIST-TEST:... | <strong> OK </strong> |
| (bury-buffer buffer-list length is 3)                  | Expect (EQUAL (LEM-BASE:BUFFER-LIST) (LIST LEM-TESTS/BUFFER-LIST-TEST::BUFFER-B LEM-TESTS/BUFFER-... | <strong> OK </strong> |
| (bury-buffer buffer-list length is 3)                  | Expect (EQ LEM-TESTS/BUFFER-LIST-TEST::BUFFER-C (LEM-BASE:BURY-BUFFER LEM-TESTS/BUFFER-LIST-TEST:... | <strong> OK </strong> |
| (bury-buffer buffer-list length is 3)                  | Expect (EQUAL (LEM-BASE:BUFFER-LIST) (LIST LEM-TESTS/BUFFER-LIST-TEST::BUFFER-C LEM-TESTS/BUFFER-... | <strong> OK </strong> |
| (bury-buffer buffer-list length is 3)                  | Expect (EQ LEM-TESTS/BUFFER-LIST-TEST::BUFFER-C (LEM-BASE:BURY-BUFFER LEM-TESTS/BUFFER-LIST-TEST:... | <strong> OK </strong> |
| (bury-buffer buffer-list length is 3)                  | Expect (EQUAL (LEM-BASE:BUFFER-LIST) (LIST LEM-TESTS/BUFFER-LIST-TEST::BUFFER-C LEM-TESTS/BUFFER-... | <strong> OK </strong> |
| (bury-buffer temporary buffer buffer-list length is 0) | Expect (EQ NIL (LEM-BASE:BURY-BUFFER (LEM-BASE:MAKE-BUFFER NIL :TEMPORARY T))) to be true.           | <strong> OK </strong> |
| (bury-buffer temporary buffer buffer-list length is 3) | Expect (EQ LEM-TESTS/BUFFER-LIST-TEST::BUFFER-C (LEM-BASE:BURY-BUFFER (LEM-BASE:MAKE-BUFFER NIL :... | <strong> OK </strong> |
| (bury-buffer temporary buffer buffer-list length is 3) | Expect (EQUAL (LEM-BASE:BUFFER-LIST) (LIST LEM-TESTS/BUFFER-LIST-TEST::BUFFER-C LEM-TESTS/BUFFER-... | <strong> OK </strong> |

## timer-name-tests
| Test               | Description                                                         | Result                |
|--------------------|---------------------------------------------------------------------|-----------------------|
| (timer-name-tests) | Expect (STRING= "TESTING-TIMER" LEM-TESTS/TIMER::VALUE) to be true. | <strong> OK </strong> |
| (timer-name-tests) | Expect (STRING= "TESTING-TIMER" LEM-TESTS/TIMER::VALUE) to be true. | <strong> OK </strong> |
| (timer-name-tests) | Expect (STRING= "foo" LEM-TESTS/TIMER::VALUE) to be true.           | <strong> OK </strong> |

## simple-fake-cursor-test
| Test                                                                       | Description                                                                                          | Result                |
|----------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (simple-fake-cursor-test Test the fake-cursor created buffer-fake-cursors) | Expect (ALEXANDRIA:LENGTH= 1 (LEM-CORE:BUFFER-FAKE-CURSORS LEM-TESTS/CURSORS::BUFFER)) to be true.   | <strong> OK </strong> |
| (simple-fake-cursor-test Test the fake-cursor created buffer-fake-cursors) | Expect (EQ LEM-TESTS/CURSORS::CURSOR (FIRST (LEM-CORE:BUFFER-FAKE-CURSORS LEM-TESTS/CURSORS::BUFF... | <strong> OK </strong> |
| (simple-fake-cursor-test Test the fake-cursor created killring)            | Expect (EQ (LEM-CORE:CURRENT-KILLRING) LEM-TESTS/CURSORS::KILLRING) to be false.                     | <strong> OK </strong> |
| (simple-fake-cursor-test Test the fake-cursor created killring)            | Expect (EQUAL "aaa" (LEM/COMMON/KILLRING:PEEK-KILLRING-ITEM LEM-TESTS/CURSORS::KILLRING 2)) to be... | <strong> OK </strong> |
| (simple-fake-cursor-test Test the fake-cursor created killring)            | Expect (EQUAL "bbb" (LEM/COMMON/KILLRING:PEEK-KILLRING-ITEM LEM-TESTS/CURSORS::KILLRING 1)) to be... | <strong> OK </strong> |
| (simple-fake-cursor-test Test the fake-cursor created killring)            | Expect (EQUAL "ccc" (LEM/COMMON/KILLRING:PEEK-KILLRING-ITEM LEM-TESTS/CURSORS::KILLRING 0)) to be... | <strong> OK </strong> |
| (simple-fake-cursor-test Test the fake-cursor created point-kind)          | Expect (EQ :LEFT-INSERTING (LEM-BASE:POINT-KIND LEM-TESTS/CURSORS::CURSOR)) to be true.              | <strong> OK </strong> |
| (simple-fake-cursor-test Delete cursor)                                    | Expect (NULL (LEM-CORE:BUFFER-FAKE-CURSORS LEM-TESTS/CURSORS::BUFFER)) to be true.                   | <strong> OK </strong> |

## indent-test-for-sample-case
| Test                          | Description                   | Result                   |
|-------------------------------|-------------------------------|--------------------------|
| (indent-test-for-sample-case) | Raise an error while testing. | <strong> ERROR </strong> |

## peek-killring-item-when-empty
| Test                            | Description                                                                                          | Result                |
|---------------------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (peek-killring-item-when-empty) | Expect (NULL (LEM/COMMON/KILLRING:PEEK-KILLRING-ITEM LEM-TESTS/COMMON/KILLRING::KILLRING 0)) to b... | <strong> OK </strong> |

## unique-buffer-name
| Test                               | Description                                                                                          | Result                |
|------------------------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (unique-buffer-name argument type) | Expect (FUNCALL FUNCTION NIL) to signal TYPE-ERROR.                                                  | <strong> OK </strong> |
| (unique-buffer-name argument type) | Expect (FUNCALL FUNCTION 1) to signal TYPE-ERROR.                                                    | <strong> OK </strong> |
| (unique-buffer-name argument type) | Expect (FUNCALL FUNCTION #(#\a #\b)) to signal TYPE-ERROR.                                           | <strong> OK </strong> |
| (unique-buffer-name)               | Expect (EQUAL "foo" (LEM-BASE:UNIQUE-BUFFER-NAME "foo")) to be true.                                 | <strong> OK </strong> |
| (unique-buffer-name)               | Expect (EQUAL "a<1>" LEM-TESTS/BUFFER-LIST-TEST::NAME) to be true.                                   | <strong> OK </strong> |
| (unique-buffer-name)               | Expect (EQUAL "a<2>" LEM-TESTS/BUFFER-LIST-TEST::NAME) to be true.                                   | <strong> OK </strong> |
| (unique-buffer-name)               | Expect (STRING= (LEM-BASE:BUFFER-NAME LEM-TESTS/BUFFER-LIST-TEST::BUFFER-A) "a") to be true.         | <strong> OK </strong> |
| (unique-buffer-name)               | Expect (STRING= (LEM-BASE:BUFFER-NAME LEM-TESTS/BUFFER-LIST-TEST::BUFFER-A<1>) "a<1>") to be true.   | <strong> OK </strong> |
| (unique-buffer-name)               | Expect (STRING= (LEM-BASE:BUFFER-NAME LEM-TESTS/BUFFER-LIST-TEST::BUFFER-A<2>) "a<2>") to be true.   | <strong> OK </strong> |
| (unique-buffer-name)               | Expect (EQUAL (LEM-BASE:BUFFER-LIST) (LIST LEM-TESTS/BUFFER-LIST-TEST::BUFFER-A<2> LEM-TESTS/BUFF... | <strong> OK </strong> |
| (unique-buffer-name)               | Expect (EQUAL "a<2>" (LEM-BASE:UNIQUE-BUFFER-NAME "a")) to be true.                                  | <strong> OK </strong> |
| (unique-buffer-name)               | Expect (EQUAL (LEM-BASE:BUFFER-LIST) (LIST LEM-TESTS/BUFFER-LIST-TEST::BUFFER-A<1> LEM-TESTS/BUFF... | <strong> OK </strong> |
| (unique-buffer-name)               | Expect (EQUAL "a<1>" (LEM-BASE:UNIQUE-BUFFER-NAME "a")) to be true.                                  | <strong> OK </strong> |
| (unique-buffer-name)               | Expect (EQUAL (LEM-BASE:BUFFER-LIST) (LIST LEM-TESTS/BUFFER-LIST-TEST::BUFFER-A<2> LEM-TESTS/BUFF... | <strong> OK </strong> |
| (unique-buffer-name)               | Expect (EQUAL "a" (LEM-BASE:UNIQUE-BUFFER-NAME "a")) to be true.                                     | <strong> OK </strong> |
| (unique-buffer-name)               | Expect (EQUAL (LEM-BASE:BUFFER-LIST) (LIST LEM-TESTS/BUFFER-LIST-TEST::BUFFER-A<2> LEM-TESTS/BUFF... | <strong> OK </strong> |
| (unique-buffer-name)               | Expect (EQUAL "b" (LEM-BASE:UNIQUE-BUFFER-NAME "b")) to be true.                                     | <strong> OK </strong> |

## compute-the-time-for-the-next-idle-timer-to-be-called
| Test                                                    | Description                                                           | Result                |
|---------------------------------------------------------|-----------------------------------------------------------------------|-----------------------|
| (compute-the-time-for-the-next-idle-timer-to-be-called) | Expect (NULL (LEM/COMMON/TIMER:GET-NEXT-TIMER-TIMING-MS)) to be true. | <strong> OK </strong> |
| (compute-the-time-for-the-next-idle-timer-to-be-called) | Expect (= 10 (LEM/COMMON/TIMER:GET-NEXT-TIMER-TIMING-MS)) to be true. | <strong> OK </strong> |
| (compute-the-time-for-the-next-idle-timer-to-be-called) | Expect (= 8 (LEM/COMMON/TIMER:GET-NEXT-TIMER-TIMING-MS)) to be true.  | <strong> OK </strong> |
| (compute-the-time-for-the-next-idle-timer-to-be-called) | Expect (= 0 (LEM/COMMON/TIMER:GET-NEXT-TIMER-TIMING-MS)) to be true.  | <strong> OK </strong> |
| (compute-the-time-for-the-next-idle-timer-to-be-called) | Expect (= -8 (LEM/COMMON/TIMER:GET-NEXT-TIMER-TIMING-MS)) to be true. | <strong> OK </strong> |

## before-inserting
| Test               | Description                                                                                          | Result                |
|--------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (before-inserting) | Expect (EQUAL "ba" (LEM/COMMON/KILLRING:PEEK-KILLRING-ITEM LEM-TESTS/COMMON/KILLRING::KILLRING 0)... | <strong> OK </strong> |
| (before-inserting) | Expect (EQUAL "cba" (LEM/COMMON/KILLRING:PEEK-KILLRING-ITEM LEM-TESTS/COMMON/KILLRING::KILLRING 0... | <strong> OK </strong> |

## simple-test
| Test                           | Description                                                                                          | Result                |
|--------------------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (simple-test)                  | Expect (NULL (LEM/COMMON/HISTORY:LAST-HISTORY LEM-TESTS/HISTORY::HISTORY)) to be true.               | <strong> OK </strong> |
| (simple-test)                  | Expect (EQUAL "foo" (LEM/COMMON/HISTORY:LAST-HISTORY LEM-TESTS/HISTORY::HISTORY)) to be true.        | <strong> OK </strong> |
| (simple-test)                  | Expect (EQUAL "bar" (LEM/COMMON/HISTORY:LAST-HISTORY LEM-TESTS/HISTORY::HISTORY)) to be true.        | <strong> OK </strong> |
| (simple-test previous-history) | Expect (EQUAL (QUOTE ("bar" T)) (MULTIPLE-VALUE-LIST (LEM/COMMON/HISTORY:PREVIOUS-HISTORY LEM-TES... | <strong> OK </strong> |
| (simple-test previous-history) | Expect (EQUAL (QUOTE ("foo" T)) (MULTIPLE-VALUE-LIST (LEM/COMMON/HISTORY:PREVIOUS-HISTORY LEM-TES... | <strong> OK </strong> |
| (simple-test previous-history) | Expect (NULL (LEM/COMMON/HISTORY:PREVIOUS-HISTORY LEM-TESTS/HISTORY::HISTORY)) to be true.           | <strong> OK </strong> |
| (simple-test next-history)     | Expect (EQUAL (QUOTE ("bar" T)) (MULTIPLE-VALUE-LIST (LEM/COMMON/HISTORY:NEXT-HISTORY LEM-TESTS/H... | <strong> OK </strong> |
| (simple-test next-history)     | Expect (NULL (LEM/COMMON/HISTORY:NEXT-HISTORY LEM-TESTS/HISTORY::HISTORY)) to be true.               | <strong> OK </strong> |

## external-option
| Test              | Description                                                                                          | Result                |
|-------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (external-option) | Expect (EQUAL (QUOTE ("baz" (:TEST))) (MULTIPLE-VALUE-LIST (LEM-CORE:YANK-FROM-CLIPBOARD-OR-KILLR... | <strong> OK </strong> |
| (external-option) | Expect (EQUAL LEM-TESTS/KILLRING::EXPECTED-RESULT (LEM-CORE:YANK-FROM-CLIPBOARD-OR-KILLRING)) to ... | <strong> OK </strong> |

## display-popup-window
| Test                   | Description                                                                                          | Result                |
|------------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (display-popup-window) | Expect (EQUAL "hello" (LEM-FAKE-INTERFACE:GET-DISPLAYED-TEXT LEM-TESTS/POPUP-WINDOW::POPUP-WINDOW... | <strong> OK </strong> |
| (display-popup-window) | Expect (EQUAL "hello" (LEM-BASE:BUFFER-TEXT (LEM-CORE:WINDOW-BUFFER LEM-TESTS/POPUP-WINDOW::POPUP... | <strong> OK </strong> |
| (display-popup-window) | Expect (EQL 1 (LEM-CORE:FLOATING-WINDOW-BORDER LEM-TESTS/POPUP-WINDOW::POPUP-WINDOW)) to be true.    | <strong> OK </strong> |
| (display-popup-window) | Expect (EQ (LEM-CORE:CURRENT-WINDOW) (LEM/POPUP-WINDOW::POPUP-WINDOW-SOURCE-WINDOW LEM-TESTS/POPU... | <strong> OK </strong> |
| (display-popup-window) | Expect (= 5 (LEM/POPUP-WINDOW::POPUP-WINDOW-BASE-WIDTH LEM-TESTS/POPUP-WINDOW::POPUP-WINDOW)) to ... | <strong> OK </strong> |
| (display-popup-window) | Expect (= 1 (LEM/POPUP-WINDOW::POPUP-WINDOW-BASE-HEIGHT LEM-TESTS/POPUP-WINDOW::POPUP-WINDOW)) to... | <strong> OK </strong> |
| (display-popup-window) | Expect (LEM/POPUP-WINDOW::POPUP-WINDOW-GRAVITY LEM-TESTS/POPUP-WINDOW::POPUP-WINDOW) to be an ins... | <strong> OK </strong> |

## parse-name-and-options
| Test                                            | Description                                                                                          | Result                |
|-------------------------------------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| (parse-name-and-options (name))                 | Expect (= 2 (LENGTH VALUES)) to be true.                                                             | <strong> OK </strong> |
| (parse-name-and-options (name))                 | Expect (EQ (QUOTE LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-DEFCLASS::FOO) LEM-TESTS/LISP-SYNTAX/DEFSTRU... | <strong> OK </strong> |
| (parse-name-and-options (name))                 | Expect (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::OPTIONS-INFO-P LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-... | <strong> OK </strong> |
| (parse-name-and-options (name))                 | Expect (NULL (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::OPTIONS-CONC-NAME LEM-TESTS/LISP-SYNTAX/DEFS... | <strong> OK </strong> |
| (parse-name-and-options :conc-name)             | Expect (= 2 (LENGTH VALUES)) to be true.                                                             | <strong> OK </strong> |
| (parse-name-and-options :conc-name)             | Expect (EQ (QUOTE LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-DEFCLASS::FOO) LEM-TESTS/LISP-SYNTAX/DEFSTRU... | <strong> OK </strong> |
| (parse-name-and-options :conc-name)             | Expect (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::OPTIONS-INFO-P LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-... | <strong> OK </strong> |
| (parse-name-and-options :conc-name)             | Expect (STRING= "" (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::OPTIONS-CONC-NAME LEM-TESTS/LISP-SYNTA... | <strong> OK </strong> |
| (parse-name-and-options (:conc-name))           | Expect (= 2 (LENGTH VALUES)) to be true.                                                             | <strong> OK </strong> |
| (parse-name-and-options (:conc-name))           | Expect (EQ (QUOTE LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-DEFCLASS::FOO) LEM-TESTS/LISP-SYNTAX/DEFSTRU... | <strong> OK </strong> |
| (parse-name-and-options (:conc-name))           | Expect (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::OPTIONS-INFO-P LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-... | <strong> OK </strong> |
| (parse-name-and-options (:conc-name))           | Expect (STRING= "" (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::OPTIONS-CONC-NAME LEM-TESTS/LISP-SYNTA... | <strong> OK </strong> |
| (parse-name-and-options (:conc-name conc-name)) | Expect (= 2 (LENGTH VALUES)) to be true.                                                             | <strong> OK </strong> |
| (parse-name-and-options (:conc-name conc-name)) | Expect (EQ (QUOTE LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-DEFCLASS::FOO) LEM-TESTS/LISP-SYNTAX/DEFSTRU... | <strong> OK </strong> |
| (parse-name-and-options (:conc-name conc-name)) | Expect (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::OPTIONS-INFO-P LEM-TESTS/LISP-SYNTAX/DEFSTRUCT-TO-... | <strong> OK </strong> |
| (parse-name-and-options (:conc-name conc-name)) | Expect (STRING= "PREFIX-" (LEM-LISP-SYNTAX.DEFSTRUCT-TO-DEFCLASS::OPTIONS-CONC-NAME LEM-TESTS/LIS... | <strong> OK </strong> |
| (parse-name-and-options invalid)                | (1)                                                                                                  | <strong> OK </strong> |
| (parse-name-and-options invalid)                | (1 CONC-NAME)                                                                                        | <strong> OK </strong> |
| (parse-name-and-options invalid)                | (NIL)                                                                                                | <strong> OK </strong> |
| (parse-name-and-options invalid)                | (FOO (CONC-NAME 1))                                                                                  | <strong> OK </strong> |
| (parse-name-and-options invalid)                | (FOO (CONC-NAME #()))                                                                                | <strong> OK </strong> |

{{< /expand >}}
