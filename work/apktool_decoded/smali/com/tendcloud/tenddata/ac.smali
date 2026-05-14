.class public final Lcom/tendcloud/tenddata/ac;
.super Ljava/lang/Object;
.source "td"


# static fields
.field private static a:Lcom/tendcloud/tenddata/ao;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-class v0, Lcom/tendcloud/tenddata/ac;

    monitor-enter v0

    const/4 v1, 0x0

    .line 135
    :try_start_0
    invoke-static {p0, v1}, Lcom/tendcloud/tenddata/ac;->f(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)V

    .line 136
    sget-object v2, Lcom/tendcloud/tenddata/ac;->a:Lcom/tendcloud/tenddata/ao;

    invoke-interface {v2, p0}, Lcom/tendcloud/tenddata/ao;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 138
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 139
    monitor-exit v0

    return-object v1

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static a(Landroid/app/Activity;Lcom/tendcloud/tenddata/a;)V
    .locals 1

    .line 179
    :try_start_0
    invoke-static {p0, p1}, Lcom/tendcloud/tenddata/ac;->f(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)V

    .line 180
    sget-object v0, Lcom/tendcloud/tenddata/ac;->a:Lcom/tendcloud/tenddata/ao;

    invoke-interface {v0, p0, p1}, Lcom/tendcloud/tenddata/ao;->a(Landroid/app/Activity;Lcom/tendcloud/tenddata/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 182
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V
    .locals 1

    .line 164
    :try_start_0
    invoke-static {p0, p3}, Lcom/tendcloud/tenddata/ac;->f(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)V

    .line 165
    sget-object v0, Lcom/tendcloud/tenddata/ac;->a:Lcom/tendcloud/tenddata/ao;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/tendcloud/tenddata/ao;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 167
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)V
    .locals 2

    const-class v0, Lcom/tendcloud/tenddata/ac;

    monitor-enter v0

    .line 26
    :try_start_0
    invoke-static {p0, p1}, Lcom/tendcloud/tenddata/ac;->f(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)V

    .line 27
    sget-object v1, Lcom/tendcloud/tenddata/ac;->a:Lcom/tendcloud/tenddata/ao;

    invoke-interface {v1, p0, p1}, Lcom/tendcloud/tenddata/ao;->a(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 29
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 31
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;DLjava/util/Map;Lcom/tendcloud/tenddata/a;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "D",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/tendcloud/tenddata/a;",
            ")V"
        }
    .end annotation

    .line 342
    :try_start_0
    invoke-static {p0, p5}, Lcom/tendcloud/tenddata/ac;->f(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)V

    .line 343
    sget-object v0, Lcom/tendcloud/tenddata/ac;->a:Lcom/tendcloud/tenddata/ao;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-wide v4, p2

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/tendcloud/tenddata/ao;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;DLcom/tendcloud/tenddata/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 345
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V
    .locals 1

    .line 209
    :try_start_0
    invoke-static {p0, p2}, Lcom/tendcloud/tenddata/ac;->f(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)V

    .line 210
    sget-object v0, Lcom/tendcloud/tenddata/ac;->a:Lcom/tendcloud/tenddata/ao;

    invoke-interface {v0, p0, p1, p2}, Lcom/tendcloud/tenddata/ao;->a(Landroid/content/Context;Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 212
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V
    .locals 2

    const-class v0, Lcom/tendcloud/tenddata/ac;

    monitor-enter v0

    .line 42
    :try_start_0
    invoke-static {p0, p3}, Lcom/tendcloud/tenddata/ac;->f(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)V

    .line 43
    sget-object v1, Lcom/tendcloud/tenddata/ac;->a:Lcom/tendcloud/tenddata/ao;

    invoke-interface {v1, p0, p1, p2, p3}, Lcom/tendcloud/tenddata/ao;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 45
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 47
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V
    .locals 7

    const-class v0, Lcom/tendcloud/tenddata/ac;

    monitor-enter v0

    .line 60
    :try_start_0
    invoke-static {p0, p4}, Lcom/tendcloud/tenddata/ac;->f(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)V

    .line 61
    sget-object v1, Lcom/tendcloud/tenddata/ac;->a:Lcom/tendcloud/tenddata/ao;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/tendcloud/tenddata/ao;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 63
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 65
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;DLcom/tendcloud/tenddata/a;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;D",
            "Lcom/tendcloud/tenddata/a;",
            ")V"
        }
    .end annotation

    .line 332
    :try_start_0
    invoke-static {p0, p6}, Lcom/tendcloud/tenddata/ac;->f(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)V

    .line 333
    sget-object v0, Lcom/tendcloud/tenddata/ac;->a:Lcom/tendcloud/tenddata/ao;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    move-object v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/tendcloud/tenddata/ao;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;DLcom/tendcloud/tenddata/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 335
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/tendcloud/tenddata/a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/tendcloud/tenddata/a;",
            ")V"
        }
    .end annotation

    .line 312
    :try_start_0
    invoke-static {p0, p4}, Lcom/tendcloud/tenddata/ac;->f(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)V

    .line 313
    sget-object v0, Lcom/tendcloud/tenddata/ac;->a:Lcom/tendcloud/tenddata/ao;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/tendcloud/tenddata/ao;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/tendcloud/tenddata/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 315
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/tendcloud/tenddata/a;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/tendcloud/tenddata/a;",
            ")V"
        }
    .end annotation

    .line 322
    :try_start_0
    invoke-static {p0, p5}, Lcom/tendcloud/tenddata/ac;->f(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)V

    .line 323
    sget-object v0, Lcom/tendcloud/tenddata/ac;->a:Lcom/tendcloud/tenddata/ao;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/tendcloud/tenddata/ao;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/tendcloud/tenddata/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 325
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/tendcloud/tenddata/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/tendcloud/tenddata/a;",
            ")V"
        }
    .end annotation

    const-string v0, "null"

    .line 291
    invoke-static {p0, p1, v0, p2, p3}, Lcom/tendcloud/tenddata/ac;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/tendcloud/tenddata/a;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/tendcloud/tenddata/a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/tendcloud/tenddata/a;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 297
    invoke-static/range {v0 .. v5}, Lcom/tendcloud/tenddata/ac;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/tendcloud/tenddata/a;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Throwable;Lcom/tendcloud/tenddata/a;)V
    .locals 1

    .line 383
    :try_start_0
    invoke-static {p0, p2}, Lcom/tendcloud/tenddata/ac;->f(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)V

    .line 384
    sget-object v0, Lcom/tendcloud/tenddata/ac;->a:Lcom/tendcloud/tenddata/ao;

    invoke-interface {v0, p0, p1, p2}, Lcom/tendcloud/tenddata/ao;->a(Landroid/content/Context;Ljava/lang/Throwable;Lcom/tendcloud/tenddata/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 386
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static a(Lcom/tendcloud/tenddata/TalkingDataOrder;Lcom/tendcloud/tenddata/a;)V
    .locals 1

    .line 649
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/tendcloud/tenddata/ac;->f(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)V

    .line 650
    sget-object v0, Lcom/tendcloud/tenddata/ac;->a:Lcom/tendcloud/tenddata/ao;

    invoke-interface {v0, p0, p1}, Lcom/tendcloud/tenddata/ao;->a(Lcom/tendcloud/tenddata/TalkingDataOrder;Lcom/tendcloud/tenddata/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 652
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static a(Lcom/tendcloud/tenddata/TalkingDataOrder;Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V
    .locals 1

    .line 621
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/tendcloud/tenddata/ac;->f(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)V

    .line 622
    sget-object v0, Lcom/tendcloud/tenddata/ac;->a:Lcom/tendcloud/tenddata/ao;

    invoke-interface {v0, p0, p1, p2}, Lcom/tendcloud/tenddata/ao;->a(Lcom/tendcloud/tenddata/TalkingDataOrder;Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 624
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static a(Lcom/tendcloud/tenddata/TalkingDataOrder;Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V
    .locals 1

    .line 591
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/tendcloud/tenddata/ac;->f(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)V

    .line 592
    sget-object v0, Lcom/tendcloud/tenddata/ac;->a:Lcom/tendcloud/tenddata/ao;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/tendcloud/tenddata/ao;->a(Lcom/tendcloud/tenddata/TalkingDataOrder;Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 594
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static a(Lcom/tendcloud/tenddata/TalkingDataOrder;Ljava/lang/String;Ljava/util/Map;Lcom/tendcloud/tenddata/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tendcloud/tenddata/TalkingDataOrder;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/tendcloud/tenddata/a;",
            ")V"
        }
    .end annotation

    .line 630
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/tendcloud/tenddata/ac;->f(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)V

    .line 631
    sget-object v0, Lcom/tendcloud/tenddata/ac;->a:Lcom/tendcloud/tenddata/ao;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/tendcloud/tenddata/ao;->a(Lcom/tendcloud/tenddata/TalkingDataOrder;Ljava/lang/String;Ljava/util/Map;Lcom/tendcloud/tenddata/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 633
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static a(Lcom/tendcloud/tenddata/TalkingDataProfile;Lcom/tendcloud/tenddata/a;)V
    .locals 1

    .line 470
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/tendcloud/tenddata/ac;->f(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)V

    .line 471
    sget-object v0, Lcom/tendcloud/tenddata/ac;->a:Lcom/tendcloud/tenddata/ao;

    invoke-interface {v0, p0, p1}, Lcom/tendcloud/tenddata/ao;->a(Lcom/tendcloud/tenddata/TalkingDataProfile;Lcom/tendcloud/tenddata/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 473
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static a(Lcom/tendcloud/tenddata/TalkingDataSearch;Lcom/tendcloud/tenddata/a;)V
    .locals 1

    .line 738
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/tendcloud/tenddata/ac;->f(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)V

    .line 739
    sget-object v0, Lcom/tendcloud/tenddata/ac;->a:Lcom/tendcloud/tenddata/ao;

    invoke-interface {v0, p0, p1}, Lcom/tendcloud/tenddata/ao;->a(Lcom/tendcloud/tenddata/TalkingDataSearch;Lcom/tendcloud/tenddata/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 741
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static a(Lcom/tendcloud/tenddata/TalkingDataSharingFilter;Lcom/tendcloud/tenddata/a;)V
    .locals 1

    .line 815
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/tendcloud/tenddata/ac;->f(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)V

    .line 816
    sget-object p1, Lcom/tendcloud/tenddata/ac;->a:Lcom/tendcloud/tenddata/ao;

    invoke-interface {p1, p0}, Lcom/tendcloud/tenddata/ao;->setCustomDataSwitch(Lcom/tendcloud/tenddata/TalkingDataSharingFilter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 818
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static a(Lcom/tendcloud/tenddata/TalkingDataShoppingCart;Lcom/tendcloud/tenddata/a;)V
    .locals 1

    .line 705
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/tendcloud/tenddata/ac;->f(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)V

    .line 706
    sget-object v0, Lcom/tendcloud/tenddata/ac;->a:Lcom/tendcloud/tenddata/ao;

    invoke-interface {v0, p0, p1}, Lcom/tendcloud/tenddata/ao;->a(Lcom/tendcloud/tenddata/TalkingDataShoppingCart;Lcom/tendcloud/tenddata/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 708
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static a(Lcom/tendcloud/tenddata/a;Ljava/lang/String;)V
    .locals 7

    .line 351
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/tendcloud/tenddata/ac;->f(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)V

    .line 352
    sget-object v1, Lcom/tendcloud/tenddata/ac;->a:Lcom/tendcloud/tenddata/ao;

    sget-object v2, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const-string v4, ""

    const/4 v5, 0x0

    move-object v3, p1

    move-object v6, p0

    invoke-interface/range {v1 .. v6}, Lcom/tendcloud/tenddata/ao;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/tendcloud/tenddata/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 354
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static a(Lcom/tendcloud/tenddata/dk;Lcom/tendcloud/tenddata/a;)V
    .locals 1

    .line 695
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/tendcloud/tenddata/ac;->f(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)V

    .line 696
    sget-object v0, Lcom/tendcloud/tenddata/ac;->a:Lcom/tendcloud/tenddata/ao;

    invoke-interface {v0, p0, p1}, Lcom/tendcloud/tenddata/ao;->a(Lcom/tendcloud/tenddata/dk;Lcom/tendcloud/tenddata/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 698
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static a(Lcom/tendcloud/tenddata/dl;Lcom/tendcloud/tenddata/a;)V
    .locals 1

    .line 729
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/tendcloud/tenddata/ac;->f(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)V

    .line 730
    sget-object v0, Lcom/tendcloud/tenddata/ac;->a:Lcom/tendcloud/tenddata/ao;

    invoke-interface {v0, p0, p1}, Lcom/tendcloud/tenddata/ao;->a(Lcom/tendcloud/tenddata/dl;Lcom/tendcloud/tenddata/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 732
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;Lcom/tendcloud/tenddata/a;)V
    .locals 1

    .line 612
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/tendcloud/tenddata/ac;->f(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)V

    .line 613
    sget-object v0, Lcom/tendcloud/tenddata/ac;->a:Lcom/tendcloud/tenddata/ao;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/tendcloud/tenddata/ao;->a(Ljava/lang/String;ILjava/lang/String;Lcom/tendcloud/tenddata/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 615
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V
    .locals 7

    .line 582
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-static {v0, p4}, Lcom/tendcloud/tenddata/ac;->f(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)V

    .line 583
    sget-object v1, Lcom/tendcloud/tenddata/ac;->a:Lcom/tendcloud/tenddata/ao;

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/tendcloud/tenddata/ao;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 585
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/tendcloud/tenddata/TalkingDataProfile;Lcom/tendcloud/tenddata/a;)V
    .locals 1

    .line 452
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/tendcloud/tenddata/ac;->f(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)V

    .line 453
    sget-object v0, Lcom/tendcloud/tenddata/ac;->a:Lcom/tendcloud/tenddata/ao;

    invoke-interface {v0, p0, p1, p2}, Lcom/tendcloud/tenddata/ao;->a(Ljava/lang/String;Lcom/tendcloud/tenddata/TalkingDataProfile;Lcom/tendcloud/tenddata/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 455
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/tendcloud/tenddata/TalkingDataProfile;Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V
    .locals 1

    .line 507
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/tendcloud/tenddata/ac;->f(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)V

    .line 508
    sget-object v0, Lcom/tendcloud/tenddata/ac;->a:Lcom/tendcloud/tenddata/ao;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/tendcloud/tenddata/ao;->a(Ljava/lang/String;Lcom/tendcloud/tenddata/TalkingDataProfile;Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 510
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/tendcloud/tenddata/TalkingDataProfile;Ljava/lang/String;Ljava/util/Map;Lcom/tendcloud/tenddata/a;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/tendcloud/tenddata/TalkingDataProfile;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/tendcloud/tenddata/a;",
            ")V"
        }
    .end annotation

    .line 516
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-static {v0, p4}, Lcom/tendcloud/tenddata/ac;->f(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)V

    .line 517
    sget-object v1, Lcom/tendcloud/tenddata/ac;->a:Lcom/tendcloud/tenddata/ao;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/tendcloud/tenddata/ao;->a(Ljava/lang/String;Lcom/tendcloud/tenddata/TalkingDataProfile;Ljava/lang/String;Ljava/util/Map;Lcom/tendcloud/tenddata/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 519
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/tendcloud/tenddata/TalkingDataProfile;Ljava/util/Map;Lcom/tendcloud/tenddata/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/tendcloud/tenddata/TalkingDataProfile;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/tendcloud/tenddata/a;",
            ")V"
        }
    .end annotation

    .line 461
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/tendcloud/tenddata/ac;->f(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)V

    .line 462
    sget-object v0, Lcom/tendcloud/tenddata/ac;->a:Lcom/tendcloud/tenddata/ao;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/tendcloud/tenddata/ao;->a(Ljava/lang/String;Lcom/tendcloud/tenddata/TalkingDataProfile;Ljava/util/Map;Lcom/tendcloud/tenddata/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 464
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V
    .locals 1

    .line 257
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/tendcloud/tenddata/ac;->f(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)V

    .line 258
    sget-object p1, Lcom/tendcloud/tenddata/ac;->a:Lcom/tendcloud/tenddata/ao;

    invoke-interface {p1, p0}, Lcom/tendcloud/tenddata/ao;->removeGlobalKV(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 260
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/tendcloud/tenddata/af$ProfileType;Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V
    .locals 1

    .line 443
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/tendcloud/tenddata/ac;->f(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)V

    .line 444
    sget-object v0, Lcom/tendcloud/tenddata/ac;->a:Lcom/tendcloud/tenddata/ao;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/tendcloud/tenddata/ao;->b(Ljava/lang/String;Lcom/tendcloud/tenddata/af$ProfileType;Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 446
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/tendcloud/tenddata/dj;Lcom/tendcloud/tenddata/a;)V
    .locals 1

    .line 603
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/tendcloud/tenddata/ac;->f(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)V

    .line 604
    sget-object v0, Lcom/tendcloud/tenddata/ac;->a:Lcom/tendcloud/tenddata/ao;

    invoke-interface {v0, p0, p1, p2}, Lcom/tendcloud/tenddata/ao;->a(Ljava/lang/String;Lcom/tendcloud/tenddata/dj;Lcom/tendcloud/tenddata/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 606
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;Lcom/tendcloud/tenddata/a;)V
    .locals 1

    .line 239
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/tendcloud/tenddata/ac;->f(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)V

    .line 240
    sget-object p2, Lcom/tendcloud/tenddata/ac;->a:Lcom/tendcloud/tenddata/ao;

    invoke-interface {p2, p0, p1}, Lcom/tendcloud/tenddata/ao;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 242
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V
    .locals 8

    .line 536
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-static {v0, p5}, Lcom/tendcloud/tenddata/ac;->f(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)V

    .line 537
    sget-object v1, Lcom/tendcloud/tenddata/ac;->a:Lcom/tendcloud/tenddata/ao;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v1 .. v7}, Lcom/tendcloud/tenddata/ao;->b(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 539
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/dj;Lcom/tendcloud/tenddata/a;)V
    .locals 9

    .line 554
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-static {v0, p6}, Lcom/tendcloud/tenddata/ac;->f(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)V

    .line 555
    sget-object v1, Lcom/tendcloud/tenddata/ac;->a:Lcom/tendcloud/tenddata/ao;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-interface/range {v1 .. v8}, Lcom/tendcloud/tenddata/ao;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/dj;Lcom/tendcloud/tenddata/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 557
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/tendcloud/tenddata/a;)V
    .locals 10

    .line 563
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    move-object/from16 v9, p7

    invoke-static {v0, v9}, Lcom/tendcloud/tenddata/ac;->f(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)V

    .line 564
    sget-object v1, Lcom/tendcloud/tenddata/ac;->a:Lcom/tendcloud/tenddata/ao;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-interface/range {v1 .. v9}, Lcom/tendcloud/tenddata/ao;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/tendcloud/tenddata/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 566
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V
    .locals 1

    .line 497
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/tendcloud/tenddata/ac;->f(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)V

    .line 498
    sget-object v0, Lcom/tendcloud/tenddata/ac;->a:Lcom/tendcloud/tenddata/ao;

    invoke-interface {v0, p0, p1, p2}, Lcom/tendcloud/tenddata/ao;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 500
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/dj;Lcom/tendcloud/tenddata/a;)V
    .locals 1

    .line 545
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/tendcloud/tenddata/ac;->f(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)V

    .line 546
    sget-object v0, Lcom/tendcloud/tenddata/ac;->a:Lcom/tendcloud/tenddata/ao;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/tendcloud/tenddata/ao;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/dj;Lcom/tendcloud/tenddata/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 548
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/tendcloud/tenddata/a;)V
    .locals 8

    .line 659
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-static {v0, p5}, Lcom/tendcloud/tenddata/ac;->f(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)V

    .line 660
    sget-object v1, Lcom/tendcloud/tenddata/ac;->a:Lcom/tendcloud/tenddata/ao;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-interface/range {v1 .. v7}, Lcom/tendcloud/tenddata/ao;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/tendcloud/tenddata/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 662
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/Map;Lcom/tendcloud/tenddata/a;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/tendcloud/tenddata/a;",
            ")V"
        }
    .end annotation

    .line 668
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-static {v0, p6}, Lcom/tendcloud/tenddata/ac;->f(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)V

    .line 669
    sget-object v1, Lcom/tendcloud/tenddata/ac;->a:Lcom/tendcloud/tenddata/ao;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-interface/range {v1 .. v8}, Lcom/tendcloud/tenddata/ao;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/Map;Lcom/tendcloud/tenddata/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 671
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/tendcloud/tenddata/a;)V
    .locals 7

    .line 677
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-static {v0, p4}, Lcom/tendcloud/tenddata/ac;->f(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)V

    .line 678
    sget-object v1, Lcom/tendcloud/tenddata/ac;->a:Lcom/tendcloud/tenddata/ao;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/tendcloud/tenddata/ao;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/tendcloud/tenddata/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 680
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Lcom/tendcloud/tenddata/a;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/tendcloud/tenddata/a;",
            ")V"
        }
    .end annotation

    .line 686
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-static {v0, p5}, Lcom/tendcloud/tenddata/ac;->f(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)V

    .line 687
    sget-object v1, Lcom/tendcloud/tenddata/ac;->a:Lcom/tendcloud/tenddata/ao;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v1 .. v7}, Lcom/tendcloud/tenddata/ao;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Lcom/tendcloud/tenddata/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 689
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V
    .locals 1

    .line 525
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/tendcloud/tenddata/ac;->f(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)V

    .line 526
    sget-object v0, Lcom/tendcloud/tenddata/ac;->a:Lcom/tendcloud/tenddata/ao;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/tendcloud/tenddata/ao;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 528
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/tendcloud/tenddata/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/tendcloud/tenddata/a;",
            ")V"
        }
    .end annotation

    .line 758
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/tendcloud/tenddata/ac;->f(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)V

    .line 759
    sget-object v0, Lcom/tendcloud/tenddata/ac;->a:Lcom/tendcloud/tenddata/ao;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/tendcloud/tenddata/ao;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/tendcloud/tenddata/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 761
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static a(Ljava/util/Map;Lcom/tendcloud/tenddata/TDGenerateUrl;Lcom/tendcloud/tenddata/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/tendcloud/tenddata/TDGenerateUrl;",
            "Lcom/tendcloud/tenddata/a;",
            ")V"
        }
    .end annotation

    .line 806
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/tendcloud/tenddata/ac;->f(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)V

    .line 807
    sget-object p2, Lcom/tendcloud/tenddata/ac;->a:Lcom/tendcloud/tenddata/ao;

    invoke-interface {p2, p0, p1}, Lcom/tendcloud/tenddata/ao;->a(Ljava/util/Map;Lcom/tendcloud/tenddata/TDGenerateUrl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 809
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static a(ZLcom/tendcloud/tenddata/a;)V
    .locals 1

    .line 368
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/tendcloud/tenddata/ac;->f(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)V

    .line 369
    sget-object p1, Lcom/tendcloud/tenddata/ac;->a:Lcom/tendcloud/tenddata/ao;

    invoke-interface {p1, p0}, Lcom/tendcloud/tenddata/ao;->c(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 371
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static a()Z
    .locals 1

    .line 107
    sget-boolean v0, Lcom/tendcloud/tenddata/zz;->b:Z

    return v0
.end method

.method public static b(Landroid/content/Context;)I
    .locals 0

    .line 411
    invoke-static {p0}, Lcom/tendcloud/tenddata/k;->c(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static b()Landroid/content/Context;
    .locals 1

    .line 143
    sget-object v0, Lcom/tendcloud/tenddata/ac;->a:Lcom/tendcloud/tenddata/ao;

    invoke-interface {v0}, Lcom/tendcloud/tenddata/ao;->d()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)Ljava/lang/String;
    .locals 0

    .line 92
    invoke-static {p0, p1}, Lcom/tendcloud/tenddata/ab;->a(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/app/Activity;Lcom/tendcloud/tenddata/a;)V
    .locals 1

    .line 194
    :try_start_0
    invoke-static {p0, p1}, Lcom/tendcloud/tenddata/ac;->f(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)V

    .line 195
    sget-object v0, Lcom/tendcloud/tenddata/ac;->a:Lcom/tendcloud/tenddata/ao;

    invoke-interface {v0, p0, p1}, Lcom/tendcloud/tenddata/ao;->b(Landroid/app/Activity;Lcom/tendcloud/tenddata/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 197
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V
    .locals 1

    .line 224
    :try_start_0
    invoke-static {p0, p2}, Lcom/tendcloud/tenddata/ac;->f(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)V

    .line 225
    sget-object v0, Lcom/tendcloud/tenddata/ac;->a:Lcom/tendcloud/tenddata/ao;

    invoke-interface {v0, p0, p1, p2}, Lcom/tendcloud/tenddata/ao;->b(Landroid/content/Context;Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 227
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V
    .locals 1

    const/4 v0, 0x0

    .line 286
    invoke-static {p0, p1, p2, v0, p3}, Lcom/tendcloud/tenddata/ac;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/tendcloud/tenddata/a;)V

    return-void
.end method

.method public static b(Ljava/lang/String;ILjava/lang/String;Lcom/tendcloud/tenddata/a;)V
    .locals 1

    .line 639
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/tendcloud/tenddata/ac;->f(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)V

    .line 640
    sget-object v0, Lcom/tendcloud/tenddata/ac;->a:Lcom/tendcloud/tenddata/ao;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/tendcloud/tenddata/ao;->b(Ljava/lang/String;ILjava/lang/String;Lcom/tendcloud/tenddata/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 642
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static b(Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V
    .locals 1

    .line 434
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/tendcloud/tenddata/ac;->f(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)V

    .line 435
    sget-object v0, Lcom/tendcloud/tenddata/ac;->a:Lcom/tendcloud/tenddata/ao;

    invoke-interface {v0, p0, p1}, Lcom/tendcloud/tenddata/ao;->a(Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 437
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static b(Ljava/lang/String;Lcom/tendcloud/tenddata/af$ProfileType;Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V
    .locals 1

    .line 488
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/tendcloud/tenddata/ac;->f(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)V

    .line 489
    sget-object v0, Lcom/tendcloud/tenddata/ac;->a:Lcom/tendcloud/tenddata/ao;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/tendcloud/tenddata/ao;->a(Ljava/lang/String;Lcom/tendcloud/tenddata/af$ProfileType;Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 491
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V
    .locals 8

    .line 573
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-static {v0, p5}, Lcom/tendcloud/tenddata/ac;->f(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)V

    .line 574
    sget-object v1, Lcom/tendcloud/tenddata/ac;->a:Lcom/tendcloud/tenddata/ao;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v1 .. v7}, Lcom/tendcloud/tenddata/ao;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 576
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V
    .locals 1

    .line 749
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/tendcloud/tenddata/ac;->f(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)V

    .line 750
    sget-object v0, Lcom/tendcloud/tenddata/ac;->a:Lcom/tendcloud/tenddata/ao;

    invoke-interface {v0, p0, p1, p2}, Lcom/tendcloud/tenddata/ao;->b(Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 752
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/tendcloud/tenddata/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/tendcloud/tenddata/a;",
            ")V"
        }
    .end annotation

    .line 776
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/tendcloud/tenddata/ac;->f(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)V

    .line 777
    sget-object v0, Lcom/tendcloud/tenddata/ac;->a:Lcom/tendcloud/tenddata/ao;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/tendcloud/tenddata/ao;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/tendcloud/tenddata/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 779
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static c(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)Ljava/lang/String;
    .locals 0

    .line 100
    invoke-static {p0, p1}, Lcom/tendcloud/tenddata/ab;->b(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c()V
    .locals 1

    const/4 v0, 0x0

    .line 148
    :try_start_0
    sput-boolean v0, Lcom/tendcloud/tenddata/h;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 150
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V
    .locals 1

    const-string v0, ""

    .line 274
    invoke-static {p0, p1, v0, p2}, Lcom/tendcloud/tenddata/ac;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V

    return-void
.end method

.method public static c(Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V
    .locals 1

    .line 480
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/tendcloud/tenddata/ac;->f(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)V

    .line 481
    sget-object v0, Lcom/tendcloud/tenddata/ac;->a:Lcom/tendcloud/tenddata/ao;

    invoke-interface {v0, p0, p1}, Lcom/tendcloud/tenddata/ao;->b(Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 483
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V
    .locals 1

    .line 767
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/tendcloud/tenddata/ac;->f(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)V

    .line 768
    sget-object v0, Lcom/tendcloud/tenddata/ac;->a:Lcom/tendcloud/tenddata/ao;

    invoke-interface {v0, p0, p1, p2}, Lcom/tendcloud/tenddata/ao;->c(Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 770
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static declared-synchronized d(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/tendcloud/tenddata/ac;

    monitor-enter v0

    .line 119
    :try_start_0
    invoke-static {p0, p1}, Lcom/tendcloud/tenddata/ac;->f(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)V

    .line 120
    sget-object v1, Lcom/tendcloud/tenddata/ac;->a:Lcom/tendcloud/tenddata/ao;

    invoke-interface {v1, p0, p1}, Lcom/tendcloud/tenddata/ao;->b(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 122
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 p0, 0x0

    .line 123
    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static d(Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V
    .locals 1

    .line 720
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/tendcloud/tenddata/ac;->f(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)V

    .line 721
    sget-object v0, Lcom/tendcloud/tenddata/ac;->a:Lcom/tendcloud/tenddata/ao;

    invoke-interface {v0, p0, p1}, Lcom/tendcloud/tenddata/ao;->c(Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 723
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V
    .locals 1

    .line 785
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/tendcloud/tenddata/ac;->f(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)V

    .line 786
    sget-object v0, Lcom/tendcloud/tenddata/ac;->a:Lcom/tendcloud/tenddata/ao;

    invoke-interface {v0, p0, p1, p2}, Lcom/tendcloud/tenddata/ao;->d(Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 788
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static declared-synchronized e(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/tendcloud/tenddata/ac;

    monitor-enter v0

    .line 795
    :try_start_0
    invoke-static {p0, p1}, Lcom/tendcloud/tenddata/ac;->f(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)V

    .line 796
    sget-object v1, Lcom/tendcloud/tenddata/ac;->a:Lcom/tendcloud/tenddata/ao;

    invoke-interface {v1, p0, p1}, Lcom/tendcloud/tenddata/ao;->e(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 798
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 p0, 0x0

    .line 800
    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized f(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)V
    .locals 0

    const-class p1, Lcom/tendcloud/tenddata/ac;

    monitor-enter p1

    if-eqz p0, :cond_0

    .line 417
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    .line 419
    :cond_0
    sget-object p0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    if-nez p0, :cond_1

    const-string p0, "Init failed Context is null "

    .line 420
    invoke-static {p0}, Lcom/tendcloud/tenddata/h;->eForDeveloper(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 421
    monitor-exit p1

    return-void

    .line 423
    :cond_1
    :try_start_1
    sget-object p0, Lcom/tendcloud/tenddata/ac;->a:Lcom/tendcloud/tenddata/ao;

    if-nez p0, :cond_2

    .line 424
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 426
    invoke-static {}, Lcom/tendcloud/tenddata/zz;->a()Lcom/tendcloud/tenddata/zz;

    move-result-object p0

    sput-object p0, Lcom/tendcloud/tenddata/ac;->a:Lcom/tendcloud/tenddata/ao;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 430
    :cond_2
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0
.end method

.method public static declared-synchronized setConfigurationDisable(I)V
    .locals 1

    const-class v0, Lcom/tendcloud/tenddata/ac;

    monitor-enter v0

    .line 69
    :try_start_0
    invoke-static {p0}, Lcom/tendcloud/tenddata/ab;->setConfigurationDisable(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 71
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 73
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static setProfileId(Ljava/lang/String;)V
    .locals 0

    .line 79
    :try_start_0
    sput-object p0, Lcom/tendcloud/tenddata/ab;->s:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 81
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
