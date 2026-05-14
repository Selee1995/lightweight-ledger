.class Lcom/tendcloud/tenddata/o$b;
.super Landroid/content/BroadcastReceiver;
.source "td"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1166
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1168
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/tendcloud/tenddata/o$b;->latch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method await()V
    .locals 4

    .line 1183
    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/o$b;->latch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0x7d0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1185
    invoke-static {v0}, Lcom/tendcloud/tenddata/h;->eForInternal(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1172
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tendcloud/tenddata/o$b;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 1173
    iget-object p1, p0, Lcom/tendcloud/tenddata/o$b;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    return-void
.end method

.method reset()V
    .locals 2

    .line 1178
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/tendcloud/tenddata/o$b;->latch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method
