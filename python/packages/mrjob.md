mrjob Cookbook
==============

Install
-------
```sh
pip install mrjob
```

Structure
---------
```python
from mrjob.job import MRJob
from mrjob.step import MRStep


class MapReduceFunction(MRJob):
    def steps(self):
        return [MRStep(mapper=self.mapper_func_1, reducer=self.reducer_func_1)]

    def mapper_func_1(self, _, line):
        parsed_line = line.split()
        yield parsed_line[0], 1

    def reducer_func_1(self, key, values):
        ...
        yield key, sum(values)


if __name__ == "__main__":
    MapReduceFunction.run()
```

mrjob API
=========

[mrjob.job](https://mrjob.readthedocs.io/en/latest/job.html#module-mrjob.job)
-----------
- [mrjob.job.MRJob](https://mrjob.readthedocs.io/en/latest/job.html#mrjob.job.MRJob)
    - Methods
        - [mrjob.job.MRJob.run](https://mrjob.readthedocs.io/en/latest/job.html#mrjob.job.MRJob.run)
            ```python
            # MRJob.run() -> ?
            ```

[mrjob.step](https://mrjob.readthedocs.io/en/latest/step.html#module-mrjob.step)
------------
- [mrjob.step.MRStep](https://mrjob.readthedocs.io/en/latest/step.html#mrjob.step.MRStep)
    ```python
    # MRStep(*, mapper, reducer) -> ?
    ```