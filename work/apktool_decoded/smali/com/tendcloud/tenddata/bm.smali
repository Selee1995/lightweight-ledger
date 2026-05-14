.class public Lcom/tendcloud/tenddata/bm;
.super Ljava/lang/Object;
.source "td"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tendcloud/tenddata/bm$a;,
        Lcom/tendcloud/tenddata/bm$b;
    }
.end annotation


# static fields
.field private static a:Ljava/util/concurrent/ScheduledThreadPoolExecutor; = null

.field private static final b:J = 0x7530L

.field private static c:J = 0x0L

.field private static d:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:J = 0x2L

.field private static volatile f:Lcom/tendcloud/tenddata/bm;

.field private static g:Z

.field private static h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 491
    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/z;->a()Lcom/tendcloud/tenddata/z;

    move-result-object v0

    invoke-static {}, Lcom/tendcloud/tenddata/bm;->a()Lcom/tendcloud/tenddata/bm;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/z;->register(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    const/4 v0, 0x0

    .line 496
    sput-object v0, Lcom/tendcloud/tenddata/bm;->f:Lcom/tendcloud/tenddata/bm;

    const/4 v0, 0x0

    .line 497
    sput-boolean v0, Lcom/tendcloud/tenddata/bm;->g:Z

    .line 498
    sput-boolean v0, Lcom/tendcloud/tenddata/bm;->h:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/tendcloud/tenddata/bm;
    .locals 2

    .line 476
    sget-object v0, Lcom/tendcloud/tenddata/bm;->f:Lcom/tendcloud/tenddata/bm;

    if-nez v0, :cond_1

    .line 477
    const-class v0, Lcom/tendcloud/tenddata/bm;

    monitor-enter v0

    .line 478
    :try_start_0
    sget-object v1, Lcom/tendcloud/tenddata/bm;->f:Lcom/tendcloud/tenddata/bm;

    if-nez v1, :cond_0

    .line 479
    new-instance v1, Lcom/tendcloud/tenddata/bm;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/bm;-><init>()V

    sput-object v1, Lcom/tendcloud/tenddata/bm;->f:Lcom/tendcloud/tenddata/bm;

    .line 481
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 483
    :cond_1
    :goto_0
    sget-object v0, Lcom/tendcloud/tenddata/bm;->f:Lcom/tendcloud/tenddata/bm;

    return-object v0
.end method

.method private a(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)V
    .locals 2

    .line 103
    sget-boolean v0, Lcom/tendcloud/tenddata/bm;->h:Z

    if-nez v0, :cond_2

    .line 105
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TalkingData SDK init...\n\tSDK_VERSION is: Android+TD+V5.0.16 gp Type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-static {}, Lcom/tendcloud/tenddata/ab;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  Build_Num:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "2378"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\tApp ID is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-static {p1, p2}, Lcom/tendcloud/tenddata/ab;->a(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\tApp Channel is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-static {p1, p2}, Lcom/tendcloud/tenddata/ab;->b(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\tApp Custom is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-static {p1, p2}, Lcom/tendcloud/tenddata/ab;->c(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n\tSDK_OVC is: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "TDOVC+55e1cf12821d60546290d73ba37c1045+SaaS"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 111
    sget-boolean p2, Lcom/tendcloud/tenddata/ab;->b:Z

    if-nez p2, :cond_0

    sget-boolean p2, Lcom/tendcloud/tenddata/h;->a:Z

    if-eqz p2, :cond_1

    :cond_0
    const-string p2, "TDLog"

    .line 112
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p1, 0x1

    .line 114
    sput-boolean p1, Lcom/tendcloud/tenddata/bm;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/tendcloud/tenddata/a;)V
    .locals 0

    .line 46
    invoke-static {p0}, Lcom/tendcloud/tenddata/bm;->d(Lcom/tendcloud/tenddata/a;)V

    return-void
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    :try_start_0
    new-array p0, v0, [Ljava/lang/String;

    const-string v0, "[ModuleInit] current context is null..."

    aput-object v0, p0, v1

    .line 330
    invoke-static {p0}, Lcom/tendcloud/tenddata/h;->eForInternal([Ljava/lang/String;)V

    return v1

    .line 333
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 334
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v3, 0x1000

    invoke-virtual {v2, p0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 335
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 337
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p0, v3

    const-string v5, "android.permission.READ_PHONE_STATE"

    .line 341
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    return v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    :cond_2
    return v1
.end method

.method static synthetic b()V
    .locals 0

    .line 46
    invoke-static {}, Lcom/tendcloud/tenddata/bm;->e()V

    return-void
.end method

.method static synthetic b(Lcom/tendcloud/tenddata/a;)V
    .locals 0

    .line 46
    invoke-static {p0}, Lcom/tendcloud/tenddata/bm;->g(Lcom/tendcloud/tenddata/a;)V

    return-void
.end method

.method static synthetic c()Ljava/util/Map;
    .locals 1

    .line 46
    sget-object v0, Lcom/tendcloud/tenddata/bm;->d:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic c(Lcom/tendcloud/tenddata/a;)V
    .locals 0

    .line 46
    invoke-static {p0}, Lcom/tendcloud/tenddata/bm;->h(Lcom/tendcloud/tenddata/a;)V

    return-void
.end method

.method static synthetic d()J
    .locals 2

    .line 46
    sget-wide v0, Lcom/tendcloud/tenddata/bm;->c:J

    return-wide v0
.end method

.method private static d(Lcom/tendcloud/tenddata/a;)V
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x1

    :try_start_0
    new-array p0, p0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "TDFeatures is null..."

    aput-object v1, p0, v0

    .line 147
    invoke-static {p0}, Lcom/tendcloud/tenddata/h;->eForInternal([Ljava/lang/String;)V

    return-void

    .line 156
    :cond_0
    invoke-static {p0}, Lcom/tendcloud/tenddata/i;->d(Lcom/tendcloud/tenddata/a;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lcom/tendcloud/tenddata/i;->b(JLcom/tendcloud/tenddata/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method private static e()V
    .locals 5

    .line 135
    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/i;->e()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/i;->setInitTime(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method private static e(Lcom/tendcloud/tenddata/a;)V
    .locals 5

    .line 167
    :try_start_0
    invoke-static {p0}, Lcom/tendcloud/tenddata/i;->d(Lcom/tendcloud/tenddata/a;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 170
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 171
    invoke-static {p0}, Lcom/tendcloud/tenddata/i;->d(Lcom/tendcloud/tenddata/a;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long p0, v0, v2

    if-lez p0, :cond_1

    const/4 p0, 0x1

    .line 172
    sput-boolean p0, Lcom/tendcloud/tenddata/y;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method private static f()V
    .locals 9

    .line 307
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/tendcloud/tenddata/bm;->c:J

    .line 311
    new-instance v2, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v0, 0x1

    new-instance v1, Lcom/tendcloud/tenddata/bm$b;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/tendcloud/tenddata/bm$b;-><init>(Lcom/tendcloud/tenddata/bm$1;)V

    invoke-direct {v2, v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    sput-object v2, Lcom/tendcloud/tenddata/bm;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 312
    new-instance v0, Lcom/tendcloud/tenddata/bm$a;

    invoke-direct {v0, v3}, Lcom/tendcloud/tenddata/bm$a;-><init>(Lcom/tendcloud/tenddata/bm$1;)V

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x2

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v3, v0

    invoke-virtual/range {v2 .. v8}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private static f(Lcom/tendcloud/tenddata/a;)V
    .locals 4

    .line 184
    :try_start_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 185
    new-instance v1, Lcom/tendcloud/tenddata/bm$1;

    invoke-direct {v1, p0}, Lcom/tendcloud/tenddata/bm$1;-><init>(Lcom/tendcloud/tenddata/a;)V

    .line 194
    sget-wide v2, Lcom/tendcloud/tenddata/ab;->r:J

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 196
    invoke-static {v0}, Lcom/tendcloud/tenddata/h;->eForInternal(Ljava/lang/Throwable;)V

    .line 197
    invoke-static {p0}, Lcom/tendcloud/tenddata/bm;->g(Lcom/tendcloud/tenddata/a;)V

    :goto_0
    return-void
.end method

.method private static g()V
    .locals 4

    .line 431
    :try_start_0
    new-instance v0, Lcom/tendcloud/tenddata/bx;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/bx;-><init>()V

    const-string v1, "env"

    .line 432
    iput-object v1, v0, Lcom/tendcloud/tenddata/bx;->b:Ljava/lang/String;

    const-string v1, "getProp"

    .line 433
    iput-object v1, v0, Lcom/tendcloud/tenddata/bx;->c:Ljava/lang/String;

    .line 434
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    const-string v2, "sysproperty"

    .line 435
    invoke-static {}, Lcom/tendcloud/tenddata/y;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    iput-object v1, v0, Lcom/tendcloud/tenddata/bx;->d:Ljava/util/Map;

    .line 437
    sget-object v1, Lcom/tendcloud/tenddata/a;->ENV:Lcom/tendcloud/tenddata/a;

    iput-object v1, v0, Lcom/tendcloud/tenddata/bx;->a:Lcom/tendcloud/tenddata/a;

    .line 438
    invoke-static {}, Lcom/tendcloud/tenddata/z;->a()Lcom/tendcloud/tenddata/z;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tendcloud/tenddata/z;->post(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private static g(Lcom/tendcloud/tenddata/a;)V
    .locals 9

    const-string v0, "isDeclareIMEI"

    const-string v1, "targetAPI"

    if-nez p0, :cond_0

    const/4 p0, 0x1

    :try_start_0
    new-array p0, p0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "TDFeatures is null..."

    aput-object v1, p0, v0

    .line 204
    invoke-static {p0}, Lcom/tendcloud/tenddata/h;->eForInternal([Ljava/lang/String;)V

    return-void

    .line 207
    :cond_0
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 208
    invoke-static {p0}, Lcom/tendcloud/tenddata/ab;->a(Lcom/tendcloud/tenddata/a;)Z

    move-result v3

    const-string v4, "first"

    .line 209
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v4, Lcom/tendcloud/tenddata/zz;->a:Ljava/lang/String;

    invoke-static {v4}, Lcom/tendcloud/tenddata/y;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "custom"

    .line 211
    sget-object v5, Lcom/tendcloud/tenddata/zz;->a:Ljava/lang/String;

    invoke-static {v5}, Lcom/tendcloud/tenddata/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 215
    :cond_1
    :try_start_1
    sget-object v4, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-static {v4}, Lcom/tendcloud/tenddata/y;->c(Landroid/content/Context;)I

    move-result v4

    .line 216
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    invoke-virtual {p0}, Lcom/tendcloud/tenddata/a;->name()Ljava/lang/String;

    move-result-object v5

    const-string v6, "TRACKING"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/a;->name()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SDK"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    if-eqz v3, :cond_3

    .line 218
    sget-object v5, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-static {v5}, Lcom/tendcloud/tenddata/bm;->a(Landroid/content/Context;)Z

    move-result v5

    .line 219
    sget-object v6, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const-string v7, "android.permission.READ_PHONE_STATE"

    invoke-static {v6, v7}, Lcom/tendcloud/tenddata/y;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    .line 220
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v2, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "isGetIMEI"

    .line 221
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v5, :cond_3

    if-nez v6, :cond_3

    const/16 v6, 0x17

    if-lt v4, v6, :cond_3

    .line 224
    new-instance v6, Ljava/util/TreeMap;

    invoke-direct {v6}, Ljava/util/TreeMap;-><init>()V

    sput-object v6, Lcom/tendcloud/tenddata/bm;->d:Ljava/util/Map;

    .line 225
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget-object v1, Lcom/tendcloud/tenddata/bm;->d:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    invoke-static {}, Lcom/tendcloud/tenddata/bm;->f()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 236
    :catchall_0
    :cond_3
    :try_start_2
    new-instance v0, Lcom/tendcloud/tenddata/bx;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/bx;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    const-string v1, "app"

    .line 238
    iput-object v1, v0, Lcom/tendcloud/tenddata/bx;->b:Ljava/lang/String;

    const-string v1, "init"

    .line 239
    iput-object v1, v0, Lcom/tendcloud/tenddata/bx;->c:Ljava/lang/String;

    .line 242
    iput-object v2, v0, Lcom/tendcloud/tenddata/bx;->d:Ljava/util/Map;

    .line 243
    iput-object p0, v0, Lcom/tendcloud/tenddata/bx;->a:Lcom/tendcloud/tenddata/a;

    if-eqz v3, :cond_4

    .line 245
    new-instance v1, Lcom/tendcloud/tenddata/bm$2;

    invoke-direct {v1, p0}, Lcom/tendcloud/tenddata/bm$2;-><init>(Lcom/tendcloud/tenddata/a;)V

    iput-object v1, v0, Lcom/tendcloud/tenddata/bx;->f:Lcom/tendcloud/tenddata/cq;

    .line 267
    :cond_4
    invoke-static {}, Lcom/tendcloud/tenddata/z;->a()Lcom/tendcloud/tenddata/z;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tendcloud/tenddata/z;->post(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 274
    :catchall_1
    :try_start_4
    new-instance v0, Lcom/tendcloud/tenddata/bw;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/bw;-><init>()V

    .line 275
    iput-object p0, v0, Lcom/tendcloud/tenddata/bw;->a:Lcom/tendcloud/tenddata/a;

    .line 276
    sget-object p0, Lcom/tendcloud/tenddata/bw$a;->IMMEDIATELY:Lcom/tendcloud/tenddata/bw$a;

    iput-object p0, v0, Lcom/tendcloud/tenddata/bw;->b:Lcom/tendcloud/tenddata/bw$a;

    .line 277
    invoke-static {}, Lcom/tendcloud/tenddata/z;->a()Lcom/tendcloud/tenddata/z;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/tendcloud/tenddata/z;->post(Ljava/lang/Object;)V

    if-eqz v3, :cond_5

    .line 280
    invoke-static {}, Lcom/tendcloud/tenddata/bm;->g()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    :cond_5
    return-void
.end method

.method private static h(Lcom/tendcloud/tenddata/a;)V
    .locals 2

    .line 406
    :try_start_0
    new-instance v0, Lcom/tendcloud/tenddata/bx;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/bx;-><init>()V

    const-string v1, "app"

    .line 407
    iput-object v1, v0, Lcom/tendcloud/tenddata/bx;->b:Ljava/lang/String;

    const-string v1, "getIMEI"

    .line 408
    iput-object v1, v0, Lcom/tendcloud/tenddata/bx;->c:Ljava/lang/String;

    .line 409
    sget-object v1, Lcom/tendcloud/tenddata/bm;->d:Ljava/util/Map;

    iput-object v1, v0, Lcom/tendcloud/tenddata/bx;->d:Ljava/util/Map;

    .line 410
    iput-object p0, v0, Lcom/tendcloud/tenddata/bx;->a:Lcom/tendcloud/tenddata/a;

    .line 411
    invoke-static {}, Lcom/tendcloud/tenddata/z;->a()Lcom/tendcloud/tenddata/z;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tendcloud/tenddata/z;->post(Ljava/lang/Object;)V

    .line 413
    new-instance v0, Lcom/tendcloud/tenddata/bw;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/bw;-><init>()V

    .line 414
    iput-object p0, v0, Lcom/tendcloud/tenddata/bw;->a:Lcom/tendcloud/tenddata/a;

    .line 415
    sget-object p0, Lcom/tendcloud/tenddata/bw$a;->IMMEDIATELY:Lcom/tendcloud/tenddata/bw$a;

    iput-object p0, v0, Lcom/tendcloud/tenddata/bw;->b:Lcom/tendcloud/tenddata/bw$a;

    .line 416
    invoke-static {}, Lcom/tendcloud/tenddata/z;->a()Lcom/tendcloud/tenddata/z;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/tendcloud/tenddata/z;->post(Ljava/lang/Object;)V

    .line 418
    sget-object p0, Lcom/tendcloud/tenddata/bm;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method


# virtual methods
.method public final onTDEBEventInitEvent(Lcom/tendcloud/tenddata/zz$a;)V
    .locals 6

    .line 49
    :try_start_0
    iget-object v0, p1, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v1, "apiType"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 52
    :cond_0
    iget-object v0, p1, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v2, "action"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 53
    iget-object v2, p1, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v3, "service"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tendcloud/tenddata/a;

    const-string v3, "install"

    .line 54
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "SDK"

    if-nez v3, :cond_1

    :try_start_1
    const-string v3, "deeplink"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    invoke-virtual {v2}, Lcom/tendcloud/tenddata/a;->name()Ljava/lang/String;

    move-result-object v3

    const-string v5, "TRACKING"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v2}, Lcom/tendcloud/tenddata/a;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const-string p1, "init"

    .line 64
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 65
    sget-object p1, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    .line 70
    invoke-static {}, Lcom/tendcloud/tenddata/br;->a()Lcom/tendcloud/tenddata/br;

    .line 72
    invoke-static {}, Lcom/tendcloud/tenddata/be;->a()Lcom/tendcloud/tenddata/be;

    .line 73
    invoke-static {}, Lcom/tendcloud/tenddata/bk;->a()Lcom/tendcloud/tenddata/bk;

    .line 74
    invoke-static {}, Lcom/tendcloud/tenddata/bf;->a()Lcom/tendcloud/tenddata/bf;

    .line 75
    invoke-static {}, Lcom/tendcloud/tenddata/bo;->a()Lcom/tendcloud/tenddata/bo;

    .line 76
    invoke-static {}, Lcom/tendcloud/tenddata/bg;->a()Lcom/tendcloud/tenddata/bg;

    .line 77
    invoke-static {}, Lcom/tendcloud/tenddata/bl;->a()Lcom/tendcloud/tenddata/bl;

    .line 78
    invoke-static {p1}, Lcom/tendcloud/tenddata/y;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 79
    invoke-static {}, Lcom/tendcloud/tenddata/bq;->b()Lcom/tendcloud/tenddata/bq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/bq;->a()V

    .line 80
    invoke-static {}, Lcom/tendcloud/tenddata/bd;->a()Lcom/tendcloud/tenddata/bd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/bd;->b()V

    .line 84
    :cond_3
    sput-boolean v1, Lcom/tendcloud/tenddata/ab;->b:Z

    .line 87
    invoke-virtual {v2}, Lcom/tendcloud/tenddata/a;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 88
    invoke-direct {p0, p1, v2}, Lcom/tendcloud/tenddata/bm;->a(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)V

    .line 91
    :cond_4
    invoke-static {v2}, Lcom/tendcloud/tenddata/bm;->e(Lcom/tendcloud/tenddata/a;)V

    .line 93
    invoke-static {v2}, Lcom/tendcloud/tenddata/bm;->f(Lcom/tendcloud/tenddata/a;)V

    goto :goto_1

    .line 55
    :cond_5
    :goto_0
    new-instance v1, Lcom/tendcloud/tenddata/bx;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/bx;-><init>()V

    .line 56
    iget-object v3, p1, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v4, "data"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 57
    iget-object p1, p1, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v4, "domain"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/tendcloud/tenddata/bx;->b:Ljava/lang/String;

    .line 58
    iput-object v0, v1, Lcom/tendcloud/tenddata/bx;->c:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 59
    instance-of p1, v3, Ljava/util/Map;

    if-eqz p1, :cond_6

    .line 60
    check-cast v3, Ljava/util/Map;

    iput-object v3, v1, Lcom/tendcloud/tenddata/bx;->d:Ljava/util/Map;

    .line 62
    :cond_6
    iput-object v2, v1, Lcom/tendcloud/tenddata/bx;->a:Lcom/tendcloud/tenddata/a;

    .line 63
    invoke-static {}, Lcom/tendcloud/tenddata/z;->a()Lcom/tendcloud/tenddata/z;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/tendcloud/tenddata/z;->post(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_7
    :goto_1
    return-void
.end method
