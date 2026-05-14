.class public Lcom/tendcloud/tenddata/bl;
.super Ljava/lang/Object;
.source "td"


# static fields
.field private static volatile a:Lcom/tendcloud/tenddata/bl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 58
    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/z;->a()Lcom/tendcloud/tenddata/z;

    move-result-object v0

    invoke-static {}, Lcom/tendcloud/tenddata/bl;->a()Lcom/tendcloud/tenddata/bl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/z;->register(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/tendcloud/tenddata/bl;
    .locals 2

    .line 43
    sget-object v0, Lcom/tendcloud/tenddata/bl;->a:Lcom/tendcloud/tenddata/bl;

    if-nez v0, :cond_1

    .line 44
    const-class v0, Lcom/tendcloud/tenddata/bl;

    monitor-enter v0

    .line 45
    :try_start_0
    sget-object v1, Lcom/tendcloud/tenddata/bl;->a:Lcom/tendcloud/tenddata/bl;

    if-nez v1, :cond_0

    .line 46
    new-instance v1, Lcom/tendcloud/tenddata/bl;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/bl;-><init>()V

    sput-object v1, Lcom/tendcloud/tenddata/bl;->a:Lcom/tendcloud/tenddata/bl;

    .line 48
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 50
    :cond_1
    :goto_0
    sget-object v0, Lcom/tendcloud/tenddata/bl;->a:Lcom/tendcloud/tenddata/bl;

    return-object v0
.end method


# virtual methods
.method public final onTDEBEventIndustry(Lcom/tendcloud/tenddata/zz$a;)V
    .locals 5

    if-eqz p1, :cond_2

    .line 18
    :try_start_0
    iget-object v0, p1, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v1, "apiType"

    .line 20
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x11

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 24
    :cond_0
    new-instance v0, Lcom/tendcloud/tenddata/bx;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/bx;-><init>()V

    .line 25
    iget-object v1, p1, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v2, "data"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 26
    iget-object v2, p1, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v3, "service"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tendcloud/tenddata/a;

    .line 27
    iget-object v3, p1, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v4, "domain"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/tendcloud/tenddata/bx;->b:Ljava/lang/String;

    .line 28
    iget-object p1, p1, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v3, "action"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/tendcloud/tenddata/bx;->c:Ljava/lang/String;

    .line 29
    instance-of p1, v1, Ljava/util/Map;

    if-eqz p1, :cond_1

    .line 30
    check-cast v1, Ljava/util/Map;

    iput-object v1, v0, Lcom/tendcloud/tenddata/bx;->d:Ljava/util/Map;

    .line 32
    :cond_1
    iput-object v2, v0, Lcom/tendcloud/tenddata/bx;->a:Lcom/tendcloud/tenddata/a;

    .line 33
    invoke-static {}, Lcom/tendcloud/tenddata/z;->a()Lcom/tendcloud/tenddata/z;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/z;->post(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    :goto_0
    return-void
.end method
