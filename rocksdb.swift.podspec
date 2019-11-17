Pod::Spec.new do |s|
  s.name             = 'rocksdb.swift'
  s.version          = '6.4.6'
  s.summary          = 'rocksdb Wrapper for Swift. Cocoapods and SPM support. Linux support.'

  s.description      = <<-DESC
This pod wraps the awesome rocksdb key-value database from facebook to awesome Swifty Syntax.
Works on iOS, macOS, tvOS, watchOS and Linux. Major and Minor Version numbers are kept in sync with
the upstream rocksdb library. Patch version varies.
                       DESC

  s.homepage         = 'https://github.com/Ybrin/rocksdb.swift'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Koray Koska' => 'koray@koska.at' }
  s.source           = { :git => 'https://github.com/Ybrin/rocksdb.swift.git', :tag => s.version.to_s, :submodules => true }

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.10'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '2.0'

  s.swift_versions = '5.1.2', '5.0', '5.1'

  s.module_name = 'RocksDB'

  s.pod_target_xcconfig = {
    'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/rocksdb.swift/librocksdb/upstream"'
  }
  #  "${PODS_ROOT}/rocksdb.swift/librocksdb/upstream/include" "${PODS_ROOT}/rocksdb.swift/librocksdb/upstream/util"

  # s.header_dir = 'Sources/librocksdb/upstream'
  s.header_mappings_dir = 'Sources/librocksdb'

  s.source_files = 'Sources/librocksdb/upstream/{cache,db,env,file,include,logging,memory,memtable,monitoring,options,port,table,test_util,trace_replay,util,utilities}/**/*.{cc,h}',
                   'Sources/librocksdb/upstream/patches/build_version.cc',
                   # 'Sources/RocksDB/**/*.swift'
  s.public_header_files = 'Sources/librocksdb/upstream/include/**/*.h'
  # s.private_header_files = 'Sources/librocksdb/upstream/{cache,db,env,file,logging,memory,memtable,monitoring,options,port,table,test_util,trace_replay,util,utilities}/**/*.h'
  s.exclude_files = 'Sources/librocksdb/upstream/cache/cache_test.cc',
                    'Sources/librocksdb/upstream/cache/lru_cache_test.cc',
                    'Sources/librocksdb/upstream/cache/cache_bench.cc',
                    'Sources/librocksdb/upstream/db/db_io_failure_test.cc',
                    'Sources/librocksdb/upstream/db/db_universal_compaction_test.cc',
                    'Sources/librocksdb/upstream/db/options_file_test.cc',
                    'Sources/librocksdb/upstream/db/db_encryption_test.cc',
                    'Sources/librocksdb/upstream/db/db_iter_test.cc',
                    'Sources/librocksdb/upstream/db/db_compaction_test.cc',
                    'Sources/librocksdb/upstream/db/column_family_test.cc',
                    'Sources/librocksdb/upstream/db/range_tombstone_fragmenter_test.cc',
                    'Sources/librocksdb/upstream/db/compact_files_test.cc',
                    'Sources/librocksdb/upstream/db/table_properties_collector_test.cc',
                    'Sources/librocksdb/upstream/db/db_basic_test.cc',
                    'Sources/librocksdb/upstream/db/file_indexer_test.cc',
                    'Sources/librocksdb/upstream/db/flush_job_test.cc',
                    'Sources/librocksdb/upstream/db/external_sst_file_test.cc',
                    'Sources/librocksdb/upstream/db/range_del_aggregator_test.cc',
                    'Sources/librocksdb/upstream/db/db_iter_stress_test.cc',
                    'Sources/librocksdb/upstream/db/fault_injection_test.cc',
                    'Sources/librocksdb/upstream/db/wal_manager_test.cc',
                    'Sources/librocksdb/upstream/db/db_inplace_update_test.cc',
                    'Sources/librocksdb/upstream/db/db_flush_test.cc',
                    'Sources/librocksdb/upstream/db/db_log_iter_test.cc',
                    'Sources/librocksdb/upstream/db/error_handler_test.cc',
                    'Sources/librocksdb/upstream/db/prefix_test.cc',
                    'Sources/librocksdb/upstream/db/db_range_del_test.cc',
                    'Sources/librocksdb/upstream/db/db_memtable_test.cc',
                    'Sources/librocksdb/upstream/db/compaction/compaction_iterator_test.cc',
                    'Sources/librocksdb/upstream/db/compaction/compaction_job_stats_test.cc',
                    'Sources/librocksdb/upstream/db/compaction/compaction_picker_test.cc',
                    'Sources/librocksdb/upstream/db/compaction/compaction_job_test.cc',
                    'Sources/librocksdb/upstream/db/perf_context_test.cc',
                    'Sources/librocksdb/upstream/db/comparator_db_test.cc',
                    'Sources/librocksdb/upstream/db/version_builder_test.cc',
                    'Sources/librocksdb/upstream/db/external_sst_file_basic_test.cc',
                    'Sources/librocksdb/upstream/db/db_blob_index_test.cc',
                    'Sources/librocksdb/upstream/db/db_statistics_test.cc',
                    'Sources/librocksdb/upstream/db/import_column_family_test.cc',
                    'Sources/librocksdb/upstream/db/db_compaction_filter_test.cc',
                    'Sources/librocksdb/upstream/db/corruption_test.cc',
                    'Sources/librocksdb/upstream/db/repair_test.cc',
                    'Sources/librocksdb/upstream/db/db_merge_operator_test.cc',
                    'Sources/librocksdb/upstream/db/merge_helper_test.cc',
                    'Sources/librocksdb/upstream/db/filename_test.cc',
                    'Sources/librocksdb/upstream/db/log_test.cc',
                    'Sources/librocksdb/upstream/db/obsolete_files_test.cc',
                    'Sources/librocksdb/upstream/db/db_properties_test.cc',
                    'Sources/librocksdb/upstream/db/version_set_test.cc',
                    'Sources/librocksdb/upstream/db/db_test.cc',
                    'Sources/librocksdb/upstream/db/listener_test.cc',
                    'Sources/librocksdb/upstream/db/db_options_test.cc',
                    'Sources/librocksdb/upstream/db/db_table_properties_test.cc',
                    'Sources/librocksdb/upstream/db/merge_test.cc',
                    'Sources/librocksdb/upstream/db/db_bloom_filter_test.cc',
                    'Sources/librocksdb/upstream/db/cuckoo_table_db_test.cc',
                    'Sources/librocksdb/upstream/db/db_impl/db_secondary_test.cc',
                    'Sources/librocksdb/upstream/db/db_block_cache_test.cc',
                    'Sources/librocksdb/upstream/db/manual_compaction_test.cc',
                    'Sources/librocksdb/upstream/db/db_wal_test.cc',
                    'Sources/librocksdb/upstream/db/memtable_list_test.cc',
                    'Sources/librocksdb/upstream/db/write_batch_test.cc',
                    'Sources/librocksdb/upstream/db/db_iterator_test.cc',
                    'Sources/librocksdb/upstream/db/db_write_test.cc',
                    'Sources/librocksdb/upstream/db/plain_table_db_test.cc',
                    'Sources/librocksdb/upstream/db/db_sst_test.cc',
                    'Sources/librocksdb/upstream/db/version_edit_test.cc',
                    'Sources/librocksdb/upstream/db/db_tailing_iter_test.cc',
                    'Sources/librocksdb/upstream/db/deletefile_test.cc',
                    'Sources/librocksdb/upstream/db/write_controller_test.cc',
                    'Sources/librocksdb/upstream/db/dbformat_test.cc',
                    'Sources/librocksdb/upstream/db/db_dynamic_level_test.cc',
                    'Sources/librocksdb/upstream/db/write_callback_test.cc',
                    'Sources/librocksdb/upstream/db/db_test2.cc',
                    'Sources/librocksdb/upstream/db/db_test_util.cc',
                    'Sources/librocksdb/upstream/db/c_test.c',
                    'Sources/librocksdb/upstream/db/forward_iterator_bench.cc',
                    'Sources/librocksdb/upstream/db/range_del_aggregator_bench.cc',
                    'Sources/librocksdb/upstream/env/env_basic_test.cc',
                    'Sources/librocksdb/upstream/env/env_test.cc',
                    'Sources/librocksdb/upstream/env/mock_env_test.cc',
                    'Sources/librocksdb/upstream/file/delete_scheduler_test.cc',
                    'Sources/librocksdb/upstream/logging/auto_roll_logger_test.cc',
                    'Sources/librocksdb/upstream/logging/env_logger_test.cc',
                    'Sources/librocksdb/upstream/logging/event_logger_test.cc',
                    'Sources/librocksdb/upstream/memory/arena_test.cc',
                    'Sources/librocksdb/upstream/memtable/inlineskiplist_test.cc',
                    'Sources/librocksdb/upstream/memtable/skiplist_test.cc',
                    'Sources/librocksdb/upstream/memtable/write_buffer_manager_test.cc',
                    'Sources/librocksdb/upstream/memtable/memtablerep_bench.cc',
                    'Sources/librocksdb/upstream/monitoring/histogram_test.cc',
                    'Sources/librocksdb/upstream/monitoring/iostats_context_test.cc',
                    'Sources/librocksdb/upstream/monitoring/statistics_test.cc',
                    'Sources/librocksdb/upstream/monitoring/stats_history_test.cc',
                    'Sources/librocksdb/upstream/options/options_settable_test.cc',
                    'Sources/librocksdb/upstream/options/options_test.cc',
                    'Sources/librocksdb/upstream/port/win',
                    'Sources/librocksdb/upstream/table/sst_file_reader_test.cc',
                    'Sources/librocksdb/upstream/table/cleanable_test.cc',
                    'Sources/librocksdb/upstream/table/merger_test.cc',
                    'Sources/librocksdb/upstream/table/cuckoo/cuckoo_table_builder_test.cc',
                    'Sources/librocksdb/upstream/table/cuckoo/cuckoo_table_reader_test.cc',
                    'Sources/librocksdb/upstream/table/block_based/data_block_hash_index_test.cc',
                    'Sources/librocksdb/upstream/table/block_based/full_filter_block_test.cc',
                    'Sources/librocksdb/upstream/table/block_based/block_based_filter_block_test.cc',
                    'Sources/librocksdb/upstream/table/block_based/block_test.cc',
                    'Sources/librocksdb/upstream/table/block_based/partitioned_filter_block_test.cc',
                    'Sources/librocksdb/upstream/table/table_test.cc',
                    'Sources/librocksdb/upstream/table/mock_table.h',
                    'Sources/librocksdb/upstream/table/mock_table.cc',
                    'Sources/librocksdb/upstream/table/table_reader_bench.cc',
                    'Sources/librocksdb/upstream/test_util/testharness.cc',
                    'Sources/librocksdb/upstream/test_util/testharness.h',
                    'Sources/librocksdb/upstream/trace_replay/block_cache_tracer_test.cc',
                    'Sources/librocksdb/upstream/util/rate_limiter_test.cc',
                    'Sources/librocksdb/upstream/util/thread_list_test.cc',
                    'Sources/librocksdb/upstream/util/thread_local_test.cc',
                    'Sources/librocksdb/upstream/util/file_reader_writer_test.cc',
                    'Sources/librocksdb/upstream/util/heap_test.cc',
                    'Sources/librocksdb/upstream/util/autovector_test.cc',
                    'Sources/librocksdb/upstream/util/crc32c_test.cc',
                    'Sources/librocksdb/upstream/util/bloom_test.cc',
                    'Sources/librocksdb/upstream/util/hash_test.cc',
                    'Sources/librocksdb/upstream/util/filelock_test.cc',
                    'Sources/librocksdb/upstream/util/coding_test.cc',
                    'Sources/librocksdb/upstream/util/dynamic_bloom_test.cc',
                    'Sources/librocksdb/upstream/util/repeatable_thread_test.cc',
                    'Sources/librocksdb/upstream/util/slice_transform_test.cc',
                    'Sources/librocksdb/upstream/util/timer_queue_test.cc',
                    'Sources/librocksdb/upstream/util/crc32c_ppc_asm.S',
                    'Sources/librocksdb/upstream/util/log_write_bench.cc',
                    'Sources/librocksdb/upstream/utilities/simulator_cache/sim_cache_test.cc',
                    'Sources/librocksdb/upstream/utilities/simulator_cache/cache_simulator_test.cc',
                    'Sources/librocksdb/upstream/utilities/options/options_util_test.cc',
                    'Sources/librocksdb/upstream/utilities/util_merge_operators_test.cc',
                    'Sources/librocksdb/upstream/utilities/checkpoint/checkpoint_test.cc',
                    'Sources/librocksdb/upstream/utilities/memory/memory_test.cc',
                    'Sources/librocksdb/upstream/utilities/ttl/ttl_test.cc',
                    'Sources/librocksdb/upstream/utilities/backupable/backupable_db_test.cc',
                    'Sources/librocksdb/upstream/utilities/table_properties_collectors/compact_on_deletion_collector_test.cc',
                    'Sources/librocksdb/upstream/utilities/option_change_migration/option_change_migration_test.cc',
                    'Sources/librocksdb/upstream/utilities/env_librados_test.cc',
                    'Sources/librocksdb/upstream/utilities/transactions/write_prepared_transaction_test.cc',
                    'Sources/librocksdb/upstream/utilities/transactions/write_unprepared_transaction_test.cc',
                    'Sources/librocksdb/upstream/utilities/transactions/transaction_test.cc',
                    'Sources/librocksdb/upstream/utilities/transactions/optimistic_transaction_test.cc',
                    'Sources/librocksdb/upstream/utilities/cassandra/cassandra_serialize_test.cc',
                    'Sources/librocksdb/upstream/utilities/cassandra/cassandra_row_merge_test.cc',
                    'Sources/librocksdb/upstream/utilities/cassandra/cassandra_format_test.cc',
                    'Sources/librocksdb/upstream/utilities/cassandra/cassandra_functional_test.cc',
                    'Sources/librocksdb/upstream/utilities/write_batch_with_index/write_batch_with_index_test.cc',
                    'Sources/librocksdb/upstream/utilities/merge_operators/string_append/stringappend_test.cc',
                    'Sources/librocksdb/upstream/utilities/persistent_cache/persistent_cache_test.cc',
                    'Sources/librocksdb/upstream/utilities/persistent_cache/hash_table_test.cc',
                    'Sources/librocksdb/upstream/utilities/object_registry_test.cc',
                    'Sources/librocksdb/upstream/utilities/env_mirror_test.cc',
                    'Sources/librocksdb/upstream/utilities/env_timed_test.cc',
                    'Sources/librocksdb/upstream/utilities/blob_db/blob_db_test.cc',
                    'Sources/librocksdb/upstream/utilities/env_librados.cc',
                    'Sources/librocksdb/upstream/utilities/cassandra/test_utils.cc',
                    'Sources/librocksdb/upstream/utilities/cassandra/test_utils.h',
                    'Sources/librocksdb/upstream/utilities/cassandra/merge_operator.cc',
                    'Sources/librocksdb/upstream/utilities/cassandra/merge_operator.h',
                    'Sources/librocksdb/upstream/utilities/cassandra/format.cc',
                    'Sources/librocksdb/upstream/utilities/cassandra/format.h',
                    'Sources/librocksdb/upstream/utilities/cassandra/cassandra_compaction_filter.cc',
                    'Sources/librocksdb/upstream/utilities/cassandra/cassandra_compaction_filter.h',
                    'Sources/librocksdb/upstream/utilities/persistent_cache/hash_table_bench.cc',
                    'Sources/librocksdb/upstream/utilities/persistent_cache/persistent_cache_bench.cc'
end