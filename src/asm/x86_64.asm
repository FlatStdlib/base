section .text

__read__:
	mov rax, 0
	syscall

__write__:
	mov rax, 1
	syscall

__open__:
	mov rax, 2
	syscall

__close__:
	mov rax, 3
	syscall

__stat__:
	mov rax, 4
	syscall

__fstat__:
	mov rax, 5
	syscall

__lstat__:
	mov rax, 6
	syscall

__poll__:
	mov rax, 7
	syscall

__lseek__:
	mov rax, 8
	syscall

__mmap__:
	mov rax, 9
	syscall

__mprotect__:
	mov rax, 10
	syscall

__munmap__:
	mov rax, 11
	syscall

__brk__:
	mov rax, 12
	syscall

__rt_sigaction__:
	mov rax, 13
	syscall

__rt_sigprocmask__:
	mov rax, 14
	syscall

__rt_sigreturn__:
	mov rax, 15
	syscall

__ioctl__:
	mov rax, 16
	syscall

__pread64__:
	mov rax, 17
	syscall

__pwrite64__:
	mov rax, 18
	syscall

__readv__:
	mov rax, 19
	syscall

__writev__:
	mov rax, 20
	syscall

__access__:
	mov rax, 21
	syscall

__pipe__:
	mov rax, 22
	syscall

__select__:
	mov rax, 23
	syscall

__sched_yield__:
	mov rax, 24
	syscall

__mremap__:
	mov rax, 25
	syscall

__msync__:
	mov rax, 26
	syscall

__mincore__:
	mov rax, 27
	syscall

__madvise__:
	mov rax, 28
	syscall

__shmget__:
	mov rax, 29
	syscall

__shmat__:
	mov rax, 30
	syscall

__shmctl__:
	mov rax, 31
	syscall

__dup__:
	mov rax, 33
	syscall

__dup2__:
	mov rax, 33
	syscall

__pause__:
	mov rax, 34
	syscall

__nanosleep__:
	mov rax, 35
	syscall

__getitimer__:
	mov rax, 36
	syscall

__alarm__:
	mov rax, 37
	syscall

__setitimer__:
	mov rax, 38
	syscall

__getpid__:
	mov rax, 39
	syscall

__sendfile__:
	mov rax, 40
	syscall

__socket__:
	mov rax, 41
	syscall

__connect__:
	mov rax, 42
	syscall

__accept__:
	mov rax, 43
	syscall

__sendto__:
	mov rax, 44
	syscall

__recvfrom__:
	mov rax, 45
	syscall

__sendmsg__:
	mov rax, 46

__recvmsg__:
	mov rax, 47
	syscall

__shutdown__:
	mov rax, 48
	syscall

__bind__:
	mov rax, 49
	syscall

__listen__:
	mov rax, 50
	syscall

__getsockname__:
	mov rax, 51
	syscall

__getpeername__:
	mov rax, 52
	syscall

__socketpair__:
	mov rax, 53
	syscall

__setsockopt__:
	mov rax, 54
	syscall

__getsockopt__:
	mov rax, 55
	syscall

__clone__:
	mov rax, 56
	syscall

__fork__:
	mov rax, 57
	syscall

__vfork__:
	mov rax, 58
	syscall

__execve__:
	mov rax, 59
	syscall

__exit__:
	mov rax, 60
	syscall

__wait4__:
	mov rax, 61
	syscall

__kill__:
	mov rax, 62
	syscall

__uname__:
	mov rax, 63
	syscall

__semget__:
	mov rax, 64
	syscall

__semop__:
	mov rax, 65
	syscall

__semctl__:
	mov rax, 66
	syscall

__shmdt__:
	mov rax, 67
	syscall

__msgget__:
	mov rax, 68
	syscall

__msgsnd__:
	mov rax, 69
	syscall

__msgrcv__:
	mov rax, 70
	syscall

__msgctl__:
	mov rax, 71
	syscall

__fcntl__:
	mov rax, 72
	syscall

__flock__:
	mov rax, 73
	syscall

__fsync__:
	mov rax, 74
	syscall

__fdatasync__:
	mov rax, 75
	syscall

__truncate__:
	mov rax, 76
	syscall

__ftruncate__:
	mov rax, 77
	syscall

__getdents__:
	mov rax, 78
	syscall

__getcwd__:
	mov rax, 79
	syscall

__chdir__:
	mov rax, 80
	syscall

__fchdir__:
	mov rax, 81
	syscall

__rename__:
	mov rax, 82
	syscall

__mkdir__:
	mov rax, 83
	syscall

__rmdir__:
	mov rax, 84
	syscall

__creat__:
	mov rax, 85
	syscall

__link__:
	mov rax, 86
	syscall

__unlink__:
	mov rax, 87
	syscall

__symlink__:
	mov rax, 88
	syscall

__readlink__:
	mov rax, 89
	syscall

__chmod__:
	mov rax, 90
	syscall

__fchmod__:
	mov rax, 91
	syscall

__chown__:
	mov rax, 92
	syscall

__fchown__:
	mov rax, 93
	syscall

__lchown__:
	mov rax, 94
	syscall

__umask__:
	mov rax, 95
	syscall

__gettimeofday__:
	mov rax, 96
	syscall

__getrlimit__:
	mov rax, 97
	syscall

__getrusage__:
	mov rax, 98
	syscall

__sysinfo__:
	mov rax, 99
	syscall

__times__:
	mov rax, 100
	syscall

__ptrace__:
	mov rax, 101
	syscall

__getuid__:
	mov rax, 102
	syscall

__syslog__:
	mov rax, 103
	syscall

__getgid__:
	mov rax, 104
	syscall

__setuid__:
	mov rax, 105
	syscall

__setgid__:
	mov rax, 106
	syscall

__gateuid__:
	mov rax, 107
	syscall

__gategid__:
	mov rax, 108
	syscall

__setpgid__:
	mov rax, 109
	syscall

__getppid__:
	mov rax, 110
	syscall

__getpgrp__:
	mov rax, 111
	syscall

__setsid__:
	mov rax, 112
	syscall

__setreuid__:
	mov rax, 113
	syscall

__setregid__:
	mov rax, 114
	syscall

__getgroups__:
	mov rax, 115
	syscall

__setgroups__:
	mov rax, 116
	syscall

__setresuid__:
	mov rax, 117
	syscall

__getresuid__:
	mov rax, 118
	syscall

__setresgid__:
	mov rax, 119
	syscall

__getresgid__:
	mov rax, 120
	syscall

__getpgid__:
	mov rax, 121
	syscall

__setfsuid__:
	mov rax, 122
	syscall

__setfsgid__:
	mov rax, 123
	syscall

__getsid__:
	mov rax, 124
	syscall

__capget__:
	mov rax, 125
	syscall

__capset__:
	mov rax, 126
	syscall

__rt_sigpending__:
	mov rax, 127
	syscall

__rt_sigtimedwait__:
	mov rax, 128
	syscall

__rt_sigqueueinfo__:
	mov rax, 129
	syscall

__rt_sigsuspend__:
	mov rax, 130
	syscall

__sigalstack__:
	mov rax, 131
	syscall

__utime__:
	mov rax, 132
	syscall

__mknod__:
	mov rax, 133
	syscall

;
; Not Implemented
;
__uselib___:
	mov rax, 134
	syscall

__personality__:
	mov rax, 135
	syscall

__ustat__:
	mov rax, 136
	syscall

__statfs__:
	mov rax, 137
	syscall

__fstatfs__:
	mov rax, 138
	syscall

__sysfs__:
	mov rax, 139
	syscall

__getpriority__:
	mov rax, 140
	syscall

__setpriority__:
	mov rax, 141
	syscall

__sched_setparam__:
	mov rax, 142
	syscall

__sched_getparam__:
	mov rax, 143
	syscall

__sched_setscheduler__:
	mov rax, 144
	syscall

__sched_getscheduler__:
	mov rax, 145
	syscall

__sched_get_priority_max__:
	mov rax, 146
	syscall

__sched_get_priority_min__:
	mov rax, 147
	syscall

__sched_rr_get_interval__:
	mov rax, 148
	syscall

__mlock__:
	mov rax, 149
	syscall

__munlock__:
	mov rax, 150
	syscall

__mlockall__:
	mov rax, 151
	syscall

__munlockall__:
	mov rax, 152
	syscall

__vhangup__:
	mov rax, 153
	syscall

__modify_ldt__:
	mov rax, 154
	syscall

__pivot_root__:
	mov rax, 155
	syscall

__sysctl__:
	mov rax, 156
	syscall

__prctl__:
	mov rax, 157
	syscall

__arch_prctl__:
	mov rax, 158
	syscall

__adjtimex__:
	mov rax, 159
	syscall

__setrlimit__:
	mov rax, 160
	syscall

__chroot__:
	mov rax, 161
	syscall

__sync__:
	mov rax, 162
	syscall

__acct__:
	mov rax, 163
	syscall

__settimeofday__:
	mov rax, 164
	syscall

__mount__:
	mov rax, 165
	syscall

__umount2__:
	mov rax, 166
	syscall

__swapon__:
	mov rax, 167
	syscall

__swapoff__:
	mov rax, 168
	syscall

__reboot__:
	mov rax, 169
	syscall

__sethostname__:
	mov rax, 170
	syscall

__setdomainname__:
	mov rax, 171
	syscall

__iopl__:
	mov rax, 172
	syscall

__ioperm__:
	mov rax, 173
	syscall

;
;	Removed in linux 2.6+
;
__create_module__:
	mov rax, 174
	syscall

__init_module__:
	mov rax, 175
	syscall

__delete_module__:
	mov rax, 176
	syscall

;
; Removed in linux 2.6+
;
__get_kernel_syms__:
	mov rax, 177
	syscall

;
; Removed in linux 2.6+
;
__query_module__:
	mov rax, 178
	syscall

__quotactl__:
	mov rax, 179
	syscall

;
; NOT IMPLEMENTED
;
__nfsservctl__:
	mov rax, 180
	syscall

;
; NOT IMPLEMENTED
;
__getpmsg__:
	mov rax, 181
	syscall

;
; NOT IMPLEMENTED
;
__putpmsg__:
	mov rax, 182
	syscall

;
; NOT IMPLEMENTED
;
__afa_syscall__:
	mov rax, 183
	syscall

;
; NOT IMPLEMENTED
;
__tuxcall__:
	mov rax, 184
	syscall

;
; NOT IMPLEMENTED
;
__security__:
	mov rax, 185
	syscall

__gettid__:
	mov rax, 186
	syscall

__readahead__:
	mov rax, 187
	syscall

__setxattr__:
	mov rax, 188
	syscall

__lsetxattr__:
	mov rax, 189
	syscall

__fsetxattr__:
	mov rax, 190
	syscall

__getxattr__:
	mov rax, 191
	syscall

__lgetxattr__:
	mov rax, 192
	syscall

__fgetxattr__:
	mov rax, 193
	syscall

__listxattr__:
	mov rax, 194
	syscall

__llistxattr__:
	mov rax, 195
	syscall

__flistxaatr__:
	mov rax, 196
	syscall

__removexattr__:
	mov rax, 197
	syscall

__lremovexattr__:
	mov rax, 198
	syscall

__fremovexattr__:
	mov rax, 199
	syscall

__tkill__:
	mov rax, 200
	syscall

__time__:
	mov rax, 201
	syscall

__futex__:
	mov rax, 202
	syscall

__sched_setaffinity__:
	mov rax, 203
	syscall

__sched_getaffinity__:
	mov rax, 204
	syscall

;
; NOT IMPLEMENTED
;
__set_thread_area__:
	mov rax, 205
	syscall

__io_setup__:
	mov rax, 206
	syscall

__io_destroy__:
	mov rax, 207
	syscall

__io_getevents__:
	mov rax, 208
	syscall

__io_submit__:
	mov rax, 209
	syscall

__io_cancel__:
	mov rax, 210
	syscall

;
; NOT IMEPLEMENTED (use arch_prctl)
;
__get_thread_area__:
	mov rax, 211
	syscall

__lookup_dcookie__:
	mov rax, 212
	syscall

__epoll_create__:
	mov rax, 213
	syscall

;
; NOT IMPLEMENTED
;
__epoll_ctl_old__:
	mov rax, 214
	syscall

;
; NOT IMPLEMENTED
;
__epoll_wait_old__:
	mov rax, 215
	syscall

__remap_files_pages__:
	mov rax, 216
	syscall

__getdents64__:
	mov rax, 217
	syscall

__set_tid_address__:
	mov rax, 218
	syscall

__restart_syscall__:
	mov rax, 219
	syscall

__semtimedop__:
	mov rax, 220
	syscall

__fadvise64__:
	mov rax, 221
	syscall

__timer_create__:
	mov rax, 222
	syscall

__timer_settime__:
	mov rax, 223
	syscall

__timer_gettime__:
	mov rax, 224
	syscall

__timer_getoverrune__:
	mov rax, 225
	syscall

__timer_delete__:
	mov rax, 226
	syscall

__clock_settime__:
	mov rax, 227
	syscall

__clock_gettime__:
	mov rax, 228
	syscall

__clock_getres__:
	mov rax, 229
	syscall

__clock_nanosleep__:
	mov rax, 230
	syscall

__exit_group__:
	mov rax, 231
	syscall

__epoll_wait__:
	mov rax, 232
	syscall

__epoll_ctl__:
	mov rax, 233
	syscall

__tgkill__:
	mov rax, 234
	syscall

__utimes__:
	mov rax, 235
	syscall

__vserver__:
	mov rax, 236
	syscall

__mbind__:
	mov rax, 237
	syscall

__set_mempolicy__:
	mov rax, 238
	syscall

__get_mempolicy__:
	mov rax, 239
	syscall

__mq_open__:
	mov rax, 240
	syscall

__mq_unlink__:
	mov rax, 241
	syscall

__mq_timedsend__:
	mov rax, 242
	syscall

__mq_notify__:
	mov rax, 243
	syscall

__mq_getsetattr__:
	mov rax, 244
	syscall

__kexec_load__:
	mov rax, 246
	syscall

__waitid__:
	mov rax, 247
	syscall

__add_key__:
	mov rax, 248
	syscall

__request_key__:
	mov rax, 249
	syscall

__keyctl__:
	mov rax, 250
	syscall

__ioprio_set__:
	mov rax, 251
	syscall

__ioprio_get__:
	mov rax, 252
	syscall

__inotify_init__:
	mov rax, 253
	syscall

__inotify_add_watch__:
	mov rax, 254
	syscall

__inotify_rm_watch__:
	mov rax, 255
	syscall

__migrate_pages__:
	mov rax, 256
	syscall

__openat__:
	mov rax, 257
	syscall

__mkdirat__:
	mov rax, 258
	syscall

__mknodat__:
	mov rax, 259
	syscall

__fchownat__:
	mov rax, 260
	syscall

__futimesat__:
	mov rax, 261
	syscall

__newfsatat__:
	mov rax, 262
	syscall

__unlinkat__:
	mov rax, 263
	syscall

__renameat__:
	mov rax, 264
	syscall

__linkat__:
	mov rax, 265
	syscall

__symlinkat__:
	mov rax, 266
	syscall

__readlinkat__:
	mov rax, 267
	syscall

__fchmodat__:
	mov rax, 268
	syscall

__faccessat__:
	mov rax, 269
	syscall

__pselect6__:
	mov rax, 270
	syscall

__ppoll__:
	mov rax, 271
	syscall

__unshare__:
	mov rax, 273
	syscall

__set_robust_list__:
	mov rax, 274
	syscall

__get_robust_list__:
	mov rax, 275
	syscall

__splice__:
	mov rax, 276
	syscall

__tee__:
	mov rax, 276
	syscall

__sync_file_range__:
	mov rax, 277
	syscall

__vmsplice__:
	mov rax, 278
	syscall

__move_pages__:
	mov rax, 279
	syscall

__utimensat__:
	mov rax, 280
	syscall

__epoll_pwait__:
	mov rax, 281
	syscall

__signalfd__:
	mov rax, 282
	syscall

__timerfd_create__:
	mov rax, 283
	syscall

__eventfd__:
	mov rax, 284
	syscall

__fallocate__:
	mov rax, 285
	syscall

__timerfd_settime__:
	mov rax, 286
	syscall

__timerfd_gettime__:
	mov rax, 287
	syscall

__accept4__:
	mov rax, 288
	syscall

__signalfd4__:
	mov rax, 289
	syscall

__eventfd2__:
	mov rax, 290
	syscall

__epoll_create1__:
	mov rax, 291
	syscall

__dup3__:
	mov rax, 292
	syscall

__pipe2__:
	mov rax, 293
	syscall

__inotify_init1__:
	mov rax, 294
	syscall

__preadv__:
	mov rax, 295
	syscall

__pwritev__:
	mov rax, 296
	syscall

__rt_tgsigqueueinfo__:
	mov rax, 297
	syscall

__perf_event_open__:
	mov rax, 298
	syscall

__recvmmsg__:
	mov rax, 299
	syscall

__fanotify_init__:
	mov rax, 300
	syscall

__fanotfiy_mark__:
	mov rax, 301
	syscall

__prlimit64__:
	mov rax, 302
	syscall

__name_to_handle_at__:
	mov rax, 303
	syscall

__open_by_handle_at__:
	mov rax, 304
	syscall

__clock_adjtime__:
	mov rax, 305
	syscall

__syncfs__:
	mov rax, 306
	syscall

__sendmmsg__:
	mov rax, 307
	syscall

__setns__:
	mov rax, 308
	syscall

__getcpu__:
	mov rax, 309
	syscall

__process_vm_readv__:
	mov rax, 310
	syscall

__process_vm_writev__:
	mov rax, 311
	syscall

__kcmp__:
	mov rax, 312
	syscall

__finit_module__:
	mov rax, 313
	syscall

__sched_setattr__:
	mov rax, 314
	syscall

__sched_getattr__:
	mov rax, 315
	syscall

__renameat2__:
	mov rax, 316
	syscall

__seccomp__:
	mov rax, 317
	syscall

__getrandom__:
	mov rax, 318
	syscall

__memfd_create__:
	mov rax, 319
	syscall

__kexec_file_load__:
	mov rax, 320
	syscall

__bpf__:
	mov rax, 321
	syscall

__execveat__:
	mov rax, 322
	syscall

__userfaultfd__:
	mov rax, 323
	syscall

__membarrier__:
	mov rax, 324
	syscall

__mlock2__:
	mov rax, 325
	syscall

__copy_file_range__:
	mov rax, 326
	syscall

__preadv2__:
	mov rax, 327
	syscall

__pwritev2__:
	mov rax, 328
	syscall

__pkey_mprotect__:
	mov rax, 329
	syscall

__pkey_alloc__:
	mov rax, 330
	syscall

__pkey_free__:
	mov rax, 331
	syscall

__statx__:
	mov rax, 332
	syscall

__io_pgetevents__:
	mov rax, 333
	syscall

