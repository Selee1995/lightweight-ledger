.class public Lcom/coderpage/concurrency/DefaultWorkExecutor;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "DefaultWorkExecutor.java"


# static fields
.field private static final CORE_SIZE:I

.field private static final CPU_SIZE:I

.field private static final KEEP_ALIVE_TIME:J = 0x1L

.field private static final MAX_SIZE:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 9
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/coderpage/concurrency/DefaultWorkExecutor;->CPU_SIZE:I

    add-int/lit8 v1, v0, 0x1

    .line 20
    sput v1, Lcom/coderpage/concurrency/DefaultWorkExecutor;->CORE_SIZE:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 22
    sput v0, Lcom/coderpage/concurrency/DefaultWorkExecutor;->MAX_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 15
    sget v1, Lcom/coderpage/concurrency/DefaultWorkExecutor;->CORE_SIZE:I

    sget v2, Lcom/coderpage/concurrency/DefaultWorkExecutor;->MAX_SIZE:I

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-wide/16 v3, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/coderpage/concurrency/DefaultWorkExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    return-void
.end method

.method private constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "corePoolSize",
            "maximumPoolSize",
            "keepAliveTime",
            "unit",
            "workQueue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct/range {p0 .. p6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    return-void
.end method
