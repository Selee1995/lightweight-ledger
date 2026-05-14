.class public Lcom/tendcloud/tenddata/dd;
.super Lcom/tendcloud/tenddata/cw;
.source "td"


# static fields
.field private static volatile j:Lcom/tendcloud/tenddata/dd;


# instance fields
.field private final a:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private volatile f:Ljava/lang/String;

.field private volatile g:Ljava/lang/String;

.field private volatile h:Ljava/lang/String;

.field private volatile i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/tendcloud/tenddata/cw;-><init>()V

    const-string v0, "oaid"

    .line 8
    iput-object v0, p0, Lcom/tendcloud/tenddata/dd;->a:Ljava/lang/String;

    const-string v0, "vaid"

    .line 9
    iput-object v0, p0, Lcom/tendcloud/tenddata/dd;->c:Ljava/lang/String;

    const-string v0, "aaid"

    .line 10
    iput-object v0, p0, Lcom/tendcloud/tenddata/dd;->d:Ljava/lang/String;

    const-string v0, "udid"

    .line 11
    iput-object v0, p0, Lcom/tendcloud/tenddata/dd;->e:Ljava/lang/String;

    const-string v0, ""

    .line 21
    iput-object v0, p0, Lcom/tendcloud/tenddata/dd;->f:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/tendcloud/tenddata/dd;->g:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/tendcloud/tenddata/dd;->h:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/tendcloud/tenddata/dd;->i:Ljava/lang/String;

    return-void
.end method

.method public static a()Lcom/tendcloud/tenddata/dd;
    .locals 2

    .line 32
    sget-object v0, Lcom/tendcloud/tenddata/dd;->j:Lcom/tendcloud/tenddata/dd;

    if-nez v0, :cond_1

    .line 33
    const-class v0, Lcom/tendcloud/tenddata/dd;

    monitor-enter v0

    .line 34
    :try_start_0
    sget-object v1, Lcom/tendcloud/tenddata/dd;->j:Lcom/tendcloud/tenddata/dd;

    if-nez v1, :cond_0

    .line 35
    new-instance v1, Lcom/tendcloud/tenddata/dd;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/dd;-><init>()V

    sput-object v1, Lcom/tendcloud/tenddata/dd;->j:Lcom/tendcloud/tenddata/dd;

    .line 37
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 39
    :cond_1
    :goto_0
    sget-object v0, Lcom/tendcloud/tenddata/dd;->j:Lcom/tendcloud/tenddata/dd;

    return-object v0
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/tendcloud/tenddata/dd;->f:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/tendcloud/tenddata/dd;->g:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/tendcloud/tenddata/dd;->h:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/tendcloud/tenddata/dd;->i:Ljava/lang/String;

    return-object v0
.end method

.method public setAAID(Ljava/lang/String;)V
    .locals 1

    .line 43
    iput-object p1, p0, Lcom/tendcloud/tenddata/dd;->g:Ljava/lang/String;

    const-string v0, "aaid"

    .line 44
    invoke-virtual {p0, v0, p1}, Lcom/tendcloud/tenddata/dd;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setOAID(Ljava/lang/String;)V
    .locals 1

    .line 48
    iput-object p1, p0, Lcom/tendcloud/tenddata/dd;->f:Ljava/lang/String;

    const-string v0, "oaid"

    .line 49
    invoke-virtual {p0, v0, p1}, Lcom/tendcloud/tenddata/dd;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setUDID(Ljava/lang/String;)V
    .locals 1

    .line 58
    iput-object p1, p0, Lcom/tendcloud/tenddata/dd;->i:Ljava/lang/String;

    const-string v0, "udid"

    .line 59
    invoke-virtual {p0, v0, p1}, Lcom/tendcloud/tenddata/dd;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setVAID(Ljava/lang/String;)V
    .locals 1

    .line 53
    iput-object p1, p0, Lcom/tendcloud/tenddata/dd;->h:Ljava/lang/String;

    const-string v0, "vaid"

    .line 54
    invoke-virtual {p0, v0, p1}, Lcom/tendcloud/tenddata/dd;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
