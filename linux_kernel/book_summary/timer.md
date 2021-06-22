Timer
=====

Words
-----

- jiffies

Variables
---------

- jiffies
- jiffies_64
- HZ
- timer_bases

Data Structures
---------------

- struct timer_list
- struct timer_base

Functions
---------

- tick_do_update_jiffies64()
    - **do_timer()**
- **msecs_to_jiffies()**
    - _msecs_to_jiffies()
- mod_timer()
- add_timer()
- time_after()
- time_before()
- timer_setup()
    - __init_timer()
        - init_timer_key()
            - debug_init()
                - debug_timer_init()
                - trace_timer_init()
            - **do_init_timer()**
- add_timer()
- mod_timer()
    - **__mod_timer()**
        - timer_pending()
        - lock_timer_base()
            - get_timer_base()
                - get_timer_cpu_base()
        - forward_timer_base()
        - enqueue_timer()
- timer_pending()
- update_process_times()
    - run_local_timers()
- run_timer_softirq()
    - __run_timers()
- collect_expired_timers()
    - __collect_expired_timers()
- expire_timers()
- call_timer_fn()