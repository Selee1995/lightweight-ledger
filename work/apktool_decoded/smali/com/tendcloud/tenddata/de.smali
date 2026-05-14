.class public Lcom/tendcloud/tenddata/de;
.super Lcom/tendcloud/tenddata/cw;
.source "td"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Lcom/tendcloud/tenddata/cw;-><init>()V

    .line 14
    invoke-static {}, Lcom/tendcloud/tenddata/de;->c()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "bootTime"

    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/de;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 15
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "activeTime"

    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/de;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 16
    invoke-static {}, Lcom/tendcloud/tenddata/de;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "freeDiskSpace"

    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/de;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 18
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tendcloud/tenddata/k;->f(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "batteryLevel"

    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/de;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 19
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tendcloud/tenddata/k;->g(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "batteryState"

    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/de;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static a()I
    .locals 2

    .line 24
    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/k;->u()[I

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 27
    aget v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static c()J
    .locals 4

    .line 38
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v0, v2

    return-wide v0

    :catchall_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method
