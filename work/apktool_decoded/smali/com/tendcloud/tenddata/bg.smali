.class public final Lcom/tendcloud/tenddata/bg;
.super Ljava/lang/Object;
.source "td"


# static fields
.field private static volatile a:Lcom/tendcloud/tenddata/bg; = null

.field private static b:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:I = 0xa4cb80


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/bg;->b:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    :try_start_0
    invoke-direct {p0}, Lcom/tendcloud/tenddata/bg;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-direct {p0}, Lcom/tendcloud/tenddata/bg;->b()V

    .line 61
    invoke-direct {p0}, Lcom/tendcloud/tenddata/bg;->d()V

    .line 63
    invoke-direct {p0}, Lcom/tendcloud/tenddata/bg;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public static a()Lcom/tendcloud/tenddata/bg;
    .locals 2

    .line 46
    sget-object v0, Lcom/tendcloud/tenddata/bg;->a:Lcom/tendcloud/tenddata/bg;

    if-nez v0, :cond_1

    .line 47
    const-class v0, Lcom/tendcloud/tenddata/bg;

    monitor-enter v0

    .line 48
    :try_start_0
    sget-object v1, Lcom/tendcloud/tenddata/bg;->a:Lcom/tendcloud/tenddata/bg;

    if-nez v1, :cond_0

    .line 49
    new-instance v1, Lcom/tendcloud/tenddata/bg;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/bg;-><init>()V

    sput-object v1, Lcom/tendcloud/tenddata/bg;->a:Lcom/tendcloud/tenddata/bg;

    .line 51
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 53
    :cond_1
    :goto_0
    sget-object v0, Lcom/tendcloud/tenddata/bg;->a:Lcom/tendcloud/tenddata/bg;

    return-object v0
.end method

.method private a(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x1e

    .line 181
    :try_start_0
    invoke-static {v1}, Lcom/tendcloud/tenddata/y;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1, v1}, Lcom/tendcloud/tenddata/y;->a(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.permission.QUERY_ALL_PACKAGES"

    invoke-static {p1, v1}, Lcom/tendcloud/tenddata/y;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 189
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 190
    invoke-static {p1}, Lcom/tendcloud/tenddata/k;->d(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 192
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 193
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 195
    :try_start_1
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 196
    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 197
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 196
    invoke-static {v3}, Lcom/tendcloud/tenddata/y;->b([B)Ljava/lang/String;

    move-result-object v3

    .line 195
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    :try_start_2
    const-string v3, ""

    .line 199
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    :goto_1
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-lez v2, :cond_1

    const-string v2, "1"

    .line 202
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v2, "0"

    .line 204
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    :cond_2
    return-object v0
.end method

.method private b()V
    .locals 5

    .line 81
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x15

    .line 82
    invoke-static {v1}, Lcom/tendcloud/tenddata/y;->a(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x18

    invoke-static {v2}, Lcom/tendcloud/tenddata/y;->b(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 83
    invoke-static {}, Lcom/tendcloud/tenddata/t;->a()Ljava/util/List;

    move-result-object v1

    .line 84
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tendcloud/tenddata/f;

    .line 85
    iget-object v3, v2, Lcom/tendcloud/tenddata/f;->c:Ljava/lang/String;

    const-string v4, "android."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v2, Lcom/tendcloud/tenddata/f;->c:Ljava/lang/String;

    const-string v4, "system"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 88
    :cond_1
    iget-object v2, v2, Lcom/tendcloud/tenddata/f;->c:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 90
    :cond_2
    invoke-static {v1}, Lcom/tendcloud/tenddata/y;->b(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 91
    sget-object v1, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const-string v2, "activity"

    .line 92
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    if-eqz v1, :cond_6

    .line 94
    sget-object v2, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 96
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 98
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catchall_0
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 99
    iget-object v3, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 101
    :try_start_1
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 102
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_4
    const/16 v1, 0x1e

    .line 112
    :try_start_2
    invoke-static {v1}, Lcom/tendcloud/tenddata/y;->b(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 113
    sget-object v1, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/tendcloud/tenddata/k;->d(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 115
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 116
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_5

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_5

    const/high16 v3, 0x200000

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v3, v4

    if-nez v3, :cond_5

    .line 117
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 122
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 123
    sget-object v1, Lcom/tendcloud/tenddata/bg;->b:Ljava/util/Map;

    const-string v2, "ras"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/i;->setCollectRunningTime(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    return-void
.end method

.method private c()Z
    .locals 6

    const/4 v0, 0x0

    .line 141
    :try_start_0
    sget-boolean v1, Lcom/tendcloud/tenddata/ab;->T:Z

    if-eqz v1, :cond_0

    return v0

    .line 144
    :cond_0
    invoke-static {}, Lcom/tendcloud/tenddata/i;->g()J

    move-result-wide v1

    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v3, v1

    const-wide/32 v1, 0xa4cb80

    cmp-long v5, v3, v1

    if-lez v5, :cond_1

    const/4 v0, 0x1

    :catchall_0
    :cond_1
    return v0
.end method

.method private d()V
    .locals 3

    .line 163
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/tendcloud/tenddata/bg;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 164
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 170
    sget-object v1, Lcom/tendcloud/tenddata/bg;->b:Ljava/util/Map;

    const-string v2, "aas"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private e()V
    .locals 4

    const-string v0, "AppList"

    .line 220
    new-instance v1, Lcom/tendcloud/tenddata/bx;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/bx;-><init>()V

    .line 223
    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/bh;->a()Lcom/tendcloud/tenddata/bh;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tendcloud/tenddata/bh;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tendcloud/tenddata/n;->getFileLock(Ljava/lang/String;)V

    .line 224
    invoke-static {}, Lcom/tendcloud/tenddata/bh;->a()Lcom/tendcloud/tenddata/bh;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/tendcloud/tenddata/bh;->a(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    invoke-static {}, Lcom/tendcloud/tenddata/bh;->a()Lcom/tendcloud/tenddata/bh;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tendcloud/tenddata/bh;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tendcloud/tenddata/n;->releaseFileLock(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    invoke-static {}, Lcom/tendcloud/tenddata/bh;->a()Lcom/tendcloud/tenddata/bh;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tendcloud/tenddata/bh;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tendcloud/tenddata/n;->releaseFileLock(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 234
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 235
    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v3, v1, Lcom/tendcloud/tenddata/bx;->e:Landroid/util/Pair;

    :cond_0
    const-string v0, "env"

    .line 240
    iput-object v0, v1, Lcom/tendcloud/tenddata/bx;->b:Ljava/lang/String;

    const-string v0, "apps"

    .line 241
    iput-object v0, v1, Lcom/tendcloud/tenddata/bx;->c:Ljava/lang/String;

    .line 242
    sget-object v0, Lcom/tendcloud/tenddata/bg;->b:Ljava/util/Map;

    iput-object v0, v1, Lcom/tendcloud/tenddata/bx;->d:Ljava/util/Map;

    .line 243
    sget-object v0, Lcom/tendcloud/tenddata/a;->ENV:Lcom/tendcloud/tenddata/a;

    iput-object v0, v1, Lcom/tendcloud/tenddata/bx;->a:Lcom/tendcloud/tenddata/a;

    .line 244
    invoke-static {}, Lcom/tendcloud/tenddata/z;->a()Lcom/tendcloud/tenddata/z;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/z;->post(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
