.class Lcom/tendcloud/tenddata/zz$17;
.super Ljava/lang/Object;
.source "td"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tendcloud/tenddata/zz;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/dj;Lcom/tendcloud/tenddata/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tendcloud/tenddata/zz;

.field final synthetic val$amount:I

.field final synthetic val$currencyType:Ljava/lang/String;

.field final synthetic val$order:Lcom/tendcloud/tenddata/dj;

.field final synthetic val$orderid:Ljava/lang/String;

.field final synthetic val$payType:Ljava/lang/String;

.field final synthetic val$profileId:Ljava/lang/String;

.field final synthetic val$service:Lcom/tendcloud/tenddata/a;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/zz;Lcom/tendcloud/tenddata/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/dj;)V
    .locals 0

    .line 1388
    iput-object p1, p0, Lcom/tendcloud/tenddata/zz$17;->this$0:Lcom/tendcloud/tenddata/zz;

    iput-object p2, p0, Lcom/tendcloud/tenddata/zz$17;->val$service:Lcom/tendcloud/tenddata/a;

    iput-object p3, p0, Lcom/tendcloud/tenddata/zz$17;->val$profileId:Ljava/lang/String;

    iput-object p4, p0, Lcom/tendcloud/tenddata/zz$17;->val$orderid:Ljava/lang/String;

    iput p5, p0, Lcom/tendcloud/tenddata/zz$17;->val$amount:I

    iput-object p6, p0, Lcom/tendcloud/tenddata/zz$17;->val$currencyType:Ljava/lang/String;

    iput-object p7, p0, Lcom/tendcloud/tenddata/zz$17;->val$payType:Ljava/lang/String;

    iput-object p8, p0, Lcom/tendcloud/tenddata/zz$17;->val$order:Lcom/tendcloud/tenddata/dj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const-string v0, "keyOrderDetail"

    const-string v1, "currencyType"

    const-string v2, "amount"

    const-string v3, "orderId"

    .line 1392
    :try_start_0
    new-instance v4, Lcom/tendcloud/tenddata/zz$a;

    invoke-direct {v4}, Lcom/tendcloud/tenddata/zz$a;-><init>()V

    .line 1393
    iget-object v5, v4, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v6, "apiType"

    const/16 v7, 0x8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1394
    iget-object v5, v4, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v6, "service"

    iget-object v7, p0, Lcom/tendcloud/tenddata/zz$17;->val$service:Lcom/tendcloud/tenddata/a;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1395
    iget-object v5, v4, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v6, "domain"

    const-string v7, "iap"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1396
    iget-object v5, v4, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v6, "action"

    const-string v7, "recharge"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1397
    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    const-string v6, "accountId"

    .line 1398
    iget-object v7, p0, Lcom/tendcloud/tenddata/zz$17;->val$profileId:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1399
    iget-object v6, p0, Lcom/tendcloud/tenddata/zz$17;->val$orderid:Ljava/lang/String;

    invoke-interface {v5, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1400
    iget v6, p0, Lcom/tendcloud/tenddata/zz$17;->val$amount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1401
    iget-object v6, p0, Lcom/tendcloud/tenddata/zz$17;->val$currencyType:Ljava/lang/String;

    invoke-interface {v5, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "payType"

    .line 1402
    iget-object v7, p0, Lcom/tendcloud/tenddata/zz$17;->val$payType:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1403
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 1404
    iget-object v7, p0, Lcom/tendcloud/tenddata/zz$17;->val$order:Lcom/tendcloud/tenddata/dj;

    const-string v8, "keyOrderId"

    invoke-virtual {v7, v8}, Lcom/tendcloud/tenddata/dj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1405
    iget-object v3, p0, Lcom/tendcloud/tenddata/zz$17;->val$order:Lcom/tendcloud/tenddata/dj;

    const-string v7, "keyTotalPrice"

    invoke-virtual {v3, v7}, Lcom/tendcloud/tenddata/dj;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1406
    iget-object v2, p0, Lcom/tendcloud/tenddata/zz$17;->val$order:Lcom/tendcloud/tenddata/dj;

    const-string v3, "keyCurrencyType"

    invoke-virtual {v2, v3}, Lcom/tendcloud/tenddata/dj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1408
    iget-object v1, p0, Lcom/tendcloud/tenddata/zz$17;->val$order:Lcom/tendcloud/tenddata/dj;

    invoke-virtual {v1, v0}, Lcom/tendcloud/tenddata/dj;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1409
    iget-object v1, p0, Lcom/tendcloud/tenddata/zz$17;->val$order:Lcom/tendcloud/tenddata/dj;

    invoke-virtual {v1, v0}, Lcom/tendcloud/tenddata/dj;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1410
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "items"

    .line 1411
    invoke-virtual {v6, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string v0, "order"

    .line 1414
    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1415
    iget-object v0, v4, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v1, "data"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1416
    invoke-static {}, Lcom/tendcloud/tenddata/zz;->c()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x66

    invoke-static {v0, v1, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
