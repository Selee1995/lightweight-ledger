.class public Lcom/tendcloud/tenddata/cz;
.super Lcom/tendcloud/tenddata/cw;
.source "td"


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 14
    invoke-direct {p0}, Lcom/tendcloud/tenddata/cw;-><init>()V

    .line 15
    invoke-static {}, Lcom/tendcloud/tenddata/k;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "manufacture"

    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/cz;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 16
    invoke-static {}, Lcom/tendcloud/tenddata/k;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "brand"

    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/cz;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 17
    invoke-static {}, Lcom/tendcloud/tenddata/k;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "model"

    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/cz;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "dummy0"

    .line 18
    invoke-static {v0}, Lcom/tendcloud/tenddata/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/cz;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 21
    invoke-static {}, Lcom/tendcloud/tenddata/k;->p()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 22
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_0

    .line 23
    aget-object v4, v1, v3

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "cpuInfo"

    .line 25
    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/cz;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 27
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 28
    invoke-static {}, Lcom/tendcloud/tenddata/k;->t()[I

    move-result-object v1

    const/4 v3, 0x0

    .line 29
    :goto_1
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 30
    aget v4, v1, v3

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const-string v1, "memoryInfo"

    .line 32
    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/cz;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 34
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 35
    invoke-static {}, Lcom/tendcloud/tenddata/k;->s()[I

    move-result-object v1

    .line 36
    :goto_2
    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 37
    aget v3, v1, v2

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    const-string v1, "sdCardInfo"

    .line 39
    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/cz;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 41
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/tendcloud/tenddata/cz;->b:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/k;->a(Landroid/content/Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 42
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/tendcloud/tenddata/cz;->b:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/k;->b(Landroid/content/Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 43
    invoke-static {}, Lcom/tendcloud/tenddata/cz;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "totalDiskSpace"

    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/cz;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tendcloud/tenddata/k;->h(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "support"

    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/cz;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    invoke-static {}, Lcom/tendcloud/tenddata/k;->q()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "cpu"

    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/cz;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 47
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tendcloud/tenddata/k;->b(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "nfcHce"

    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/cz;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static a()I
    .locals 4

    const/4 v0, 0x0

    .line 57
    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/k;->u()[I

    move-result-object v1

    if-eqz v1, :cond_1

    .line 60
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v2

    if-nez v2, :cond_0

    .line 61
    aget v2, v1, v0

    const/4 v3, 0x2

    aget v0, v1, v3

    add-int/2addr v2, v0

    return v2

    .line 63
    :cond_0
    aget v0, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return v0
.end method


# virtual methods
.method public setSlots(I)V
    .locals 1

    .line 75
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "slots"

    invoke-virtual {p0, v0, p1}, Lcom/tendcloud/tenddata/cz;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
