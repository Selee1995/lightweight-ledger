.class public Lcom/tendcloud/tenddata/df;
.super Lcom/tendcloud/tenddata/cw;
.source "td"


# instance fields
.field private a:Lcom/tendcloud/tenddata/ba;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tendcloud/tenddata/dg;)V
    .locals 13

    .line 23
    invoke-direct {p0}, Lcom/tendcloud/tenddata/cw;-><init>()V

    .line 20
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tendcloud/tenddata/df;->c:Ljava/lang/String;

    .line 25
    sget-object v0, Lcom/tendcloud/tenddata/df$1;->$SwitchMap$com$talkingdata$sdk$saf$datamodel$network$TDNetworkType:[I

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/dg;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const-string v0, ":"

    const-string v1, "proxy"

    const/4 v2, 0x0

    const-string v3, "available"

    const/4 v4, 0x1

    const-string v5, "ipv6"

    const-string v6, "current"

    const-string v7, "connected"

    const-string v8, "type"

    const-string v9, "ip"

    const-string v10, "scannable"

    if-eq p1, v4, :cond_4

    const/4 v4, 0x2

    if-eq p1, v4, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto/16 :goto_4

    .line 105
    :cond_0
    :try_start_0
    sget-object p1, Lcom/tendcloud/tenddata/dg;->c:Lcom/tendcloud/tenddata/dg;

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/dg;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v8, p1}, Lcom/tendcloud/tenddata/df;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 85
    :cond_1
    sget-object p1, Lcom/tendcloud/tenddata/dg;->b:Lcom/tendcloud/tenddata/dg;

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/dg;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v8, p1}, Lcom/tendcloud/tenddata/df;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    sget-object p1, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/tendcloud/tenddata/o;->e(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Lcom/tendcloud/tenddata/df;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 87
    sget-object p1, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/tendcloud/tenddata/o;->j(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v7, p1}, Lcom/tendcloud/tenddata/df;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "cell_ip"

    .line 88
    invoke-static {p1}, Lcom/tendcloud/tenddata/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v9, p1}, Lcom/tendcloud/tenddata/df;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "cell_ipv6"

    .line 89
    invoke-static {p1}, Lcom/tendcloud/tenddata/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v5, p1}, Lcom/tendcloud/tenddata/df;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    sget-object p1, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/tendcloud/tenddata/o;->b(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 91
    sget-object p1, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-static {p1, v2}, Lcom/tendcloud/tenddata/o;->a(Landroid/content/Context;Z)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p0, v6, p1}, Lcom/tendcloud/tenddata/df;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 93
    :cond_2
    invoke-static {}, Lcom/tendcloud/tenddata/o;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 94
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/tendcloud/tenddata/df;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 96
    :cond_3
    sget-object p1, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/tendcloud/tenddata/o;->v(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p0, v10, p1}, Lcom/tendcloud/tenddata/df;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_4

    .line 27
    :cond_4
    sget-object p1, Lcom/tendcloud/tenddata/dg;->a:Lcom/tendcloud/tenddata/dg;

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/dg;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v8, p1}, Lcom/tendcloud/tenddata/df;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    sget-object p1, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/tendcloud/tenddata/o;->d(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Lcom/tendcloud/tenddata/df;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 29
    sget-object p1, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/tendcloud/tenddata/o;->i(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 30
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v7, p1}, Lcom/tendcloud/tenddata/df;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    invoke-static {}, Lcom/tendcloud/tenddata/bh;->a()Lcom/tendcloud/tenddata/bh;

    move-result-object p1

    invoke-static {}, Lcom/tendcloud/tenddata/di;->b()Lcom/tendcloud/tenddata/di;

    move-result-object v2

    iget-object v2, v2, Lcom/tendcloud/tenddata/di;->a:Lorg/json/JSONObject;

    invoke-static {}, Lcom/tendcloud/tenddata/di;->b()Lcom/tendcloud/tenddata/di;

    move-result-object v3

    iget-object v3, v3, Lcom/tendcloud/tenddata/di;->b:Lorg/json/JSONObject;

    const-string v4, "WiFi"

    invoke-virtual {p1, v4, v2, v3}, Lcom/tendcloud/tenddata/bh;->a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 33
    sget-object v2, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-static {v2}, Lcom/tendcloud/tenddata/o;->y(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {p0, v6, v2}, Lcom/tendcloud/tenddata/df;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 34
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_6

    .line 35
    invoke-static {}, Lcom/tendcloud/tenddata/di;->b()Lcom/tendcloud/tenddata/di;

    move-result-object v2

    invoke-virtual {v2, v4, p1}, Lcom/tendcloud/tenddata/di;->a(Ljava/lang/String;Lorg/json/JSONArray;)V

    goto :goto_0

    .line 38
    :cond_5
    iget-object p1, p0, Lcom/tendcloud/tenddata/df;->b:Lorg/json/JSONObject;

    invoke-virtual {p0, v6, p1}, Lcom/tendcloud/tenddata/df;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 40
    :cond_6
    :goto_0
    sget-object p1, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/tendcloud/tenddata/o;->z(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object p1

    .line 41
    invoke-static {p1}, Lcom/tendcloud/tenddata/df;->a(Lorg/json/JSONArray;)Lcom/tendcloud/tenddata/ba;

    move-result-object v2

    .line 42
    iget-object v3, p0, Lcom/tendcloud/tenddata/df;->a:Lcom/tendcloud/tenddata/ba;

    if-nez v3, :cond_7

    .line 43
    invoke-virtual {p0, v10, p1}, Lcom/tendcloud/tenddata/df;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    iput-object v2, p0, Lcom/tendcloud/tenddata/df;->a:Lcom/tendcloud/tenddata/ba;

    goto :goto_1

    .line 46
    :cond_7
    new-instance v3, Lcom/tendcloud/tenddata/bb;

    invoke-direct {v3}, Lcom/tendcloud/tenddata/bb;-><init>()V

    iget-object v6, p0, Lcom/tendcloud/tenddata/df;->a:Lcom/tendcloud/tenddata/ba;

    invoke-virtual {v3, v6, v2}, Lcom/tendcloud/tenddata/bb;->a(Lcom/tendcloud/tenddata/ba;Lcom/tendcloud/tenddata/ba;)D

    move-result-wide v6

    const-wide v11, 0x3fe999999999999aL    # 0.8

    cmpl-double v3, v6, v11

    if-lez v3, :cond_8

    const/4 p1, 0x0

    .line 48
    invoke-virtual {p0, v10, p1}, Lcom/tendcloud/tenddata/df;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 50
    :cond_8
    invoke-virtual {p0, v10, p1}, Lcom/tendcloud/tenddata/df;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 51
    iput-object v2, p0, Lcom/tendcloud/tenddata/df;->a:Lcom/tendcloud/tenddata/ba;

    .line 52
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tendcloud/tenddata/df;->c:Ljava/lang/String;

    .line 55
    :goto_1
    invoke-static {}, Lcom/tendcloud/tenddata/bh;->a()Lcom/tendcloud/tenddata/bh;

    move-result-object p1

    invoke-static {}, Lcom/tendcloud/tenddata/di;->b()Lcom/tendcloud/tenddata/di;

    move-result-object v2

    iget-object v2, v2, Lcom/tendcloud/tenddata/di;->a:Lorg/json/JSONObject;

    invoke-static {}, Lcom/tendcloud/tenddata/di;->b()Lcom/tendcloud/tenddata/di;

    move-result-object v3

    iget-object v3, v3, Lcom/tendcloud/tenddata/di;->b:Lorg/json/JSONObject;

    invoke-virtual {p1, v4, v2, v3}, Lcom/tendcloud/tenddata/bh;->a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object p1

    const-string v2, "configured"

    if-eqz p1, :cond_9

    .line 57
    sget-object v3, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-static {v3}, Lcom/tendcloud/tenddata/o;->x(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/tendcloud/tenddata/df;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 58
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_a

    .line 59
    invoke-static {}, Lcom/tendcloud/tenddata/di;->b()Lcom/tendcloud/tenddata/di;

    move-result-object v2

    invoke-virtual {v2, v4, p1}, Lcom/tendcloud/tenddata/di;->a(Ljava/lang/String;Lorg/json/JSONArray;)V

    goto :goto_2

    .line 62
    :cond_9
    iget-object p1, p0, Lcom/tendcloud/tenddata/df;->b:Lorg/json/JSONObject;

    invoke-virtual {p0, v2, p1}, Lcom/tendcloud/tenddata/df;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 64
    :cond_a
    :goto_2
    invoke-static {}, Lcom/tendcloud/tenddata/bh;->a()Lcom/tendcloud/tenddata/bh;

    move-result-object p1

    invoke-static {}, Lcom/tendcloud/tenddata/di;->b()Lcom/tendcloud/tenddata/di;

    move-result-object v2

    iget-object v2, v2, Lcom/tendcloud/tenddata/di;->a:Lorg/json/JSONObject;

    invoke-static {}, Lcom/tendcloud/tenddata/di;->b()Lcom/tendcloud/tenddata/di;

    move-result-object v3

    iget-object v3, v3, Lcom/tendcloud/tenddata/di;->b:Lorg/json/JSONObject;

    const-string v4, "IP"

    invoke-virtual {p1, v4, v2, v3}, Lcom/tendcloud/tenddata/bh;->a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 66
    invoke-static {v9}, Lcom/tendcloud/tenddata/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v9, v2}, Lcom/tendcloud/tenddata/df;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 67
    invoke-static {v5}, Lcom/tendcloud/tenddata/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v5, v2}, Lcom/tendcloud/tenddata/df;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 68
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_d

    .line 69
    invoke-static {}, Lcom/tendcloud/tenddata/di;->b()Lcom/tendcloud/tenddata/di;

    move-result-object v2

    invoke-virtual {v2, v4, p1}, Lcom/tendcloud/tenddata/di;->a(Ljava/lang/String;Lorg/json/JSONArray;)V

    goto :goto_3

    .line 72
    :cond_b
    iget-object p1, p0, Lcom/tendcloud/tenddata/df;->b:Lorg/json/JSONObject;

    invoke-virtual {p0, v9, p1}, Lcom/tendcloud/tenddata/df;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_3

    .line 75
    :cond_c
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v7, p1}, Lcom/tendcloud/tenddata/df;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 77
    :cond_d
    :goto_3
    invoke-static {}, Lcom/tendcloud/tenddata/o;->b()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 78
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/tendcloud/tenddata/df;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    :cond_e
    iget-object p1, p0, Lcom/tendcloud/tenddata/df;->c:Ljava/lang/String;

    const-string v0, "scannableFingerId"

    invoke-virtual {p0, v0, p1}, Lcom/tendcloud/tenddata/df;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :catchall_0
    :goto_4
    return-void
.end method

.method private static a(Lorg/json/JSONArray;)Lcom/tendcloud/tenddata/ba;
    .locals 10

    if-eqz p0, :cond_1

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 121
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 123
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 124
    new-instance v9, Lcom/tendcloud/tenddata/ax;

    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v3, "id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v3, "level"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    int-to-byte v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/tendcloud/tenddata/ax;-><init>(Ljava/lang/String;Ljava/lang/String;BBB)V

    .line 125
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    .line 127
    invoke-static {v2}, Lcom/tendcloud/tenddata/h;->eForInternal(Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 130
    :cond_0
    new-instance p0, Lcom/tendcloud/tenddata/ba;

    invoke-direct {p0}, Lcom/tendcloud/tenddata/ba;-><init>()V

    .line 131
    invoke-virtual {p0, v0}, Lcom/tendcloud/tenddata/ba;->setBsslist(Ljava/util/List;)V

    goto :goto_2

    :cond_1
    const/4 p0, 0x0

    :goto_2
    return-object p0
.end method
