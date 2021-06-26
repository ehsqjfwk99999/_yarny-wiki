Scheduling
=====

Words
-----

- 

Variables
---------

- stop_sched_class
- dl_sched_class
- rt_sched_class
- fair_sched_class
- idle_sched_class

Data Structures
---------------

- struct rq
- struct sched_class

Functions
---------

- set_current_state()
- NICE_TO_PRIO()
- wake_up_new_task()
- wake_up_process()
- yield()
- do_nanosleep()
- **__schedule()**
- wait_event_interruptible()
- sys_pause()
- io_event_wait()
- __mutex_lock_common()
- usleep_range()
- msleep()
- schedule_timeout()
- wait_for_completion()
- cpu_rq()
- this_rq()
- update_curr()
- scheduler_tick()
- task_tick_fair()
- preempt_enable()
- preempt_disable()