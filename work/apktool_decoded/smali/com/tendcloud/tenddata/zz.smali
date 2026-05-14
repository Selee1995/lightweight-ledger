.class public final Lcom/tendcloud/tenddata/zz;
.super Ljava/lang/Object;
.source "td"

# interfaces
.implements Lcom/tendcloud/tenddata/ao;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tendcloud/tenddata/zz$a;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String; = null

.field public static volatile b:Z = false

.field public static volatile c:Z = false

.field static d:Z = false

.field public static e:Lcom/tendcloud/tenddata/b; = null

.field public static final f:I = 0x66

.field private static volatile g:Lcom/tendcloud/tenddata/zz; = null

.field private static h:Ljava/lang/String; = null

.field private static i:Ljava/lang/String; = null

.field private static j:Ljava/lang/String; = null

.field private static k:Z = false

.field private static final l:I = 0x65

.field private static final m:I = 0x67

.field private static n:Landroid/os/Handler;

.field private static final o:Landroid/os/HandlerThread;

.field private static p:Landroid/os/Handler;

.field private static final q:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 95
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ProcessingThread"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tendcloud/tenddata/zz;->o:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    .line 98
    sput-object v1, Lcom/tendcloud/tenddata/zz;->p:Landroid/os/Handler;

    .line 99
    new-instance v1, Landroid/os/HandlerThread;

    const-string v3, "PauseEventThread"

    invoke-direct {v1, v3, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/tendcloud/tenddata/zz;->q:Landroid/os/HandlerThread;

    .line 103
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 104
    new-instance v2, Lcom/tendcloud/tenddata/zz$1;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/tendcloud/tenddata/zz$1;-><init>(Landroid/os/Looper;)V

    sput-object v2, Lcom/tendcloud/tenddata/zz;->n:Landroid/os/Handler;

    .line 124
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 125
    new-instance v0, Lcom/tendcloud/tenddata/zz$12;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tendcloud/tenddata/zz$12;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/tendcloud/tenddata/zz;->p:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    sput-object p0, Lcom/tendcloud/tenddata/zz;->g:Lcom/tendcloud/tenddata/zz;

    return-void
.end method

.method static declared-synchronized a()Lcom/tendcloud/tenddata/zz;
    .locals 2

    const-class v0, Lcom/tendcloud/tenddata/zz;

    monitor-enter v0

    .line 52
    :try_start_0
    sget-object v1, Lcom/tendcloud/tenddata/zz;->g:Lcom/tendcloud/tenddata/zz;

    if-nez v1, :cond_1

    .line 53
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 54
    :try_start_1
    sget-object v1, Lcom/tendcloud/tenddata/zz;->g:Lcom/tendcloud/tenddata/zz;

    if-nez v1, :cond_0

    .line 55
    new-instance v1, Lcom/tendcloud/tenddata/zz;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/zz;-><init>()V

    sput-object v1, Lcom/tendcloud/tenddata/zz;->g:Lcom/tendcloud/tenddata/zz;

    .line 57
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    .line 59
    :cond_1
    :goto_0
    sget-object v1, Lcom/tendcloud/tenddata/zz;->g:Lcom/tendcloud/tenddata/zz;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-object v1

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    const/16 v0, 0xe

    .line 1885
    invoke-static {v0}, Lcom/tendcloud/tenddata/y;->a(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const/4 p1, 0x0

    .line 1888
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 1889
    sget-object p1, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    goto :goto_0

    .line 1890
    :cond_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_1

    .line 1891
    sget-object p1, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    check-cast p1, Landroid/app/Application;

    :cond_1
    :goto_0
    if-eqz p1, :cond_3

    .line 1894
    sget-boolean v0, Lcom/tendcloud/tenddata/zz;->k:Z

    if-nez v0, :cond_3

    .line 1895
    new-instance v0, Lcom/tendcloud/tenddata/b;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/b;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/zz;->e:Lcom/tendcloud/tenddata/b;

    .line 1896
    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 1897
    sput-boolean v1, Lcom/tendcloud/tenddata/zz;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_1

    .line 1903
    :cond_2
    new-instance v0, Lcom/tendcloud/tenddata/zz$28;

    invoke-direct {v0, p0, p1}, Lcom/tendcloud/tenddata/zz$28;-><init>(Lcom/tendcloud/tenddata/zz;Landroid/content/Context;)V

    :try_start_1
    const-string p1, "android.app.ActivityManagerNative"

    .line 1924
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v2, "gDefault"

    const-string v3, "android.app.IActivityManager"

    .line 1925
    invoke-static {p1, v0, v2, v3}, Lcom/tendcloud/tenddata/y;->a(Ljava/lang/Class;Lcom/tendcloud/tenddata/v;Ljava/lang/String;Ljava/lang/String;)V

    .line 1926
    sput-boolean v1, Lcom/tendcloud/tenddata/zz;->k:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 1928
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerActivityLifecycleListener "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tendcloud/tenddata/h;->eForDeveloper(Ljava/lang/String;)V

    :catchall_1
    :cond_3
    :goto_1
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;ILcom/tendcloud/tenddata/a;)V
    .locals 0

    .line 415
    new-instance p1, Lcom/tendcloud/tenddata/zz$34;

    invoke-direct {p1, p0, p3, p2, p4}, Lcom/tendcloud/tenddata/zz$34;-><init>(Lcom/tendcloud/tenddata/zz;ILjava/lang/String;Lcom/tendcloud/tenddata/a;)V

    invoke-static {p1}, Lcom/tendcloud/tenddata/y;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static b()Landroid/os/Handler;
    .locals 1

    .line 154
    sget-object v0, Lcom/tendcloud/tenddata/zz;->p:Landroid/os/Handler;

    return-object v0
.end method

.method public static c()Landroid/os/Handler;
    .locals 1

    .line 158
    sget-object v0, Lcom/tendcloud/tenddata/zz;->n:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    .line 42
    sget-object v0, Lcom/tendcloud/tenddata/zz;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g()Ljava/lang/String;
    .locals 1

    .line 42
    sget-object v0, Lcom/tendcloud/tenddata/zz;->j:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lcom/tendcloud/tenddata/a;)V
    .locals 1

    .line 309
    :try_start_0
    sget-boolean v0, Lcom/tendcloud/tenddata/zz;->b:Z

    if-nez v0, :cond_0

    const-string p1, "SDK have not been initialized"

    .line 310
    invoke-static {p1}, Lcom/tendcloud/tenddata/h;->eForDeveloper(Ljava/lang/String;)V

    return-void

    .line 313
    :cond_0
    sget-boolean v0, Lcom/tendcloud/tenddata/zz;->k:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/tendcloud/tenddata/ab;->K:Z

    if-eqz v0, :cond_1

    return-void

    .line 319
    :cond_1
    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/zz;->a(Landroid/content/Context;)V

    .line 320
    invoke-static {p1, p2}, Lcom/tendcloud/tenddata/c;->a(Landroid/app/Activity;Lcom/tendcloud/tenddata/a;)V

    const/4 p1, 0x1

    .line 322
    sput-boolean p1, Lcom/tendcloud/tenddata/ab;->K:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V
    .locals 0

    .line 333
    :try_start_0
    sget-boolean p2, Lcom/tendcloud/tenddata/zz;->b:Z

    if-nez p2, :cond_0

    const-string p1, "SDK have not been initialized"

    .line 334
    invoke-static {p1}, Lcom/tendcloud/tenddata/h;->eForDeveloper(Ljava/lang/String;)V

    return-void

    .line 337
    :cond_0
    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/zz;->a(Landroid/content/Context;)V

    .line 338
    invoke-virtual {p0, p1, p4}, Lcom/tendcloud/tenddata/zz;->a(Landroid/app/Activity;Lcom/tendcloud/tenddata/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)V
    .locals 1

    const/4 v0, 0x0

    .line 166
    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/tendcloud/tenddata/zz;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V
    .locals 1

    .line 364
    :try_start_0
    sget-boolean v0, Lcom/tendcloud/tenddata/zz;->b:Z

    if-nez v0, :cond_0

    const-string p1, "SDK have not been initialized"

    .line 365
    invoke-static {p1}, Lcom/tendcloud/tenddata/h;->eForDeveloper(Ljava/lang/String;)V

    return-void

    .line 370
    :cond_0
    sget-boolean v0, Lcom/tendcloud/tenddata/zz;->d:Z

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    .line 371
    sput-boolean p1, Lcom/tendcloud/tenddata/zz;->d:Z

    return-void

    .line 376
    :cond_1
    invoke-static {p2}, Lcom/tendcloud/tenddata/y;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 377
    move-object p2, p1

    check-cast p2, Landroid/app/Activity;

    .line 378
    invoke-virtual {p2}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object p2

    :cond_2
    const/4 v0, 0x4

    .line 380
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/tendcloud/tenddata/zz;->a(Landroid/content/Context;Ljava/lang/String;ILcom/tendcloud/tenddata/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 171
    invoke-virtual/range {v0 .. v5}, Lcom/tendcloud/tenddata/zz;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V
    .locals 1

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "Init failed Context is null"

    .line 178
    invoke-static {p1}, Lcom/tendcloud/tenddata/h;->iForDeveloper(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "android.permission.INTERNET"

    .line 182
    invoke-static {p1, v0}, Lcom/tendcloud/tenddata/y;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "[SDKInit] Permission \"android.permission.INTERNET\" is needed."

    .line 183
    invoke-static {p1}, Lcom/tendcloud/tenddata/h;->eForDeveloper(Ljava/lang/String;)V

    return-void

    :cond_1
    if-nez p5, :cond_2

    const-string p1, "Failed to initialize!"

    .line 187
    invoke-static {p1}, Lcom/tendcloud/tenddata/h;->eForDeveloper(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-void

    .line 191
    :cond_2
    :try_start_1
    sget-boolean v0, Lcom/tendcloud/tenddata/zz;->b:Z

    if-nez v0, :cond_7

    .line 192
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    .line 194
    sput-object p2, Lcom/tendcloud/tenddata/zz;->h:Ljava/lang/String;

    .line 195
    sput-object p3, Lcom/tendcloud/tenddata/zz;->j:Ljava/lang/String;

    .line 196
    sput-object p4, Lcom/tendcloud/tenddata/zz;->a:Ljava/lang/String;

    .line 198
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    const/16 p4, 0x80

    invoke-virtual {p2, p3, p4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    .line 199
    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string p3, "TD_APP_ID"

    .line 200
    invoke-static {p2, p3}, Lcom/tendcloud/tenddata/y;->a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "TD_CHANNEL_ID"

    .line 201
    invoke-static {p2, p4}, Lcom/tendcloud/tenddata/y;->a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 202
    invoke-static {p3}, Lcom/tendcloud/tenddata/y;->b(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_3

    goto :goto_0

    :cond_3
    sget-object p3, Lcom/tendcloud/tenddata/zz;->h:Ljava/lang/String;

    :goto_0
    sput-object p3, Lcom/tendcloud/tenddata/zz;->h:Ljava/lang/String;

    .line 203
    invoke-static {p2}, Lcom/tendcloud/tenddata/y;->b(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_4

    goto :goto_1

    :cond_4
    sget-object p2, Lcom/tendcloud/tenddata/zz;->j:Ljava/lang/String;

    :goto_1
    sput-object p2, Lcom/tendcloud/tenddata/zz;->j:Ljava/lang/String;

    .line 204
    sget-object p2, Lcom/tendcloud/tenddata/zz;->a:Ljava/lang/String;

    invoke-static {p2, p5}, Lcom/tendcloud/tenddata/ab;->c(Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V

    const-string p2, "ChannelConfig.json"

    .line 206
    invoke-static {p1, p2}, Lcom/tendcloud/tenddata/y;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 207
    invoke-static {p2}, Lcom/tendcloud/tenddata/y;->b(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_5

    goto :goto_2

    :cond_5
    sget-object p2, Lcom/tendcloud/tenddata/zz;->j:Ljava/lang/String;

    :goto_2
    sput-object p2, Lcom/tendcloud/tenddata/zz;->j:Ljava/lang/String;

    .line 210
    sget-object p2, Lcom/tendcloud/tenddata/zz;->h:Ljava/lang/String;

    invoke-static {p2}, Lcom/tendcloud/tenddata/y;->b(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    const-string p1, "[SDKInit] TD AppId is null"

    .line 211
    invoke-static {p1}, Lcom/tendcloud/tenddata/h;->eForDeveloper(Ljava/lang/String;)V

    return-void

    .line 215
    :cond_6
    sget-object p2, Lcom/tendcloud/tenddata/zz;->h:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/tendcloud/tenddata/zz;->h:Ljava/lang/String;

    .line 218
    sget-object p3, Lcom/tendcloud/tenddata/zz;->j:Ljava/lang/String;

    invoke-static {p2, p3, p5}, Lcom/tendcloud/tenddata/ab;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V

    .line 220
    invoke-static {}, Lcom/tendcloud/tenddata/bj;->a()Lcom/tendcloud/tenddata/bj;

    .line 221
    invoke-static {}, Lcom/tendcloud/tenddata/bh;->a()Lcom/tendcloud/tenddata/bh;

    move-result-object p2

    sget-object p3, Lcom/tendcloud/tenddata/zz;->h:Ljava/lang/String;

    sget-object p4, Lcom/tendcloud/tenddata/zz;->j:Ljava/lang/String;

    invoke-virtual {p2, p3, p4, p5}, Lcom/tendcloud/tenddata/bh;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V

    .line 222
    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/zz;->a(Landroid/content/Context;)V

    .line 223
    invoke-static {}, Lcom/tendcloud/tenddata/bi;->a()Lcom/tendcloud/tenddata/bi;

    .line 225
    new-instance p1, Lcom/tendcloud/tenddata/zz$23;

    invoke-direct {p1, p0, p5}, Lcom/tendcloud/tenddata/zz$23;-><init>(Lcom/tendcloud/tenddata/zz;Lcom/tendcloud/tenddata/a;)V

    invoke-static {p1}, Lcom/tendcloud/tenddata/y;->execute(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    .line 252
    sput-boolean p1, Lcom/tendcloud/tenddata/zz;->b:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    :try_start_2
    const-string p2, "[SDKInit] Failed to initialize!"

    .line 255
    invoke-static {p2, p1}, Lcom/tendcloud/tenddata/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :cond_7
    :goto_3
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;DLcom/tendcloud/tenddata/a;)V
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

    .line 497
    :try_start_0
    sget-boolean p1, Lcom/tendcloud/tenddata/zz;->b:Z

    if-nez p1, :cond_0

    const-string p1, "SDK have not been initialized"

    .line 498
    invoke-static {p1}, Lcom/tendcloud/tenddata/h;->eForDeveloper(Ljava/lang/String;)V

    return-void

    .line 501
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "onEvent()# event id is empty."

    .line 502
    invoke-static {p1}, Lcom/tendcloud/tenddata/h;->eForDeveloper(Ljava/lang/String;)V

    return-void

    .line 506
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onEvent being called! eventId: "

    .line 507
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    invoke-virtual {p7}, Lcom/tendcloud/tenddata/a;->index()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x3

    const-string v2, "null"

    if-eq v0, v1, :cond_3

    :try_start_1
    const-string v0, ", eventLabel: "

    .line 515
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_2

    move-object v0, v2

    goto :goto_0

    :cond_2
    move-object v0, p3

    .line 516
    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v0, ", eventMap: "

    .line 518
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p4, :cond_4

    goto :goto_1

    .line 519
    :cond_4
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", value: "

    .line 520
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5, p6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 521
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tendcloud/tenddata/h;->iForDeveloper(Ljava/lang/String;)V

    .line 522
    new-instance p1, Lcom/tendcloud/tenddata/zz$37;

    move-object v0, p1

    move-object v1, p0

    move-object v2, p7

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/tendcloud/tenddata/zz$37;-><init>(Lcom/tendcloud/tenddata/zz;Lcom/tendcloud/tenddata/a;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;D)V

    invoke-static {p1}, Lcom/tendcloud/tenddata/y;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/tendcloud/tenddata/a;)V
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
            "Lcom/tendcloud/tenddata/a;",
            ")V"
        }
    .end annotation

    .line 435
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/tendcloud/tenddata/zz;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/tendcloud/tenddata/a;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/tendcloud/tenddata/a;)V
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

    .line 441
    :try_start_0
    sget-boolean p1, Lcom/tendcloud/tenddata/zz;->b:Z

    if-nez p1, :cond_0

    const-string p1, "SDK have not been initialized"

    .line 442
    invoke-static {p1}, Lcom/tendcloud/tenddata/h;->eForDeveloper(Ljava/lang/String;)V

    return-void

    .line 445
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "onEvent()# event id is empty."

    .line 446
    invoke-static {p1}, Lcom/tendcloud/tenddata/h;->eForDeveloper(Ljava/lang/String;)V

    return-void

    .line 450
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onEvent being called! eventId: "

    .line 451
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    invoke-virtual {p6}, Lcom/tendcloud/tenddata/a;->index()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x3

    const-string v2, "null"

    if-eq v0, v1, :cond_3

    :try_start_1
    const-string v0, ", eventLabel: "

    .line 459
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_2

    move-object v0, v2

    goto :goto_0

    :cond_2
    move-object v0, p3

    .line 460
    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v0, ", eventMap: "

    .line 462
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p4, :cond_4

    goto :goto_1

    .line 463
    :cond_4
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_5

    .line 464
    invoke-interface {p5}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, ", eventValue: "

    .line 465
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    :cond_5
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tendcloud/tenddata/h;->iForDeveloper(Ljava/lang/String;)V

    .line 469
    new-instance p1, Lcom/tendcloud/tenddata/zz$36;

    move-object v0, p1

    move-object v1, p0

    move-object v2, p6

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/tendcloud/tenddata/zz$36;-><init>(Lcom/tendcloud/tenddata/zz;Lcom/tendcloud/tenddata/a;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    invoke-static {p1}, Lcom/tendcloud/tenddata/y;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;DLcom/tendcloud/tenddata/a;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;D",
            "Lcom/tendcloud/tenddata/a;",
            ")V"
        }
    .end annotation

    .line 548
    :try_start_0
    sget-boolean p1, Lcom/tendcloud/tenddata/zz;->b:Z

    if-nez p1, :cond_0

    const-string p1, "SDK have not been initialized"

    .line 549
    invoke-static {p1}, Lcom/tendcloud/tenddata/h;->eForDeveloper(Ljava/lang/String;)V

    return-void

    .line 552
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "onEvent()# event id is empty."

    .line 553
    invoke-static {p1}, Lcom/tendcloud/tenddata/h;->eForDeveloper(Ljava/lang/String;)V

    return-void

    .line 557
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onEvent being called! eventId: "

    .line 558
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", eventMap: "

    .line 564
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_2

    const-string v0, "null"

    goto :goto_0

    .line 565
    :cond_2
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", value: "

    .line 566
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 567
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tendcloud/tenddata/h;->iForDeveloper(Ljava/lang/String;)V

    .line 568
    new-instance p1, Lcom/tendcloud/tenddata/zz$38;

    move-object v0, p1

    move-object v1, p0

    move-object v2, p6

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/tendcloud/tenddata/zz$38;-><init>(Lcom/tendcloud/tenddata/zz;Lcom/tendcloud/tenddata/a;Ljava/lang/String;Ljava/util/Map;D)V

    invoke-static {p1}, Lcom/tendcloud/tenddata/y;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/Throwable;Lcom/tendcloud/tenddata/a;)V
    .locals 0

    .line 601
    :try_start_0
    sget-boolean p1, Lcom/tendcloud/tenddata/zz;->b:Z

    if-nez p1, :cond_0

    const-string p1, "SDK have not been initialized"

    .line 602
    invoke-static {p1}, Lcom/tendcloud/tenddata/h;->eForDeveloper(Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    return-void

    .line 607
    :cond_1
    new-instance p1, Lcom/tendcloud/tenddata/zz$39;

    invoke-direct {p1, p0, p2, p3}, Lcom/tendcloud/tenddata/zz$39;-><init>(Lcom/tendcloud/tenddata/zz;Ljava/lang/Throwable;Lcom/tendcloud/tenddata/a;)V

    invoke-static {p1}, Lcom/tendcloud/tenddata/y;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public a(Lcom/tendcloud/tenddata/TalkingDataOrder;Lcom/tendcloud/tenddata/a;)V
    .locals 2

    .line 1711
    :try_start_0
    sget-boolean v0, Lcom/tendcloud/tenddata/zz;->b:Z

    if-nez v0, :cond_0

    const-string p1, "SDK have not been initialized"

    .line 1712
    invoke-static {p1}, Lcom/tendcloud/tenddata/h;->eForDeveloper(Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_2

    const-string v0, "keyOrderId"

    .line 1716
    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/TalkingDataOrder;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1720
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCancelOrder called --> order: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/TalkingDataOrder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/h;->iForDeveloper(Ljava/lang/String;)V

    .line 1721
    new-instance v0, Lcom/tendcloud/tenddata/zz$24;

    invoke-direct {v0, p0, p2, p1}, Lcom/tendcloud/tenddata/zz$24;-><init>(Lcom/tendcloud/tenddata/zz;Lcom/tendcloud/tenddata/a;Lcom/tendcloud/tenddata/TalkingDataOrder;)V

    invoke-static {v0}, Lcom/tendcloud/tenddata/y;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    :goto_0
    const-string p1, "onCancelOrder: order or orderID could not be null or empty"

    .line 1717
    invoke-static {p1}, Lcom/tendcloud/tenddata/h;->eForDeveloper(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_1
    return-void
.end method

.method public a(Lcom/tendcloud/tenddata/TalkingDataOrder;Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V
    .locals 1

    .line 1611
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/tendcloud/tenddata/zz;->a(Lcom/tendcloud/tenddata/TalkingDataOrder;Ljava/lang/String;Ljava/util/Map;Lcom/tendcloud/tenddata/a;)V

    return-void
.end method

.method public a(Lcom/tendcloud/tenddata/TalkingDataOrder;Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V
    .locals 7

    .line 1184
    :try_start_0
    sget-boolean v0, Lcom/tendcloud/tenddata/zz;->b:Z

    if-nez v0, :cond_0

    const-string p1, "SDK have not been initialized"

    .line 1185
    invoke-static {p1}, Lcom/tendcloud/tenddata/h;->eForDeveloper(Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "onPay: order could not be null or empty"

    .line 1190
    invoke-static {p1}, Lcom/tendcloud/tenddata/h;->eForDeveloper(Ljava/lang/String;)V

    return-void

    .line 1194
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onOrderPaySucc called --> order: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/TalkingDataOrder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,paymentType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,profileId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/h;->iForDeveloper(Ljava/lang/String;)V

    .line 1195
    new-instance v0, Lcom/tendcloud/tenddata/zz$13;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p4

    move-object v4, p3

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/tendcloud/tenddata/zz$13;-><init>(Lcom/tendcloud/tenddata/zz;Lcom/tendcloud/tenddata/a;Ljava/lang/String;Lcom/tendcloud/tenddata/TalkingDataOrder;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tendcloud/tenddata/y;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public a(Lcom/tendcloud/tenddata/TalkingDataOrder;Ljava/lang/String;Ljava/util/Map;Lcom/tendcloud/tenddata/a;)V
    .locals 7
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

    .line 1617
    :try_start_0
    sget-boolean v0, Lcom/tendcloud/tenddata/zz;->b:Z

    if-nez v0, :cond_0

    const-string p1, "SDK have not been initialized"

    .line 1618
    invoke-static {p1}, Lcom/tendcloud/tenddata/h;->eForDeveloper(Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_3

    const-string v0, "keyOrderId"

    .line 1622
    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/TalkingDataOrder;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 1626
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPlaceOrder called --> order: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/TalkingDataOrder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", profileId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_2

    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", eventValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/h;->iForDeveloper(Ljava/lang/String;)V

    .line 1627
    new-instance v0, Lcom/tendcloud/tenddata/zz$21;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p4

    move-object v4, p2

    move-object v5, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/tendcloud/tenddata/zz$21;-><init>(Lcom/tendcloud/tenddata/zz;Lcom/tendcloud/tenddata/a;Ljava/lang/String;Lcom/tendcloud/tenddata/TalkingDataOrder;Ljava/util/Map;)V

    invoke-static {v0}, Lcom/tendcloud/tenddata/y;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_3
    :goto_1
    const-string p1, "onPlaceOrder: order or orderID could not be null or empty"

    .line 1623
    invoke-static {p1}, Lcom/tendcloud/tenddata/h;->eForDeveloper(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_2
    return-void
.end method

.method public a(Lcom/tendcloud/tenddata/TalkingDataProfile;Lcom/tendcloud/tenddata/a;)V
    .locals 2

    .line 922
    :try_start_0
    sget-boolean v0, Lcom/tendcloud/tenddata/zz;->b:Z

    if-nez v0, :cond_0

    const-string p1, "SDK have not been initialized"

    .line 923
    invoke-static {p1}, Lcom/tendcloud/tenddata/h;->eForDeveloper(Ljava/lang/String;)V

    return-void

    .line 926
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onProfileUpdate called --> profile is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/tendcloud/tenddata/y;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/h;->iForDeveloper(Ljava/lang/String;)V

    .line 927
    new-instance v0, Lcom/tendcloud/tenddata/zz$6;

    invoke-direct {v0, p0, p2, p1}, Lcom/tendcloud/tenddata/zz$6;-><init>(Lcom/tendcloud/tenddata/zz;Lcom/tendcloud/tenddata/a;Lcom/tendcloud/tenddata/TalkingDataProfile;)V

    invoke-static {v0}, Lcom/tendcloud/tenddata/y;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public a(Lcom/tendcloud/tenddata/TalkingDataSearch;Lcom/tendcloud/tenddata/a;)V
    .locals 2

    .line 2024
    :try_start_0
    sget-boolean v0, Lcom/tendcloud/tenddata/zz;->b:Z

    if-nez v0, :cond_0

    const-string p1, "SDK have not been initialized"

    .line 2025
    invoke-static {p1}, Lcom/tendcloud/tenddata/h;->eForDeveloper(Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "TDSearch cannot be null "

    .line 2029
    invoke-static {p1}, Lcom/tendcloud/tenddata/h;->eForDeveloper(Ljava/lang/String;)V

    return-void

    .line 2032
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSearch called --> search: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/h;->iForDeveloper(Ljava/lang/String;)V

    .line 2033
    new-instance v0, Lcom/tendcloud/tenddata/zz$31;

    invoke-direct {v0, p0, p2, p1}, Lcom/tendcloud/tenddata/zz$31;-><init>(Lcom/tendcloud/tenddata/zz;Lcom/tendcloud/tenddata/a;Lcom/tendcloud/tenddata/TalkingDataSearch;)V

    invoke-static {v0}, Lcom/tendcloud/tenddata/y;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public a(Lcom/tendcloud/tenddata/TalkingDataShoppingCart;Lcom/tendcloud/tenddata/a;)V
    .locals 2

    .line 1850
    :try_start_0
    sget-boolean v0, Lcom/tendcloud/tenddata/zz;->b:Z

    if-nez v0, :cond_0

    const-string p1, "SDK have not been initialized"

    .line 1851
    invoke-static {p1}, Lcom/tendcloud/tenddata/h;->eForDeveloper(Ljava/lang/String;)V

    return-void

    .line 1854
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onViewShoppingCart called --> shoppingCart: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/h;->iForDeveloper(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 1855
    invoke-virtual {p1}, Lcom/tendcloud/tenddata/TalkingDataShoppingCart;->length()I

    move-result v0

    if-gtz v0, :cond_1

    goto :goto_0

    .line 1859
    :cond_1
    new-instance v0, Lcom/tendcloud/tenddata/zz$27;

    invoke-direct {v0, p0, p2, p1}, Lcom/tendcloud/tenddata/zz$27;-><init>(Lcom/tendcloud/tenddata/zz;Lcom/tendcloud/tenddata/a;Lcom/tendcloud/tenddata/TalkingDataShoppingCart;)V

    invoke-static {v0}, Lcom/tendcloud/tenddata/y;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    :goto_0
    const-string p1, "viewShoppingCart# shoppingCart can\'t be null or empty"

    .line 1856
    invoke-static {p1}, Lcom/tendcloud/tenddata/h;->eForDeveloper(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_1
    return-void
.end method

.method public a(Lcom/tendcloud/tenddata/dk;Lcom/tendcloud/tenddata/a;)V
    .locals 2

    .line 1814
    :try_start_0
    sget-boolean v0, Lcom/tendcloud/tenddata/zz;->b:Z

    if-nez v0, :cond_0

    const-string p1, "SDK have not been initialized"

    .line 1815
    invoke-static {p1}, Lcom/tendcloud/tenddata/h;->eForDeveloper(Ljava/lang/String;)V

    return-void

    .line 1818
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onViewShoppingCart called --> shoppingCart: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/h;->iForDeveloper(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 1819
    invoke-virtual {p1}, Lcom/tendcloud/tenddata/dk;->length()I

    move-result v0

    if-gtz v0, :cond_1

    goto :goto_0

    .line 1823
    :cond_1
    new-instance v0, Lcom/tendcloud/tenddata/zz$26;

    invoke-direct {v0, p0, p2, p1}, Lcom/tendcloud/tenddata/zz$26;-><init>(Lcom/tendcloud/tenddata/zz;Lcom/tendcloud/tenddata/a;Lcom/tendcloud/tenddata/dk;)V

    invoke-static {v0}, Lcom/tendcloud/tenddata/y;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    :goto_0
    const-string p1, "viewShoppingCart# shoppingCart can\'t be null or empty"

    .line 1820
    invoke-static {p1}, Lcom/tendcloud/tenddata/h;->eForDeveloper(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_1
    return-void
.end method

.method public a(Lcom/tendcloud/tenddata/dl;Lcom/tendcloud/tenddata/a;)V
    .locals 2

    .line 1988
    :try_start_0
    sget-boolean v0, Lcom/tendcloud/tenddata/zz;->b:Z

    if-nez v0, :cond_0

    const-string p1, "SDK have not been initialized"

    .line 1989
    invoke-static {p1}, Lcom/tendcloud/tenddata/h;->eForDeveloper(Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "TDSearch cannot be null "

    .line 1993
    invoke-static {p1}, Lcom/tendcloud/tenddata/h;->eForDeveloper(Ljava/lang/String;)V

    return-void

    .line 1996
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSearch called --> search: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/h;->iForDeveloper(Ljava/lang/String;)V

    .line 1997
    new-instance v0, Lcom/tendcloud/tenddata/zz$30;

    invoke-direct {v0, p0, p2, p1}, Lcom/tendcloud/tenddata/zz$30;-><init>(Lcom/tendcloud/tenddata/zz;Lcom/tendcloud/tenddata/a;Lcom/tendcloud/tenddata/dl;)V

    invoke-static {v0}, Lcom/tendcloud/tenddata/y;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;Lcom/tendcloud/tenddata/a;)V
    .locals 6

    .line 1562
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/tendcloud/tenddata/zz;->a(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Lcom/tendcloud/tenddata/a;)V

    return-void
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V
    .locals 9

    .line 1139
    :try_start_0
    sget-boolean v0, Lcom/tendcloud/tenddata/zz;->b:Z

    if-nez v0, :cond_0

    const-string p1, "SDK have not been initialized"

    .line 1140
    invoke-static {p1}, Lcom/tendcloud/tenddata/h;->eForDeveloper(Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_4

    .line 1144
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 1149
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onOrderPaySucc called --> orderid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,amount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,currencyType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,payType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/h;->iForDeveloper(Ljava/lang/String;)V

    if-eqz p3, :cond_3

    .line 1150
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 1154
    :cond_2
    new-instance v0, Lcom/tendcloud/tenddata/zz$11;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p5

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/tendcloud/tenddata/zz$11;-><init>(Lcom/tendcloud/tenddata/zz;Lcom/tendcloud/tenddata/a;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tendcloud/tenddata/y;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_3
    :goto_0
    const-string p1, "currencyType length must be 3 likes CNY so so"

    .line 1151
    invoke-static {p1}, Lcom/tendcloud/tenddata/h;->eForDeveloper(Ljava/lang/String;)V

    return-void

    :cond_4
    :goto_1
    const-string p1, "onOrderPaySucc: orderId could not be null or empty"

    .line 1145
    invoke-static {p1}, Lcom/tendcloud/tenddata/h;->eForDeveloper(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_2
    return-void
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Lcom/tendcloud/tenddata/a;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/tendcloud/tenddata/a;",
            ")V"
        }
    .end annotation

    .line 1568
    :try_start_0
    sget-boolean v0, Lcom/tendcloud/tenddata/zz;->b:Z

    if-nez v0, :cond_0

    const-string p1, "SDK have not been initialized"

    .line 1569
    invoke-static {p1}, Lcom/tendcloud/tenddata/h;->eForDeveloper(Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_5

    .line 1573
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    .line 1577
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPlaceOrder called --> orderId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,amount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,currencyType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_2

    invoke-interface {p4}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", eventValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/h;->iForDeveloper(Ljava/lang/String;)V

    if-eqz p3, :cond_4

    .line 1578
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    goto :goto_1

    .line 1582
    :cond_3
    new-instance v0, Lcom/tendcloud/tenddata/zz$20;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p5

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/tendcloud/tenddata/zz$20;-><init>(Lcom/tendcloud/tenddata/zz;Lcom/tendcloud/tenddata/a;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    invoke-static {v0}, Lcom/tendcloud/tenddata/y;->execute(Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_4
    :goto_1
    const-string p1, "currencyType length must be 3 likes CNY so so"

    .line 1579
    invoke-static {p1}, Lcom/tendcloud/tenddata/h;->eForDeveloper(Ljava/lang/String;)V

    return-void

    :cond_5
    :goto_2
    const-string p1, "onPlaceOrder: orderId could not be null or empty"

    .line 1574
    invoke-static {p1}, Lcom/tendcloud/tenddata/h;->eForDeveloper(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_3
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/tendcloud/tenddata/TalkingDataProfile;Lcom/tendcloud/tenddata/a;)V
    .locals 1

    .line 870
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/tendcloud/tenddata/zz;->a(Ljava/lang/String;Lcom/tendcloud/tenddata/TalkingDataProfile;Ljava/util/Map;Lcom/tendcloud/tenddata/a;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/tendcloud/tenddata/TalkingDataProfile;Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V
    .locals 6

    .line 768
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/tendcloud/tenddata/zz;->a(Ljava/lang/String;Lcom/tendcloud/tenddata/TalkingDataProfile;Ljava/lang/String;Ljava/util/Map;Lcom/tendcloud/tenddata/a;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/tendcloud/tenddata/TalkingDataProfile;Ljava/lang/String;Ljava/util/Map;Lcom/tendcloud/tenddata/a;)V
    .locals 8
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

    .line 774
    :try_start_0
    sget-boolean v0, Lcom/tendcloud/tenddata/zz;->b:Z

    if-nez v0, :cond_0

    const-string p1, "SDK have not been initialized"

    .line 775
    invoke-static {p1}, Lcom/tendcloud/tenddata/h;->eForDeveloper(Ljava/lang/String;)V

    return-void

    .line 778
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "onRegister: profileId could not be null or empty"

    .line 779
    invoke-static {p1}, Lcom/tendcloud/tenddata/h;->eForDeveloper(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_1
    const-string v0, ", eventValue: "

    const-string v1, ""

    const-string v2, " , invitationCode is "

    const-string v3, "onRegister called --> profileId is "

    if-eqz p2, :cond_3

    .line 783
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " , profile is "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/tendcloud/tenddata/y;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_2

    invoke-interface {p4}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/h;->iForDeveloper(Ljava/lang/String;)V

    goto :goto_0

    .line 785
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_4

    invoke-interface {p4}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_4
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/h;->iForDeveloper(Ljava/lang/String;)V

    .line 787
    :goto_0
    new-instance v0, Lcom/tendcloud/tenddata/zz$3;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p5

    move-object v4, p1

    move-object v5, p3

    move-object v6, p2

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/tendcloud/tenddata/zz$3;-><init>(Lcom/tendcloud/tenddata/zz;Lcom/tendcloud/tenddata/a;Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/TalkingDataProfile;Ljava/util/Map;)V

    invoke-static {v0}, Lcom/tendcloud/tenddata/y;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/tendcloud/tenddata/TalkingDataProfile;Ljava/util/Map;Lcom/tendcloud/tenddata/a;)V
    .locals 7
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

    .line 876
    :try_start_0
    sget-boolean v0, Lcom/tendcloud/tenddata/zz;->b:Z

    if-nez v0, :cond_0

    const-string p1, "SDK have not been initialized"

    .line 877
    invoke-static {p1}, Lcom/tendcloud/tenddata/h;->eForDeveloper(Ljava/lang/String;)V

    return-void

    .line 880
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "onLogin: profileId could not be null or empty"

    .line 881
    invoke-static {p1}, Lcom/tendcloud/tenddata/h;->eForDeveloper(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_1
    const-string v0, ", eventValue: "

    const-string v1, ""

    const-string v2, "onLogin called --> profileId is "

    if-eqz p2, :cond_3

    .line 885
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \uff0cprofile is "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/tendcloud/tenddata/y;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_2

    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/h;->iForDeveloper(Ljava/lang/String;)V

    goto :goto_0

    .line 887
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_4

    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_4
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/h;->iForDeveloper(Ljava/lang/String;)V

    .line 889
    :goto_0
    new-instance v0, Lcom/tendcloud/tenddata/zz$5;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/tendcloud/tenddata/zz$5;-><init>(Lcom/tendcloud/tenddata/zz;Lcom/tendcloud/tenddata/a;Ljava/lang/String;Lcom/tendcloud/tenddata/TalkingDataProfile;Ljava/util/Map;)V

    invoke-static {v0}, Lcom/tendcloud/tenddata/y;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V
    .locals 1

    .line 673
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1, v0, p2}, Lcom/tendcloud/tenddata/zz;->a(Ljava/lang/String;Ljava/util/Map;Lcom/tendcloud/tenddata/a;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/tendcloud/tenddata/af$ProfileType;Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V
    .locals 6

    .line 717
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/tendcloud/tenddata/zz;->a(Ljava/lang/String;Lcom/tendcloud/tenddata/af$ProfileType;Ljava/lang/String;Ljava/util/Map;Lcom/tendcloud/tenddata/a;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/tendcloud/tenddata/af$ProfileType;Ljava/lang/String;Ljava/util/Map;Lcom/tendcloud/tenddata/a;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/tendcloud/tenddata/af$ProfileType;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/tendcloud/tenddata/a;",
            ")V"
        }
    .end annotation

    .line 724
    :try_start_0
    sget-boolean v0, Lcom/tendcloud/tenddata/zz;->b:Z

    if-nez v0, :cond_0

    const-string p1, "SDK have not been initialized"

    .line 725
    invoke-static {p1}, Lcom/tendcloud/tenddata/h;->eForDeveloper(Ljava/lang/String;)V

    return-void

    .line 728
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "onRegister: profileId could not be null or empty"

    .line 729
    invoke-static {p1}, Lcom/tendcloud/tenddata/h;->eForDeveloper(Ljava/lang/String;)V

    return-void

    .line 732
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRegister called --> profileId is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \uff0ctype is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " , name is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_2

    invoke-interface {p4}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", eventValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/h;->iForDeveloper(Ljava/lang/String;)V

    .line 734
    new-instance v0, Lcom/tendcloud/tenddata/zz$2;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p5

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/tendcloud/tenddata/zz$2;-><init>(Lcom/tendcloud/tenddata/zz;Lcom/tendcloud/tenddata/a;Ljava/lang/String;Lcom/tendcloud/tenddata/af$ProfileType;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v0}, Lcom/tendcloud/tenddata/y;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/tendcloud/tenddata/dj;Lcom/tendcloud/tenddata/a;)V
    .locals 1

    .line 1496
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/tendcloud/tenddata/zz;->a(Ljava/lang/String;Lcom/tendcloud/tenddata/dj;Ljava/util/Map;Lcom/tendcloud/tenddata/a;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/tendcloud/tenddata/dj;Ljava/util/Map;Lcom/tendcloud/tenddata/a;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/tendcloud/tenddata/dj;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/tendcloud/tenddata/a;",
            ")V"
        }
    .end annotation

    .line 1502
    :try_start_0
    sget-boolean v0, Lcom/tendcloud/tenddata/zz;->b:Z

    if-nez v0, :cond_0

    const-string p1, "SDK have not been initialized"

    .line 1503
    invoke-static {p1}, Lcom/tendcloud/tenddata/h;->eForDeveloper(Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_5

    .line 1506
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    goto/16 :goto_2

    :cond_1
    if-eqz p2, :cond_4

    const-string v0, "keyOrderId"

    .line 1510
    invoke-virtual {p2, v0}, Lcom/tendcloud/tenddata/dj;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 1514
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPlaceOrder called --> profileId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,order: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/tendcloud/tenddata/dj;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_3

    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", eventValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/h;->iForDeveloper(Ljava/lang/String;)V

    .line 1515
    new-instance v0, Lcom/tendcloud/tenddata/zz$19;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/tendcloud/tenddata/zz$19;-><init>(Lcom/tendcloud/tenddata/zz;Lcom/tendcloud/tenddata/a;Ljava/lang/String;Lcom/tendcloud/tenddata/dj;Ljava/util/Map;)V

    invoke-static {v0}, Lcom/tendcloud/tenddata/y;->execute(Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_4
    :goto_1
    const-string p1, "onPlaceOrder: order or orderID could not be null or empty"

    .line 1511
    invoke-static {p1}, Lcom/tendcloud/tenddata/h;->eForDeveloper(Ljava/lang/String;)V

    return-void

    :cond_5
    :goto_2
    const-string p1, "onPlaceOrder: profileId could not be null or empty"

    .line 1507
    invoke-static {p1}, Lcom/tendcloud/tenddata/h;->eForDeveloper(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_3
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 646
    sget-boolean v0, Lcom/tendcloud/tenddata/zz;->b:Z

    if-nez v0, :cond_0

    const-string p1, "SDK have not been initialized"

    .line 647
    invoke-static {p1}, Lcom/tendcloud/tenddata/h;->eForDeveloper(Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setGlobalKV# key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/h;->iForDeveloper(Ljava/lang/String;)V

    .line 652
    :cond_1
    sget-object v0, Lcom/tendcloud/tenddata/ab;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V
    .locals 9

    .line 1234
    :try_start_0
    sget-boolean v0, Lcom/tendcloud/tenddata/zz;->b:Z

    if-nez v0, :cond_0

    const-string v0, "SDK have not been initialized"

    .line 1235
    invoke-static {v0}, Lcom/tendcloud/tenddata/h;->eForDeveloper(Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_4

    .line 1238
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    goto :goto_1

    .line 1243
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onOrderPaySucc called --> profileId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,orderid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,amount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,currencyType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,payType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/h;->iForDeveloper(Ljava/lang/String;)V

    if-eqz p4, :cond_3

    .line 1244
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 1248
    :cond_2
    new-instance v8, Lcom/tendcloud/tenddata/zz$14;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p6

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/tendcloud/tenddata/zz$14;-><init>(Lcom/tendcloud/tenddata/zz;Lcom/tendcloud/tenddata/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v8}, Lcom/tendcloud/tenddata/y;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_3
    :goto_0
    const-string v0, "currencyType length must be 3 likes CNY so so"

    .line 1245
    invoke-static {v0}, Lcom/tendcloud/tenddata/h;->eForDeveloper(Ljava/lang/String;)V

    return-void

    :cond_4
    :goto_1
    const-string v0, "onOrderPaySucc: profileId could not be null or empty"

    .line 1239
    invoke-static {v0}, Lcom/tendcloud/tenddata/h;->eForDeveloper(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_2
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/dj;Lcom/tendcloud/tenddata/a;)V
    .locals 10

    move-object v3, p1

    move-object v6, p4

    .line 1371
    :try_start_0
    sget-boolean v0, Lcom/tendcloud/tenddata/zz;->b:Z

    if-nez v0, :cond_0

    const-string v0, "SDK have not been initialized"

    .line 1372
    invoke-static {v0}, Lcom/tendcloud/tenddata/h;->eForDeveloper(Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz v3, :cond_5

    .line 1375
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    goto/16 :goto_1

    :cond_1
    if-nez p6, :cond_2

    const-string v0, "onPay: order could not be null"

    .line 1380
    invoke-static {v0}, Lcom/tendcloud/tenddata/h;->eForDeveloper(Ljava/lang/String;)V

    return-void

    .line 1383
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPay called --> profileId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,orderid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,amount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,currencyType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,payType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v7, p5

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,order: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p6 .. p6}, Lcom/tendcloud/tenddata/dj;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/h;->iForDeveloper(Ljava/lang/String;)V

    if-eqz v6, :cond_4

    .line 1384
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    goto :goto_0

    .line 1388
    :cond_3
    new-instance v9, Lcom/tendcloud/tenddata/zz$17;

    move-object v0, v9

    move-object v1, p0

    move-object/from16 v2, p7

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/tendcloud/tenddata/zz$17;-><init>(Lcom/tendcloud/tenddata/zz;Lcom/tendcloud/tenddata/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/dj;)V

    invoke-static {v9}, Lcom/tendcloud/tenddata/y;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_4
    :goto_0
    const-string v0, "currencyType length must be 3 likes CNY so so"

    .line 1385
    invoke-static {v0}, Lcom/tendcloud/tenddata/h;->eForDeveloper(Ljava/lang/String;)V

    return-void

    :cond_5
    :goto_1
    const-string v0, "onPay: profileId could not be null or empty"

    .line 1376
    invoke-static {v0}, Lcom/tendcloud/tenddata/h;->eForDeveloper(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_2
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/tendcloud/tenddata/a;)V
    .locals 11

    move-object v4, p2

    move-object v6, p4

    .line 1325
    :try_start_0
    sget-boolean v0, Lcom/tendcloud/tenddata/zz;->b:Z

    if-nez v0, :cond_0

    const-string v0, "SDK have not been initialized"

    .line 1326
    invoke-static {v0}, Lcom/tendcloud/tenddata/h;->eForDeveloper(Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz v4, :cond_4

    .line 1329
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    goto/16 :goto_1

    .line 1333
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPay called --> profileId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,orderid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,amount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,currencyType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,payType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p5

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,itemId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p6

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,itemCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p7

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/h;->iForDeveloper(Ljava/lang/String;)V

    if-eqz v6, :cond_3

    .line 1334
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 1338
    :cond_2
    new-instance v10, Lcom/tendcloud/tenddata/zz$16;

    move-object v0, v10

    move-object v1, p0

    move-object/from16 v2, p8

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/tendcloud/tenddata/zz$16;-><init>(Lcom/tendcloud/tenddata/zz;Lcom/tendcloud/tenddata/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v10}, Lcom/tendcloud/tenddata/y;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_3
    :goto_0
    const-string v0, "currencyType length must be 3 likes CNY so so"

    .line 1335
    invoke-static {v0}, Lcom/tendcloud/tenddata/h;->eForDeveloper(Ljava/lang/String;)V

    return-void

    :cond_4
    :goto_1
    const-string v0, "onPay: orderId could not be null or empty"

    .line 1330
    invoke-static {v0}, Lcom/tendcloud/tenddata/h;->eForDeveloper(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_2
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V
    .locals 1

    .line 999
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/tendcloud/tenddata/zz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/tendcloud/tenddata/a;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/dj;Lcom/tendcloud/tenddata/a;)V
    .locals 7

    .line 1432
    :try_start_0
    sget-boolean v0, Lcom/tendcloud/tenddata/zz;->b:Z

    if-nez v0, :cond_0

    const-string p1, "SDK have not been initialized"

    .line 1433
    invoke-static {p1}, Lcom/tendcloud/tenddata/h;->eForDeveloper(Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_4

    .line 1436
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_3

    const-string v0, "keyOrderId"

    .line 1440
    invoke-virtual {p3, v0}, Lcom/tendcloud/tenddata/dj;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 1444
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPay called --> profileId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,payType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,order: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/tendcloud/tenddata/dj;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/h;->iForDeveloper(Ljava/lang/String;)V

    .line 1445
    new-instance v0, Lcom/tendcloud/tenddata/zz$18;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p3

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/tendcloud/tenddata/zz$18;-><init>(Lcom/tendcloud/tenddata/zz;Lcom/tendcloud/tenddata/a;Ljava/lang/String;Lcom/tendcloud/tenddata/dj;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tendcloud/tenddata/y;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_3
    :goto_0
    const-string p1, "onPay: order or orderID could not be null or empty"

    .line 1441
    invoke-static {p1}, Lcom/tendcloud/tenddata/h;->eForDeveloper(Ljava/lang/String;)V

    return-void

    :cond_4
    :goto_1
    const-string p1, "onPay: profileId could not be null or empty"

    .line 1437
    invoke-static {p1}, Lcom/tendcloud/tenddata/h;->eForDeveloper(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_2
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/tendcloud/tenddata/a;)V
    .locals 8

    .line 1078
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/tendcloud/tenddata/zz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/Map;Lcom/tendcloud/tenddata/a;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/Map;Lcom/tendcloud/tenddata/a;)V
    .locals 11
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

    .line 1084
    :try_start_0
    sget-boolean v0, Lcom/tendcloud/tenddata/zz;->b:Z

    if-nez v0, :cond_0

    const-string v0, "SDK have not been initialized"

    .line 1085
    invoke-static {v0}, Lcom/tendcloud/tenddata/h;->eForDeveloper(Ljava/lang/String;)V

    return-void

    .line 1088
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAddItemToShoppingCart called --> itemId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ,category: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v6, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ,name: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v7, p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ,unitPrice: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v8, p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,amount: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p5

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz p6, :cond_1

    invoke-interface/range {p6 .. p6}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", eventValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v2, ""

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/h;->iForDeveloper(Ljava/lang/String;)V

    .line 1089
    new-instance v0, Lcom/tendcloud/tenddata/zz$10;

    move-object v2, v0

    move-object v3, p0

    move-object/from16 v4, p7

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    invoke-direct/range {v2 .. v10}, Lcom/tendcloud/tenddata/zz$10;-><init>(Lcom/tendcloud/tenddata/zz;Lcom/tendcloud/tenddata/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/Map;)V

    invoke-static {v0}, Lcom/tendcloud/tenddata/y;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/tendcloud/tenddata/a;)V
    .locals 7

    .line 1754
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/tendcloud/tenddata/zz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Lcom/tendcloud/tenddata/a;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Lcom/tendcloud/tenddata/a;)V
    .locals 9
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

    .line 1760
    :try_start_0
    sget-boolean v0, Lcom/tendcloud/tenddata/zz;->b:Z

    if-nez v0, :cond_0

    const-string p1, "SDK have not been initialized"

    .line 1761
    invoke-static {p1}, Lcom/tendcloud/tenddata/h;->eForDeveloper(Ljava/lang/String;)V

    return-void

    .line 1764
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onViewItem called --> itemId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,category: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,unitPrice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_1

    invoke-interface {p5}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", eventValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/h;->iForDeveloper(Ljava/lang/String;)V

    .line 1765
    new-instance v0, Lcom/tendcloud/tenddata/zz$25;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p6

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/tendcloud/tenddata/zz$25;-><init>(Lcom/tendcloud/tenddata/zz;Lcom/tendcloud/tenddata/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)V

    invoke-static {v0}, Lcom/tendcloud/tenddata/y;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V
    .locals 7

    .line 1043
    :try_start_0
    sget-boolean v0, Lcom/tendcloud/tenddata/zz;->b:Z

    if-nez v0, :cond_0

    const-string p1, "SDK have not been initialized"

    .line 1044
    invoke-static {p1}, Lcom/tendcloud/tenddata/h;->eForDeveloper(Ljava/lang/String;)V

    return-void

    .line 1047
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreateCard called --> profileId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " method: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  content: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/h;->iForDeveloper(Ljava/lang/String;)V

    .line 1049
    new-instance v0, Lcom/tendcloud/tenddata/zz$9;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/tendcloud/tenddata/zz$9;-><init>(Lcom/tendcloud/tenddata/zz;Lcom/tendcloud/tenddata/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tendcloud/tenddata/y;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/tendcloud/tenddata/a;)V
    .locals 7
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

    .line 1005
    :try_start_0
    sget-boolean v0, Lcom/tendcloud/tenddata/zz;->b:Z

    if-nez v0, :cond_0

    const-string p1, "SDK have not been initialized"

    .line 1006
    invoke-static {p1}, Lcom/tendcloud/tenddata/h;->eForDeveloper(Ljava/lang/String;)V

    return-void

    .line 1009
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "onRegister: profileId could not be null or empty"

    .line 1010
    invoke-static {p1}, Lcom/tendcloud/tenddata/h;->eForDeveloper(Ljava/lang/String;)V

    return-void

    .line 1013
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRegister called --> profileId is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " invitationCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_2

    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", eventValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/h;->iForDeveloper(Ljava/lang/String;)V

    .line 1014
    new-instance v0, Lcom/tendcloud/tenddata/zz$8;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/tendcloud/tenddata/zz$8;-><init>(Lcom/tendcloud/tenddata/zz;Lcom/tendcloud/tenddata/a;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v0}, Lcom/tendcloud/tenddata/y;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;Lcom/tendcloud/tenddata/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/tendcloud/tenddata/a;",
            ")V"
        }
    .end annotation

    .line 679
    :try_start_0
    sget-boolean v0, Lcom/tendcloud/tenddata/zz;->b:Z

    if-nez v0, :cond_0

    const-string p1, "SDK have not been initialized"

    .line 680
    invoke-static {p1}, Lcom/tendcloud/tenddata/h;->eForDeveloper(Ljava/lang/String;)V

    return-void

    .line 683
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "onLogin: profileId could not be null or empty"

    .line 684
    invoke-static {p1}, Lcom/tendcloud/tenddata/h;->eForDeveloper(Ljava/lang/String;)V

    return-void

    .line 687
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLogin called --> profileId is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", eventValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/h;->iForDeveloper(Ljava/lang/String;)V

    .line 689
    new-instance v0, Lcom/tendcloud/tenddata/zz$40;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/tendcloud/tenddata/zz$40;-><init>(Lcom/tendcloud/tenddata/zz;Lcom/tendcloud/tenddata/a;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v0}, Lcom/tendcloud/tenddata/y;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public a(Ljava/util/Map;Lcom/tendcloud/tenddata/TDGenerateUrl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/tendcloud/tenddata/TDGenerateUrl;",
            ")V"
        }
    .end annotation

    .line 2195
    invoke-static {}, Lcom/tendcloud/tenddata/bc;->a()Lcom/tendcloud/tenddata/bc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tendcloud/tenddata/bc;->a(Ljava/util/Map;)Lcom/tendcloud/tenddata/bc;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/tendcloud/tenddata/bc;->getShortUrl(Lcom/tendcloud/tenddata/TDGenerateUrl;)V

    return-void
.end method

.method public b(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 278
    :try_start_0
    invoke-static {p1}, Lcom/tendcloud/tenddata/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 265
    :try_start_0
    sget-boolean p2, Lcom/tendcloud/tenddata/zz;->b:Z

    if-nez p2, :cond_0

    const-string p2, "SDK have not been initialized"

    .line 266
    invoke-static {p2}, Lcom/tendcloud/tenddata/h;->iForDeveloper(Ljava/lang/String;)V

    .line 268
    :cond_0
    invoke-static {p1}, Lcom/tendcloud/tenddata/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Landroid/app/Activity;Lcom/tendcloud/tenddata/a;)V
    .locals 1

    .line 347
    :try_start_0
    sget-boolean v0, Lcom/tendcloud/tenddata/zz;->b:Z

    if-nez v0, :cond_0

    const-string p1, "SDK have not been initialized"

    .line 348
    invoke-static {p1}, Lcom/tendcloud/tenddata/h;->eForDeveloper(Ljava/lang/String;)V

    return-void

    .line 351
    :cond_0
    sget-boolean v0, Lcom/tendcloud/tenddata/zz;->k:Z

    if-eqz v0, :cond_1

    return-void

    .line 354
    :cond_1
    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/zz;->a(Landroid/content/Context;)V

    .line 355
    invoke-static {p1, p2}, Lcom/tendcloud/tenddata/c;->b(Landroid/app/Activity;Lcom/tendcloud/tenddata/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V
    .locals 2

    .line 389
    :try_start_0
    sget-boolean v0, Lcom/tendcloud/tenddata/zz;->b:Z

    if-nez v0, :cond_0

    const-string p1, "SDK have not been initialized"

    .line 390
    invoke-static {p1}, Lcom/tendcloud/tenddata/h;->eForDeveloper(Ljava/lang/String;)V

    return-void

    .line 395
    :cond_0
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 396
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    .line 397
    invoke-static {p2}, Lcom/tendcloud/tenddata/y;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 398
    invoke-virtual {v0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object p2

    .line 400
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getChangingConfigurations()I

    move-result v0

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 p1, 0x1

    .line 402
    sput-boolean p1, Lcom/tendcloud/tenddata/zz;->d:Z

    return-void

    :cond_2
    const/4 v0, 0x5

    .line 406
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/tendcloud/tenddata/zz;->a(Landroid/content/Context;Ljava/lang/String;ILcom/tendcloud/tenddata/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public b(Ljava/lang/String;ILjava/lang/String;Lcom/tendcloud/tenddata/a;)V
    .locals 8

    .line 1669
    :try_start_0
    sget-boolean v0, Lcom/tendcloud/tenddata/zz;->b:Z

    if-nez v0, :cond_0

    const-string p1, "SDK have not been initialized"

    .line 1670
    invoke-static {p1}, Lcom/tendcloud/tenddata/h;->eForDeveloper(Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_4

    .line 1674
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 1678
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCancelOrder called --> orderId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,amount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,currencyType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/h;->iForDeveloper(Ljava/lang/String;)V

    if-eqz p3, :cond_3

    .line 1679
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 1683
    :cond_2
    new-instance v0, Lcom/tendcloud/tenddata/zz$22;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p4

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/tendcloud/tenddata/zz$22;-><init>(Lcom/tendcloud/tenddata/zz;Lcom/tendcloud/tenddata/a;Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/tendcloud/tenddata/y;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_3
    :goto_0
    const-string p1, "currencyType length must be 3 likes CNY so so"

    .line 1680
    invoke-static {p1}, Lcom/tendcloud/tenddata/h;->eForDeveloper(Ljava/lang/String;)V

    return-void

    :cond_4
    :goto_1
    const-string p1, "onCancelOrder: orderId could not be null or empty"

    .line 1675
    invoke-static {p1}, Lcom/tendcloud/tenddata/h;->eForDeveloper(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_2
    return-void
.end method

.method public b(Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V
    .locals 1

    .line 955
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1, v0, p2}, Lcom/tendcloud/tenddata/zz;->b(Ljava/lang/String;Ljava/util/Map;Lcom/tendcloud/tenddata/a;)V

    return-void
.end method

.method public b(Ljava/lang/String;Lcom/tendcloud/tenddata/af$ProfileType;Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V
    .locals 6

    .line 820
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/tendcloud/tenddata/zz;->b(Ljava/lang/String;Lcom/tendcloud/tenddata/af$ProfileType;Ljava/lang/String;Ljava/util/Map;Lcom/tendcloud/tenddata/a;)V

    return-void
.end method

.method public b(Ljava/lang/String;Lcom/tendcloud/tenddata/af$ProfileType;Ljava/lang/String;Ljava/util/Map;Lcom/tendcloud/tenddata/a;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/tendcloud/tenddata/af$ProfileType;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/tendcloud/tenddata/a;",
            ")V"
        }
    .end annotation

    .line 826
    :try_start_0
    sget-boolean v0, Lcom/tendcloud/tenddata/zz;->b:Z

    if-nez v0, :cond_0

    const-string p1, "SDK have not been initialized"

    .line 827
    invoke-static {p1}, Lcom/tendcloud/tenddata/h;->eForDeveloper(Ljava/lang/String;)V

    return-void

    .line 830
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "onLogin: profileId could not be null or empty"

    .line 831
    invoke-static {p1}, Lcom/tendcloud/tenddata/h;->eForDeveloper(Ljava/lang/String;)V

    return-void

    .line 834
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLogin called --> profileId is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \uff0cprofile is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " , name is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_2

    invoke-interface {p4}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", eventValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/h;->iForDeveloper(Ljava/lang/String;)V

    .line 836
    new-instance v0, Lcom/tendcloud/tenddata/zz$4;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p5

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/tendcloud/tenddata/zz$4;-><init>(Lcom/tendcloud/tenddata/zz;Lcom/tendcloud/tenddata/a;Ljava/lang/String;Lcom/tendcloud/tenddata/af$ProfileType;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v0}, Lcom/tendcloud/tenddata/y;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V
    .locals 9

    .line 1280
    :try_start_0
    sget-boolean v0, Lcom/tendcloud/tenddata/zz;->b:Z

    if-nez v0, :cond_0

    const-string v0, "SDK have not been initialized"

    .line 1281
    invoke-static {v0}, Lcom/tendcloud/tenddata/h;->eForDeveloper(Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_4

    .line 1284
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    goto :goto_1

    .line 1288
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPay called --> profileId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,orderid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,amount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,currencyType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,payType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/h;->iForDeveloper(Ljava/lang/String;)V

    if-eqz p4, :cond_3

    .line 1289
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 1293
    :cond_2
    new-instance v8, Lcom/tendcloud/tenddata/zz$15;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p6

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/tendcloud/tenddata/zz$15;-><init>(Lcom/tendcloud/tenddata/zz;Lcom/tendcloud/tenddata/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v8}, Lcom/tendcloud/tenddata/y;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_3
    :goto_0
    const-string v0, "currencyType length must be 3 likes CNY so so"

    .line 1290
    invoke-static {v0}, Lcom/tendcloud/tenddata/h;->eForDeveloper(Ljava/lang/String;)V

    return-void

    :cond_4
    :goto_1
    const-string v0, "onPay: profileId could not be null or empty"

    .line 1285
    invoke-static {v0}, Lcom/tendcloud/tenddata/h;->eForDeveloper(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_2
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V
    .locals 1

    .line 2059
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/tendcloud/tenddata/zz;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/tendcloud/tenddata/a;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/tendcloud/tenddata/a;)V
    .locals 7
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

    .line 2065
    :try_start_0
    sget-boolean v0, Lcom/tendcloud/tenddata/zz;->b:Z

    if-nez v0, :cond_0

    const-string p1, "SDK have not been initialized"

    .line 2066
    invoke-static {p1}, Lcom/tendcloud/tenddata/h;->eForDeveloper(Ljava/lang/String;)V

    return-void

    .line 2069
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFavorite called --> category: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", content: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", eventValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/h;->iForDeveloper(Ljava/lang/String;)V

    .line 2071
    new-instance v0, Lcom/tendcloud/tenddata/zz$32;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/tendcloud/tenddata/zz$32;-><init>(Lcom/tendcloud/tenddata/zz;Lcom/tendcloud/tenddata/a;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v0}, Lcom/tendcloud/tenddata/y;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/util/Map;Lcom/tendcloud/tenddata/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/tendcloud/tenddata/a;",
            ")V"
        }
    .end annotation

    .line 962
    :try_start_0
    sget-boolean v0, Lcom/tendcloud/tenddata/zz;->b:Z

    if-nez v0, :cond_0

    const-string p1, "SDK have not been initialized"

    .line 963
    invoke-static {p1}, Lcom/tendcloud/tenddata/h;->eForDeveloper(Ljava/lang/String;)V

    return-void

    .line 966
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "onRegister: profileId could not be null or empty"

    .line 967
    invoke-static {p1}, Lcom/tendcloud/tenddata/h;->eForDeveloper(Ljava/lang/String;)V

    return-void

    .line 970
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRegister called --> profileId is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", eventValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/h;->iForDeveloper(Ljava/lang/String;)V

    .line 971
    new-instance v0, Lcom/tendcloud/tenddata/zz$7;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/tendcloud/tenddata/zz$7;-><init>(Lcom/tendcloud/tenddata/zz;Lcom/tendcloud/tenddata/a;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v0}, Lcom/tendcloud/tenddata/y;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public c(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)Ljava/lang/String;
    .locals 0

    .line 297
    invoke-static {p1, p2}, Lcom/tendcloud/tenddata/ab;->a(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V
    .locals 2

    .line 1950
    :try_start_0
    sget-boolean v0, Lcom/tendcloud/tenddata/zz;->b:Z

    if-nez v0, :cond_0

    const-string p1, "SDK have not been initialized"

    .line 1951
    invoke-static {p1}, Lcom/tendcloud/tenddata/h;->eForDeveloper(Ljava/lang/String;)V

    return-void

    .line 1954
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "onReceiveDeepLink: url could not be null or empty"

    .line 1955
    invoke-static {p1}, Lcom/tendcloud/tenddata/h;->eForDeveloper(Ljava/lang/String;)V

    return-void

    .line 1958
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceiveDeepLink --> link: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/h;->iForDeveloper(Ljava/lang/String;)V

    .line 1959
    new-instance v0, Lcom/tendcloud/tenddata/zz$29;

    invoke-direct {v0, p0, p1, p2}, Lcom/tendcloud/tenddata/zz$29;-><init>(Lcom/tendcloud/tenddata/zz;Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V

    invoke-static {v0}, Lcom/tendcloud/tenddata/y;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V
    .locals 1

    .line 2102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/tendcloud/tenddata/zz;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/tendcloud/tenddata/a;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/tendcloud/tenddata/a;)V
    .locals 7
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

    .line 2108
    :try_start_0
    sget-boolean v0, Lcom/tendcloud/tenddata/zz;->b:Z

    if-nez v0, :cond_0

    const-string p1, "SDK have not been initialized"

    .line 2109
    invoke-static {p1}, Lcom/tendcloud/tenddata/h;->eForDeveloper(Ljava/lang/String;)V

    return-void

    .line 2112
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onShare called --> profileId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", content: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", eventValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/h;->iForDeveloper(Ljava/lang/String;)V

    .line 2114
    new-instance v0, Lcom/tendcloud/tenddata/zz$33;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/tendcloud/tenddata/zz$33;-><init>(Lcom/tendcloud/tenddata/zz;Lcom/tendcloud/tenddata/a;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v0}, Lcom/tendcloud/tenddata/y;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public c(Z)V
    .locals 2

    .line 592
    :try_start_0
    sput-boolean p1, Lcom/tendcloud/tenddata/ab;->e:Z

    .line 593
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " setReportUncaughtExceptions: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tendcloud/tenddata/h;->iForDeveloper(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public d()Landroid/content/Context;
    .locals 1

    .line 288
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public d(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)Ljava/lang/String;
    .locals 0

    .line 302
    invoke-static {p1, p2}, Lcom/tendcloud/tenddata/ab;->b(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V
    .locals 2

    .line 2146
    :try_start_0
    sget-boolean v0, Lcom/tendcloud/tenddata/zz;->b:Z

    if-nez v0, :cond_0

    const-string p1, "SDK have not been initialized"

    .line 2147
    invoke-static {p1}, Lcom/tendcloud/tenddata/h;->eForDeveloper(Ljava/lang/String;)V

    return-void

    .line 2150
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPunch called --> profileId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " punchId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/h;->iForDeveloper(Ljava/lang/String;)V

    .line 2152
    new-instance v0, Lcom/tendcloud/tenddata/zz$35;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/tendcloud/tenddata/zz$35;-><init>(Lcom/tendcloud/tenddata/zz;Lcom/tendcloud/tenddata/a;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tendcloud/tenddata/y;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public e(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)Ljava/lang/String;
    .locals 0

    .line 2182
    :try_start_0
    sget-boolean p1, Lcom/tendcloud/tenddata/zz;->b:Z

    if-nez p1, :cond_0

    const-string p1, "SDK have not been initialized"

    .line 2183
    invoke-static {p1}, Lcom/tendcloud/tenddata/h;->eForDeveloper(Ljava/lang/String;)V

    .line 2185
    :cond_0
    invoke-static {}, Lcom/tendcloud/tenddata/dd;->a()Lcom/tendcloud/tenddata/dd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/dd;->c()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    .line 638
    :try_start_0
    sput-boolean v0, Lcom/tendcloud/tenddata/h;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public removeGlobalKV(Ljava/lang/String;)V
    .locals 2

    .line 657
    sget-boolean v0, Lcom/tendcloud/tenddata/zz;->b:Z

    if-nez v0, :cond_0

    const-string p1, "SDK have not been initialized"

    .line 658
    invoke-static {p1}, Lcom/tendcloud/tenddata/h;->eForDeveloper(Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeGlobalKV# key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/h;->iForDeveloper(Ljava/lang/String;)V

    .line 663
    :cond_1
    sget-object v0, Lcom/tendcloud/tenddata/ab;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setCustomDataSwitch(Lcom/tendcloud/tenddata/TalkingDataSharingFilter;)V
    .locals 0

    .line 2200
    sput-object p1, Lcom/tendcloud/tenddata/ab;->v:Lcom/tendcloud/tenddata/TalkingDataSharingFilter;

    return-void
.end method
