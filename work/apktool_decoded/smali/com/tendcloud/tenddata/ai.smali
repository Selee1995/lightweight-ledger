.class public Lcom/tendcloud/tenddata/ai;
.super Ljava/lang/Object;
.source "td"


# static fields
.field static final a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/ai;->a:Ljava/util/Queue;

    const-string v1, "tdsdk.xdrig.com"

    .line 41
    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    const-string v1, "tdsdk-ip6.xdrig.com"

    .line 42
    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    const-string v1, "tdsdk-ip6.cpatrk.com"

    .line 43
    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Ljava/lang/String;
    .locals 1

    .line 36
    sget-object v0, Lcom/tendcloud/tenddata/ai;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static a(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;
    .locals 3

    .line 18
    invoke-static {}, Lcom/tendcloud/tenddata/o;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 21
    :cond_0
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/URL;->getPort()I

    move-result v2

    invoke-virtual {p0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p1, v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method static a(Ljava/lang/String;)V
    .locals 2

    .line 26
    sget-object v0, Lcom/tendcloud/tenddata/ai;->a:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "host existed..."

    aput-object v1, p0, v0

    .line 27
    invoke-static {p0}, Lcom/tendcloud/tenddata/h;->eForInternal([Ljava/lang/String;)V

    return-void

    .line 30
    :cond_0
    invoke-interface {v0, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method
