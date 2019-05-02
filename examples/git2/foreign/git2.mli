module Common :
  sig
    val git_feature_t : int64 Ctypes.typ
    val git_libgit_2_opt_t : int64 Ctypes.typ
    val git_libgit2_version :
      int Ctypes_static.ptr ->
      int Ctypes_static.ptr -> int Ctypes_static.ptr -> unit
    val git_libgit2_features : unit -> int
    val git_libgit2_opts : int -> int
  end
module Buffer :
  sig
    type git_buf
    val struc : git_buf Ctypes_static.structure Ctypes.typ
    val ptr_ :
      (char Ctypes_static.ptr, git_buf Ctypes_static.structure) Ctypes.field
    val size_ :
      (Unsigned.size_t, git_buf Ctypes_static.structure) Ctypes.field
    val git_buf : git_buf Ctypes.structure Ctypes.typ
    val git_buf_free : git_buf Ctypes.structure Ctypes_static.ptr -> unit
    val git_buf_grow :
      git_buf Ctypes.structure Ctypes_static.ptr -> Unsigned.size_t -> int
    val git_buf_set :
      git_buf Ctypes.structure Ctypes_static.ptr ->
      unit Ctypes_static.ptr -> Unsigned.size_t -> int
    val git_buf_is_binary : git_buf Ctypes.structure Ctypes_static.ptr -> int
    val git_buf_contains_nul :
      git_buf Ctypes.structure Ctypes_static.ptr -> int
  end
module Types :
  sig
    type git_odb
    type git_odb_backend
    type git_odb_object
    type git_odb_stream
    type git_odb_writepack
    type git_refdb
    type git_refdb_backend
    type git_repository
    type git_object
    type git_revwalk
    type git_tag
    type git_blob
    type git_commit
    type git_tree_entry
    type git_tree
    type git_treebuilder
    type git_index
    type git_index_conflict_iterator
    type git_config
    type git_config_backend
    type git_reflog_entry
    type git_reflog
    type git_note
    type git_packbuilder
    type git_time
    type git_time_t
    type git_signature
    type git_reference
    type git_reference_iterator
    type git_transaction
    type git_annotated_commit
    type git_merge_result
    type git_status_list
    type git_rebase
    type git_refspec
    type git_remote
    type git_transport
    type git_push
    type git_remote_head
    type git_remote_callbacks
    type git_transfer_progress
    val git_off_t : int64 Ctypes.typ
    val git_time_t : int64 Ctypes.typ
    val git_ref_t : int64 Ctypes.typ
    val git_branch_t : int64 Ctypes.typ
    val git_filemode_t : int64 Ctypes.typ
    val git_cert_t : int64 Ctypes.typ
    val git_otype : int64 Ctypes.typ
    val git_odb : git_odb Ctypes.structure Ctypes.typ
    val git_odb_backend : git_odb_backend Ctypes.structure Ctypes.typ
    val git_odb_object : git_odb_object Ctypes.structure Ctypes.typ
    val git_odb_stream : git_odb_stream Ctypes.structure Ctypes.typ
    val git_odb_writepack : git_odb_writepack Ctypes.structure Ctypes.typ
    val git_refdb : git_refdb Ctypes.structure Ctypes.typ
    val git_refdb_backend : git_refdb_backend Ctypes.structure Ctypes.typ
    val git_repository : git_repository Ctypes.structure Ctypes.typ
    val git_object : git_object Ctypes.structure Ctypes.typ
    val git_revwalk : git_revwalk Ctypes.structure Ctypes.typ
    val git_tag : git_tag Ctypes.structure Ctypes.typ
    val git_blob : git_blob Ctypes.structure Ctypes.typ
    val git_commit : git_commit Ctypes.structure Ctypes.typ
    val git_tree_entry : git_tree_entry Ctypes.structure Ctypes.typ
    val git_tree : git_tree Ctypes.structure Ctypes.typ
    val git_treebuilder : git_treebuilder Ctypes.structure Ctypes.typ
    val git_index : git_index Ctypes.structure Ctypes.typ
    val git_index_conflict_iterator :
      git_index_conflict_iterator Ctypes.structure Ctypes.typ
    val git_config : git_config Ctypes.structure Ctypes.typ
    val git_config_backend : git_config_backend Ctypes.structure Ctypes.typ
    val git_reflog_entry : git_reflog_entry Ctypes.structure Ctypes.typ
    val git_reflog : git_reflog Ctypes.structure Ctypes.typ
    val git_note : git_note Ctypes.structure Ctypes.typ
    val git_packbuilder : git_packbuilder Ctypes.structure Ctypes.typ
    val git_time : git_time Ctypes.structure Ctypes.typ
    val git_signature : git_signature Ctypes.structure Ctypes.typ
    val git_reference : git_reference Ctypes.structure Ctypes.typ
    val git_reference_iterator :
      git_reference_iterator Ctypes.structure Ctypes.typ
    val git_transaction : git_transaction Ctypes.structure Ctypes.typ
    val git_annotated_commit :
      git_annotated_commit Ctypes.structure Ctypes.typ
    val git_merge_result : git_merge_result Ctypes.structure Ctypes.typ
    val git_status_list : git_status_list Ctypes.structure Ctypes.typ
    val git_rebase : git_rebase Ctypes.structure Ctypes.typ
    val git_refspec : git_refspec Ctypes.structure Ctypes.typ
    val git_remote : git_remote Ctypes.structure Ctypes.typ
    val git_transport : git_transport Ctypes.structure Ctypes.typ
    val git_push : git_push Ctypes.structure Ctypes.typ
    val git_remote_head : git_remote_head Ctypes.structure Ctypes.typ
    val git_remote_callbacks :
      git_remote_callbacks Ctypes.structure Ctypes.typ
    val git_transfer_progress :
      git_transfer_progress Ctypes.structure Ctypes.typ
    val git_transfer_progress_cb :
      (git_transfer_progress Ctypes.structure Ctypes_static.ptr ->
       unit Ctypes_static.ptr -> int)
      Ctypes.fn
    val git_transport_message_cb :
      (string -> int -> unit Ctypes_static.ptr -> int) Ctypes.fn
  end
module Oid :
  sig
    type git_oid
    type git_oid_shorten
    val git_oid_shorten : git_oid_shorten Ctypes.structure Ctypes.typ
    val git_oid : git_oid Ctypes.structure Ctypes.typ
    val git_oid_fromstr :
      git_oid Ctypes.structure Ctypes_static.ptr -> string -> int
    val git_oid_fromstrp :
      git_oid Ctypes.structure Ctypes_static.ptr -> string -> int
    val git_oid_fromstrn :
      git_oid Ctypes.structure Ctypes_static.ptr -> string -> Unsigned.size_t
    val git_oid_fmt :
      string -> git_oid Ctypes.structure Ctypes_static.ptr -> unit
    val git_oid_nfmt :
      string ->
      Unsigned.size_t -> git_oid Ctypes.structure Ctypes_static.ptr -> unit
    val git_oid_pathfmt :
      string -> git_oid Ctypes.structure Ctypes_static.ptr -> unit
    val git_oid_tostr_s :
      git_oid Ctypes.structure Ctypes_static.ptr -> string
    val git_oid_tostr :
      string ->
      Unsigned.size_t -> git_oid Ctypes.structure Ctypes_static.ptr -> string
    val git_oid_cpy :
      git_oid Ctypes.structure Ctypes_static.ptr ->
      git_oid Ctypes.structure Ctypes_static.ptr -> unit
    val git_oid_cmp :
      git_oid Ctypes.structure Ctypes_static.ptr ->
      git_oid Ctypes.structure Ctypes_static.ptr -> int
    val git_oid_equal :
      git_oid Ctypes.structure Ctypes_static.ptr ->
      git_oid Ctypes.structure Ctypes_static.ptr -> int
    val git_oid_ncmp :
      git_oid Ctypes.structure Ctypes_static.ptr ->
      git_oid Ctypes.structure Ctypes_static.ptr -> Unsigned.size_t -> int
    val git_oid_streq :
      git_oid Ctypes.structure Ctypes_static.ptr -> string -> int
    val git_oid_strcmp :
      git_oid Ctypes.structure Ctypes_static.ptr -> string -> int
    val git_oid_iszero : git_oid Ctypes.structure Ctypes_static.ptr -> int
    val git_oid_shorten_new :
      Unsigned.size_t -> git_oid_shorten Ctypes.structure Ctypes_static.ptr
    val git_oid_shorten_add :
      git_oid_shorten Ctypes.structure Ctypes_static.ptr -> string -> int
    val git_oid_shorten_free :
      git_oid_shorten Ctypes.structure Ctypes_static.ptr -> unit
  end
module Blame :
  sig
    type git_blame_options
    type git_blame_hunk
    type git_blame
    val git_blame_flag_t : int64 Ctypes.typ
    val git_blame_options : git_blame_options Ctypes.structure Ctypes.typ
    val git_blame_hunk : git_blame_hunk Ctypes.structure Ctypes.typ
    val git_blame : git_blame Ctypes.structure Ctypes.typ
    val git_blame_init_options :
      git_blame_options Ctypes.structure Ctypes_static.ptr ->
      Unsigned.uint -> int
    val git_blame_get_hunk_count :
      git_blame Ctypes.structure Ctypes_static.ptr -> Unsigned.uint32
    val git_blame_get_hunk_byindex :
      git_blame Ctypes.structure Ctypes_static.ptr ->
      Unsigned.uint32 -> git_blame_hunk Ctypes.structure Ctypes_static.ptr
    val git_blame_get_hunk_byline :
      git_blame Ctypes.structure Ctypes_static.ptr ->
      Unsigned.uint32 -> git_blame_hunk Ctypes.structure Ctypes_static.ptr
    val git_blame_file :
      git_blame Ctypes.structure Ctypes_static.ptr Ctypes_static.ptr ->
      Types.git_repository Ctypes.structure Ctypes_static.ptr ->
      string -> git_blame_options Ctypes.structure Ctypes_static.ptr -> int
    val git_blame_buffer :
      git_blame Ctypes.structure Ctypes_static.ptr Ctypes_static.ptr ->
      git_blame Ctypes.structure Ctypes_static.ptr ->
      string -> Unsigned.size_t -> int
    val git_blame_free : git_blame Ctypes.structure Ctypes_static.ptr -> unit
  end
module Indexer : sig  end
module Checkout : sig  end
module Remote :
  sig
    val git_remote_rename_problem_cb :
      (string -> unit Ctypes_static.ptr -> int) Ctypes.fn
  end
module Transport : sig  end
module Repository :
  sig
    type git_repository_init_options
    val git_repository_open_flag_t : int64 Ctypes.typ
    val git_repository_init_flag_t : int64 Ctypes.typ
    val git_repository_init_mode_t : int64 Ctypes.typ
    val git_repository_state_t : int64 Ctypes.typ
    val git_repository_init_options :
      git_repository_init_options Ctypes.structure Ctypes.typ
    val git_repository_open :
      Types.git_repository Ctypes.structure Ctypes_static.ptr
      Ctypes_static.ptr -> string -> int
    val git_repository_wrap_odb :
      Types.git_repository Ctypes.structure Ctypes_static.ptr
      Ctypes_static.ptr ->
      Types.git_odb Ctypes.structure Ctypes_static.ptr -> int
    val git_repository_discover :
      Buffer.git_buf Ctypes.structure Ctypes_static.ptr ->
      string -> int -> string option -> int
    val git_repository_open_ext :
      Types.git_repository Ctypes.structure Ctypes_static.ptr
      Ctypes_static.ptr option -> string -> int -> string option -> int
    val git_repository_open_bare :
      Types.git_repository Ctypes.structure Ctypes_static.ptr
      Ctypes_static.ptr -> string -> int
    val git_repository_free :
      Types.git_repository Ctypes.structure Ctypes_static.ptr -> unit
    val git_repository_init :
      Types.git_repository Ctypes.structure Ctypes_static.ptr
      Ctypes_static.ptr -> string -> Unsigned.uint -> int
    val git_repository_init_init_options :
      git_repository_init_options Ctypes.structure Ctypes_static.ptr ->
      Unsigned.uint -> int
    val git_repository_init_ext :
      Types.git_repository Ctypes.structure Ctypes_static.ptr
      Ctypes_static.ptr ->
      string ->
      git_repository_init_options Ctypes.structure Ctypes_static.ptr -> int
    val git_repository_head :
      Types.git_reference Ctypes.structure Ctypes_static.ptr
      Ctypes_static.ptr ->
      Types.git_repository Ctypes.structure Ctypes_static.ptr -> int
    val git_repository_head_detached :
      Types.git_repository Ctypes.structure Ctypes_static.ptr -> int
    val git_repository_head_unborn :
      Types.git_repository Ctypes.structure Ctypes_static.ptr -> int
    val git_repository_is_empty :
      Types.git_repository Ctypes.structure Ctypes_static.ptr -> int
    val git_repository_path :
      Types.git_repository Ctypes.structure Ctypes_static.ptr -> string
    val git_repository_workdir :
      Types.git_repository Ctypes.structure Ctypes_static.ptr -> string
    val git_repository_set_workdir :
      Types.git_repository Ctypes.structure Ctypes_static.ptr ->
      string -> int -> int
    val git_repository_is_bare :
      Types.git_repository Ctypes.structure Ctypes_static.ptr -> int
    val git_repository_config :
      Types.git_config Ctypes.structure Ctypes_static.ptr Ctypes_static.ptr ->
      Types.git_repository Ctypes.structure Ctypes_static.ptr -> int
    val git_repository_config_snapshot :
      Types.git_config Ctypes.structure Ctypes_static.ptr Ctypes_static.ptr ->
      Types.git_repository Ctypes.structure Ctypes_static.ptr -> int
    val git_repository_odb :
      Types.git_odb Ctypes.structure Ctypes_static.ptr Ctypes_static.ptr ->
      Types.git_repository Ctypes.structure Ctypes_static.ptr -> int
    val git_repository_refdb :
      Types.git_index Ctypes.structure Ctypes_static.ptr Ctypes_static.ptr ->
      Types.git_repository Ctypes.structure Ctypes_static.ptr -> int
    val git_repository_index :
      Types.git_index Ctypes.structure Ctypes_static.ptr Ctypes_static.ptr ->
      Types.git_repository Ctypes.structure Ctypes_static.ptr -> int
    val git_repository_message :
      Buffer.git_buf Ctypes.structure Ctypes_static.ptr ->
      Types.git_repository Ctypes.structure Ctypes_static.ptr -> int
    val git_repository_message_remove :
      Types.git_repository Ctypes.structure Ctypes_static.ptr -> int
    val git_repository_state_cleanup :
      Types.git_repository Ctypes.structure Ctypes_static.ptr -> int
    val git_repository_hashfile :
      Oid.git_oid Ctypes.structure Ctypes_static.ptr ->
      Types.git_repository Ctypes.structure Ctypes_static.ptr ->
      string -> int64 -> string -> int
    val git_repository_set_head :
      Types.git_repository Ctypes.structure Ctypes_static.ptr ->
      string -> int
    val git_repository_set_head_detached :
      Types.git_repository Ctypes.structure Ctypes_static.ptr ->
      Oid.git_oid Ctypes.structure Ctypes_static.ptr -> int
    val git_repository_set_head_detached_from_annotated :
      Types.git_repository Ctypes.structure Ctypes_static.ptr ->
      Types.git_annotated_commit Ctypes.structure Ctypes_static.ptr -> int
    val git_repository_detach_head :
      Types.git_repository Ctypes.structure Ctypes_static.ptr -> int
    val git_repository_state :
      Types.git_repository Ctypes.structure Ctypes_static.ptr -> int
    val git_repository_set_namespace :
      Types.git_repository Ctypes.structure Ctypes_static.ptr ->
      string -> int
    val git_repository_get_namespace :
      Types.git_repository Ctypes.structure Ctypes_static.ptr -> string
    val git_repository_is_shallow :
      Types.git_repository Ctypes.structure Ctypes_static.ptr -> int
    val git_repository_ident :
      string Ctypes_static.ptr ->
      string Ctypes_static.ptr ->
      Types.git_repository Ctypes.structure Ctypes_static.ptr -> int
    val git_repository_set_ident :
      Types.git_repository Ctypes.structure Ctypes_static.ptr ->
      string -> string -> int
  end
module Annotated_commit :
  sig
    val git_annotated_commit_from_ref :
      Types.git_annotated_commit Ctypes.structure Ctypes_static.ptr
      Ctypes_static.ptr ->
      Types.git_repository Ctypes.structure Ctypes_static.ptr ->
      Types.git_reference Ctypes.structure Ctypes_static.ptr -> int
    val git_annotated_commit_from_fetchhead :
      Types.git_annotated_commit Ctypes.structure Ctypes_static.ptr
      Ctypes_static.ptr ->
      Types.git_repository Ctypes.structure Ctypes_static.ptr ->
      string ->
      string -> Oid.git_oid Ctypes.structure Ctypes_static.ptr -> int
    val git_annotated_commit_lookup :
      Types.git_annotated_commit Ctypes.structure Ctypes_static.ptr
      Ctypes_static.ptr ->
      Types.git_repository Ctypes.structure Ctypes_static.ptr ->
      Oid.git_oid Ctypes.structure Ctypes_static.ptr -> int
    val git_annotated_commit_from_revspec :
      Types.git_annotated_commit Ctypes.structure Ctypes_static.ptr
      Ctypes_static.ptr ->
      Types.git_repository Ctypes.structure Ctypes_static.ptr ->
      string -> int
    val git_annotated_commit_id :
      Types.git_annotated_commit Ctypes.structure Ctypes_static.ptr ->
      Oid.git_oid Ctypes.structure Ctypes_static.ptr
    val git_annotated_commit_free :
      Types.git_annotated_commit Ctypes.structure Ctypes_static.ptr -> unit
  end
module Clone :
  sig
    type git_clone_options
    val git_remote_create_cb :
      (Types.git_remote Ctypes.structure Ctypes_static.ptr Ctypes_static.ptr ->
       Types.git_repository Ctypes.structure Ctypes_static.ptr ->
       string -> string -> unit Ctypes_static.ptr -> int)
      Ctypes.fn
    val git_repository_create_cb :
      (Types.git_repository Ctypes.structure Ctypes_static.ptr
       Ctypes_static.ptr -> string -> int -> unit Ctypes_static.ptr -> int)
      Ctypes.fn
    val git_clone_options : git_clone_options Ctypes.structure Ctypes.typ
    val git_clone_init_options :
      git_clone_options Ctypes.structure Ctypes_static.ptr -> int64 -> int
    val git_clone :
      Types.git_repository Ctypes.structure Ctypes_static.ptr
      Ctypes_static.ptr ->
      string ->
      string -> git_clone_options Ctypes.structure Ctypes_static.ptr -> int
  end
module Attr :
  sig
    val git_attr_value : string -> int
    val git_attr_get :
      string Ctypes_static.ptr ->
      Types.git_repository Ctypes.structure Ctypes_static.ptr ->
      Unsigned.uint32 -> string -> string -> int
    val git_attr_get_many :
      string Ctypes_static.ptr ->
      Types.git_repository Ctypes.structure Ctypes_static.ptr ->
      Unsigned.uint32 ->
      string -> Unsigned.size_t -> string Ctypes_static.ptr -> int
    val git_attr_add_macro :
      Types.git_repository Ctypes.structure Ctypes_static.ptr ->
      string -> string -> int
  end
module Blob :
  sig
    val git_blob_lookup :
      Types.git_blob Ctypes.structure Ctypes_static.ptr Ctypes_static.ptr ->
      Types.git_repository Ctypes.structure Ctypes_static.ptr ->
      Oid.git_oid Ctypes.structure Ctypes_static.ptr -> int
    val git_blob_lookup_prefix :
      Types.git_blob Ctypes.structure Ctypes_static.ptr Ctypes_static.ptr ->
      Types.git_repository Ctypes.structure Ctypes_static.ptr ->
      Oid.git_oid Ctypes.structure Ctypes_static.ptr ->
      Unsigned.size_t -> int
    val git_blob_free :
      Types.git_blob Ctypes.structure Ctypes_static.ptr -> unit
    val git_blob_id :
      Types.git_blob Ctypes.structure Ctypes_static.ptr ->
      Oid.git_oid Ctypes.structure Ctypes_static.ptr
    val git_blob_owner :
      Types.git_blob Ctypes.structure Ctypes_static.ptr ->
      Types.git_repository Ctypes.structure Ctypes_static.ptr
    val git_blob_rawcontent :
      Types.git_blob Ctypes.structure Ctypes_static.ptr ->
      unit Ctypes_static.ptr
    val git_blob_rawsize :
      Types.git_blob Ctypes.structure Ctypes_static.ptr -> int64
    val git_blob_filtered_content :
      Buffer.git_buf Ctypes.structure Ctypes_static.ptr ->
      Types.git_blob Ctypes.structure Ctypes_static.ptr ->
      string -> int -> int
    val git_blob_create_fromworkdir :
      Oid.git_oid Ctypes.structure Ctypes_static.ptr ->
      Types.git_repository Ctypes.structure Ctypes_static.ptr ->
      string -> int
    val git_blob_create_fromdisk :
      Oid.git_oid Ctypes.structure Ctypes_static.ptr ->
      Types.git_repository Ctypes.structure Ctypes_static.ptr ->
      string -> int
    val git_blob_create_frombuffer :
      Oid.git_oid Ctypes.structure Ctypes_static.ptr ->
      Types.git_repository Ctypes.structure Ctypes_static.ptr ->
      unit Ctypes_static.ptr -> Unsigned.size_t -> int
    val git_blob_is_binary :
      Types.git_blob Ctypes.structure Ctypes_static.ptr -> int
  end
module Global :
  sig
    val git_libgit2_init : unit -> int
    val git_libgit2_shutdown : unit -> int
  end
module Commit :
  sig
    val git_commit_lookup :
      Types.git_commit Ctypes.structure Ctypes_static.ptr Ctypes_static.ptr ->
      Types.git_repository Ctypes.structure Ctypes_static.ptr ->
      Oid.git_oid Ctypes.structure Ctypes_static.ptr -> int
    val git_commit_lookup_prefix :
      Types.git_commit Ctypes.structure Ctypes_static.ptr Ctypes_static.ptr ->
      Types.git_repository Ctypes.structure Ctypes_static.ptr ->
      Oid.git_oid Ctypes.structure Ctypes_static.ptr ->
      Unsigned.size_t -> int
    val git_commit_id :
      Types.git_commit Ctypes.structure Ctypes_static.ptr ->
      Oid.git_oid Ctypes.structure Ctypes_static.ptr
    val git_commit_owner :
      Types.git_commit Ctypes.structure Ctypes_static.ptr ->
      Types.git_repository Ctypes.structure Ctypes_static.ptr
    val git_commit_message_encoding :
      Types.git_commit Ctypes.structure Ctypes_static.ptr -> string option
    val git_commit_message :
      Types.git_commit Ctypes.structure Ctypes_static.ptr -> string
    val git_commit_message_raw :
      Types.git_commit Ctypes.structure Ctypes_static.ptr -> string
    val git_commit_summary :
      Types.git_commit Ctypes.structure Ctypes_static.ptr -> string option
    val git_commit_time :
      Types.git_commit Ctypes.structure Ctypes_static.ptr -> int64
    val git_commit_time_offset :
      Types.git_commit Ctypes.structure Ctypes_static.ptr -> int
    val git_commit_committer :
      Types.git_commit Ctypes.structure Ctypes_static.ptr ->
      Types.git_signature Ctypes.structure Ctypes_static.ptr
    val git_commit_author :
      Types.git_commit Ctypes.structure Ctypes_static.ptr ->
      Types.git_signature Ctypes.structure Ctypes_static.ptr
    val git_commit_raw_header :
      Types.git_commit Ctypes.structure Ctypes_static.ptr -> string
    val git_commit_tree :
      Types.git_tree Ctypes.structure Ctypes_static.ptr Ctypes_static.ptr ->
      Types.git_commit Ctypes.structure Ctypes_static.ptr -> int
    val git_commit_tree_id :
      Types.git_commit Ctypes.structure Ctypes_static.ptr ->
      Oid.git_oid Ctypes.structure Ctypes_static.ptr
    val git_commit_parentcount :
      Types.git_commit Ctypes.structure Ctypes_static.ptr -> Unsigned.uint
    val git_commit_parent :
      Types.git_commit Ctypes.structure Ctypes_static.ptr Ctypes_static.ptr ->
      Types.git_commit Ctypes.structure Ctypes_static.ptr ->
      Unsigned.uint -> int
    val git_commit_parent_id :
      Types.git_commit Ctypes.structure Ctypes_static.ptr ->
      Unsigned.uint -> Oid.git_oid Ctypes.structure Ctypes_static.ptr
    val git_commit_nth_gen_ancestor :
      Types.git_commit Ctypes.structure Ctypes_static.ptr Ctypes_static.ptr ->
      Types.git_commit Ctypes.structure Ctypes_static.ptr ->
      Unsigned.uint -> int
    val git_commit_create :
      Oid.git_oid Ctypes.structure Ctypes_static.ptr ->
      Types.git_repository Ctypes.structure Ctypes_static.ptr ->
      string ->
      Types.git_signature Ctypes.structure Ctypes_static.ptr ->
      Types.git_signature Ctypes.structure Ctypes_static.ptr ->
      string ->
      string ->
      Types.git_tree Ctypes.structure Ctypes_static.ptr ->
      Unsigned.size_t ->
      Types.git_commit Ctypes.structure Ctypes_static.ptr Ctypes_static.ptr ->
      int
    val git_commit_amend :
      Oid.git_oid Ctypes.structure Ctypes_static.ptr ->
      Types.git_commit Ctypes.structure Ctypes_static.ptr ->
      string ->
      Types.git_signature Ctypes.structure Ctypes_static.ptr option ->
      Types.git_signature Ctypes.structure Ctypes_static.ptr option ->
      string option ->
      string option ->
      Types.git_tree Ctypes.structure Ctypes_static.ptr option -> int
  end
