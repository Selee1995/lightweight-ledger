.class public Lcom/tendcloud/tenddata/dl;
.super Lorg/json/JSONObject;
.source "td"


# static fields
.field private static final a:Ljava/lang/String; = "category"

.field private static final b:Ljava/lang/String; = "content"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    return-void
.end method

.method public static a()Lcom/tendcloud/tenddata/dl;
    .locals 1

    .line 19
    new-instance v0, Lcom/tendcloud/tenddata/dl;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/dl;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/tendcloud/tenddata/dl;
    .locals 1

    :try_start_0
    const-string v0, "category"

    .line 24
    invoke-virtual {p0, v0, p1}, Lcom/tendcloud/tenddata/dl;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "set category error "

    .line 26
    invoke-static {v0, p1}, Lcom/tendcloud/tenddata/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/tendcloud/tenddata/dl;
    .locals 1

    :try_start_0
    const-string v0, "content"

    .line 33
    invoke-virtual {p0, v0, p1}, Lcom/tendcloud/tenddata/dl;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "set content error "

    .line 35
    invoke-static {v0, p1}, Lcom/tendcloud/tenddata/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object p0
.end method
