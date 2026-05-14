.class public Lcom/coderpage/concurrency/MineExecutors;
.super Ljava/lang/Object;
.source "MineExecutors.java"


# static fields
.field private static volatile sInstance:Lcom/coderpage/concurrency/MineExecutors;


# instance fields
.field private mAsyncExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private mHandler:Landroid/os/Handler;

.field private mIoExecutor:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/coderpage/concurrency/MineExecutors;->mHandler:Landroid/os/Handler;

    .line 22
    new-instance v0, Lcom/coderpage/concurrency/DefaultWorkExecutor;

    invoke-direct {v0}, Lcom/coderpage/concurrency/DefaultWorkExecutor;-><init>()V

    iput-object v0, p0, Lcom/coderpage/concurrency/MineExecutors;->mIoExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 23
    invoke-static {}, Lcom/coderpage/concurrency/AsyncTaskExecutor;->executor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/coderpage/concurrency/MineExecutors;->mAsyncExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public static asyncExecutor()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 1

    .line 42
    invoke-static {}, Lcom/coderpage/concurrency/MineExecutors;->instance()Lcom/coderpage/concurrency/MineExecutors;

    move-result-object v0

    iget-object v0, v0, Lcom/coderpage/concurrency/MineExecutors;->mAsyncExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method public static executeOnUiThread(Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnable"
        }
    .end annotation

    .line 46
    invoke-static {}, Lcom/coderpage/concurrency/MineExecutors;->instance()Lcom/coderpage/concurrency/MineExecutors;

    move-result-object v0

    iget-object v0, v0, Lcom/coderpage/concurrency/MineExecutors;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static instance()Lcom/coderpage/concurrency/MineExecutors;
    .locals 2

    .line 27
    sget-object v0, Lcom/coderpage/concurrency/MineExecutors;->sInstance:Lcom/coderpage/concurrency/MineExecutors;

    if-nez v0, :cond_1

    .line 28
    const-class v0, Lcom/coderpage/concurrency/MineExecutors;

    monitor-enter v0

    .line 29
    :try_start_0
    sget-object v1, Lcom/coderpage/concurrency/MineExecutors;->sInstance:Lcom/coderpage/concurrency/MineExecutors;

    if-nez v1, :cond_0

    .line 30
    new-instance v1, Lcom/coderpage/concurrency/MineExecutors;

    invoke-direct {v1}, Lcom/coderpage/concurrency/MineExecutors;-><init>()V

    sput-object v1, Lcom/coderpage/concurrency/MineExecutors;->sInstance:Lcom/coderpage/concurrency/MineExecutors;

    .line 32
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 34
    :cond_1
    :goto_0
    sget-object v0, Lcom/coderpage/concurrency/MineExecutors;->sInstance:Lcom/coderpage/concurrency/MineExecutors;

    return-object v0
.end method

.method public static ioExecutor()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 1

    .line 38
    invoke-static {}, Lcom/coderpage/concurrency/MineExecutors;->instance()Lcom/coderpage/concurrency/MineExecutors;

    move-result-object v0

    iget-object v0, v0, Lcom/coderpage/concurrency/MineExecutors;->mIoExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method
