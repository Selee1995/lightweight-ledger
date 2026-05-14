.class public Lcom/tendcloud/tenddata/TalkingDataSearch;
.super Lorg/json/JSONObject;
.source "td"


# static fields
.field private static final a:Ljava/lang/String; = "category"

.field private static final b:Ljava/lang/String; = "content"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    return-void
.end method

.method public static createSearch()Lcom/tendcloud/tenddata/TalkingDataSearch;
    .locals 1

    .line 17
    new-instance v0, Lcom/tendcloud/tenddata/TalkingDataSearch;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/TalkingDataSearch;-><init>()V

    return-object v0
.end method


# virtual methods
.method public setCategory(Ljava/lang/String;)Lcom/tendcloud/tenddata/TalkingDataSearch;
    .locals 1

    :try_start_0
    const-string v0, "category"

    .line 22
    invoke-virtual {p0, v0, p1}, Lcom/tendcloud/tenddata/TalkingDataSearch;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "set category error "

    .line 24
    invoke-static {v0, p1}, Lcom/tendcloud/tenddata/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object p0
.end method

.method public setContent(Ljava/lang/String;)Lcom/tendcloud/tenddata/TalkingDataSearch;
    .locals 1

    :try_start_0
    const-string v0, "content"

    .line 31
    invoke-virtual {p0, v0, p1}, Lcom/tendcloud/tenddata/TalkingDataSearch;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "set content error "

    .line 33
    invoke-static {v0, p1}, Lcom/tendcloud/tenddata/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object p0
.end method
