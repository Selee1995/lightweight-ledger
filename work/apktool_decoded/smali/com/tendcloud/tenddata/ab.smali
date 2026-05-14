.class public Lcom/tendcloud/tenddata/ab;
.super Ljava/lang/Object;
.source "td"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tendcloud/tenddata/ab$b;,
        Lcom/tendcloud/tenddata/ab$c;,
        Lcom/tendcloud/tenddata/ab$a;
    }
.end annotation


# static fields
.field public static final A:Ljava/lang/String; = "TD_init_custom"

.field public static final B:Ljava/lang/String; = "TD_sdk_last_send_time_wifi"

.field public static final C:Ljava/lang/String; = "TD_sdk_last_send_time_mobile_data"

.field public static final D:Ljava/lang/String; = "TD_sdk_last_send_url"

.field public static final E:Ljava/lang/String; = "TD_sdk_last_send_host"

.field public static final F:Ljava/lang/String; = "isDeveloper"

.field public static G:Ljava/lang/String; = null

.field public static H:Ljava/lang/String; = null

.field public static I:Z = false

.field public static J:Ljava/lang/String; = null

.field public static K:Z = false

.field public static final L:I = 0x6400000

.field static final M:Ljava/lang/String; = "WiFi"

.field static final N:Ljava/lang/String; = "All"

.field static O:Ljava/lang/String; = null

.field public static final P:Ljava/lang/String; = "v1.0.0"

.field public static Q:Z = false

.field public static R:Z = false

.field public static S:Z = false

.field public static T:Z = false

.field public static final U:Ljava/lang/String; = "Android+TD+V5.0.16 gp"

.field static V:J = 0x0L

.field public static W:I = 0x0

.field public static X:Ljava/util/concurrent/atomic/AtomicInteger; = null

.field public static final Y:I = 0x1b7740

.field public static final Z:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final a:Z = false

.field public static final aa:J = 0x7530L

.field public static final ab:I = 0x64

.field public static final ac:Ljava/lang/String; = "TD_APP_ID"

.field public static final ad:Ljava/lang/String; = "TD_CHANNEL_ID"

.field private static ae:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final af:Ljava/lang/String; = "+V"

.field private static final ag:I = 0x78

.field private static final ah:I = 0x1e

.field private static final ai:I = 0x3e8

.field public static b:Z = false

.field public static final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static e:Z = false

.field public static f:J = 0x0L

.field public static g:Landroid/content/Context; = null

.field public static h:Landroid/os/Handler; = null

.field public static final i:I = 0x1

.field public static final j:Ljava/lang/String; = "Android+"

.field public static k:Ljava/nio/channels/FileChannel; = null

.field public static l:J = 0x0L

.field public static m:Z = false

.field public static n:I = 0x0

.field public static o:Z = false

.field public static p:Z = false

.field public static q:Z = false

.field public static r:J = 0x0L

.field public static s:Ljava/lang/String; = null

.field public static final t:Ljava/lang/String; = "TD"

.field public static final u:Ljava/lang/String; = "TDLog"

.field public static v:Lcom/tendcloud/tenddata/TalkingDataSharingFilter; = null

.field public static final w:Ljava/lang/String; = "2378"

.field public static final x:Ljava/lang/String; = "TD_app_pefercen_profile"

.field public static final y:Ljava/lang/String; = "TD_appId_"

.field public static final z:Ljava/lang/String; = "TD_channelId"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/tendcloud/tenddata/ab;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 48
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/ab;->d:Ljava/util/Map;

    .line 52
    sput-boolean v1, Lcom/tendcloud/tenddata/ab;->e:Z

    const-wide/16 v2, 0x0

    .line 57
    sput-wide v2, Lcom/tendcloud/tenddata/ab;->f:J

    const/4 v0, 0x0

    .line 59
    sput-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    .line 60
    sput-object v0, Lcom/tendcloud/tenddata/ab;->h:Landroid/os/Handler;

    .line 66
    sput-wide v2, Lcom/tendcloud/tenddata/ab;->l:J

    .line 69
    sput-boolean v1, Lcom/tendcloud/tenddata/ab;->m:Z

    const/4 v2, -0x1

    .line 72
    sput v2, Lcom/tendcloud/tenddata/ab;->n:I

    const/4 v2, 0x1

    .line 75
    sput-boolean v2, Lcom/tendcloud/tenddata/ab;->o:Z

    .line 78
    sput-boolean v2, Lcom/tendcloud/tenddata/ab;->p:Z

    .line 80
    sput-boolean v1, Lcom/tendcloud/tenddata/ab;->q:Z

    const-wide/16 v2, 0x1388

    .line 82
    sput-wide v2, Lcom/tendcloud/tenddata/ab;->r:J

    .line 98
    sget-object v2, Lcom/tendcloud/tenddata/TalkingDataSharingFilter;->SHARE:Lcom/tendcloud/tenddata/TalkingDataSharingFilter;

    sput-object v2, Lcom/tendcloud/tenddata/ab;->v:Lcom/tendcloud/tenddata/TalkingDataSharingFilter;

    .line 103
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/tendcloud/tenddata/ab;->ae:Ljava/util/HashMap;

    const-string v2, "Default"

    .line 125
    sput-object v2, Lcom/tendcloud/tenddata/ab;->G:Ljava/lang/String;

    const-string v2, ""

    .line 127
    sput-object v2, Lcom/tendcloud/tenddata/ab;->H:Ljava/lang/String;

    .line 129
    sput-boolean v1, Lcom/tendcloud/tenddata/ab;->I:Z

    .line 131
    sput-object v0, Lcom/tendcloud/tenddata/ab;->J:Ljava/lang/String;

    .line 132
    sput-boolean v1, Lcom/tendcloud/tenddata/ab;->K:Z

    const-string v0, "WiFi"

    .line 146
    sput-object v0, Lcom/tendcloud/tenddata/ab;->O:Ljava/lang/String;

    .line 153
    sput-boolean v1, Lcom/tendcloud/tenddata/ab;->Q:Z

    .line 155
    sput-boolean v1, Lcom/tendcloud/tenddata/ab;->R:Z

    .line 156
    sput-boolean v1, Lcom/tendcloud/tenddata/ab;->S:Z

    .line 158
    sput-boolean v1, Lcom/tendcloud/tenddata/ab;->T:Z

    const/4 v0, 0x2

    .line 227
    sput v0, Lcom/tendcloud/tenddata/ab;->W:I

    .line 245
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/tendcloud/tenddata/ab;->X:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 251
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/tendcloud/tenddata/ab;->Z:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 169
    :cond_0
    sget-object v1, Lcom/tendcloud/tenddata/ab;->ae:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/a;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 170
    invoke-static {v1}, Lcom/tendcloud/tenddata/y;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    .line 173
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TD_appId_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/a;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TD_app_pefercen_profile"

    invoke-static {p0, v1, p1, v0}, Lcom/tendcloud/tenddata/s;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/String;

    const/4 p1, 0x0

    const-string v1, "Context or Service is null"

    aput-object v1, p0, p1

    .line 166
    invoke-static {p0}, Lcom/tendcloud/tenddata/h;->dForInternal([Ljava/lang/String;)V

    return-object v0
.end method

.method private static a(I)V
    .locals 1

    .line 401
    :try_start_0
    new-instance v0, Lcom/tendcloud/tenddata/cx;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/cx;-><init>()V

    packed-switch p0, :pswitch_data_0

    const-string p0, "Native"

    goto :goto_0

    :pswitch_0
    const-string p0, "Flutter"

    .line 425
    invoke-virtual {v0, p0}, Lcom/tendcloud/tenddata/cx;->setFrameWork(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    const-string p0, "ReactNative"

    .line 422
    invoke-virtual {v0, p0}, Lcom/tendcloud/tenddata/cx;->setFrameWork(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    const-string p0, "Hybrid"

    .line 419
    invoke-virtual {v0, p0}, Lcom/tendcloud/tenddata/cx;->setFrameWork(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_3
    const-string p0, "APICloud"

    .line 416
    invoke-virtual {v0, p0}, Lcom/tendcloud/tenddata/cx;->setFrameWork(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_4
    const-string p0, "PhoneGap"

    .line 413
    invoke-virtual {v0, p0}, Lcom/tendcloud/tenddata/cx;->setFrameWork(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_5
    const-string p0, "AIR"

    .line 410
    invoke-virtual {v0, p0}, Lcom/tendcloud/tenddata/cx;->setFrameWork(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_6
    const-string p0, "Unity"

    .line 407
    invoke-virtual {v0, p0}, Lcom/tendcloud/tenddata/cx;->setFrameWork(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_7
    const-string p0, "Cocos2d"

    .line 404
    invoke-virtual {v0, p0}, Lcom/tendcloud/tenddata/cx;->setFrameWork(Ljava/lang/String;)V

    goto :goto_1

    .line 428
    :goto_0
    invoke-virtual {v0, p0}, Lcom/tendcloud/tenddata/cx;->setFrameWork(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 178
    sget-object v0, Lcom/tendcloud/tenddata/ab;->ae:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/a;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TD_appId_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/a;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TD_app_pefercen_profile"

    invoke-static {v0, v1, p1, p0}, Lcom/tendcloud/tenddata/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V
    .locals 2

    .line 282
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 283
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/tendcloud/tenddata/ab;->h:Landroid/os/Handler;

    .line 286
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/tendcloud/tenddata/ab;->f:J

    if-eqz p0, :cond_1

    .line 288
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 291
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    aget-object p0, p0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-object p0, v1

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 299
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 300
    sput-object p1, Lcom/tendcloud/tenddata/ab;->G:Ljava/lang/String;

    .line 302
    :cond_2
    invoke-static {p0, p2}, Lcom/tendcloud/tenddata/ab;->a(Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V

    .line 303
    sget-object p1, Lcom/tendcloud/tenddata/ab;->G:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/tendcloud/tenddata/ab;->b(Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V

    .line 304
    invoke-static {}, Lcom/tendcloud/tenddata/cu;->a()Lcom/tendcloud/tenddata/cu;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/tendcloud/tenddata/cu;->a(Ljava/lang/Object;Lcom/tendcloud/tenddata/a;)V

    .line 305
    invoke-static {}, Lcom/tendcloud/tenddata/cu;->a()Lcom/tendcloud/tenddata/cu;

    move-result-object p0

    sget-object p1, Lcom/tendcloud/tenddata/ab;->G:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/tendcloud/tenddata/cu;->b(Ljava/lang/Object;Lcom/tendcloud/tenddata/a;)V

    .line 306
    sget p0, Lcom/tendcloud/tenddata/dz;->a:I

    invoke-static {p0}, Lcom/tendcloud/tenddata/ab;->a(I)V

    return-void
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x0

    .line 674
    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/g;->a()Lcom/tendcloud/tenddata/g;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/tendcloud/tenddata/g;->d(Landroid/content/Context;)J

    move-result-wide v1

    .line 675
    invoke-static {}, Lcom/tendcloud/tenddata/g;->a()Lcom/tendcloud/tenddata/g;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/tendcloud/tenddata/g;->e(Landroid/content/Context;)J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long p0, v1, v3

    if-nez p0, :cond_0

    const/4 p0, 0x1

    const/4 v0, 0x1

    :catchall_0
    :cond_0
    return v0
.end method

.method public static a(Lcom/tendcloud/tenddata/a;)Z
    .locals 11

    const/4 v0, 0x0

    .line 452
    :try_start_0
    sget-object v1, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    if-nez v1, :cond_0

    return v0

    :cond_0
    if-nez p0, :cond_1

    return v0

    .line 466
    :cond_1
    invoke-static {v1}, Lcom/tendcloud/tenddata/ab;->a(Landroid/content/Context;)Z

    move-result v1

    const-wide/16 v2, 0x1

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    .line 467
    invoke-static {p0}, Lcom/tendcloud/tenddata/i;->e(Lcom/tendcloud/tenddata/a;)J

    move-result-wide v5

    cmp-long p0, v5, v2

    if-nez p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0

    .line 469
    :cond_3
    invoke-static {p0}, Lcom/tendcloud/tenddata/i;->e(Lcom/tendcloud/tenddata/a;)J

    move-result-wide v5

    cmp-long v1, v5, v2

    if-nez v1, :cond_9

    .line 470
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 471
    invoke-static {p0}, Lcom/tendcloud/tenddata/i;->d(Lcom/tendcloud/tenddata/a;)J

    move-result-wide v5

    sub-long v5, v1, v5

    sget-wide v7, Lcom/tendcloud/tenddata/ab;->r:J

    const-wide/16 v9, 0x4

    mul-long v7, v7, v9

    cmp-long v3, v5, v7

    if-gtz v3, :cond_8

    .line 474
    invoke-static {}, Lcom/tendcloud/tenddata/i;->e()J

    move-result-wide v5

    sub-long/2addr v1, v5

    sget-wide v5, Lcom/tendcloud/tenddata/ab;->r:J

    mul-long v5, v5, v9

    cmp-long v3, v1, v5

    if-gtz v3, :cond_4

    .line 476
    sget-object v1, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-static {v1, p0}, Lcom/tendcloud/tenddata/ab;->d(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)Z

    move-result p0

    return p0

    .line 481
    :cond_4
    invoke-static {p0}, Lcom/tendcloud/tenddata/ab;->c(Lcom/tendcloud/tenddata/a;)Z

    move-result v1

    if-eqz v1, :cond_5

    return v4

    .line 484
    :cond_5
    invoke-static {p0}, Lcom/tendcloud/tenddata/ab;->e(Lcom/tendcloud/tenddata/a;)Z

    move-result v1

    if-eqz v1, :cond_6

    return v4

    .line 487
    :cond_6
    invoke-static {p0}, Lcom/tendcloud/tenddata/ab;->d(Lcom/tendcloud/tenddata/a;)Z

    move-result v1

    if-eqz v1, :cond_7

    return v4

    .line 490
    :cond_7
    invoke-static {p0}, Lcom/tendcloud/tenddata/ab;->b(Lcom/tendcloud/tenddata/a;)Z

    move-result p0

    if-eqz p0, :cond_9

    return v4

    .line 496
    :cond_8
    invoke-static {v0, p0}, Lcom/tendcloud/tenddata/i;->a(ZLcom/tendcloud/tenddata/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_9
    return v0
.end method

.method public static a()[I
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 254
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x1d4c0
        0x7530
    .end array-data
.end method

.method public static b(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)Ljava/lang/String;
    .locals 3

    .line 187
    sget-object v0, Lcom/tendcloud/tenddata/ab;->G:Ljava/lang/String;

    invoke-static {v0}, Lcom/tendcloud/tenddata/y;->b(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "Default"

    if-nez v0, :cond_0

    sget-object v0, Lcom/tendcloud/tenddata/ab;->G:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TD_channelId"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/a;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TD_app_pefercen_profile"

    invoke-static {p0, v0, p1, v1}, Lcom/tendcloud/tenddata/s;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/tendcloud/tenddata/ab;->G:Ljava/lang/String;

    .line 190
    :cond_1
    sget-object p0, Lcom/tendcloud/tenddata/ab;->G:Ljava/lang/String;

    return-object p0
.end method

.method public static b(Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V
    .locals 3

    .line 194
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TD_channelId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/a;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TD_app_pefercen_profile"

    invoke-static {v0, v1, p1, p0}, Lcom/tendcloud/tenddata/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static b()Z
    .locals 6

    const/4 v0, 0x0

    .line 391
    :try_start_0
    sget-object v1, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const-string v2, "TD_app_pefercen_profile"

    const-string v3, "isDeveloper"

    const-wide/16 v4, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/tendcloud/tenddata/s;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v3, v1, v4

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    :catchall_0
    :cond_0
    return v0
.end method

.method private static b(Lcom/tendcloud/tenddata/a;)Z
    .locals 9

    const-string v0, "td_database3SaaS"

    const-string v1, "td_database1SaaS"

    const-string v2, "td_database0SaaS"

    .line 507
    sget-object v3, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/a;->name()Ljava/lang/String;

    move-result-object p0

    const-string v3, "SDK"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 508
    sget-object p0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    .line 510
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 511
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 512
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 513
    new-instance v7, Ljava/io/File;

    const-string v8, "__database_reborn_January_one__"

    invoke-direct {v7, p0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 514
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v7, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 515
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v7, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 516
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v7, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 518
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 520
    :cond_0
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    const/4 v4, 0x1

    nop

    :catchall_0
    :cond_2
    :goto_0
    return v4
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    .line 443
    :try_start_0
    new-instance v0, Lcom/tendcloud/tenddata/cx;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/cx;-><init>()V

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/cx;->a()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-string v0, "Native"

    :goto_0
    return-object v0
.end method

.method public static c(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)Ljava/lang/String;
    .locals 3

    .line 202
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->H:Ljava/lang/String;

    invoke-static {v0}, Lcom/tendcloud/tenddata/y;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TD_app_pefercen_profile"

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TD_init_custom"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/a;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    invoke-static {p0, v0, p1, v1}, Lcom/tendcloud/tenddata/s;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/tendcloud/tenddata/ab;->H:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    :catchall_0
    :cond_0
    sget-object p0, Lcom/tendcloud/tenddata/ab;->H:Ljava/lang/String;

    return-object p0
.end method

.method public static c(Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V
    .locals 4

    .line 213
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const-string v1, "TD_app_pefercen_profile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TD_init_custom"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/a;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1, p0}, Lcom/tendcloud/tenddata/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private static c(Lcom/tendcloud/tenddata/a;)Z
    .locals 7

    const-string v0, "td_database0SaaS"

    const-string v1, "td_database3SaaS"

    .line 543
    sget-object v2, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/a;->name()Ljava/lang/String;

    move-result-object p0

    const-string v2, "TRACKING"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 544
    sget-object p0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    .line 546
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 547
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 549
    new-instance v5, Ljava/io/File;

    const-string v6, "__database_reborn_January_one__"

    invoke-direct {v5, p0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 551
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v5, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 552
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 554
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    const/4 v3, 0x1

    :catchall_0
    :cond_1
    return v3
.end method

.method private static d(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)Z
    .locals 3

    .line 644
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/a;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TRACKING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/a;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SDK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "talkingdata_file_prefence"

    const-string v1, "actived"

    const/4 v2, 0x0

    .line 647
    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 648
    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 653
    invoke-static {v2, p1}, Lcom/tendcloud/tenddata/i;->a(ZLcom/tendcloud/tenddata/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :catchall_0
    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private static d(Lcom/tendcloud/tenddata/a;)Z
    .locals 7

    const-string v0, "td_database1SaaS"

    const-string v1, "td_database3SaaS"

    .line 576
    sget-object v2, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/a;->name()Ljava/lang/String;

    move-result-object p0

    const-string v2, "APP"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 577
    sget-object p0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    .line 579
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 580
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 582
    new-instance v5, Ljava/io/File;

    const-string v6, "__database_reborn_January_one__"

    invoke-direct {v5, p0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 584
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v5, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 585
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 587
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    const/4 v3, 0x1

    :catchall_0
    :cond_1
    return v3
.end method

.method private static e(Lcom/tendcloud/tenddata/a;)Z
    .locals 7

    const-string v0, "td_database1SaaS"

    const-string v1, "td_database0SaaS"

    .line 609
    sget-object v2, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/a;->name()Ljava/lang/String;

    move-result-object p0

    const-string v2, "GAME"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 610
    sget-object p0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    .line 612
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 613
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 615
    new-instance v5, Ljava/io/File;

    const-string v6, "__database_reborn_January_one__"

    invoke-direct {v5, p0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 617
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v5, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 618
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 620
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    const/4 v3, 0x1

    :catchall_0
    :cond_1
    return v3
.end method

.method public static setConfigurationDisable(I)V
    .locals 3

    and-int/lit8 v0, p0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 693
    :goto_0
    :try_start_0
    sput-boolean v0, Lcom/tendcloud/tenddata/ab;->Q:Z

    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 694
    :goto_1
    sput-boolean v0, Lcom/tendcloud/tenddata/ab;->R:Z

    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 695
    :goto_2
    sput-boolean v0, Lcom/tendcloud/tenddata/ab;->S:Z

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_3

    const/4 v1, 0x1

    .line 696
    :cond_3
    sput-boolean v1, Lcom/tendcloud/tenddata/ab;->T:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static setDeveloperMode(Z)V
    .locals 5

    .line 383
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const-string v1, "TD_app_pefercen_profile"

    const-string v2, "isDeveloper"

    if-eqz p0, :cond_0

    const-wide/16 v3, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    :goto_0
    invoke-static {v0, v1, v2, v3, v4}, Lcom/tendcloud/tenddata/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
