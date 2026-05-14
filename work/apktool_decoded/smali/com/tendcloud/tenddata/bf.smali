.class public Lcom/tendcloud/tenddata/bf;
.super Ljava/lang/Object;
.source "td"


# static fields
.field private static volatile a:Lcom/tendcloud/tenddata/bf;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 118
    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/z;->a()Lcom/tendcloud/tenddata/z;

    move-result-object v0

    invoke-static {}, Lcom/tendcloud/tenddata/bf;->a()Lcom/tendcloud/tenddata/bf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/z;->register(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/tendcloud/tenddata/bf;
    .locals 2

    .line 75
    sget-object v0, Lcom/tendcloud/tenddata/bf;->a:Lcom/tendcloud/tenddata/bf;

    if-nez v0, :cond_1

    .line 76
    const-class v0, Lcom/tendcloud/tenddata/bf;

    monitor-enter v0

    .line 77
    :try_start_0
    sget-object v1, Lcom/tendcloud/tenddata/bf;->a:Lcom/tendcloud/tenddata/bf;

    if-nez v1, :cond_0

    .line 78
    new-instance v1, Lcom/tendcloud/tenddata/bf;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/bf;-><init>()V

    sput-object v1, Lcom/tendcloud/tenddata/bf;->a:Lcom/tendcloud/tenddata/bf;

    .line 80
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 82
    :cond_1
    :goto_0
    sget-object v0, Lcom/tendcloud/tenddata/bf;->a:Lcom/tendcloud/tenddata/bf;

    return-object v0
.end method

.method private a(Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 86
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    if-eqz p1, :cond_3

    .line 89
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 93
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 94
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Number;

    if-eqz v3, :cond_2

    .line 95
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 97
    :cond_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tendcloud/tenddata/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tendcloud/tenddata/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x32

    if-ne v1, v2, :cond_1

    :catchall_0
    :cond_3
    return-object v0
.end method


# virtual methods
.method public final onTDEBEventAppEvent(Lcom/tendcloud/tenddata/zz$a;)V
    .locals 9

    const-string v0, "eventValue"

    const-string v1, "eventLabel"

    const-string v2, "value"

    if-eqz p1, :cond_6

    .line 22
    :try_start_0
    iget-object v3, p1, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    if-eqz v3, :cond_6

    iget-object v3, p1, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v4, "apiType"

    .line 24
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    goto/16 :goto_0

    .line 28
    :cond_0
    iget-object v3, p1, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v4, "service"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tendcloud/tenddata/a;

    .line 30
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    .line 31
    iget-object v5, p1, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v6, "eventId"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 32
    iget-object v6, p1, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 34
    sget-object v7, Lcom/tendcloud/tenddata/ab;->d:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    if-lez v7, :cond_1

    if-eqz v5, :cond_1

    .line 35
    sget-object v7, Lcom/tendcloud/tenddata/ab;->d:Ljava/util/Map;

    invoke-interface {v4, v7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 37
    :cond_1
    iget-object v7, p1, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v8, "map"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 38
    instance-of v8, v7, Ljava/util/Map;

    if-eqz v8, :cond_2

    .line 39
    check-cast v7, Ljava/util/Map;

    invoke-interface {v4, v7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 42
    :cond_2
    new-instance v7, Lcom/tendcloud/tenddata/bx;

    invoke-direct {v7}, Lcom/tendcloud/tenddata/bx;-><init>()V

    const-string v8, "appEvent"

    .line 43
    iput-object v8, v7, Lcom/tendcloud/tenddata/bx;->b:Ljava/lang/String;

    .line 44
    iput-object v5, v7, Lcom/tendcloud/tenddata/bx;->c:Ljava/lang/String;

    .line 45
    iput-object v3, v7, Lcom/tendcloud/tenddata/bx;->a:Lcom/tendcloud/tenddata/a;

    .line 47
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    .line 48
    iget-object v5, p1, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 50
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_3
    invoke-direct {p0, v4}, Lcom/tendcloud/tenddata/bf;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    const-string v4, "eventParam"

    .line 54
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    instance-of v1, v6, Ljava/lang/Double;

    if-eqz v1, :cond_4

    .line 56
    invoke-interface {v3, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    :cond_4
    iget-object p1, p1, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 60
    invoke-interface {v3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :cond_5
    iput-object v3, v7, Lcom/tendcloud/tenddata/bx;->d:Ljava/util/Map;

    .line 63
    invoke-static {}, Lcom/tendcloud/tenddata/z;->a()Lcom/tendcloud/tenddata/z;

    move-result-object p1

    invoke-virtual {p1, v7}, Lcom/tendcloud/tenddata/z;->post(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_6
    :goto_0
    return-void
.end method
