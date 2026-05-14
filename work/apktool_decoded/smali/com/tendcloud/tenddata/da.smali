.class public Lcom/tendcloud/tenddata/da;
.super Lcom/tendcloud/tenddata/cw;
.source "td"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 16
    invoke-direct {p0}, Lcom/tendcloud/tenddata/cw;-><init>()V

    .line 17
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tendcloud/tenddata/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tid"

    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/da;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 14

    const-string v0, "meid5"

    const-string v1, "meid"

    const-string v2, "imei5"

    const-string v3, "imei"

    const-string v4, "serialNo"

    .line 21
    invoke-static {v4}, Lcom/tendcloud/tenddata/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/tendcloud/tenddata/da;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 22
    invoke-static {}, Lcom/tendcloud/tenddata/bh;->a()Lcom/tendcloud/tenddata/bh;

    move-result-object v4

    const-string v5, "AdID"

    invoke-virtual {v4, v5}, Lcom/tendcloud/tenddata/bh;->a(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const-string v6, "adId"

    if-eqz v4, :cond_0

    .line 24
    sget-object v7, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-static {v7}, Lcom/tendcloud/tenddata/l;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/tendcloud/tenddata/da;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 26
    invoke-static {}, Lcom/tendcloud/tenddata/di;->b()Lcom/tendcloud/tenddata/di;

    move-result-object v6

    invoke-virtual {v6, v5, v4}, Lcom/tendcloud/tenddata/di;->a(Ljava/lang/String;Lorg/json/JSONArray;)V

    goto :goto_0

    .line 29
    :cond_0
    iget-object v4, p0, Lcom/tendcloud/tenddata/da;->b:Lorg/json/JSONObject;

    invoke-virtual {p0, v6, v4}, Lcom/tendcloud/tenddata/da;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 31
    :cond_1
    :goto_0
    invoke-static {}, Lcom/tendcloud/tenddata/bh;->a()Lcom/tendcloud/tenddata/bh;

    move-result-object v4

    invoke-static {}, Lcom/tendcloud/tenddata/di;->b()Lcom/tendcloud/tenddata/di;

    move-result-object v5

    iget-object v5, v5, Lcom/tendcloud/tenddata/di;->a:Lorg/json/JSONObject;

    invoke-static {}, Lcom/tendcloud/tenddata/di;->b()Lcom/tendcloud/tenddata/di;

    move-result-object v6

    iget-object v6, v6, Lcom/tendcloud/tenddata/di;->b:Lorg/json/JSONObject;

    const-string v7, "IMEI"

    invoke-virtual {v4, v7, v5, v6}, Lcom/tendcloud/tenddata/bh;->a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v4

    const-string v5, "imeis"

    if-eqz v4, :cond_a

    .line 34
    :try_start_0
    sget-object v6, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-static {v6}, Lcom/tendcloud/tenddata/o;->A(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v6

    .line 35
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 36
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 37
    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    .line 38
    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11}, Lorg/json/JSONArray;-><init>()V

    if-eqz v6, :cond_9

    .line 39
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-lez v12, :cond_9

    const/4 v12, 0x0

    .line 40
    invoke-virtual {v6, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 41
    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 42
    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v8, v13}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 44
    :cond_2
    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 45
    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v9, v13}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 47
    :cond_3
    invoke-virtual {v12, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 48
    invoke-virtual {v12, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v10, v13}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 50
    :cond_4
    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 51
    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 53
    :cond_5
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_9

    const/4 v12, 0x1

    .line 54
    invoke-virtual {v6, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 55
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 56
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v8, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 58
    :cond_6
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 59
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v9, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 61
    :cond_7
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 62
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 65
    :cond_8
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 66
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v11, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 71
    :cond_9
    invoke-virtual {p0, v5, v8}, Lcom/tendcloud/tenddata/da;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "imeis5"

    .line 72
    invoke-virtual {p0, v0, v9}, Lcom/tendcloud/tenddata/da;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "meids"

    .line 73
    invoke-virtual {p0, v0, v10}, Lcom/tendcloud/tenddata/da;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "meids5"

    .line 74
    invoke-virtual {p0, v0, v11}, Lcom/tendcloud/tenddata/da;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    .line 80
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_b

    .line 81
    invoke-static {}, Lcom/tendcloud/tenddata/di;->b()Lcom/tendcloud/tenddata/di;

    move-result-object v0

    invoke-virtual {v0, v7, v4}, Lcom/tendcloud/tenddata/di;->a(Ljava/lang/String;Lorg/json/JSONArray;)V

    goto :goto_2

    .line 84
    :cond_a
    iget-object v0, p0, Lcom/tendcloud/tenddata/da;->b:Lorg/json/JSONObject;

    invoke-virtual {p0, v5, v0}, Lcom/tendcloud/tenddata/da;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 86
    :cond_b
    :goto_2
    invoke-static {}, Lcom/tendcloud/tenddata/bh;->a()Lcom/tendcloud/tenddata/bh;

    move-result-object v0

    const-string v1, "MacAddress"

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/bh;->a(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const-string v2, "wifiMacs"

    if-eqz v0, :cond_c

    .line 88
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    const-string v4, "mac"

    .line 89
    invoke-static {v4}, Lcom/tendcloud/tenddata/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 90
    invoke-virtual {p0, v2, v3}, Lcom/tendcloud/tenddata/da;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 91
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const-string v3, "ethMac"

    .line 92
    invoke-static {v3}, Lcom/tendcloud/tenddata/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v3, "ethMacs"

    .line 93
    invoke-virtual {p0, v3, v2}, Lcom/tendcloud/tenddata/da;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 94
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_d

    .line 95
    invoke-static {}, Lcom/tendcloud/tenddata/di;->b()Lcom/tendcloud/tenddata/di;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/tendcloud/tenddata/di;->a(Ljava/lang/String;Lorg/json/JSONArray;)V

    goto :goto_3

    .line 98
    :cond_c
    iget-object v0, p0, Lcom/tendcloud/tenddata/da;->b:Lorg/json/JSONObject;

    invoke-virtual {p0, v2, v0}, Lcom/tendcloud/tenddata/da;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 100
    :cond_d
    :goto_3
    invoke-static {}, Lcom/tendcloud/tenddata/bh;->a()Lcom/tendcloud/tenddata/bh;

    move-result-object v0

    const-string v1, "AndroidId"

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/bh;->a(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const-string v2, "androidId"

    if-eqz v0, :cond_e

    .line 102
    invoke-static {v2}, Lcom/tendcloud/tenddata/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 103
    invoke-virtual {p0, v2, v3}, Lcom/tendcloud/tenddata/da;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 104
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_f

    .line 105
    invoke-static {}, Lcom/tendcloud/tenddata/di;->b()Lcom/tendcloud/tenddata/di;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/tendcloud/tenddata/di;->a(Ljava/lang/String;Lorg/json/JSONArray;)V

    goto :goto_4

    .line 108
    :cond_e
    iget-object v0, p0, Lcom/tendcloud/tenddata/da;->b:Lorg/json/JSONObject;

    invoke-virtual {p0, v2, v0}, Lcom/tendcloud/tenddata/da;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 110
    :cond_f
    :goto_4
    invoke-static {}, Lcom/tendcloud/tenddata/dd;->a()Lcom/tendcloud/tenddata/dd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/dd;->b()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "msaIds"

    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/da;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
