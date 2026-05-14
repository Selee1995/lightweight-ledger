.class public Lcom/tendcloud/tenddata/db;
.super Lcom/tendcloud/tenddata/cw;
.source "td"


# static fields
.field public static a:Lcom/tendcloud/tenddata/da; = null

.field private static final c:Ljava/lang/String; = "type"

.field private static final d:Ljava/lang/String; = "deviceId"

.field private static final e:Ljava/lang/String; = "runtimeConfig"

.field private static final f:Ljava/lang/String; = "hardwareConfig"

.field private static final g:Ljava/lang/String; = "softwareConfig"


# instance fields
.field private h:Lcom/tendcloud/tenddata/dc;

.field private i:Lcom/tendcloud/tenddata/cz;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/tendcloud/tenddata/cw;-><init>()V

    .line 14
    new-instance v0, Lcom/tendcloud/tenddata/dc;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/dc;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/db;->h:Lcom/tendcloud/tenddata/dc;

    .line 15
    new-instance v0, Lcom/tendcloud/tenddata/cz;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/cz;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/db;->i:Lcom/tendcloud/tenddata/cz;

    .line 19
    invoke-direct {p0}, Lcom/tendcloud/tenddata/db;->d()V

    return-void
.end method

.method private d()V
    .locals 2

    const-string v0, "type"

    const-string v1, "mobile"

    .line 23
    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/db;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    new-instance v0, Lcom/tendcloud/tenddata/da;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/da;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/db;->a:Lcom/tendcloud/tenddata/da;

    .line 25
    invoke-virtual {v0}, Lcom/tendcloud/tenddata/da;->b()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "deviceId"

    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/db;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 27
    new-instance v0, Lcom/tendcloud/tenddata/de;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/de;-><init>()V

    .line 28
    invoke-virtual {v0}, Lcom/tendcloud/tenddata/de;->b()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "runtimeConfig"

    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/db;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 30
    iget-object v0, p0, Lcom/tendcloud/tenddata/db;->i:Lcom/tendcloud/tenddata/cz;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/cz;->b()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "hardwareConfig"

    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/db;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    iget-object v0, p0, Lcom/tendcloud/tenddata/db;->h:Lcom/tendcloud/tenddata/dc;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/dc;->b()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "softwareConfig"

    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/db;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/tendcloud/tenddata/dc;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/tendcloud/tenddata/db;->h:Lcom/tendcloud/tenddata/dc;

    return-object v0
.end method

.method public c()Lcom/tendcloud/tenddata/cz;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/tendcloud/tenddata/db;->i:Lcom/tendcloud/tenddata/cz;

    return-object v0
.end method
