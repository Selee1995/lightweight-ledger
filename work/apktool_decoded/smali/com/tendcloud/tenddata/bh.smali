.class public Lcom/tendcloud/tenddata/bh;
.super Ljava/lang/Object;
.source "td"


# static fields
.field private static volatile A:Lcom/tendcloud/tenddata/bh; = null

.field private static final a:I = 0x0

.field private static final b:I = 0x1

.field private static final c:I = 0x3

.field private static i:Ljava/lang/String; = null

.field private static j:Ljava/lang/String; = "TDpref_cloudcontrol"

.field private static final k:Ljava/lang/String; = "TDpref_config"

.field private static final l:Ljava/lang/String; = "TDpref_last_request_time"

.field private static final m:Ljava/lang/String; = "TDpref_cloud_cv"

.field private static n:[Ljava/lang/String; = null

.field private static o:Z = false

.field private static p:Z = true

.field private static q:Z = false

.field private static r:Z = true

.field private static s:Ljava/lang/String; = null

.field private static t:Ljava/lang/String; = null

.field private static u:Ljava/lang/String; = null

.field private static v:Ljava/lang/String; = null

.field private static w:Z = false

.field private static z:Z = true


# instance fields
.field private d:J

.field private e:J

.field private f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lorg/json/JSONObject;

.field private x:I

.field private y:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x41

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "232"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "206"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "284"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "280"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "219"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "230"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "238"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "248"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "244"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "208"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "308"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "340"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "543"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "546"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "547"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "647"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "742"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "262"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "202"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "216"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "272"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "222"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "247"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "246"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "270"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "278"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "204"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "363"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "362"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "260"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "268"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "226"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "231"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "293"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "214"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "240"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "234"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "235"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "266"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "346"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "348"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "350"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "354"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "376"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "750"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "454"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "455"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "466"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "525"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "310"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "311"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "312"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "313"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "314"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "315"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "316"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "330"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "332"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "534"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "535"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "544"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "302"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "505"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "530"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "548"

    aput-object v2, v0, v1

    .line 63
    sput-object v0, Lcom/tendcloud/tenddata/bh;->n:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x2d0

    .line 50
    iput-wide v0, p0, Lcom/tendcloud/tenddata/bh;->d:J

    const-wide/32 v0, 0x240c8400

    .line 51
    iput-wide v0, p0, Lcom/tendcloud/tenddata/bh;->e:J

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/bh;->f:Ljava/util/HashMap;

    .line 54
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/bh;->g:Ljava/util/HashSet;

    .line 55
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/bh;->h:Lorg/json/JSONObject;

    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lcom/tendcloud/tenddata/bh;->y:Landroid/os/Handler;

    .line 101
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ModuleCloudControl"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 102
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 103
    new-instance v1, Lcom/tendcloud/tenddata/bh$1;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/tendcloud/tenddata/bh$1;-><init>(Lcom/tendcloud/tenddata/bh;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/tendcloud/tenddata/bh;->y:Landroid/os/Handler;

    return-void
.end method

.method private a(Lcom/tendcloud/tenddata/a;)I
    .locals 2

    .line 595
    invoke-virtual {p1}, Lcom/tendcloud/tenddata/a;->index()I

    move-result p1

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_3

    const/16 v0, 0x63

    if-eq p1, v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :cond_3
    :goto_0
    return v0
.end method

.method public static a()Lcom/tendcloud/tenddata/bh;
    .locals 2

    .line 88
    sget-object v0, Lcom/tendcloud/tenddata/bh;->A:Lcom/tendcloud/tenddata/bh;

    if-nez v0, :cond_1

    .line 89
    const-class v0, Lcom/tendcloud/tenddata/bh;

    monitor-enter v0

    .line 90
    :try_start_0
    sget-object v1, Lcom/tendcloud/tenddata/bh;->A:Lcom/tendcloud/tenddata/bh;

    if-nez v1, :cond_0

    .line 91
    new-instance v1, Lcom/tendcloud/tenddata/bh;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/bh;-><init>()V

    sput-object v1, Lcom/tendcloud/tenddata/bh;->A:Lcom/tendcloud/tenddata/bh;

    .line 93
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 95
    :cond_1
    :goto_0
    sget-object v0, Lcom/tendcloud/tenddata/bh;->A:Lcom/tendcloud/tenddata/bh;

    return-object v0
.end method

.method private a(Ljava/io/RandomAccessFile;)Ljava/lang/String;
    .locals 3

    .line 635
    :try_start_0
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    long-to-int v1, v0

    .line 636
    new-array v0, v1, [B

    const-wide/16 v1, 0x0

    .line 637
    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 638
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 639
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 6

    const-string v0, "r"

    const-string v1, "TDpref_config"

    const-string v2, "cv"

    .line 329
    :try_start_0
    sget-object v3, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    sget-object v4, Lcom/tendcloud/tenddata/bh;->j:Ljava/lang/String;

    const-string v5, ""

    invoke-static {v3, v4, v1, v5}, Lcom/tendcloud/tenddata/s;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 330
    invoke-static {v3}, Lcom/tendcloud/tenddata/y;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 331
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    if-ne v3, v5, :cond_1

    .line 334
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 335
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 336
    invoke-virtual {v4, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 341
    :cond_0
    sget-object p1, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    sget-object v0, Lcom/tendcloud/tenddata/bh;->j:Ljava/lang/String;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/tendcloud/tenddata/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v4

    goto :goto_0

    .line 345
    :cond_1
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    sget-object v3, Lcom/tendcloud/tenddata/bh;->j:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v1, v4}, Lcom/tendcloud/tenddata/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 347
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    sget-object v1, Lcom/tendcloud/tenddata/bh;->j:Ljava/lang/String;

    const-string v3, "TDpref_cloud_cv"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v0, v1, v3, v4, v5}, Lcom/tendcloud/tenddata/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 353
    :cond_2
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    sget-object v2, Lcom/tendcloud/tenddata/bh;->j:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v1, v3}, Lcom/tendcloud/tenddata/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p1, 0x0

    :cond_3
    :goto_0
    return-object p1
.end method

.method static synthetic a(Lcom/tendcloud/tenddata/bh;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/tendcloud/tenddata/bh;->f()V

    return-void
.end method

.method static synthetic a(Lcom/tendcloud/tenddata/bh;Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/tendcloud/tenddata/bh;->b(Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V

    return-void
.end method

.method private a(Ljava/io/RandomAccessFile;Ljava/lang/String;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 623
    :try_start_0
    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 624
    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 625
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    .line 626
    invoke-virtual {p1, p2}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 5

    :try_start_0
    const-string v0, "clt"

    .line 443
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    const-string v1, "id"

    .line 444
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 445
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 446
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 447
    invoke-static {v2}, Lcom/tendcloud/tenddata/y;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 448
    iget-object v3, p0, Lcom/tendcloud/tenddata/bh;->f:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 449
    iget-object v3, p0, Lcom/tendcloud/tenddata/bh;->f:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    invoke-virtual {v2, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 451
    :cond_0
    iget-object v3, p0, Lcom/tendcloud/tenddata/bh;->f:Ljava/util/HashMap;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v4, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    :cond_2
    return-void
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    if-nez p3, :cond_0

    return-void

    .line 316
    :cond_0
    :try_start_0
    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_1

    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 320
    :cond_1
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method static synthetic a(Z)Z
    .locals 0

    .line 44
    sput-boolean p0, Lcom/tendcloud/tenddata/bh;->z:Z

    return p0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V
    .locals 8

    .line 228
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "bl"

    .line 229
    iget v2, p0, Lcom/tendcloud/tenddata/bh;->x:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/tendcloud/tenddata/bh;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "pl"

    const/4 v2, 0x1

    .line 231
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v1, v3}, Lcom/tendcloud/tenddata/bh;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "sv"

    const-string v3, "5.0.16"

    .line 232
    invoke-direct {p0, v0, v1, v3}, Lcom/tendcloud/tenddata/bh;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "smcc"

    .line 233
    sget-object v3, Lcom/tendcloud/tenddata/bh;->s:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v3}, Lcom/tendcloud/tenddata/bh;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "smnc"

    .line 234
    sget-object v3, Lcom/tendcloud/tenddata/bh;->t:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v3}, Lcom/tendcloud/tenddata/bh;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "bmcc"

    .line 235
    sget-object v3, Lcom/tendcloud/tenddata/bh;->u:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v3}, Lcom/tendcloud/tenddata/bh;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "bmnc"

    .line 236
    sget-object v3, Lcom/tendcloud/tenddata/bh;->v:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v3}, Lcom/tendcloud/tenddata/bh;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "dt"

    const-string v3, "Mobile"

    .line 237
    invoke-direct {p0, v0, v1, v3}, Lcom/tendcloud/tenddata/bh;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "ov"

    .line 238
    invoke-static {}, Lcom/tendcloud/tenddata/k;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v3}, Lcom/tendcloud/tenddata/bh;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "av"

    .line 239
    invoke-static {}, Lcom/tendcloud/tenddata/i;->k()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v3}, Lcom/tendcloud/tenddata/bh;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "px"

    .line 240
    sget-object v3, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-static {v3}, Lcom/tendcloud/tenddata/k;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v3}, Lcom/tendcloud/tenddata/bh;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "nt"

    .line 241
    sget-object v3, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-static {v3}, Lcom/tendcloud/tenddata/o;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v3}, Lcom/tendcloud/tenddata/bh;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "op"

    .line 242
    sget-object v3, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-static {v3}, Lcom/tendcloud/tenddata/o;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v3}, Lcom/tendcloud/tenddata/bh;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "ch"

    .line 243
    invoke-direct {p0, v0, v1, p2}, Lcom/tendcloud/tenddata/bh;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "cv"

    .line 244
    sget-object v3, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    sget-object v4, Lcom/tendcloud/tenddata/bh;->j:Ljava/lang/String;

    const-string v5, "TDpref_cloud_cv"

    const-wide/16 v6, 0x0

    invoke-static {v3, v4, v5, v6, v7}, Lcom/tendcloud/tenddata/s;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0, v0, v1, v3}, Lcom/tendcloud/tenddata/bh;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "TDID"

    .line 245
    sget-object v3, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-static {v3}, Lcom/tendcloud/tenddata/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v3}, Lcom/tendcloud/tenddata/bh;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 246
    invoke-static {p1}, Lcom/tendcloud/tenddata/y;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "AppID"

    .line 247
    invoke-direct {p0, v0, v1, p1}, Lcom/tendcloud/tenddata/bh;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 253
    :cond_0
    new-instance v1, Lcom/tendcloud/tenddata/an;

    sget-object v3, Lcom/tendcloud/tenddata/an$a;->JSON:Lcom/tendcloud/tenddata/an$a;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lcom/tendcloud/tenddata/an;-><init>(Lcom/tendcloud/tenddata/an$a;[B)V

    .line 254
    invoke-static {}, Lcom/tendcloud/tenddata/al;->a()Lcom/tendcloud/tenddata/am$a;

    move-result-object v0

    sget-object v3, Lcom/tendcloud/tenddata/aa;->x:Ljava/lang/String;

    .line 255
    invoke-virtual {v0, v3}, Lcom/tendcloud/tenddata/am$a;->url(Ljava/lang/String;)Lcom/tendcloud/tenddata/am$a;

    move-result-object v0

    const-string v3, "cloud.cpatrk.net"

    .line 256
    invoke-virtual {v0, v3}, Lcom/tendcloud/tenddata/am$a;->host(Ljava/lang/String;)Lcom/tendcloud/tenddata/am$a;

    move-result-object v0

    .line 257
    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/am$a;->body(Lcom/tendcloud/tenddata/an;)Lcom/tendcloud/tenddata/am$a;

    move-result-object v0

    new-instance v1, Lcom/tendcloud/tenddata/ap;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/ap;-><init>()V

    const-string v3, "Accept-Encoding"

    const-string v4, ""

    .line 258
    invoke-virtual {v1, v3, v4}, Lcom/tendcloud/tenddata/ap;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tendcloud/tenddata/ap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/am$a;->header(Lcom/tendcloud/tenddata/ap;)Lcom/tendcloud/tenddata/am$a;

    move-result-object v0

    sget-object v1, Lcom/tendcloud/tenddata/aq;->b:Lcom/tendcloud/tenddata/aq;

    .line 259
    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/am$a;->method(Lcom/tendcloud/tenddata/aq;)Lcom/tendcloud/tenddata/am$a;

    move-result-object v0

    .line 260
    invoke-virtual {v0}, Lcom/tendcloud/tenddata/am$a;->build()Lcom/tendcloud/tenddata/am;

    move-result-object v0

    .line 254
    invoke-static {v0}, Lcom/tendcloud/tenddata/al;->b(Lcom/tendcloud/tenddata/am;)Lcom/tendcloud/tenddata/ar;

    move-result-object v0

    .line 261
    sget-object v1, Lcom/tendcloud/tenddata/bh;->i:Ljava/lang/String;

    invoke-static {v1}, Lcom/tendcloud/tenddata/n;->getFileLock(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v0}, Lcom/tendcloud/tenddata/ar;->c()[B

    move-result-object v1

    invoke-static {v1}, Lcom/tendcloud/tenddata/y;->c([B)Ljava/lang/String;

    move-result-object v1

    .line 263
    invoke-virtual {v0}, Lcom/tendcloud/tenddata/ar;->b()I

    move-result v0

    const/16 v3, 0xc8

    if-ne v0, v3, :cond_1

    .line 264
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 267
    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/bh;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/bh;->b(Lorg/json/JSONObject;)V

    .line 268
    sget-object p1, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    sget-object p2, Lcom/tendcloud/tenddata/bh;->j:Ljava/lang/String;

    const-string p3, "TDpref_last_request_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, p2, p3, v0, v1}, Lcom/tendcloud/tenddata/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 272
    :cond_1
    sget-boolean v0, Lcom/tendcloud/tenddata/bh;->z:Z

    if-eqz v0, :cond_3

    .line 273
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 274
    invoke-static {p1}, Lcom/tendcloud/tenddata/y;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "appId"

    .line 275
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string p1, "channelId"

    .line 277
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Features"

    .line 278
    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    iget-object p1, p0, Lcom/tendcloud/tenddata/bh;->y:Landroid/os/Handler;

    invoke-virtual {p1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 280
    iget-object p2, p0, Lcom/tendcloud/tenddata/bh;->y:Landroid/os/Handler;

    const-wide/16 v0, 0x1388

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    :catchall_0
    :cond_3
    :goto_0
    sget-object p1, Lcom/tendcloud/tenddata/bh;->i:Ljava/lang/String;

    invoke-static {p1}, Lcom/tendcloud/tenddata/n;->releaseFileLock(Ljava/lang/String;)V

    return-void
.end method

.method private b(Lorg/json/JSONObject;)V
    .locals 8

    const-string v0, "r"

    const-string v1, "c"

    const-string v2, "i"

    if-nez p1, :cond_0

    return-void

    .line 405
    :cond_0
    :try_start_0
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 407
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/tendcloud/tenddata/bh;->d:J

    .line 410
    :cond_1
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/tendcloud/tenddata/bh;->g:Ljava/util/HashSet;

    .line 411
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 412
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 413
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 414
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 415
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "id"

    .line 416
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    .line 417
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 418
    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v6

    if-ne v4, v6, :cond_2

    .line 420
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v6}, Lcom/tendcloud/tenddata/bh;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 422
    :cond_2
    iget-object v6, p0, Lcom/tendcloud/tenddata/bh;->g:Ljava/util/HashSet;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 426
    :cond_4
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-nez p1, :cond_5

    .line 427
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/tendcloud/tenddata/bh;->f:Ljava/util/HashMap;

    .line 430
    :cond_5
    invoke-direct {p0}, Lcom/tendcloud/tenddata/bh;->g()V

    .line 431
    invoke-direct {p0}, Lcom/tendcloud/tenddata/bh;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_6
    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 4

    .line 652
    :try_start_0
    invoke-static {p1}, Lcom/tendcloud/tenddata/y;->b(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 655
    :goto_0
    sget-object v2, Lcom/tendcloud/tenddata/bh;->n:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 656
    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private d()V
    .locals 2

    .line 210
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tendcloud/tenddata/bh;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tendcloud/tenddata/bh;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tendcloud/tenddata/bh;->j:Ljava/lang/String;

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tendcloud/tenddata/n$b;->Cloud_Control_Lock_File:Lcom/tendcloud/tenddata/n$b;

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/n$b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tendcloud/tenddata/bh;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tendcloud/tenddata/bh;->i:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private e()Z
    .locals 7

    .line 218
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    sget-object v1, Lcom/tendcloud/tenddata/bh;->j:Ljava/lang/String;

    const-string v2, "TDpref_last_request_time"

    const-wide/16 v3, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tendcloud/tenddata/s;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    .line 219
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v2, v0, v3

    if-eqz v2, :cond_1

    sub-long/2addr v5, v0

    .line 220
    iget-wide v0, p0, Lcom/tendcloud/tenddata/bh;->d:J

    const-wide/16 v2, 0x3c

    mul-long v0, v0, v2

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    cmp-long v2, v5, v0

    if-gtz v2, :cond_1

    iget-wide v0, p0, Lcom/tendcloud/tenddata/bh;->e:J

    cmp-long v2, v5, v0

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private f()V
    .locals 3

    .line 292
    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/al;->a()Lcom/tendcloud/tenddata/am$a;

    move-result-object v0

    const-string v1, "cloud.cpatrk.net"

    .line 293
    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/am$a;->host(Ljava/lang/String;)Lcom/tendcloud/tenddata/am$a;

    move-result-object v0

    sget-object v1, Lcom/tendcloud/tenddata/aa;->D:Ljava/lang/String;

    .line 294
    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/am$a;->url(Ljava/lang/String;)Lcom/tendcloud/tenddata/am$a;

    move-result-object v0

    sget-object v1, Lcom/tendcloud/tenddata/aq;->a:Lcom/tendcloud/tenddata/aq;

    .line 295
    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/am$a;->method(Lcom/tendcloud/tenddata/aq;)Lcom/tendcloud/tenddata/am$a;

    move-result-object v0

    .line 296
    invoke-virtual {v0}, Lcom/tendcloud/tenddata/am$a;->build()Lcom/tendcloud/tenddata/am;

    move-result-object v0

    .line 292
    invoke-static {v0}, Lcom/tendcloud/tenddata/al;->b(Lcom/tendcloud/tenddata/am;)Lcom/tendcloud/tenddata/ar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 298
    invoke-virtual {v0}, Lcom/tendcloud/tenddata/ar;->b()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 301
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/ar;->c()[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 304
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "GDPRregion"

    .line 305
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/tendcloud/tenddata/bh;->p:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :catchall_0
    :cond_1
    :goto_0
    return-void
.end method

.method private g()V
    .locals 3

    .line 364
    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/bh;->h:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 365
    sget-object v0, Lcom/tendcloud/tenddata/bh;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/tendcloud/tenddata/n;->b(Ljava/lang/String;)Ljava/io/RandomAccessFile;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tendcloud/tenddata/bh;->a(Ljava/io/RandomAccessFile;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 367
    invoke-static {v0}, Lcom/tendcloud/tenddata/y;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 368
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    :cond_0
    if-eqz v1, :cond_1

    .line 370
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 371
    iput-object v1, p0, Lcom/tendcloud/tenddata/bh;->h:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method private h()V
    .locals 4

    .line 383
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/bh;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/tendcloud/tenddata/n;->getFileLock(Ljava/lang/String;)V

    .line 384
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    sget-object v1, Lcom/tendcloud/tenddata/bh;->j:Ljava/lang/String;

    const-string v2, "TDpref_config"

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/tendcloud/tenddata/s;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 388
    invoke-static {v0}, Lcom/tendcloud/tenddata/y;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 389
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 391
    :cond_0
    invoke-direct {p0, v1}, Lcom/tendcloud/tenddata/bh;->b(Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    :catchall_0
    sget-object v0, Lcom/tendcloud/tenddata/bh;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/tendcloud/tenddata/n;->releaseFileLock(Ljava/lang/String;)V

    return-void
.end method

.method private i()V
    .locals 6

    .line 573
    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/bh;->h:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 574
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 575
    iget-object v1, p0, Lcom/tendcloud/tenddata/bh;->h:Lorg/json/JSONObject;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 576
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 577
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 578
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 579
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 580
    iget-object v5, p0, Lcom/tendcloud/tenddata/bh;->g:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 581
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 585
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 586
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catchall_0
    :cond_3
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 1

    const/4 v0, 0x0

    .line 462
    invoke-virtual {p0, p1, v0, v0}, Lcom/tendcloud/tenddata/bh;->a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONArray;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 471
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 472
    sget-boolean v5, Lcom/tendcloud/tenddata/bh;->w:Z

    if-nez v5, :cond_0

    return-object v4

    .line 477
    :cond_0
    :try_start_0
    sget-boolean v5, Lcom/tendcloud/tenddata/ab;->q:Z

    if-eqz v5, :cond_1

    return-object v4

    .line 481
    :cond_1
    sget-boolean v5, Lcom/tendcloud/tenddata/bh;->q:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    sget-boolean v5, Lcom/tendcloud/tenddata/bh;->r:Z

    if-eqz v5, :cond_3

    .line 482
    sget-boolean v1, Lcom/tendcloud/tenddata/bh;->p:Z

    if-eqz v1, :cond_2

    return-object v6

    :cond_2
    return-object v4

    .line 491
    :cond_3
    iget-object v5, v0, Lcom/tendcloud/tenddata/bh;->f:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 494
    sget-boolean v1, Lcom/tendcloud/tenddata/bh;->o:Z

    if-eqz v1, :cond_4

    return-object v4

    :cond_4
    return-object v6

    :cond_5
    const/4 v5, 0x1

    if-eqz v2, :cond_8

    if-eqz v3, :cond_8

    .line 505
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    return-object v4

    .line 509
    :cond_6
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    return-object v6

    .line 513
    :cond_7
    invoke-virtual {v3, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 517
    :cond_8
    iget-object v2, v0, Lcom/tendcloud/tenddata/bh;->f:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 518
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 520
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 523
    invoke-direct/range {p0 .. p0}, Lcom/tendcloud/tenddata/bh;->g()V

    .line 525
    :cond_9
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 526
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 527
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 528
    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "st"

    .line 529
    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    const-string v12, "et"

    .line 530
    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    const-string v14, "cn"

    .line 531
    invoke-virtual {v9, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 533
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    cmp-long v16, v14, v10

    if-ltz v16, :cond_9

    cmp-long v10, v14, v12

    if-gtz v10, :cond_9

    if-gtz v9, :cond_a

    goto :goto_0

    .line 540
    :cond_a
    iget-object v10, v0, Lcom/tendcloud/tenddata/bh;->h:Lorg/json/JSONObject;

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 541
    iget-object v10, v0, Lcom/tendcloud/tenddata/bh;->h:Lorg/json/JSONObject;

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 542
    invoke-virtual {v10, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 543
    invoke-virtual {v10, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    if-ge v11, v9, :cond_9

    .line 544
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v4, v9}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 545
    invoke-virtual {v10, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    add-int/2addr v9, v5

    invoke-virtual {v10, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 546
    iget-object v8, v0, Lcom/tendcloud/tenddata/bh;->h:Lorg/json/JSONObject;

    invoke-virtual {v8, v1, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 549
    :cond_b
    iget-object v9, v0, Lcom/tendcloud/tenddata/bh;->h:Lorg/json/JSONObject;

    invoke-virtual {v10, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v9, v1, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 550
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v4, v8}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    goto :goto_0

    .line 554
    :cond_c
    iget-object v9, v0, Lcom/tendcloud/tenddata/bh;->h:Lorg/json/JSONObject;

    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v10, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v9, v1, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 555
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v4, v8}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    goto/16 :goto_0

    .line 562
    :cond_d
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_e

    return-object v6

    :catchall_0
    :cond_e
    return-object v4
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V
    .locals 5

    .line 152
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "appId"

    .line 153
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    invoke-static {p2}, Lcom/tendcloud/tenddata/y;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p2, "Default"

    :cond_0
    const-string p1, "channelId"

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Features"

    .line 155
    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    invoke-direct {p0, p3}, Lcom/tendcloud/tenddata/bh;->a(Lcom/tendcloud/tenddata/a;)I

    move-result p1

    iput p1, p0, Lcom/tendcloud/tenddata/bh;->x:I

    .line 161
    invoke-direct {p0}, Lcom/tendcloud/tenddata/bh;->d()V

    .line 163
    invoke-static {p3}, Lcom/tendcloud/tenddata/i;->e(Lcom/tendcloud/tenddata/a;)J

    move-result-wide p1

    const-wide/16 v1, 0x1

    const/4 p3, 0x1

    const/4 v3, 0x0

    cmp-long v4, p1, v1

    if-nez v4, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    sput-boolean p1, Lcom/tendcloud/tenddata/bh;->q:Z

    const/4 p2, 0x3

    if-eqz p1, :cond_3

    .line 166
    sget-object p1, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/tendcloud/tenddata/o;->h(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 168
    sget-object p1, Lcom/tendcloud/tenddata/w;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/tendcloud/tenddata/bh$2;

    invoke-direct {v1, p0}, Lcom/tendcloud/tenddata/bh$2;-><init>(Lcom/tendcloud/tenddata/bh;)V

    invoke-virtual {p1, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 174
    iget-object p1, p0, Lcom/tendcloud/tenddata/bh;->y:Landroid/os/Handler;

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    const-wide/16 v0, 0x1388

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 175
    sput-boolean p3, Lcom/tendcloud/tenddata/bh;->w:Z

    return-void

    .line 178
    :cond_2
    sput-boolean v3, Lcom/tendcloud/tenddata/bh;->r:Z

    .line 183
    :cond_3
    sget-object p1, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/tendcloud/tenddata/o;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 184
    sget-object v1, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/tendcloud/tenddata/o;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 185
    invoke-static {p1}, Lcom/tendcloud/tenddata/y;->b(Ljava/lang/String;)Z

    move-result v2

    const-string v4, ""

    if-eqz v2, :cond_4

    move-object v2, v4

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_1
    sput-object v2, Lcom/tendcloud/tenddata/bh;->s:Ljava/lang/String;

    .line 186
    invoke-static {p1}, Lcom/tendcloud/tenddata/y;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object p1, v4

    goto :goto_2

    :cond_5
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :goto_2
    sput-object p1, Lcom/tendcloud/tenddata/bh;->t:Ljava/lang/String;

    .line 187
    invoke-static {v1}, Lcom/tendcloud/tenddata/y;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    move-object p1, v4

    goto :goto_3

    :cond_6
    invoke-virtual {v1, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :goto_3
    sput-object p1, Lcom/tendcloud/tenddata/bh;->u:Ljava/lang/String;

    .line 188
    invoke-static {v1}, Lcom/tendcloud/tenddata/y;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    :goto_4
    sput-object v4, Lcom/tendcloud/tenddata/bh;->v:Ljava/lang/String;

    .line 189
    sget-object p1, Lcom/tendcloud/tenddata/bh;->s:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/bh;->b(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_9

    sget-object p1, Lcom/tendcloud/tenddata/bh;->u:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/bh;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_5

    :cond_8
    const/4 p1, 0x0

    goto :goto_6

    :cond_9
    :goto_5
    const/4 p1, 0x1

    :goto_6
    sput-boolean p1, Lcom/tendcloud/tenddata/bh;->o:Z

    .line 192
    invoke-direct {p0}, Lcom/tendcloud/tenddata/bh;->h()V

    .line 195
    :try_start_0
    sget-boolean p1, Lcom/tendcloud/tenddata/ab;->q:Z

    if-nez p1, :cond_a

    invoke-direct {p0}, Lcom/tendcloud/tenddata/bh;->e()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 196
    :cond_a
    iget-object p1, p0, Lcom/tendcloud/tenddata/bh;->y:Landroid/os/Handler;

    invoke-virtual {p1, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 197
    iget-object p2, p0, Lcom/tendcloud/tenddata/bh;->y:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    :catchall_0
    :cond_b
    sput-boolean p3, Lcom/tendcloud/tenddata/bh;->w:Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 647
    sget-object v0, Lcom/tendcloud/tenddata/bh;->i:Ljava/lang/String;

    return-object v0
.end method

.method public c()V
    .locals 2

    .line 668
    sget-object v0, Lcom/tendcloud/tenddata/bh;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/tendcloud/tenddata/n;->b(Ljava/lang/String;)Ljava/io/RandomAccessFile;

    move-result-object v0

    iget-object v1, p0, Lcom/tendcloud/tenddata/bh;->h:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/tendcloud/tenddata/bh;->a(Ljava/io/RandomAccessFile;Ljava/lang/String;)V

    .line 669
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/bh;->h:Lorg/json/JSONObject;

    return-void
.end method
