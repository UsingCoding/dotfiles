---
description: Proceed tasks in sources tagged @opencode
---

Here task for you, it tags you via `@opencode` may be in comments or placed somewhere.
Find them with:
!`rg "@opencode -n"`

Threat everything after `@opencode` as task.

Don't forget to remove task request from source code.

**Task format**

* Started with `@opencode`
* May be multilined. Each line will be started with `@opencode`.
So, if search command found several `@opencode` in file - may be an multiline task

**Caveats**

* If you find multiple tasks tagged `@opencode` - ask user which of them should be proceeded.
Possible choices: `all`, `none` (stop), `specify exact task`
