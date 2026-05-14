.class public final Lcom/tendcloud/tenddata/bj;
.super Ljava/lang/Object;
.source "td"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tendcloud/tenddata/bj$a;
    }
.end annotation


# static fields
.field public static a:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v0, Lcom/tendcloud/tenddata/bj;->a:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/tendcloud/tenddata/bj;->a(Landroid/content/Context;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tendcloud/tenddata/bj$1;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/tendcloud/tenddata/bj;-><init>()V

    return-void
.end method

.method public static a()Lcom/tendcloud/tenddata/bj;
    .locals 1

    .line 83
    invoke-static {}, Lcom/tendcloud/tenddata/bj$a;->access$000()Lcom/tendcloud/tenddata/bj;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 25
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/w;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/tendcloud/tenddata/bj$1;

    invoke-direct {v1, p0, p1}, Lcom/tendcloud/tenddata/bj$1;-><init>(Lcom/tendcloud/tenddata/bj;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
