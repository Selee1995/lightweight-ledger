.class public Lcom/tendcloud/tenddata/cx;
.super Lcom/tendcloud/tenddata/cw;
.source "td"


# static fields
.field public static final a:Ljava/lang/String; = "TalkingData"

.field public static final c:Ljava/lang/String; = "SaaS"

.field public static final d:I = 0x0

.field public static final e:I = 0x1

.field public static final f:I = 0x2

.field public static final g:I = 0x3

.field public static final h:I = 0x4

.field public static final i:I = 0x5

.field public static final j:I = 0x6

.field public static final k:I = 0x7

.field public static final l:I = 0x8

.field private static n:Ljava/lang/String; = ""

.field private static o:I = 0x4


# instance fields
.field private final m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 50
    invoke-direct {p0}, Lcom/tendcloud/tenddata/cw;-><init>()V

    const-string v0, "Android"

    .line 19
    iput-object v0, p0, Lcom/tendcloud/tenddata/cx;->m:Ljava/lang/String;

    const/4 v1, 0x5

    .line 51
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "version"

    invoke-virtual {p0, v2, v1}, Lcom/tendcloud/tenddata/cx;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 52
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "minorVersion"

    invoke-virtual {p0, v2, v1}, Lcom/tendcloud/tenddata/cx;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v1, 0x10

    .line 53
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "build"

    invoke-virtual {p0, v2, v1}, Lcom/tendcloud/tenddata/cx;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "2378"

    .line 54
    invoke-static {v1}, Lcom/tendcloud/tenddata/y;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 56
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "jobNum"

    .line 57
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/tendcloud/tenddata/cx;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    :cond_0
    :goto_0
    const-string v1, "partner"

    const-string v2, "SaaS"

    .line 64
    invoke-virtual {p0, v1, v2}, Lcom/tendcloud/tenddata/cx;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "platform"

    .line 65
    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/cx;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "type"

    const-string v1, "TalkingData"

    .line 66
    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/cx;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 67
    sget-object v0, Lcom/tendcloud/tenddata/cx;->n:Ljava/lang/String;

    const-string v1, "framework"

    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/cx;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 68
    sget v0, Lcom/tendcloud/tenddata/cx;->o:I

    if-lez v0, :cond_1

    .line 69
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "from"

    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/cx;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 77
    sget-object v0, Lcom/tendcloud/tenddata/cx;->n:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 82
    iget-object v0, p0, Lcom/tendcloud/tenddata/cx;->b:Lorg/json/JSONObject;

    const-string v1, "features"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    goto :goto_0

    .line 86
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/cx;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 88
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 93
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    const-string v3, "name"

    .line 95
    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "version"

    .line 96
    invoke-virtual {v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "minorVersion"

    .line 97
    invoke-virtual {v2, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 101
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 103
    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/cx;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public setFrameWork(Ljava/lang/String;)V
    .locals 0

    .line 74
    sput-object p1, Lcom/tendcloud/tenddata/cx;->n:Ljava/lang/String;

    return-void
.end method
