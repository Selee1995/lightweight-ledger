.class Lcom/tendcloud/tenddata/zz$21;
.super Ljava/lang/Object;
.source "td"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tendcloud/tenddata/zz;->a(Lcom/tendcloud/tenddata/TalkingDataOrder;Ljava/lang/String;Ljava/util/Map;Lcom/tendcloud/tenddata/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tendcloud/tenddata/zz;

.field final synthetic val$eventValue:Ljava/util/Map;

.field final synthetic val$order:Lcom/tendcloud/tenddata/TalkingDataOrder;

.field final synthetic val$profileId:Ljava/lang/String;

.field final synthetic val$service:Lcom/tendcloud/tenddata/a;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/zz;Lcom/tendcloud/tenddata/a;Ljava/lang/String;Lcom/tendcloud/tenddata/TalkingDataOrder;Ljava/util/Map;)V
    .locals 0

    .line 1627
    iput-object p1, p0, Lcom/tendcloud/tenddata/zz$21;->this$0:Lcom/tendcloud/tenddata/zz;

    iput-object p2, p0, Lcom/tendcloud/tenddata/zz$21;->val$service:Lcom/tendcloud/tenddata/a;

    iput-object p3, p0, Lcom/tendcloud/tenddata/zz$21;->val$profileId:Ljava/lang/String;

    iput-object p4, p0, Lcom/tendcloud/tenddata/zz$21;->val$order:Lcom/tendcloud/tenddata/TalkingDataOrder;

    iput-object p5, p0, Lcom/tendcloud/tenddata/zz$21;->val$eventValue:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "keyOrderDetail"

    .line 1631
    :try_start_0
    new-instance v1, Lcom/tendcloud/tenddata/zz$a;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/zz$a;-><init>()V

    .line 1632
    iget-object v2, v1, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v3, "apiType"

    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1633
    iget-object v2, v1, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v3, "service"

    iget-object v4, p0, Lcom/tendcloud/tenddata/zz$21;->val$service:Lcom/tendcloud/tenddata/a;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1634
    iget-object v2, v1, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v3, "domain"

    const-string v4, "iap"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1635
    iget-object v2, v1, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v3, "action"

    const-string v4, "placeOrder"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1636
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    const-string v3, "accountId"

    .line 1637
    iget-object v4, p0, Lcom/tendcloud/tenddata/zz$21;->val$profileId:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "orderId"

    .line 1638
    iget-object v4, p0, Lcom/tendcloud/tenddata/zz$21;->val$order:Lcom/tendcloud/tenddata/TalkingDataOrder;

    const-string v5, "keyOrderId"

    invoke-virtual {v4, v5}, Lcom/tendcloud/tenddata/TalkingDataOrder;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "amount"

    .line 1639
    iget-object v4, p0, Lcom/tendcloud/tenddata/zz$21;->val$order:Lcom/tendcloud/tenddata/TalkingDataOrder;

    const-string v5, "keyTotalPrice"

    invoke-virtual {v4, v5}, Lcom/tendcloud/tenddata/TalkingDataOrder;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1640
    iget-object v3, p0, Lcom/tendcloud/tenddata/zz$21;->val$order:Lcom/tendcloud/tenddata/TalkingDataOrder;

    const-string v4, "keyCurrencyType"

    invoke-virtual {v3, v4}, Lcom/tendcloud/tenddata/TalkingDataOrder;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1641
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v3, "CNY"

    :cond_0
    const-string v4, "currencyType"

    .line 1645
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1646
    iget-object v3, p0, Lcom/tendcloud/tenddata/zz$21;->val$order:Lcom/tendcloud/tenddata/TalkingDataOrder;

    invoke-virtual {v3, v0}, Lcom/tendcloud/tenddata/TalkingDataOrder;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1647
    iget-object v3, p0, Lcom/tendcloud/tenddata/zz$21;->val$order:Lcom/tendcloud/tenddata/TalkingDataOrder;

    invoke-virtual {v3, v0}, Lcom/tendcloud/tenddata/TalkingDataOrder;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1648
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_1

    const-string v3, "items"

    .line 1649
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1652
    :cond_1
    iget-object v0, p0, Lcom/tendcloud/tenddata/zz$21;->val$eventValue:Ljava/util/Map;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "eventValue"

    .line 1653
    iget-object v3, p0, Lcom/tendcloud/tenddata/zz$21;->val$eventValue:Ljava/util/Map;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1655
    :cond_2
    iget-object v0, v1, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v3, "data"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1656
    invoke-static {}, Lcom/tendcloud/tenddata/zz;->c()Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x66

    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
