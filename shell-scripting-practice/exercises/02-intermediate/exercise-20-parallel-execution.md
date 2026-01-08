# Exercise 2.10: Parallel Execution and Job Control

## Objective
Learn to run tasks in parallel, manage background jobs, and control concurrency.

## Requirements
Write a script that:
1. Executes multiple commands in parallel
2. Limits concurrent jobs (max N at a time)
3. Tracks job status and completion
4. Handles job failures gracefully
5. Provides progress indication
6. Collects results from all jobs
7. Implements timeout for jobs

## Example Usage
```bash
./parallel-executor.sh --jobs "task1.sh,task2.sh,task3.sh" --max-concurrent 2
./parallel-executor.sh --file job-list.txt --max-concurrent 5
```

## Example Output
```
Executing 10 jobs with max 3 concurrent...
[1/10] task1.sh... RUNNING
[2/10] task2.sh... RUNNING
[3/10] task3.sh... RUNNING
[1/10] task1.sh... COMPLETED (exit: 0)
[4/10] task4.sh... RUNNING
[2/10] task2.sh... FAILED (exit: 1)
[5/10] task5.sh... RUNNING
...

Summary:
  Completed: 8
  Failed: 2
  Total time: 45s
```

## Hints
- Use `&` to run jobs in background
- Use `wait` to wait for jobs
- Use `jobs` to check job status
- Use `$!` to get last background PID
- Use `wait -n` for waiting on any job
- Implement job queue with arrays
- Use `timeout` for job timeouts

## Learning Points
- Background job execution
- Job control and monitoring
- Concurrency management
- Job queues
- Parallel processing patterns


