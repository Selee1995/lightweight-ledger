.class public Lcom/tendcloud/tenddata/bc;
.super Ljava/lang/Object;
.source "td"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tendcloud/tenddata/bc$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "https://api.talkingdata.com/adt/openapi/rest/socialSharing/getShortUrl"

.field private static final b:Ljava/lang/String; = "hAF3uVnSYyk2qN3trMjXFVsijBTGcR"

.field private static c:Lcom/tendcloud/tenddata/bc;


# instance fields
.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/tendcloud/tenddata/bc;->d:Ljava/util/Map;

    return-void
.end method

.method public static a()Lcom/tendcloud/tenddata/bc;
    .locals 2

    .line 45
    sget-object v0, Lcom/tendcloud/tenddata/bc;->c:Lcom/tendcloud/tenddata/bc;

    if-nez v0, :cond_1

    .line 46
    const-class v0, Lcom/tendcloud/tenddata/bc;

    monitor-enter v0

    .line 47
    :try_start_0
    sget-object v1, Lcom/tendcloud/tenddata/bc;->c:Lcom/tendcloud/tenddata/bc;

    if-nez v1, :cond_0

    .line 48
    new-instance v1, Lcom/tendcloud/tenddata/bc;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/bc;-><init>()V

    sput-object v1, Lcom/tendcloud/tenddata/bc;->c:Lcom/tendcloud/tenddata/bc;

    .line 50
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 52
    :cond_1
    :goto_0
    sget-object v0, Lcom/tendcloud/tenddata/bc;->c:Lcom/tendcloud/tenddata/bc;

    return-object v0
.end method

.method static synthetic a(Lcom/tendcloud/tenddata/bc;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/tendcloud/tenddata/bc;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pageUrl"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "shortUrl"

    .line 121
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "is_retargeting"

    .line 122
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "hAF3uVnSYyk2qN3trMjXFVsijBTGcR"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 125
    invoke-static {p1}, Lcom/tendcloud/tenddata/y;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/tendcloud/tenddata/bc;)Ljava/util/Map;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/tendcloud/tenddata/bc;->d:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/util/Map;)Lcom/tendcloud/tenddata/bc;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/tendcloud/tenddata/bc;"
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lcom/tendcloud/tenddata/bc;->d:Ljava/util/Map;

    return-object p0
.end method

.method public getShortUrl(Lcom/tendcloud/tenddata/TDGenerateUrl;)V
    .locals 2

    .line 62
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tendcloud/tenddata/bc$1;

    invoke-direct {v1, p0, p1}, Lcom/tendcloud/tenddata/bc$1;-><init>(Lcom/tendcloud/tenddata/bc;Lcom/tendcloud/tenddata/TDGenerateUrl;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 116
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
