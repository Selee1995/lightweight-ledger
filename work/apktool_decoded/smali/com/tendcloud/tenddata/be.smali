.class public Lcom/tendcloud/tenddata/be;
.super Ljava/lang/Object;
.source "td"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tendcloud/tenddata/be$a;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/tendcloud/tenddata/be;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;

.field private static k:Ljava/lang/String;

.field private static l:Ljava/lang/String;

.field private static m:Ljava/lang/String;

.field private static n:Ljava/lang/String;

.field private static o:Ljava/lang/String;

.field private static p:Ljava/lang/String;

.field private static q:Ljava/lang/String;

.field private static r:Ljava/lang/String;

.field private static t:Ljava/lang/String;

.field private static z:Lorg/json/JSONObject;


# instance fields
.field private A:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/lang/String;

.field private u:Lcom/tendcloud/tenddata/be$a;

.field private v:Ljava/lang/String;

.field private w:I

.field private x:Ljava/lang/String;

.field private y:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 507
    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/z;->a()Lcom/tendcloud/tenddata/z;

    move-result-object v0

    invoke-static {}, Lcom/tendcloud/tenddata/be;->a()Lcom/tendcloud/tenddata/be;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/z;->register(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    const-string v0, "account"

    .line 517
    sput-object v0, Lcom/tendcloud/tenddata/be;->b:Ljava/lang/String;

    const-string v0, "accountId"

    .line 519
    sput-object v0, Lcom/tendcloud/tenddata/be;->c:Ljava/lang/String;

    const-string v0, "name"

    .line 520
    sput-object v0, Lcom/tendcloud/tenddata/be;->d:Ljava/lang/String;

    const-string v0, "gender"

    .line 521
    sput-object v0, Lcom/tendcloud/tenddata/be;->e:Ljava/lang/String;

    const-string v0, "age"

    .line 522
    sput-object v0, Lcom/tendcloud/tenddata/be;->f:Ljava/lang/String;

    const-string v0, "type"

    .line 523
    sput-object v0, Lcom/tendcloud/tenddata/be;->g:Ljava/lang/String;

    const-string v0, "accountCus"

    .line 524
    sput-object v0, Lcom/tendcloud/tenddata/be;->h:Ljava/lang/String;

    const-string v0, "property1"

    .line 525
    sput-object v0, Lcom/tendcloud/tenddata/be;->i:Ljava/lang/String;

    const-string v0, "property2"

    .line 526
    sput-object v0, Lcom/tendcloud/tenddata/be;->j:Ljava/lang/String;

    const-string v0, "property3"

    .line 527
    sput-object v0, Lcom/tendcloud/tenddata/be;->k:Ljava/lang/String;

    const-string v0, "property4"

    .line 528
    sput-object v0, Lcom/tendcloud/tenddata/be;->l:Ljava/lang/String;

    const-string v0, "property5"

    .line 529
    sput-object v0, Lcom/tendcloud/tenddata/be;->m:Ljava/lang/String;

    const-string v0, "property6"

    .line 530
    sput-object v0, Lcom/tendcloud/tenddata/be;->n:Ljava/lang/String;

    const-string v0, "property7"

    .line 531
    sput-object v0, Lcom/tendcloud/tenddata/be;->o:Ljava/lang/String;

    const-string v0, "property8"

    .line 532
    sput-object v0, Lcom/tendcloud/tenddata/be;->p:Ljava/lang/String;

    const-string v0, "property9"

    .line 533
    sput-object v0, Lcom/tendcloud/tenddata/be;->q:Ljava/lang/String;

    const-string v0, "property10"

    .line 534
    sput-object v0, Lcom/tendcloud/tenddata/be;->r:Ljava/lang/String;

    const-string v0, "default"

    .line 536
    sput-object v0, Lcom/tendcloud/tenddata/be;->t:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 537
    sget-object v0, Lcom/tendcloud/tenddata/be$a;->UNKNOWN:Lcom/tendcloud/tenddata/be$a;

    iput-object v0, p0, Lcom/tendcloud/tenddata/be;->u:Lcom/tendcloud/tenddata/be$a;

    .line 544
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/be;->A:Ljava/util/Map;

    return-void
.end method

.method public static a()Lcom/tendcloud/tenddata/be;
    .locals 2

    .line 492
    sget-object v0, Lcom/tendcloud/tenddata/be;->a:Lcom/tendcloud/tenddata/be;

    if-nez v0, :cond_1

    .line 493
    const-class v0, Lcom/tendcloud/tenddata/be;

    monitor-enter v0

    .line 494
    :try_start_0
    sget-object v1, Lcom/tendcloud/tenddata/be;->a:Lcom/tendcloud/tenddata/be;

    if-nez v1, :cond_0

    .line 495
    new-instance v1, Lcom/tendcloud/tenddata/be;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/be;-><init>()V

    sput-object v1, Lcom/tendcloud/tenddata/be;->a:Lcom/tendcloud/tenddata/be;

    .line 497
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 499
    :cond_1
    :goto_0
    sget-object v0, Lcom/tendcloud/tenddata/be;->a:Lcom/tendcloud/tenddata/be;

    return-object v0
.end method

.method private a(Lcom/tendcloud/tenddata/a;)V
    .locals 2

    .line 83
    :try_start_0
    new-instance v0, Lcom/tendcloud/tenddata/bw;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/bw;-><init>()V

    .line 84
    sget-object v1, Lcom/tendcloud/tenddata/bw$a;->IMMEDIATELY:Lcom/tendcloud/tenddata/bw$a;

    iput-object v1, v0, Lcom/tendcloud/tenddata/bw;->b:Lcom/tendcloud/tenddata/bw$a;

    .line 85
    iput-object p1, v0, Lcom/tendcloud/tenddata/bw;->a:Lcom/tendcloud/tenddata/a;

    .line 86
    invoke-static {}, Lcom/tendcloud/tenddata/z;->a()Lcom/tendcloud/tenddata/z;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/z;->post(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method protected static a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lcom/tendcloud/tenddata/a;)V
    .locals 1

    const/4 v0, 0x0

    .line 93
    invoke-static {p0, p1, p2, v0, p3}, Lcom/tendcloud/tenddata/be;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lcom/tendcloud/tenddata/a;)V

    return-void
.end method

.method protected static a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lcom/tendcloud/tenddata/a;)V
    .locals 1

    if-nez p4, :cond_0

    return-void

    :cond_0
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    .line 100
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_3

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 101
    new-instance v0, Lcom/tendcloud/tenddata/bx;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/bx;-><init>()V

    .line 102
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/tendcloud/tenddata/bx;->b:Ljava/lang/String;

    .line 103
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/tendcloud/tenddata/bx;->c:Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 104
    instance-of p0, p2, Ljava/util/Map;

    if-eqz p0, :cond_2

    .line 105
    check-cast p2, Ljava/util/Map;

    if-eqz p3, :cond_1

    const-string p0, "eventValue"

    .line 107
    invoke-interface {p2, p0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :cond_1
    iput-object p2, v0, Lcom/tendcloud/tenddata/bx;->d:Ljava/util/Map;

    .line 111
    :cond_2
    iput-object p4, v0, Lcom/tendcloud/tenddata/bx;->a:Lcom/tendcloud/tenddata/a;

    .line 112
    invoke-static {}, Lcom/tendcloud/tenddata/z;->a()Lcom/tendcloud/tenddata/z;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/tendcloud/tenddata/z;->post(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .line 274
    :try_start_0
    iput-object p1, p0, Lcom/tendcloud/tenddata/be;->s:Ljava/lang/String;

    .line 275
    invoke-static {p1}, Lcom/tendcloud/tenddata/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 278
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 279
    sget-object p1, Lcom/tendcloud/tenddata/be;->d:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 280
    sget-object p1, Lcom/tendcloud/tenddata/be;->d:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tendcloud/tenddata/be;->v:Ljava/lang/String;

    .line 282
    :cond_0
    sget-object p1, Lcom/tendcloud/tenddata/be;->e:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 283
    sget-object p1, Lcom/tendcloud/tenddata/be;->e:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tendcloud/tenddata/be$a;->valueOf(Ljava/lang/String;)Lcom/tendcloud/tenddata/be$a;

    move-result-object p1

    iput-object p1, p0, Lcom/tendcloud/tenddata/be;->u:Lcom/tendcloud/tenddata/be$a;

    .line 285
    :cond_1
    sget-object p1, Lcom/tendcloud/tenddata/be;->f:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 286
    sget-object p1, Lcom/tendcloud/tenddata/be;->f:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tendcloud/tenddata/be;->w:I

    .line 288
    :cond_2
    sget-object p1, Lcom/tendcloud/tenddata/be;->g:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 289
    sget-object p1, Lcom/tendcloud/tenddata/be;->g:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tendcloud/tenddata/be;->x:Ljava/lang/String;

    .line 291
    :cond_3
    sget-object p1, Lcom/tendcloud/tenddata/be;->h:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 292
    sget-object p1, Lcom/tendcloud/tenddata/be;->h:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/tendcloud/tenddata/be;->y:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_4
    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V
    .locals 3

    const-class v0, Lcom/tendcloud/tenddata/be;

    monitor-enter v0

    .line 357
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    sput-object v1, Lcom/tendcloud/tenddata/be;->z:Lorg/json/JSONObject;

    .line 358
    sput-object p0, Lcom/tendcloud/tenddata/be;->t:Ljava/lang/String;

    .line 359
    invoke-static {}, Lcom/tendcloud/tenddata/be;->g()Ljava/util/Map;

    move-result-object p0

    .line 360
    sget-object v1, Lcom/tendcloud/tenddata/be;->b:Ljava/lang/String;

    const-string v2, "roleCreate"

    invoke-static {v1, v2, p0, p1}, Lcom/tendcloud/tenddata/be;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lcom/tendcloud/tenddata/a;)V

    .line 361
    invoke-static {}, Lcom/tendcloud/tenddata/cr;->a()Lcom/tendcloud/tenddata/cr;

    move-result-object p1

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1, v1}, Lcom/tendcloud/tenddata/cr;->setSubprofile(Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    :catchall_0
    monitor-exit v0

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lcom/tendcloud/tenddata/a;)V
    .locals 8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, p6

    .line 124
    invoke-direct/range {v0 .. v7}, Lcom/tendcloud/tenddata/be;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lcom/tendcloud/tenddata/a;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lcom/tendcloud/tenddata/a;)V
    .locals 2

    .line 136
    :try_start_0
    invoke-direct {p0}, Lcom/tendcloud/tenddata/be;->c()V

    .line 138
    iget-object v0, p0, Lcom/tendcloud/tenddata/be;->s:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/tendcloud/tenddata/be;->A:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 141
    :cond_0
    iput-object p1, p0, Lcom/tendcloud/tenddata/be;->s:Ljava/lang/String;

    .line 142
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    .line 143
    sget-object v0, Lcom/tendcloud/tenddata/be;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/tendcloud/tenddata/be;->s:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    check-cast p2, Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    if-eqz p5, :cond_1

    const-string p2, "invitationCode"

    .line 146
    invoke-static {p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    invoke-interface {p1, p2, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    :cond_1
    iget-object p2, p0, Lcom/tendcloud/tenddata/be;->A:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 149
    new-instance p2, Lorg/json/JSONObject;

    iget-object p5, p0, Lcom/tendcloud/tenddata/be;->A:Ljava/util/Map;

    invoke-direct {p2, p5}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 150
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Lcom/tendcloud/tenddata/i;->setUniversalProfileInfo(Ljava/lang/String;)V

    .line 151
    invoke-static {}, Lcom/tendcloud/tenddata/cr;->a()Lcom/tendcloud/tenddata/cr;

    move-result-object p5

    invoke-virtual {p5, p2}, Lcom/tendcloud/tenddata/cr;->setProfile(Lorg/json/JSONObject;)V

    .line 152
    invoke-static {p4, p3, p1, p6, p7}, Lcom/tendcloud/tenddata/be;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lcom/tendcloud/tenddata/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private a(Ljava/lang/Object;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 73
    :try_start_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private b()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/be;->s:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 183
    iget-object v1, p0, Lcom/tendcloud/tenddata/be;->A:Ljava/util/Map;

    sget-object v2, Lcom/tendcloud/tenddata/be;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    :catchall_0
    :cond_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/be;->A:Ljava/util/Map;

    return-object v0
.end method

.method private static b(Lcom/tendcloud/tenddata/a;)V
    .locals 3

    .line 479
    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/be;->g()Ljava/util/Map;

    move-result-object v0

    .line 481
    invoke-static {}, Lcom/tendcloud/tenddata/cr;->a()Lcom/tendcloud/tenddata/cr;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lcom/tendcloud/tenddata/cr;->setSubprofile(Lorg/json/JSONObject;)V

    .line 483
    sget-object v1, Lcom/tendcloud/tenddata/be;->b:Ljava/lang/String;

    const-string v2, "roleUpdate"

    invoke-static {v1, v2, v0, p0}, Lcom/tendcloud/tenddata/be;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lcom/tendcloud/tenddata/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lcom/tendcloud/tenddata/a;)V
    .locals 2

    .line 166
    :try_start_0
    invoke-direct {p0}, Lcom/tendcloud/tenddata/be;->c()V

    .line 168
    invoke-direct {p0}, Lcom/tendcloud/tenddata/be;->b()Ljava/util/Map;

    move-result-object v0

    .line 169
    move-object v1, p1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 170
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 171
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/i;->setUniversalProfileInfo(Ljava/lang/String;)V

    .line 173
    invoke-static {}, Lcom/tendcloud/tenddata/cr;->a()Lcom/tendcloud/tenddata/cr;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/cr;->setProfile(Lorg/json/JSONObject;)V

    .line 174
    invoke-static {p3, p2, p1, p4}, Lcom/tendcloud/tenddata/be;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lcom/tendcloud/tenddata/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private c()V
    .locals 4

    .line 192
    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/i;->m()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 195
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 196
    sget-object v0, Lcom/tendcloud/tenddata/be;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    sget-object v0, Lcom/tendcloud/tenddata/be;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    iput-object v0, p0, Lcom/tendcloud/tenddata/be;->s:Ljava/lang/String;

    .line 199
    iget-object v2, p0, Lcom/tendcloud/tenddata/be;->A:Ljava/util/Map;

    sget-object v3, Lcom/tendcloud/tenddata/be;->c:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    :cond_0
    sget-object v0, Lcom/tendcloud/tenddata/be;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/tendcloud/tenddata/be;->A:Ljava/util/Map;

    sget-object v2, Lcom/tendcloud/tenddata/be;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    :cond_1
    sget-object v0, Lcom/tendcloud/tenddata/be;->g:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 205
    iget-object v0, p0, Lcom/tendcloud/tenddata/be;->A:Ljava/util/Map;

    sget-object v2, Lcom/tendcloud/tenddata/be;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    :cond_2
    sget-object v0, Lcom/tendcloud/tenddata/be;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 208
    iget-object v0, p0, Lcom/tendcloud/tenddata/be;->A:Ljava/util/Map;

    sget-object v2, Lcom/tendcloud/tenddata/be;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    :cond_3
    sget-object v0, Lcom/tendcloud/tenddata/be;->f:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 211
    iget-object v0, p0, Lcom/tendcloud/tenddata/be;->A:Ljava/util/Map;

    sget-object v2, Lcom/tendcloud/tenddata/be;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    :cond_4
    sget-object v0, Lcom/tendcloud/tenddata/be;->i:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 214
    iget-object v0, p0, Lcom/tendcloud/tenddata/be;->A:Ljava/util/Map;

    sget-object v2, Lcom/tendcloud/tenddata/be;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    :cond_5
    sget-object v0, Lcom/tendcloud/tenddata/be;->j:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 217
    iget-object v0, p0, Lcom/tendcloud/tenddata/be;->A:Ljava/util/Map;

    sget-object v2, Lcom/tendcloud/tenddata/be;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    :cond_6
    sget-object v0, Lcom/tendcloud/tenddata/be;->k:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 220
    iget-object v0, p0, Lcom/tendcloud/tenddata/be;->A:Ljava/util/Map;

    sget-object v2, Lcom/tendcloud/tenddata/be;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    :cond_7
    sget-object v0, Lcom/tendcloud/tenddata/be;->l:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 223
    iget-object v0, p0, Lcom/tendcloud/tenddata/be;->A:Ljava/util/Map;

    sget-object v2, Lcom/tendcloud/tenddata/be;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    :cond_8
    sget-object v0, Lcom/tendcloud/tenddata/be;->m:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 226
    iget-object v0, p0, Lcom/tendcloud/tenddata/be;->A:Ljava/util/Map;

    sget-object v2, Lcom/tendcloud/tenddata/be;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    :cond_9
    sget-object v0, Lcom/tendcloud/tenddata/be;->n:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 229
    iget-object v0, p0, Lcom/tendcloud/tenddata/be;->A:Ljava/util/Map;

    sget-object v2, Lcom/tendcloud/tenddata/be;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    :cond_a
    sget-object v0, Lcom/tendcloud/tenddata/be;->o:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 232
    iget-object v0, p0, Lcom/tendcloud/tenddata/be;->A:Ljava/util/Map;

    sget-object v2, Lcom/tendcloud/tenddata/be;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    :cond_b
    sget-object v0, Lcom/tendcloud/tenddata/be;->p:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 235
    iget-object v0, p0, Lcom/tendcloud/tenddata/be;->A:Ljava/util/Map;

    sget-object v2, Lcom/tendcloud/tenddata/be;->p:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    :cond_c
    sget-object v0, Lcom/tendcloud/tenddata/be;->q:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 238
    iget-object v0, p0, Lcom/tendcloud/tenddata/be;->A:Ljava/util/Map;

    sget-object v2, Lcom/tendcloud/tenddata/be;->q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    :cond_d
    sget-object v0, Lcom/tendcloud/tenddata/be;->r:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 241
    iget-object v0, p0, Lcom/tendcloud/tenddata/be;->A:Ljava/util/Map;

    sget-object v2, Lcom/tendcloud/tenddata/be;->r:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_e
    return-void
.end method

.method private d()V
    .locals 5

    .line 259
    :try_start_0
    invoke-direct {p0}, Lcom/tendcloud/tenddata/be;->f()Ljava/util/Map;

    move-result-object v0

    .line 260
    new-instance v1, Lcom/tendcloud/tenddata/zz$a;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/zz$a;-><init>()V

    .line 261
    iget-object v2, v1, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v3, "apiType"

    const/16 v4, 0x9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    iget-object v2, v1, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v3, "domain"

    sget-object v4, Lcom/tendcloud/tenddata/be;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    iget-object v2, v1, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v3, "action"

    const-string v4, "update"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    iget-object v2, v1, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v3, "data"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    invoke-static {}, Lcom/tendcloud/tenddata/zz;->c()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x66

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 266
    invoke-static {}, Lcom/tendcloud/tenddata/cr;->a()Lcom/tendcloud/tenddata/cr;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lcom/tendcloud/tenddata/cr;->setProfile(Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private static e()V
    .locals 2

    .line 423
    sget-object v0, Lcom/tendcloud/tenddata/be;->t:Ljava/lang/String;

    invoke-static {v0}, Lcom/tendcloud/tenddata/i;->setLastRoleName(Ljava/lang/String;)V

    .line 424
    sget-object v0, Lcom/tendcloud/tenddata/be;->t:Ljava/lang/String;

    sget-object v1, Lcom/tendcloud/tenddata/be;->z:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private f()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 428
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 430
    :try_start_0
    sget-object v1, Lcom/tendcloud/tenddata/be;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/tendcloud/tenddata/be;->s:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    iget v1, p0, Lcom/tendcloud/tenddata/be;->w:I

    if-eqz v1, :cond_0

    .line 432
    sget-object v2, Lcom/tendcloud/tenddata/be;->f:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v1, "UNKNOWN"

    .line 434
    iget-object v2, p0, Lcom/tendcloud/tenddata/be;->u:Lcom/tendcloud/tenddata/be$a;

    invoke-virtual {v2}, Lcom/tendcloud/tenddata/be$a;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 435
    sget-object v1, Lcom/tendcloud/tenddata/be;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/tendcloud/tenddata/be;->u:Lcom/tendcloud/tenddata/be$a;

    invoke-virtual {v2}, Lcom/tendcloud/tenddata/be$a;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    :cond_1
    iget-object v1, p0, Lcom/tendcloud/tenddata/be;->v:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 438
    sget-object v2, Lcom/tendcloud/tenddata/be;->d:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    :cond_2
    iget-object v1, p0, Lcom/tendcloud/tenddata/be;->x:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 441
    sget-object v2, Lcom/tendcloud/tenddata/be;->g:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    :cond_3
    iget-object v1, p0, Lcom/tendcloud/tenddata/be;->y:Lorg/json/JSONObject;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_4

    const-string v1, "custom"

    .line 444
    iget-object v2, p0, Lcom/tendcloud/tenddata/be;->y:Lorg/json/JSONObject;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_4
    return-object v0
.end method

.method private static g()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 453
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    :try_start_0
    const-string v1, "name"

    .line 455
    sget-object v2, Lcom/tendcloud/tenddata/be;->t:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    sget-object v1, Lcom/tendcloud/tenddata/be;->z:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "custom"

    .line 457
    sget-object v2, Lcom/tendcloud/tenddata/be;->z:Lorg/json/JSONObject;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-object v0
.end method

.method private static h()V
    .locals 3

    .line 467
    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/be;->g()Ljava/util/Map;

    move-result-object v0

    .line 469
    invoke-static {}, Lcom/tendcloud/tenddata/cr;->a()Lcom/tendcloud/tenddata/cr;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lcom/tendcloud/tenddata/cr;->setSubprofile(Lorg/json/JSONObject;)V

    const/4 v0, 0x0

    .line 471
    invoke-static {v0}, Lcom/tendcloud/tenddata/be;->b(Lcom/tendcloud/tenddata/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;I)V
    .locals 1

    monitor-enter p0

    .line 383
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/be;->z:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 384
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/be;->z:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 387
    :cond_0
    :try_start_1
    sget-object v0, Lcom/tendcloud/tenddata/be;->z:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 388
    invoke-static {}, Lcom/tendcloud/tenddata/be;->e()V

    .line 389
    invoke-static {}, Lcom/tendcloud/tenddata/be;->h()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 393
    :catchall_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 369
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/be;->z:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 370
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/be;->z:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 373
    :cond_0
    :try_start_1
    sget-object v0, Lcom/tendcloud/tenddata/be;->z:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 374
    invoke-static {}, Lcom/tendcloud/tenddata/be;->e()V

    .line 375
    invoke-static {}, Lcom/tendcloud/tenddata/be;->h()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 379
    :catchall_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Ljava/lang/String;I)V
    .locals 1

    monitor-enter p0

    .line 410
    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/be;->y:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 411
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/be;->y:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 414
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/tendcloud/tenddata/be;->y:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 415
    invoke-direct {p0}, Lcom/tendcloud/tenddata/be;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 419
    :catchall_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 397
    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/be;->y:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 398
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/be;->y:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 401
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/tendcloud/tenddata/be;->y:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 402
    invoke-direct {p0}, Lcom/tendcloud/tenddata/be;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 406
    :catchall_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onTDEBEventAccount(Lcom/tendcloud/tenddata/zz$a;)V
    .locals 9

    if-eqz p1, :cond_5

    .line 26
    :try_start_0
    iget-object v0, p1, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v1, "apiType"

    .line 28
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    .line 31
    :cond_0
    iget-object v0, p1, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v1, "account"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object v0, p1, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v1, "service"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/tendcloud/tenddata/a;

    .line 33
    iget-object v0, p1, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v1, "data"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 34
    iget-object v0, p1, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v1, "domain"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 35
    iget-object v0, p1, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v1, "action"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 36
    iget-object v0, p1, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v1, "immediate"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v4, :cond_4

    const-string v1, "login"

    .line 38
    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "register"

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "roleCreate"

    .line 44
    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 45
    iget-object p1, p1, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v0, "parameter"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 46
    invoke-static {p1, v8}, Lcom/tendcloud/tenddata/be;->a(Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V

    return-void

    :cond_2
    const-string p1, "update"

    .line 48
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 49
    invoke-direct {p0, v3, v4, v5, v8}, Lcom/tendcloud/tenddata/be;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lcom/tendcloud/tenddata/a;)V

    return-void

    .line 39
    :cond_3
    :goto_0
    iget-object v0, p1, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v1, "accountId"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 40
    iget-object v0, p1, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v1, "invitationCode"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 41
    iget-object p1, p1, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v0, "eventValue"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v1, p0

    .line 42
    invoke-direct/range {v1 .. v8}, Lcom/tendcloud/tenddata/be;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lcom/tendcloud/tenddata/a;)V

    return-void

    :cond_4
    if-eqz v4, :cond_5

    .line 57
    invoke-static {v5, v4, v3, v8}, Lcom/tendcloud/tenddata/be;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lcom/tendcloud/tenddata/a;)V

    .line 58
    invoke-direct {p0, v0}, Lcom/tendcloud/tenddata/be;->a(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 59
    invoke-direct {p0, v8}, Lcom/tendcloud/tenddata/be;->a(Lcom/tendcloud/tenddata/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_5
    :goto_1
    return-void
.end method

.method public setAccountType(Ljava/lang/String;)V
    .locals 1

    .line 345
    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/be;->x:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 346
    :cond_0
    iput-object p1, p0, Lcom/tendcloud/tenddata/be;->x:Ljava/lang/String;

    .line 347
    invoke-direct {p0}, Lcom/tendcloud/tenddata/be;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method public setAge(I)V
    .locals 1

    .line 333
    :try_start_0
    iget v0, p0, Lcom/tendcloud/tenddata/be;->w:I

    if-eq v0, p1, :cond_0

    .line 334
    iput p1, p0, Lcom/tendcloud/tenddata/be;->w:I

    .line 335
    invoke-direct {p0}, Lcom/tendcloud/tenddata/be;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public setGender(Lcom/tendcloud/tenddata/be$a;)V
    .locals 1

    .line 321
    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/be;->u:Lcom/tendcloud/tenddata/be$a;

    if-eq v0, p1, :cond_0

    .line 322
    iput-object p1, p0, Lcom/tendcloud/tenddata/be;->u:Lcom/tendcloud/tenddata/be$a;

    .line 323
    invoke-direct {p0}, Lcom/tendcloud/tenddata/be;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    .line 308
    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/be;->v:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 309
    :cond_0
    iput-object p1, p0, Lcom/tendcloud/tenddata/be;->v:Ljava/lang/String;

    .line 310
    invoke-direct {p0}, Lcom/tendcloud/tenddata/be;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method
