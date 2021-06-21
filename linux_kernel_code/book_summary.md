Kernel Book Summary
===================

Timer
-----

### - Words
- jiffies
### - Variables
- jiffies
- jiffies_64
### - Data Structures
- struct timer_list
### - Functions
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