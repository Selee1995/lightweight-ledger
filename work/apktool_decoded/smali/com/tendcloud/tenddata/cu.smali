.class public Lcom/tendcloud/tenddata/cu;
.super Lcom/tendcloud/tenddata/cw;
.source "td"


# static fields
.field private static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile f:Lcom/tendcloud/tenddata/cu;


# instance fields
.field private final d:[Ljava/lang/String;

.field private final e:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/cu;->a:Ljava/util/HashMap;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/cu;->c:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 166
    sput-object v0, Lcom/tendcloud/tenddata/cu;->f:Lcom/tendcloud/tenddata/cu;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .line 28
    invoke-direct {p0}, Lcom/tendcloud/tenddata/cw;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "PUSH"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "EAuth"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 24
    iput-object v1, p0, Lcom/tendcloud/tenddata/cu;->d:[Ljava/lang/String;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "APP"

    aput-object v2, v1, v3

    const-string v2, "TRACKING"

    aput-object v2, v1, v4

    const-string v2, "GAME"

    aput-object v2, v1, v0

    const/4 v0, 0x3

    const-string v2, "BG"

    aput-object v2, v1, v0

    const/4 v0, 0x4

    const-string v2, "SDK"

    aput-object v2, v1, v0

    .line 25
    iput-object v1, p0, Lcom/tendcloud/tenddata/cu;->e:[Ljava/lang/String;

    .line 29
    invoke-static {}, Lcom/tendcloud/tenddata/g;->a()Lcom/tendcloud/tenddata/g;

    move-result-object v0

    sget-object v1, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/g;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "displayName"

    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/cu;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 30
    invoke-static {}, Lcom/tendcloud/tenddata/g;->a()Lcom/tendcloud/tenddata/g;

    move-result-object v0

    sget-object v1, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/g;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "globalId"

    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/cu;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    invoke-static {}, Lcom/tendcloud/tenddata/i;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, "versionName"

    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/cu;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 32
    invoke-static {}, Lcom/tendcloud/tenddata/i;->j()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "versionCode"

    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/cu;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 33
    invoke-static {}, Lcom/tendcloud/tenddata/g;->a()Lcom/tendcloud/tenddata/g;

    move-result-object v0

    sget-object v1, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/g;->d(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "installTime"

    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/cu;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 34
    invoke-static {}, Lcom/tendcloud/tenddata/g;->a()Lcom/tendcloud/tenddata/g;

    move-result-object v0

    sget-object v1, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/g;->e(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "updateTime"

    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/cu;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static a()Lcom/tendcloud/tenddata/cu;
    .locals 2

    .line 169
    sget-object v0, Lcom/tendcloud/tenddata/cu;->f:Lcom/tendcloud/tenddata/cu;

    if-nez v0, :cond_1

    .line 170
    const-class v0, Lcom/tendcloud/tenddata/cn;

    monitor-enter v0

    .line 171
    :try_start_0
    sget-object v1, Lcom/tendcloud/tenddata/cu;->f:Lcom/tendcloud/tenddata/cu;

    if-nez v1, :cond_0

    .line 172
    new-instance v1, Lcom/tendcloud/tenddata/cu;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/cu;-><init>()V

    sput-object v1, Lcom/tendcloud/tenddata/cu;->f:Lcom/tendcloud/tenddata/cu;

    .line 174
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 177
    :cond_1
    :goto_0
    sget-object v0, Lcom/tendcloud/tenddata/cu;->f:Lcom/tendcloud/tenddata/cu;

    return-object v0
.end method

.method private a(Lcom/tendcloud/tenddata/a;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 102
    :try_start_0
    iget-object v1, p0, Lcom/tendcloud/tenddata/cu;->d:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/a;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 105
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "appKey"

    .line 106
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "service"

    .line 107
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 111
    :try_start_1
    invoke-static {v0}, Lcom/tendcloud/tenddata/y;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    invoke-virtual {p0, v1, p1}, Lcom/tendcloud/tenddata/cu;->a(Ljava/lang/Object;Lcom/tendcloud/tenddata/a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_0
    move-object v0, v1

    goto :goto_0

    .line 114
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/tendcloud/tenddata/cu;->e:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/a;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 116
    sget-object v1, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/tendcloud/tenddata/ab;->a(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)Ljava/lang/String;

    move-result-object v0

    .line 118
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/tendcloud/tenddata/y;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 119
    invoke-virtual {p0, v0, p1}, Lcom/tendcloud/tenddata/cu;->a(Ljava/lang/Object;Lcom/tendcloud/tenddata/a;)V

    goto :goto_0

    .line 123
    :cond_2
    sget-object p1, Lcom/tendcloud/tenddata/cu;->a:Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/tendcloud/tenddata/cu;->c()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tendcloud/tenddata/a;

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/a;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, p1

    :catchall_1
    :cond_3
    :goto_0
    return-object v0
.end method

.method private c()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/tendcloud/tenddata/a;",
            ">;"
        }
    .end annotation

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    :try_start_0
    sget-object v1, Lcom/tendcloud/tenddata/cu;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 50
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 52
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 53
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tendcloud/tenddata/a;->valueOf(Ljava/lang/String;)Lcom/tendcloud/tenddata/a;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lcom/tendcloud/tenddata/a;)V
    .locals 1

    .line 39
    sget-object v0, Lcom/tendcloud/tenddata/cu;->a:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/tendcloud/tenddata/a;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Ljava/lang/Object;Lcom/tendcloud/tenddata/a;)V
    .locals 1

    .line 43
    sget-object v0, Lcom/tendcloud/tenddata/cu;->c:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/tendcloud/tenddata/a;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setAppChannel(Ljava/lang/String;)V
    .locals 1

    const-string v0, "channel"

    .line 159
    invoke-virtual {p0, v0, p1}, Lcom/tendcloud/tenddata/cu;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setSubmitAppId(Lcom/tendcloud/tenddata/a;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 69
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/cu;->a:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/a;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 70
    sget-object v1, Lcom/tendcloud/tenddata/cu;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 71
    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/cu;->a(Lcom/tendcloud/tenddata/a;)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    const-string p1, "appKey"

    .line 78
    invoke-virtual {p0, p1, v0}, Lcom/tendcloud/tenddata/cu;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method public setSubmitChannelId(Lcom/tendcloud/tenddata/a;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 135
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/cu;->c:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/a;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    .line 136
    sget-object v0, Lcom/tendcloud/tenddata/cu;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 137
    sget-object p1, Lcom/tendcloud/tenddata/cu;->c:Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/tendcloud/tenddata/cu;->c()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/a;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/a;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :cond_0
    const-string v0, "channel"

    .line 144
    invoke-virtual {p0, v0, p1}, Lcom/tendcloud/tenddata/cu;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    const-string p1, "Default"

    .line 153
    invoke-virtual {p0, p1}, Lcom/tendcloud/tenddata/cu;->setAppChannel(Ljava/lang/String;)V

    :catchall_0
    :goto_0
    return-void
.end method

.method public setUniqueId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "uniqueId"

    .line 163
    invoke-virtual {p0, v0, p1}, Lcom/tendcloud/tenddata/cu;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
