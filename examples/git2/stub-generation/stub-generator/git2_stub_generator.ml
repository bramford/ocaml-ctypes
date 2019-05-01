(*
 * Copyright (c) 2017 Jeremy Yallop.
 *
 * This file is distributed under the terms of the MIT License.
 * See the file LICENSE for details.
 *)

let c_headers = "
#include <git2/annotated_commit.h>
#include <git2/attr.h>
#include <git2/blame.h>
#include <git2/blob.h>
#include <git2/branch.h>
#include <git2/buffer.h>
#include <git2/checkout.h>
#include <git2/cherrypick.h>
#include <git2/clone.h>
#include <git2/commit.h>
#include <git2/common.h>
#include <git2/config.h>
#include <git2/cred_helpers.h>
#include <git2/describe.h>
#include <git2/diff.h>
#include <git2/errors.h>
#include <git2/filter.h>
#include <git2/global.h>
#include <git2/graph.h>
#include <git2/ignore.h>
#include <git2/index.h>
#include <git2/indexer.h>
#include <git2/inttypes.h>
#include <git2/merge.h>
#include <git2/message.h>
#include <git2/net.h>
#include <git2/notes.h>
#include <git2/object.h>
#include <git2/odb.h>
#include <git2/odb_backend.h>
#include <git2/oid.h>
#include <git2/oidarray.h>
#include <git2/pack.h>
#include <git2/patch.h>
#include <git2/pathspec.h>
#include <git2/proxy.h>
#include <git2/rebase.h>
#include <git2/refdb.h>
#include <git2/reflog.h>
#include <git2/refs.h>
#include <git2/refspec.h>
#include <git2/remote.h>
#include <git2/repository.h>
#include <git2/reset.h>
#include <git2/revert.h>
#include <git2/revparse.h>
#include <git2/revwalk.h>
#include <git2/signature.h>
#include <git2/stash.h>
#include <git2/status.h>
#include <git2/stdint.h>
#include <git2/strarray.h>
#include <git2/submodule.h>
#include <git2/sys>
#include <git2/sys/commit.h>
#include <git2/sys/config.h>
#include <git2/sys/diff.h>
#include <git2/sys/filter.h>
#include <git2/sys/hashsig.h>
#include <git2/sys/index.h>
#include <git2/sys/mempack.h>
#include <git2/sys/merge.h>
#include <git2/sys/odb_backend.h>
#include <git2/sys/openssl.h>
#include <git2/sys/refdb_backend.h>
#include <git2/sys/reflog.h>
#include <git2/sys/refs.h>
#include <git2/sys/repository.h>
#include <git2/sys/stream.h>
#include <git2/sys/time.h>
#include <git2/sys/transport.h>
#include <git2/tag.h>
#include <git2/trace.h>
#include <git2/transaction.h>
#include <git2/transport.h>
#include <git2/tree.h>
#include <git2/types.h>
#include <git2/version.h>
#include <git2/worktree.h>
#include <git2.h>
"

let main () =
  let ml_out = open_out "examples/git2/stub-generation/git2_generated.ml" in
  let c_out = open_out "examples/git2/stub-generation/git2_stubs.c" in
  let c_fmt = Format.formatter_of_out_channel c_out in
  let ml_fmt = Format.formatter_of_out_channel ml_out in
  Format.fprintf c_fmt "%s@\n" c_headers;
  Cstubs.write_c c_fmt ~prefix:"git2_stub_" (module Git2_bindings.Bindings);
  Cstubs.write_ml ml_fmt ~prefix:"git2_stub_" (module Git2_bindings.Bindings);
  Format.pp_print_flush ml_fmt ();
  Format.pp_print_flush c_fmt ();
  close_out ml_out;
  close_out c_out

let () = main ()
