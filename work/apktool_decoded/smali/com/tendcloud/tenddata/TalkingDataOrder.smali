.class public Lcom/tendcloud/tenddata/TalkingDataOrder;
.super Lorg/json/JSONObject;
.source "td"


# static fields
.field private static final a:Ljava/lang/String; = "id"

.field private static final b:Ljava/lang/String; = "category"

.field private static final c:Ljava/lang/String; = "name"

.field private static final d:Ljava/lang/String; = "unitPrice"

.field private static final e:Ljava/lang/String; = "count"

.field public static final keyCurrencyType:Ljava/lang/String; = "keyCurrencyType"

.field public static final keyOrderDetail:Ljava/lang/String; = "keyOrderDetail"

.field public static final keyOrderId:Ljava/lang/String; = "keyOrderId"

.field public static final keyTotalPrice:Ljava/lang/String; = "keyTotalPrice"


# instance fields
.field private f:Lorg/json/JSONArray;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/tendcloud/tenddata/TalkingDataOrder;->f:Lorg/json/JSONArray;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/tendcloud/tenddata/TalkingDataOrder;->f:Lorg/json/JSONArray;

    :try_start_0
    const-string v0, "keyOrderId"

    .line 30
    invoke-virtual {p0, v0, p1}, Lcom/tendcloud/tenddata/TalkingDataOrder;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "keyTotalPrice"

    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/tendcloud/tenddata/TalkingDataOrder;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "keyCurrencyType"

    .line 32
    invoke-virtual {p0, p1, p3}, Lcom/tendcloud/tenddata/TalkingDataOrder;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static createOrder(Ljava/lang/String;ILjava/lang/String;)Lcom/tendcloud/tenddata/TalkingDataOrder;
    .locals 3

    .line 44
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createOrder called --> orderId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,totalPrice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,currencyType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/h;->iForDeveloper(Ljava/lang/String;)V

    .line 45
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "createOrder: orderId could not be null or empty"

    .line 46
    invoke-static {v0}, Lcom/tendcloud/tenddata/h;->eForDeveloper(Ljava/lang/String;)V

    return-object v1

    .line 49
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    :cond_1
    const-string v0, "createOrder: currencyType length must be 3 ,likes CNY"

    .line 50
    invoke-static {v0}, Lcom/tendcloud/tenddata/h;->eForDeveloper(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 56
    :catchall_0
    :cond_2
    new-instance v0, Lcom/tendcloud/tenddata/TalkingDataOrder;

    invoke-direct {v0, p0, p1, p2}, Lcom/tendcloud/tenddata/TalkingDataOrder;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized addItem(Ljava/lang/String;Ljava/lang/String;II)Lcom/tendcloud/tenddata/TalkingDataOrder;
    .locals 2

    monitor-enter p0

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/TalkingDataOrder;->f:Lorg/json/JSONArray;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/TalkingDataOrder;->f:Lorg/json/JSONArray;

    const-string v1, "keyOrderDetail"

    .line 63
    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/TalkingDataOrder;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 66
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "category"

    .line 67
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "name"

    .line 70
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    const-string p1, "unitPrice"

    .line 72
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "count"

    .line 73
    invoke-virtual {v0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 75
    iget-object p1, p0, Lcom/tendcloud/tenddata/TalkingDataOrder;->f:Lorg/json/JSONArray;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 79
    :catch_0
    :goto_0
    monitor-exit p0

    return-object p0
.end method

.method public declared-synchronized addItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/tendcloud/tenddata/TalkingDataOrder;
    .locals 2

    monitor-enter p0

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/TalkingDataOrder;->f:Lorg/json/JSONArray;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/TalkingDataOrder;->f:Lorg/json/JSONArray;

    const-string v1, "keyOrderDetail"

    .line 86
    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/TalkingDataOrder;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 89
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "id"

    .line 90
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "category"

    .line 93
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "name"

    .line 96
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    const-string p1, "unitPrice"

    .line 98
    invoke-virtual {v0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "count"

    .line 99
    invoke-virtual {v0, p1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 100
    iget-object p1, p0, Lcom/tendcloud/tenddata/TalkingDataOrder;->f:Lorg/json/JSONArray;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 104
    :catch_0
    :goto_0
    monitor-exit p0

    return-object p0
.end method
