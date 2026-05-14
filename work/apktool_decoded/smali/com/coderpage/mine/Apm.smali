.class public Lcom/coderpage/mine/Apm;
.super Ljava/lang/Object;
.source "Apm.java"


# static fields
.field private static final mInit:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/coderpage/mine/Apm;->mInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;Lcom/coderpage/base/common/SimpleCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/coderpage/base/common/SimpleCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 29
    sget-object v0, Lcom/coderpage/mine/Apm;->mInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    .line 30
    invoke-interface {p1, p0}, Lcom/coderpage/base/common/SimpleCallback;->success(Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 34
    :cond_1
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/coderpage/mine/-$$Lambda$Apm$w_zCdqSj-spTUCCFfTy-9iVNjVw;

    invoke-direct {v1, p1, p0}, Lcom/coderpage/mine/-$$Lambda$Apm$w_zCdqSj-spTUCCFfTy-9iVNjVw;-><init>(Lcom/coderpage/base/common/SimpleCallback;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$init$0(Lcom/coderpage/base/common/SimpleCallback;Landroid/content/Context;)V
    .locals 6

    .line 35
    const-class v0, Lcom/coderpage/mine/Apm;

    monitor-enter v0

    .line 36
    :try_start_0
    sget-object v1, Lcom/coderpage/mine/Apm;->mInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    if-eqz p0, :cond_0

    .line 37
    invoke-interface {p0, v3}, Lcom/coderpage/base/common/SimpleCallback;->success(Ljava/lang/Object;)V

    .line 38
    :cond_0
    monitor-exit v0

    return-void

    :cond_1
    const/16 v2, 0x8

    .line 40
    invoke-static {v2}, Lcom/tendcloud/tenddata/TalkingDataSDK;->setConfigurationDisable(I)V

    const-string v2, "522F33F6749640C3AE8AAEA3E232CF89"

    const-string v4, "vivo"

    const-string v5, ""

    .line 41
    invoke-static {p1, v2, v4, v5}, Lcom/tendcloud/tenddata/TalkingDataSDK;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 42
    invoke-static {p1}, Lcom/tendcloud/tenddata/TalkingDataSDK;->setReportUncaughtExceptions(Z)V

    .line 43
    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz p0, :cond_2

    .line 44
    invoke-interface {p0, v3}, Lcom/coderpage/base/common/SimpleCallback;->success(Ljava/lang/Object;)V

    .line 45
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic lambda$onPageEnd$3(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 70
    invoke-static {p0, p1}, Lcom/tendcloud/tenddata/TalkingDataSDK;->onPageEnd(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onPageEnd$4(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Void;)V
    .locals 0

    .line 70
    new-instance p2, Lcom/coderpage/mine/-$$Lambda$Apm$Yx4C_3nCwqOLq5AJd0Il5-r6EfI;

    invoke-direct {p2, p0, p1}, Lcom/coderpage/mine/-$$Lambda$Apm$Yx4C_3nCwqOLq5AJd0Il5-r6EfI;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/coderpage/concurrency/MineExecutors;->executeOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$onPageStart$1(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 58
    invoke-static {p0, p1}, Lcom/tendcloud/tenddata/TalkingDataSDK;->onPageBegin(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onPageStart$2(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Void;)V
    .locals 0

    .line 58
    new-instance p2, Lcom/coderpage/mine/-$$Lambda$Apm$v3Ny2xMGT1kF32rgDRAPn6tbJeI;

    invoke-direct {p2, p0, p1}, Lcom/coderpage/mine/-$$Lambda$Apm$v3Ny2xMGT1kF32rgDRAPn6tbJeI;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/coderpage/concurrency/MineExecutors;->executeOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static onPageEnd(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "name"
        }
    .end annotation

    .line 63
    invoke-static {}, Lcom/coderpage/mine/persistence/kv/KvCache;->isAgreePrivacyProtocol()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 66
    :cond_0
    sget-object v0, Lcom/coderpage/mine/Apm;->mInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    invoke-static {p0, p1}, Lcom/tendcloud/tenddata/TalkingDataSDK;->onPageEnd(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 70
    :cond_1
    new-instance v0, Lcom/coderpage/mine/-$$Lambda$Apm$5M1-MeCfNppAF4Ke8naFyL3oCTk;

    invoke-direct {v0, p0, p1}, Lcom/coderpage/mine/-$$Lambda$Apm$5M1-MeCfNppAF4Ke8naFyL3oCTk;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/coderpage/mine/Apm;->init(Landroid/content/Context;Lcom/coderpage/base/common/SimpleCallback;)V

    return-void
.end method

.method public static onPageStart(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "name"
        }
    .end annotation

    .line 51
    invoke-static {}, Lcom/coderpage/mine/persistence/kv/KvCache;->isAgreePrivacyProtocol()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 54
    :cond_0
    sget-object v0, Lcom/coderpage/mine/Apm;->mInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    invoke-static {p0, p1}, Lcom/tendcloud/tenddata/TalkingDataSDK;->onPageBegin(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 58
    :cond_1
    new-instance v0, Lcom/coderpage/mine/-$$Lambda$Apm$4PB9Za3I3a3PYUU6jaAt34Z8vhU;

    invoke-direct {v0, p0, p1}, Lcom/coderpage/mine/-$$Lambda$Apm$4PB9Za3I3a3PYUU6jaAt34Z8vhU;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/coderpage/mine/Apm;->init(Landroid/content/Context;Lcom/coderpage/base/common/SimpleCallback;)V

    return-void
.end method

.method public static startAndroidDebugTraceMethod()V
    .locals 1

    .line 74
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return-void
.end method

.method public static stopAndroidDebugTraceMethod()V
    .locals 1

    .line 81
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return-void
.end method
