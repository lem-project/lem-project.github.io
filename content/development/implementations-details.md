---
title: How Lem works on each implementation
weight: 1
---

## Tests 

Lem has a test suite that is trigger by the system lem-tests.asd, this list want to evaluate how
each implementation is able to run these tests and the output of each.

Each check-mark means that all the tests are passing in that package.

This pull requests is used to track the progress: https://github.com/lem-project/lem/pull/686

### [SBCL](https://www.sbcl.org/)
This is the reference implementation, all tests should work in order to work in main.

### Other implementations
{{< expand "ABCL" >}}

Armed Bear Common Lisp (ABCL) is a full implementation of the Common Lisp language featuring both an interpreter and a compiler, running in the JVM.


Armed Bear Common Lisp 1.9.0
Java 11.0.19 Ubuntu
OpenJDK 64-Bit Server VM

| Common module |                                          |
|:--------------|-----------------------------------------:|
| ring          | <input type="checkbox" disabled checked> |
| killring      | <input type="checkbox" disabled checked> |
| history       | <input type="checkbox" disabled checked> |
| timer         | <input type="checkbox" disabled checked> |
|               |                                          |

| Lisp-syntax           |                                          |
|:----------------------|-----------------------------------------:|
| indent-test           | <input type="checkbox" disabled checked> |
| defstruct-to-defclass | <input type="checkbox" disabled checked> |
|                       |                                          |

| Lisp-mode               |                                          |
|:------------------------|-----------------------------------------:|
| package-inferred-system | <input type="checkbox" disabled checked> |


| Misc               |                                          |
|:-------------------|-----------------------------------------:|
| killring           | <input type="checkbox" disabled checked> |
| string-width-utils |        <input type="checkbox" disabled > |
{{<expand "Error" >}}

```sh
wide-char-p
  ✓ Expect (LOOP :FOR CHAR :IN LEM-TESTS/STRING-WIDTH-UTILS::ALPHABET-OR-NUMBERS :ALWAYS (NOT (LEM-BASE:WIDE-CHAR-P CHAR))) to be true.
  ✓ Expect (LOOP :FOR CHAR :IN LEM-TESTS/STRING-WIDTH-UTILS::CONTROL-CHARS :ALWAYS (LEM-BASE:WIDE-CHAR-P CHAR)) to be true.
  × 0) Expect (LOOP :FOR (LEM-TESTS/STRING-WIDTH-UTILS::START LEM-TESTS/STRING-WIDTH-UTILS::END) :IN LEM-TESTS/STRING-WIDTH-UTILS::+EASTASIAN-FULL-PAIRS+ :ALWAYS (LOOP :FOR LEM-TESTS/STRING-WIDTH-UTILS::CODE :FROM LEM-TESTS/STRING-WIDTH-UTILS::START :TO LEM-TESTS/STRING-WIDTH-UTILS::END :ALWAYS (LEM-BASE:WIDE-CHAR-P (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE)))) to be true. (80ms)
  ✓ Expect (LEM-BASE:WIDE-CHAR-P (CODE-CHAR 127798)) to be false.
  ✓ Expect (LEM-BASE:WIDE-CHAR-P (CODE-CHAR 128253)) to be false.

× 1 of 5 tests failed

0) Expect (LOOP :FOR (LEM-TESTS/STRING-WIDTH-UTILS::START LEM-TESTS/STRING-WIDTH-UTILS::END) :IN LEM-TESTS/STRING-WIDTH-UTILS::+EASTASIAN-FULL-PAIRS+ :ALWAYS (LOOP :FOR LEM-TESTS/STRING-WIDTH-UTILS::CODE :FROM LEM-TESTS/STRING-WIDTH-UTILS::START :TO LEM-TESTS/STRING-WIDTH-UTILS::END :ALWAYS (LEM-BASE:WIDE-CHAR-P (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE)))) to be true.
     (LOOP :FOR (LEM-TESTS/STRING-WIDTH-UTILS::START LEM-TESTS/STRING-WIDTH-UTILS::END) :IN LEM-TESTS/STRING-WIDTH-UTILS::+EASTASIAN-FULL-PAIRS+ :ALWAYS (LOOP :FOR LEM-TESTS/STRING-WIDTH-UTILS::CODE :FROM LEM-TESTS/STRING-WIDTH-UTILS::START :TO LEM-TESTS/STRING-WIDTH-UTILS::END :ALWAYS (LEM-BASE:WIDE-CHAR-P (CODE-CHAR LEM-TESTS/STRING-WIDTH-UTILS::CODE))))

```
{{</expand>}} 

|                   |                                          |
|:------------------|-----------------------------------------:|
| buffer-list-tests | <input type="checkbox" disabled checked> |
| popup-window      | <input type="checkbox" disabled checked> |
| prompt            | <input type="checkbox" disabled checked> |
| isearch           | <input type="checkbox" disabled checked> |
| cursors           |         <input type="checkbox" disabled> |
{{<expand "Error" >}}

```sh
simple-fake-cursor-test
  Test the fake-cursor created
    buffer-fake-cursors
      ✓ Expect (ALEXANDRIA:LENGTH= 1 (LEM-CORE:BUFFER-FAKE-CURSORS LEM-TESTS/CURSORS::BUFFER)) to be true.
      ✓ Expect (EQ LEM-TESTS/CURSORS::CURSOR (FIRST (LEM-CORE:BUFFER-FAKE-CURSORS LEM-TESTS/CURSORS::BUFFER))) to be true.
    killring
      ✓ Expect (EQ (LEM-CORE:CURRENT-KILLRING) LEM-TESTS/CURSORS::KILLRING) to be false.
      ✓ Expect (EQUAL "aaa" (LEM/COMMON/KILLRING:PEEK-KILLRING-ITEM LEM-TESTS/CURSORS::KILLRING 2)) to be true.
      ✓ Expect (EQUAL "bbb" (LEM/COMMON/KILLRING:PEEK-KILLRING-ITEM LEM-TESTS/CURSORS::KILLRING 1)) to be true.
      ✓ Expect (EQUAL "ccc" (LEM/COMMON/KILLRING:PEEK-KILLRING-ITEM LEM-TESTS/CURSORS::KILLRING 0)) to be true.
    point-kind
      ✓ Expect (EQ :LEFT-INSERTING (LEM-BASE:POINT-KIND LEM-TESTS/CURSORS::CURSOR)) to be true.
  Delete cursor
    ✓ Expect (NULL (LEM-CORE:BUFFER-FAKE-CURSORS LEM-TESTS/CURSORS::BUFFER)) to be true.

✓ 2 tests completed
test-to-execute-a-series-of-commands
  execute self-insert command
    × 1) Raise an error while testing.
  execute delete-previous-character command
    × 2) Raise an error while testing.
  multiple cursor killring
    ✓ Expect (EQUAL (QUOTE ("abcd" "opqr" "hijk")) (MAPCAR (LAMBDA (LEM-TESTS/CURSORS::KILLRING) (LEM/COMMON/KILLRING:PEEK-KILLRING-ITEM LEM-TESTS/CURSORS::KILLRING 0)) (CONS LEM-CORE::*KILLRING* (MAPCAR (LAMBDA (LEM-TESTS/CURSORS::CURSOR) (LEM-CORE::FAKE-CURSOR-KILLRING LEM-TESTS/CURSORS::CURSOR)) (LEM-CORE:BUFFER-FAKE-CURSORS LEM-TESTS/CURSORS::BUFFER))))) to be true.

× 2 of 3 tests failed

0) execute self-insert command
   Raise an error while testing.
   SIMPLE-TYPE-ERROR: Bad argument to SIGNAL: #<STANDARD-CLASS LEM-CORE/COMMANDS/FILE::ASK-REVERT-BUFFER {131EB448}>.

     0: (#<ANONYMOUS-FUNCTION cursors_tmpIAM7IVX_68 (FROM __loader__._) {460F8D20}> Bad argument to SIGNAL: #<STANDARD-CLASS LEM-CORE/COMMANDS/FILE::ASK-REVERT-BUFFER {131EB448}>.)
     1: (SIGNAL Bad argument to SIGNAL: #<STANDARD-CLASS LEM-CORE/COMMANDS/FILE::ASK-REVERT-BUFFER {131EB448}>.)
     2: (ERROR SIMPLE-TYPE-ERROR DATUM #<STANDARD-CLASS LEM-CORE/COMMANDS/FILE::ASK-REVERT-BUFFER {131EB448}> EXPECTED-TYPE (OR SYMBOL STRING) FORMAT-CONTROL Bad argument to ~S: ~S. FORMAT-ARGUMENTS (SIGNAL #<STANDARD-CLASS LEM-CORE/COMMANDS/FILE::ASK-REVERT-BUFFER {131EB448}>))
     3: (SYSTEM:COERCE-TO-CONDITION #<STANDARD-CLASS LEM-CORE/COMMANDS/FILE::ASK-REVERT-BUFFER {131EB448}> (COMMAND #<SELF-INSERT {2E5F8419}>) SIMPLE-CONDITION SIGNAL)
     4: (SIGNAL #<STANDARD-CLASS LEM-CORE/COMMANDS/FILE::ASK-REVERT-BUFFER {131EB448}> COMMAND #<SELF-INSERT {2E5F8419}>)
     5: (APPLY #<function SIGNAL {44954EC}> #<STANDARD-CLASS LEM-CORE/COMMANDS/FILE::ASK-REVERT-BUFFER {131EB448}> (COMMAND #<SELF-INSERT {2E5F8419}>))
     6: (LEM-CORE::SIGNAL-SUBCONDITIONS BEFORE-EXECUTING-COMMAND COMMAND #<SELF-INSERT {2E5F8419}>)
     7: (LEM-CORE:CALL-COMMAND SELF-INSERT NIL)
     8: (LEM-CORE:EXECUTE-KEY-SEQUENCE ( ))
     9: (#<ANONYMOUS-FUNCTION cursors_tmpIAM7IVX_61 (FROM __loader__._) {6B5F7452}>)
     10: (LEM-BASE::CALL-WITH-CURRENT-BUFFERS NIL #<ANONYMOUS-FUNCTION cursors_tmpIAM7IVX_61 (FROM __loader__._) {6B5F7452}>)
     11: (#<ANONYMOUS-FUNCTION cursors_tmpIAM7IVX_59 (FROM __loader__._) {42F537E1}>)
     12: (RUN-SUITE LEM-TESTS/CURSORS)
     13: (SYSTEM::%EVAL (RUN-SUITE LEM-TESTS/CURSORS))
     14: (EVAL (RUN-SUITE LEM-TESTS/CURSORS))

1) execute delete-previous-character command
   Raise an error while testing.
   SIMPLE-TYPE-ERROR: Bad argument to SIGNAL: #<STANDARD-CLASS LEM-CORE/COMMANDS/FILE::ASK-REVERT-BUFFER {131EB448}>.

     0: (#<ANONYMOUS-FUNCTION cursors_tmpIAM7IVX_75 (FROM __loader__._) {3A69F4A4}> Bad argument to SIGNAL: #<STANDARD-CLASS LEM-CORE/COMMANDS/FILE::ASK-REVERT-BUFFER {131EB448}>.)
     1: (SIGNAL Bad argument to SIGNAL: #<STANDARD-CLASS LEM-CORE/COMMANDS/FILE::ASK-REVERT-BUFFER {131EB448}>.)
     2: (ERROR SIMPLE-TYPE-ERROR DATUM #<STANDARD-CLASS LEM-CORE/COMMANDS/FILE::ASK-REVERT-BUFFER {131EB448}> EXPECTED-TYPE (OR SYMBOL STRING) FORMAT-CONTROL Bad argument to ~S: ~S. FORMAT-ARGUMENTS (SIGNAL #<STANDARD-CLASS LEM-CORE/COMMANDS/FILE::ASK-REVERT-BUFFER {131EB448}>))
     3: (SYSTEM:COERCE-TO-CONDITION #<STANDARD-CLASS LEM-CORE/COMMANDS/FILE::ASK-REVERT-BUFFER {131EB448}> (COMMAND #<DELETE-PREVIOUS-CHAR {51489637}>) SIMPLE-CONDITION SIGNAL)
     4: (SIGNAL #<STANDARD-CLASS LEM-CORE/COMMANDS/FILE::ASK-REVERT-BUFFER {131EB448}> COMMAND #<DELETE-PREVIOUS-CHAR {51489637}>)
     5: (APPLY #<function SIGNAL {44954EC}> #<STANDARD-CLASS LEM-CORE/COMMANDS/FILE::ASK-REVERT-BUFFER {131EB448}> (COMMAND #<DELETE-PREVIOUS-CHAR {51489637}>))
     6: (LEM-CORE::SIGNAL-SUBCONDITIONS BEFORE-EXECUTING-COMMAND COMMAND #<DELETE-PREVIOUS-CHAR {51489637}>)
     7: (LEM-CORE:CALL-COMMAND DELETE-PREVIOUS-CHAR NIL)
     8: (LEM-CORE:EXECUTE-KEY-SEQUENCE (C-h))
     9: (#<ANONYMOUS-FUNCTION cursors_tmpIAM7IVX_61 (FROM __loader__._) {6B5F7452}>)
     10: (LEM-BASE::CALL-WITH-CURRENT-BUFFERS NIL #<ANONYMOUS-FUNCTION cursors_tmpIAM7IVX_61 (FROM __loader__._) {6B5F7452}>)
     11: (#<ANONYMOUS-FUNCTION cursors_tmpIAM7IVX_59 (FROM __loader__._) {42F537E1}>)
     12: (RUN-SUITE LEM-TESTS/CURSORS)
     13: (SYSTEM::%EVAL (RUN-SUITE LEM-TESTS/CURSORS))
     14: (EVAL (RUN-SUITE LEM-TESTS/CURSORS))
next-line/previous-line
  ✓ Expect (LEM-TESTS/CURSORS::POSITIONS-SET-EQUAL (QUOTE ((2 12) (3 10) (4 10))) (LEM-TESTS/CURSORS::ALL-POSITIONS LEM-TESTS/CURSORS::BUFFER)) to be true.
  ✓ Expect (LEM-TESTS/CURSORS::POSITIONS-SET-EQUAL (QUOTE ((1 14) (2 12) (3 10))) (LEM-TESTS/CURSORS::ALL-POSITIONS LEM-TESTS/CURSORS::BUFFER)) to be true.
  ✓ Expect (LEM-TESTS/CURSORS::POSITIONS-SET-EQUAL (QUOTE ((2 12) (3 10) (4 10))) (LEM-TESTS/CURSORS::ALL-POSITIONS LEM-TESTS/CURSORS::BUFFER)) to be true.

✓ 3 tests completed
```
{{</expand>}} 
	
|                     |                                  |
|:--------------------|---------------------------------:|
| self-insert-command | <input type="checkbox" disabled> |

{{<expand "Error" >}}

```sh
self-insert-command
  × 2) Raise an error while testing.

× 1 of 1 test failed

0) Raise an error while testing.
   UNBOUND-VARIABLE: The variable LEM-BASE::N is unbound.

     0: (#<ANONYMOUS-FUNCTION self_insert_command_tmpNCEIHHNK_21 (FROM __loader__._) {69FA4B8F}> The variable LEM-BASE::N is unbound.)
     1: (SIGNAL The variable LEM-BASE::N is unbound.)
     2: (:CLASS org.armedbear.lisp.Lisp METHOD error FILE Lisp.java LINE 383)
     3: (:CLASS org.armedbear.lisp.Symbol METHOD symbolValue FILE Symbol.java LINE 354)
     4: (:CLASS org.armedbear.lisp.buffer_insert_tmp84OWIL66_26 METHOD execute FILE buffer-insert.lisp LINE 186)
     5: (:CLASS org.armedbear.lisp.Symbol METHOD execute FILE Symbol.java LINE 828)
     6: (:CLASS org.armedbear.lisp.LispThread METHOD execute FILE LispThread.java LINE 945)
     7: (:CLASS org.armedbear.lisp.buffer_insert_tmp84OWIL66_31 METHOD execute FILE buffer-insert.lisp LINE 200)
     8: (:CLASS org.armedbear.lisp.clos_307 METHOD execute FILE clos.lisp LINE 2634)
     9: (:CLASS org.armedbear.lisp.LispThread METHOD execute FILE LispThread.java LINE 904)
     10: (:CLASS org.armedbear.lisp.buffer_insert_tmp84OWIL66_51 METHOD execute FILE buffer-insert.lisp LINE 286)
     11: (:CLASS org.armedbear.lisp.CompiledClosure METHOD execute FILE CompiledClosure.java LINE 89)
     12: (:CLASS org.armedbear.lisp.buffer_insert_tmp84OWIL66_50 METHOD execute FILE buffer-insert.lisp LINE 286)
     13: (:CLASS org.armedbear.lisp.clos_310 METHOD execute FILE clos.lisp LINE 2733)
     14: (:CLASS org.armedbear.lisp.clos_281 METHOD execute FILE clos.lisp LINE 2315)
NIL

```
{{</expand>}} 

|        |                                  |
|:-------|---------------------------------:|
| interp | <input type="checkbox" disabled> |

{{<expand "Error" >}}

```sh
execute-the-same-command-consecutively
  × 3) Raise an error while testing.

× 1 of 1 test failed

0) Raise an error while testing.
   SIMPLE-TYPE-ERROR: Bad argument to SIGNAL: #<STANDARD-CLASS LEM-CORE/COMMANDS/FILE::ASK-REVERT-BUFFER {131EB448}>.

     0: (#<ANONYMOUS-FUNCTION interp_tmpNBUKP4NV_19 (FROM __loader__._) {70FC88EC}> Bad argument to SIGNAL: #<STANDARD-CLASS LEM-CORE/COMMANDS/FILE::ASK-REVERT-BUFFER {131EB448}>.)
     1: (SIGNAL Bad argument to SIGNAL: #<STANDARD-CLASS LEM-CORE/COMMANDS/FILE::ASK-REVERT-BUFFER {131EB448}>.)
     2: (ERROR SIMPLE-TYPE-ERROR DATUM #<STANDARD-CLASS LEM-CORE/COMMANDS/FILE::ASK-REVERT-BUFFER {131EB448}> EXPECTED-TYPE (OR SYMBOL STRING) FORMAT-CONTROL Bad argument to ~S: ~S. FORMAT-ARGUMENTS (SIGNAL #<STANDARD-CLASS LEM-CORE/COMMANDS/FILE::ASK-REVERT-BUFFER {131EB448}>))
     3: (SYSTEM:COERCE-TO-CONDITION #<STANDARD-CLASS LEM-CORE/COMMANDS/FILE::ASK-REVERT-BUFFER {131EB448}> (COMMAND #<$TEST-COMMAND-FLAG {14475B93}>) SIMPLE-CONDITION SIGNAL)
     4: (SIGNAL #<STANDARD-CLASS LEM-CORE/COMMANDS/FILE::ASK-REVERT-BUFFER {131EB448}> COMMAND #<$TEST-COMMAND-FLAG {14475B93}>)
     5: (APPLY #<function SIGNAL {44954EC}> #<STANDARD-CLASS LEM-CORE/COMMANDS/FILE::ASK-REVERT-BUFFER {131EB448}> (COMMAND #<$TEST-COMMAND-FLAG {14475B93}>))
     6: (LEM-CORE::SIGNAL-SUBCONDITIONS BEFORE-EXECUTING-COMMAND COMMAND #<$TEST-COMMAND-FLAG {14475B93}>)
     7: (LEM-CORE:CALL-COMMAND $TEST-COMMAND-FLAG NIL)
     8: (LEM/TESTS/INTERP::EXECUTE-TESTING-COMMAND 3 $TEST-COMMAND-FLAG)
     9: (#<ANONYMOUS-FUNCTION interp_tmpNBUKP4NV_13 (FROM __loader__._) {6F272149}>)
     10: (LEM-BASE::CALL-WITH-CURRENT-BUFFERS NIL #<ANONYMOUS-FUNCTION interp_tmpNBUKP4NV_13 (FROM __loader__._) {6F272149}>)
     11: (#<ANONYMOUS-FUNCTION interp_tmpNBUKP4NV_11 (FROM __loader__._) {2C2408F5}>)
     12: (RUN-SUITE LEM/TESTS/INTERP)
     13: (SYSTEM::%EVAL (RUN-SUITE LEM/TESTS/INTERP))
     14: (EVAL (RUN-SUITE LEM/TESTS/INTERP))
NIL

```
{{</expand>}} 

|            |                                          |
|:-----------|-----------------------------------------:|
| file       | <input type="checkbox" disabled checked> |
| completion | <input type="checkbox" disabled checked> |

{{< /expand >}}
