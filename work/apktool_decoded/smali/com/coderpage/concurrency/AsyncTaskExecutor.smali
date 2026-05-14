.class public Lcom/coderpage/concurrency/AsyncTaskExecutor;
.super Ljava/lang/Object;
.source "AsyncTaskExecutor.java"


# static fields
.field private static final CORE_POOL_SIZE:I

.field private static final CPU_COUNT:I

.field private static final KEEP_ALIVE_SECONDS:I = 0x1e

.field private static final MAXIMUM_POOL_SIZE:I

.field private static final TAG:Ljava/lang/String;

.field private static final THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static final sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 20
    const-class v0, Lcom/coderpage/concurrency/AsyncTaskExecutor;

    invoke-static {v0}, Lcom/coderpage/base/utils/LogUtils;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coderpage/concurrency/AsyncTaskExecutor;->TAG:Ljava/lang/String;

    .line 25
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/coderpage/concurrency/AsyncTaskExecutor;->CPU_COUNT:I

    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x4

    .line 29
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    sput v4, Lcom/coderpage/concurrency/AsyncTaskExecutor;->CORE_POOL_SIZE:I

    mul-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    add-int/lit8 v5, v0, 0x1

    .line 30
    sput v5, Lcom/coderpage/concurrency/AsyncTaskExecutor;->MAXIMUM_POOL_SIZE:I

    .line 33
    new-instance v10, Lcom/coderpage/concurrency/AsyncTaskExecutor$1;

    invoke-direct {v10}, Lcom/coderpage/concurrency/AsyncTaskExecutor$1;-><init>()V

    sput-object v10, Lcom/coderpage/concurrency/AsyncTaskExecutor;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 42
    new-instance v9, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v0, 0x80

    invoke-direct {v9, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v9, Lcom/coderpage/concurrency/AsyncTaskExecutor;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 51
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x1e

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 54
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 55
    sput-object v0, Lcom/coderpage/concurrency/AsyncTaskExecutor;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnable"
        }
    .end annotation

    .line 59
    sget-object v0, Lcom/coderpage/concurrency/AsyncTaskExecutor;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static executor()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 1

    .line 75
    sget-object v0, Lcom/coderpage/concurrency/AsyncTaskExecutor;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method public static submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 63
    sget-object v0, Lcom/coderpage/concurrency/AsyncTaskExecutor;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public static submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "runnable",
            "result"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 67
    sget-object v0, Lcom/coderpage/concurrency/AsyncTaskExecutor;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public static submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 71
    sget-object v0, Lcom/coderpage/concurrency/AsyncTaskExecutor;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method
