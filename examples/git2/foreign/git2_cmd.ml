(*
 * Copyright (c) 2013 Jeremy Yallop.
 *
 * This file is distributed under the terms of the MIT License.
 * See the file LICENSE for details.
 *)

open Git2
open Git2.Global

let () =
  git_libgit2_init ()
  |> Printf.printf
      "Exectuted git_libgit2_init with status code %d"
