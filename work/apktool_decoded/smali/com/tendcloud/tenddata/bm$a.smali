.class Lcom/tendcloud/tenddata/bm$a;
.super Ljava/lang/Object;
.source "td"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/bm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tendcloud/tenddata/bm$1;)V
    .locals 0

    .line 365
    invoke-direct {p0}, Lcom/tendcloud/tenddata/bm$a;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 374
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/a;->UNIVERSAL:Lcom/tendcloud/tenddata/a;

    .line 375
    sget-object v1, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-static {v1, v2}, Lcom/tendcloud/tenddata/y;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "duration"

    const-string v3, "isGetIMEI"

    if-eqz v1, :cond_0

    .line 376
    :try_start_1
    invoke-static {}, Lcom/tendcloud/tenddata/bm;->c()Ljava/util/Map;

    move-result-object v1

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    invoke-static {}, Lcom/tendcloud/tenddata/bm;->c()Ljava/util/Map;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {}, Lcom/tendcloud/tenddata/bm;->d()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    invoke-static {v0}, Lcom/tendcloud/tenddata/bm;->c(Lcom/tendcloud/tenddata/a;)V

    goto :goto_0

    .line 379
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v0}, Lcom/tendcloud/tenddata/i;->d(Lcom/tendcloud/tenddata/a;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x7530

    cmp-long v1, v4, v6

    if-ltz v1, :cond_1

    .line 380
    invoke-static {}, Lcom/tendcloud/tenddata/bm;->c()Ljava/util/Map;

    move-result-object v1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    invoke-static {}, Lcom/tendcloud/tenddata/bm;->c()Ljava/util/Map;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {}, Lcom/tendcloud/tenddata/bm;->d()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    invoke-static {v0}, Lcom/tendcloud/tenddata/bm;->c(Lcom/tendcloud/tenddata/a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_1
    :goto_0
    return-void
.end method
