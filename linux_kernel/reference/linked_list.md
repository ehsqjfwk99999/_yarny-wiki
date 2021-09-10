Linux Kernel : Linked List
==========================

Files
-----
- `linux/include/linux/list.h`

Structures
----------
- [struct list_head](https://elixir.bootlin.com/linux/latest/A/ident/list_head)
    ```c
    struct list_head {
        struct list_head *next, *prev;
    };
    ```

Macros
------
- LIST_HEAD
    ```c
    #define LIST_HEAD(name) \
	        struct list_head name = LIST_HEAD_INIT(name)
    ```
- [LIST_HEAD_INIT](https://elixir.bootlin.com/linux/latest/A/ident/LIST_HEAD_INIT)
    ```c
    #define LIST_HEAD_INIT(name) { &(name), &(name) }
    ```
- [list_entry](https://elixir.bootlin.com/linux/latest/A/ident/list_entry)
    ```c
    #define list_entry(ptr, type, member) \
	        container_of(ptr, type, member)
    ```
- [list_for_each](https://elixir.bootlin.com/linux/latest/A/ident/list_for_each)
    ```c
    #define list_for_each(pos, head) \
	        for (pos = (head)->next; pos != (head); pos = pos->next)
    ```
- [list_for_each_entry](https://elixir.bootlin.com/linux/latest/A/ident/list_for_each_entry)
    ```c
    #define list_for_each_entry(pos, head, member)				\
            for (pos = list_first_entry(head, typeof(*pos), member);	\
                !list_entry_is_head(pos, head, member);			\
                pos = list_next_entry(pos, member))
    ```
- [list_for_each_entry_reverse](https://elixir.bootlin.com/linux/latest/A/ident/list_for_each_entry_reverse)
    ```c
    #define list_for_each_entry_reverse(pos, head, member)			\
            for (pos = list_last_entry(head, typeof(*pos), member);		\
                !list_entry_is_head(pos, head, member); 			\
                pos = list_prev_entry(pos, member))
    ```
- [list_for_each_entry_safe](https://elixir.bootlin.com/linux/latest/A/ident/list_for_each_entry_safe)
    ```c
    #define list_for_each_entry_safe(pos, n, head, member)			\
            for (pos = list_first_entry(head, typeof(*pos), member),	\
                    n = list_next_entry(pos, member);			\
                !list_entry_is_head(pos, head, member); 			\
                pos = n, n = list_next_entry(n, member))
    ```
- [list_for_each_entry_safe_reverse](https://elixir.bootlin.com/linux/latest/A/ident/list_for_each_entry_safe_reverse)
    ```c
    #define list_for_each_entry_safe_reverse(pos, n, head, member)		\
            for (pos = list_last_entry(head, typeof(*pos), member),		\
                    n = list_prev_entry(pos, member);			\
                !list_entry_is_head(pos, head, member); 			\
                pos = n, n = list_prev_entry(n, member))
    ```

Functions
---------
- [INIT_LIST_HEAD](https://elixir.bootlin.com/linux/latest/A/ident/INIT_LIST_HEAD)
    ```c
    static inline void INIT_LIST_HEAD(struct list_head *list)
    {
        WRITE_ONCE(list->next, list);
        list->prev = list;
    }
    ```
- [__list_add](https://elixir.bootlin.com/linux/latest/A/ident/__list_add)
    ```c
    static inline void __list_add(struct list_head *new,
			      struct list_head *prev,
			      struct list_head *next)
    {
        if (!__list_add_valid(new, prev, next))
            return;

        next->prev = new;
        new->next = next;
        new->prev = prev;
        WRITE_ONCE(prev->next, new);
    }
    ```
- [list_add](https://elixir.bootlin.com/linux/latest/A/ident/list_add)
    ```c
    static inline void list_add(struct list_head *new, struct list_head *head)
    {
        __list_add(new, head, head->next);
    }
    ```
- [list_add_tail](https://elixir.bootlin.com/linux/latest/A/ident/list_add_tail)
    ```c
    static inline void list_add_tail(struct list_head *new, struct list_head *head)
    {
        __list_add(new, head->prev, head);
    }
    ```
- [__list_del](https://elixir.bootlin.com/linux/latest/A/ident/__list_del)
    ```c
    static inline void __list_del(struct list_head * prev, struct list_head * next)
    {
        next->prev = prev;
        WRITE_ONCE(prev->next, next);
    }
    ```
- [__list_del_entry](https://elixir.bootlin.com/linux/latest/A/ident/__list_del_entry)
    ```c
    static inline void __list_del_entry(struct list_head *entry)
    {
        if (!__list_del_entry_valid(entry))
            return;

        __list_del(entry->prev, entry->next);
    }
    ```
- [list_del](https://elixir.bootlin.com/linux/latest/A/ident/list_del)
    ```c
    static inline void list_del(struct list_head *entry)
    {
        __list_del_entry(entry);
        entry->next = LIST_POISON1;
        entry->prev = LIST_POISON2;
    }
    ```
- [list_del_init](https://elixir.bootlin.com/linux/latest/A/ident/list_del_init)
    ```c
    static inline void list_del_init(struct list_head *entry)
    {
        __list_del_entry(entry);
        INIT_LIST_HEAD(entry);
    }
    ```
- [list_move](https://elixir.bootlin.com/linux/latest/A/ident/list_move)
    ```c
    static inline void list_move(struct list_head *list, struct list_head *head)
    {
        __list_del_entry(list);
        list_add(list, head);
    }
    ```
- [list_move_tail](https://elixir.bootlin.com/linux/latest/A/ident/list_move_tail)
    ```c
    static inline void list_move_tail(struct list_head *list,
				  struct list_head *head)
    {
        __list_del_entry(list);
        list_add_tail(list, head);
    }
    ```
- [list_empty](https://elixir.bootlin.com/linux/latest/A/ident/list_empty)
    ```c
    static inline int list_empty(const struct list_head *head)
    {
        return READ_ONCE(head->next) == head;
    }
    ```
- [__list_splice](https://elixir.bootlin.com/linux/latest/A/ident/__list_splice)
    ```c
    static inline void __list_splice(const struct list_head *list,
				 struct list_head *prev,
				 struct list_head *next)
    {
        struct list_head *first = list->next;
        struct list_head *last = list->prev;

        first->prev = prev;
        prev->next = first;

        last->next = next;
        next->prev = last;
    }
    ```
- [list_splice](https://elixir.bootlin.com/linux/latest/A/ident/list_splice)
    ```c
    static inline void list_splice(const struct list_head *list,
				struct list_head *head)
    {
        if (!list_empty(list))
            __list_splice(list, head, head->next);
    }
    ```
- [list_splice_init](https://elixir.bootlin.com/linux/latest/A/ident/list_splice_init)
    ```c
    static inline void list_splice_init(struct list_head *list,
				    struct list_head *head)
    {
        if (!list_empty(list)) {
            __list_splice(list, head, head->next);
            INIT_LIST_HEAD(list);
        }
    }
    ```
