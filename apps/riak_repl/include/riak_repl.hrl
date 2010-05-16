-define(REPL_FSM_TIMEOUT, 15000).
-define(REPL_QUEUE_TIMEOUT, 1000).
-define(REPL_MERK_TIMEOUT, infinity).
-define(REPL_CONN_RETRY, 30000).
-define(DEFAULT_REPL_PORT, 9010).
-define(NEVER_SYNCED, {0, 0, 0}).
-define(MERKLE_BUFSZ, 1048576).
-define(MERKLE_CHUNKSZ, 8192).

-record(peer_info, {riak_version, repl_version, ring}).
-record(repl_state, {
          socket :: port(),
          sitename :: string(),
          my_pi :: #peer_info{},
          client :: tuple(),
          work_dir :: string()}).

          

