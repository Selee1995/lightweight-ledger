.class public Lcom/tendcloud/tenddata/bk;
.super Ljava/lang/Object;
.source "td"


# static fields
.field private static volatile a:Lcom/tendcloud/tenddata/bk;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 65
    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/z;->a()Lcom/tendcloud/tenddata/z;

    move-result-object v0

    invoke-static {}, Lcom/tendcloud/tenddata/bk;->a()Lcom/tendcloud/tenddata/bk;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/z;->register(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/tendcloud/tenddata/bk;
    .locals 2

    .line 50
    sget-object v0, Lcom/tendcloud/tenddata/bk;->a:Lcom/tendcloud/tenddata/bk;

    if-nez v0, :cond_1

    .line 51
    const-class v0, Lcom/tendcloud/tenddata/bk;

    monitor-enter v0

    .line 52
    :try_start_0
    sget-object v1, Lcom/tendcloud/tenddata/bk;->a:Lcom/tendcloud/tenddata/bk;

    if-nez v1, :cond_0

    .line 53
    new-instance v1, Lcom/tendcloud/tenddata/bk;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/bk;-><init>()V

    sput-object v1, Lcom/tendcloud/tenddata/bk;->a:Lcom/tendcloud/tenddata/bk;

    .line 55
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 57
    :cond_1
    :goto_0
    sget-object v0, Lcom/tendcloud/tenddata/bk;->a:Lcom/tendcloud/tenddata/bk;

    return-object v0
.end method


# virtual methods
.method public final onTDEBEventIAP(Lcom/tendcloud/tenddata/zz$a;)V
    .locals 5

    if-eqz p1, :cond_2

    .line 20
    :try_start_0
    iget-object v0, p1, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v1, "apiType"

    .line 22
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 27
    :cond_0
    new-instance v0, Lcom/tendcloud/tenddata/bx;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/bx;-><init>()V

    .line 28
    iget-object v1, p1, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v2, "data"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 29
    iget-object v2, p1, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v3, "service"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tendcloud/tenddata/a;

    .line 30
    iget-object v3, p1, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v4, "domain"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/tendcloud/tenddata/bx;->b:Ljava/lang/String;

    .line 31
    iget-object p1, p1, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v3, "action"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/tendcloud/tenddata/bx;->c:Ljava/lang/String;

    .line 32
    instance-of p1, v1, Ljava/util/Map;

    if-eqz p1, :cond_1

    .line 33
    check-cast v1, Ljava/util/Map;

    iput-object v1, v0, Lcom/tendcloud/tenddata/bx;->d:Ljava/util/Map;

    .line 35
    :cond_1
    iput-object v2, v0, Lcom/tendcloud/tenddata/bx;->a:Lcom/tendcloud/tenddata/a;

    .line 36
    invoke-static {}, Lcom/tendcloud/tenddata/z;->a()Lcom/tendcloud/tenddata/z;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/z;->post(Ljava/lang/Object;)V

    .line 38
    new-instance p1, Lcom/tendcloud/tenddata/bw;

    invoke-direct {p1}, Lcom/tendcloud/tenddata/bw;-><init>()V

    .line 39
    iput-object v2, p1, Lcom/tendcloud/tenddata/bw;->a:Lcom/tendcloud/tenddata/a;

    .line 40
    sget-object v0, Lcom/tendcloud/tenddata/bw$a;->IMMEDIATELY:Lcom/tendcloud/tenddata/bw$a;

    iput-object v0, p1, Lcom/tendcloud/tenddata/bw;->b:Lcom/tendcloud/tenddata/bw$a;

    .line 41
    invoke-static {}, Lcom/tendcloud/tenddata/z;->a()Lcom/tendcloud/tenddata/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tendcloud/tenddata/z;->post(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    :goto_0
    return-void
.end method
