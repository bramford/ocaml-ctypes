(*
 * Copyright (c) 2014 Jeremy Yallop.
 *
 * This file is distributed under the terms of the MIT License.
 * See the file LICENSE for details.
 *)

module N = Git2_bindings.Bindings(Git2_generated)
open N
open N.Global

let () =
  git_libgit2_init ()
  |> Printf.printf
      "Exectuted git_libgit2_init with status code %d"
