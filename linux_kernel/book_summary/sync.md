Synchronization
===============

Words
-----

- 스핀락
- Busy-wait
- 뮤텍스
- fastpath
- slowpath

Variables
---------

- 

Data Structures
---------------

- struct spinlock ( = spinlock_t )
- struct raw_spinlock   ( = raw_spinlock_t )
- (struct) arch_spinlock_t
- struct mutex
- struct mutex_waiter

Functions
---------

- spin_lock()
    - raw_spin_lock()
        - _raw_spin_lock()
            - __raw_spin_lock()
                - do_raw_spin_lock()
                    - arch_spin_lock()
- spin_unlock()
    - raw_spin_unlock()
        - _raw_spin_unlock()
            - __raw_spin_unlock()
                - do_raw_spin_unlock()
                    - arch_spin_unlock()
- spin_lock_irq()
- spin_unlock_irq()
- spin_lock_irqsave()
- spin_unlock_irqstore()
- mutex_lock()
    - __mutex_trylock_fast()
    - __mutex_lock_slowpath()
        - __mutex_lock()
            - __mutex_lock_common()
- mutex_unlock()
    - mutex_unlock_fast()
    - mutex_unlock_slowpath()