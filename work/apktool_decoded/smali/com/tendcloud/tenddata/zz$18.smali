.class Lcom/tendcloud/tenddata/zz$18;
.super Ljava/lang/Object;
.source "td"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tendcloud/tenddata/zz;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/dj;Lcom/tendcloud/tenddata/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tendcloud/tenddata/zz;

.field final synthetic val$order:Lcom/tendcloud/tenddata/dj;

.field final synthetic val$payType:Ljava/lang/String;

.field final synthetic val$profileId:Ljava/lang/String;

.field final synthetic val$service:Lcom/tendcloud/tenddata/a;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/zz;Lcom/tendcloud/tenddata/a;Ljava/lang/String;Lcom/tendcloud/tenddata/dj;Ljava/lang/String;)V
    .locals 0

    .line 1445
    iput-object p1, p0, Lcom/tendcloud/tenddata/zz$18;->this$0:Lcom/tendcloud/tenddata/zz;

    iput-object p2, p0, Lcom/tendcloud/tenddata/zz$18;->val$service:Lcom/tendcloud/tenddata/a;

    iput-object p3, p0, Lcom/tendcloud/tenddata/zz$18;->val$profileId:Ljava/lang/String;

    iput-object p4, p0, Lcom/tendcloud/tenddata/zz$18;->val$order:Lcom/tendcloud/tenddata/dj;

    iput-object p5, p0, Lcom/tendcloud/tenddata/zz$18;->val$payType:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const-string v0, "keyOrderDetail"

    .line 1449
    :try_start_0
    new-instance v1, Lcom/tendcloud/tenddata/zz$a;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/zz$a;-><init>()V

    .line 1450
    iget-object v2, v1, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v3, "apiType"

    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1451
    iget-object v2, v1, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v3, "service"

    iget-object v4, p0, Lcom/tendcloud/tenddata/zz$18;->val$service:Lcom/tendcloud/tenddata/a;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1452
    iget-object v2, v1, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v3, "domain"

    const-string v4, "iap"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1453
    iget-object v2, v1, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v3, "action"

    const-string v4, "pay"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1454
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    const-string v3, "accountId"

    .line 1455
    iget-object v4, p0, Lcom/tendcloud/tenddata/zz$18;->val$profileId:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1456
    iget-object v3, p0, Lcom/tendcloud/tenddata/zz$18;->val$service:Lcom/tendcloud/tenddata/a;

    invoke-virtual {v3}, Lcom/tendcloud/tenddata/a;->name()Ljava/lang/String;

    move-result-object v3

    const-string v4, "APP"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "keyCurrencyType"

    const-string v5, "currencyType"

    const-string v6, "keyTotalPrice"

    const-string v7, "amount"

    const-string v8, "keyOrderId"

    const-string v9, "orderId"

    const-string v10, "payType"

    if-eqz v3, :cond_2

    .line 1457
    :try_start_1
    iget-object v3, p0, Lcom/tendcloud/tenddata/zz$18;->val$order:Lcom/tendcloud/tenddata/dj;

    invoke-virtual {v3, v8}, Lcom/tendcloud/tenddata/dj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1458
    iget-object v3, p0, Lcom/tendcloud/tenddata/zz$18;->val$payType:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1459
    iget-object v3, p0, Lcom/tendcloud/tenddata/zz$18;->val$payType:Ljava/lang/String;

    invoke-interface {v2, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1461
    :cond_0
    iget-object v3, p0, Lcom/tendcloud/tenddata/zz$18;->val$order:Lcom/tendcloud/tenddata/dj;

    invoke-virtual {v3, v6}, Lcom/tendcloud/tenddata/dj;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1462
    iget-object v3, p0, Lcom/tendcloud/tenddata/zz$18;->val$order:Lcom/tendcloud/tenddata/dj;

    invoke-virtual {v3, v4}, Lcom/tendcloud/tenddata/dj;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1463
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v3, "CNY"

    .line 1467
    :cond_1
    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1469
    :cond_2
    iget-object v3, p0, Lcom/tendcloud/tenddata/zz$18;->val$payType:Ljava/lang/String;

    invoke-interface {v2, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1470
    iget-object v3, p0, Lcom/tendcloud/tenddata/zz$18;->val$order:Lcom/tendcloud/tenddata/dj;

    invoke-virtual {v3, v8}, Lcom/tendcloud/tenddata/dj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1471
    iget-object v3, p0, Lcom/tendcloud/tenddata/zz$18;->val$order:Lcom/tendcloud/tenddata/dj;

    invoke-virtual {v3, v6}, Lcom/tendcloud/tenddata/dj;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1472
    iget-object v3, p0, Lcom/tendcloud/tenddata/zz$18;->val$order:Lcom/tendcloud/tenddata/dj;

    invoke-virtual {v3, v4}, Lcom/tendcloud/tenddata/dj;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1475
    :goto_0
    iget-object v3, p0, Lcom/tendcloud/tenddata/zz$18;->val$order:Lcom/tendcloud/tenddata/dj;

    invoke-virtual {v3, v0}, Lcom/tendcloud/tenddata/dj;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1476
    iget-object v3, p0, Lcom/tendcloud/tenddata/zz$18;->val$order:Lcom/tendcloud/tenddata/dj;

    invoke-virtual {v3, v0}, Lcom/tendcloud/tenddata/dj;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1477
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_3

    const-string v3, "items"

    .line 1478
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1481
    :cond_3
    iget-object v0, v1, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v3, "data"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1482
    invoke-static {}, Lcom/tendcloud/tenddata/zz;->c()Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x66

    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return-void
.end method
