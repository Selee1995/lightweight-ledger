.class Lcom/tendcloud/tenddata/zz$10;
.super Ljava/lang/Object;
.source "td"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tendcloud/tenddata/zz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/Map;Lcom/tendcloud/tenddata/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tendcloud/tenddata/zz;

.field final synthetic val$amount:I

.field final synthetic val$category:Ljava/lang/String;

.field final synthetic val$eventValue:Ljava/util/Map;

.field final synthetic val$itemId:Ljava/lang/String;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$service:Lcom/tendcloud/tenddata/a;

.field final synthetic val$unitPrice:I


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/zz;Lcom/tendcloud/tenddata/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/Map;)V
    .locals 0

    .line 1089
    iput-object p1, p0, Lcom/tendcloud/tenddata/zz$10;->this$0:Lcom/tendcloud/tenddata/zz;

    iput-object p2, p0, Lcom/tendcloud/tenddata/zz$10;->val$service:Lcom/tendcloud/tenddata/a;

    iput-object p3, p0, Lcom/tendcloud/tenddata/zz$10;->val$itemId:Ljava/lang/String;

    iput-object p4, p0, Lcom/tendcloud/tenddata/zz$10;->val$category:Ljava/lang/String;

    iput-object p5, p0, Lcom/tendcloud/tenddata/zz$10;->val$name:Ljava/lang/String;

    iput p6, p0, Lcom/tendcloud/tenddata/zz$10;->val$unitPrice:I

    iput p7, p0, Lcom/tendcloud/tenddata/zz$10;->val$amount:I

    iput-object p8, p0, Lcom/tendcloud/tenddata/zz$10;->val$eventValue:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1093
    :try_start_0
    new-instance v0, Lcom/tendcloud/tenddata/zz$a;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/zz$a;-><init>()V

    .line 1094
    iget-object v1, v0, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v2, "apiType"

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1095
    iget-object v1, v0, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v2, "domain"

    const-string v3, "iap"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1096
    iget-object v1, v0, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v2, "action"

    const-string v3, "addItem"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1097
    iget-object v1, v0, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v2, "service"

    iget-object v3, p0, Lcom/tendcloud/tenddata/zz$10;->val$service:Lcom/tendcloud/tenddata/a;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1098
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 1099
    iget-object v2, p0, Lcom/tendcloud/tenddata/zz$10;->val$service:Lcom/tendcloud/tenddata/a;

    invoke-virtual {v2}, Lcom/tendcloud/tenddata/a;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "APP"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "count"

    const-string v4, "unitPrice"

    const-string v5, "name"

    const-string v6, "category"

    const-string v7, "id"

    if-eqz v2, :cond_3

    .line 1100
    :try_start_1
    iget-object v2, p0, Lcom/tendcloud/tenddata/zz$10;->val$itemId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1101
    iget-object v2, p0, Lcom/tendcloud/tenddata/zz$10;->val$itemId:Ljava/lang/String;

    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1103
    :cond_0
    iget-object v2, p0, Lcom/tendcloud/tenddata/zz$10;->val$category:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1104
    iget-object v2, p0, Lcom/tendcloud/tenddata/zz$10;->val$category:Ljava/lang/String;

    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1106
    :cond_1
    iget-object v2, p0, Lcom/tendcloud/tenddata/zz$10;->val$name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1107
    iget-object v2, p0, Lcom/tendcloud/tenddata/zz$10;->val$name:Ljava/lang/String;

    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1109
    :cond_2
    iget v2, p0, Lcom/tendcloud/tenddata/zz$10;->val$unitPrice:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1110
    iget v2, p0, Lcom/tendcloud/tenddata/zz$10;->val$amount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1112
    :cond_3
    iget-object v2, p0, Lcom/tendcloud/tenddata/zz$10;->val$itemId:Ljava/lang/String;

    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1113
    iget-object v2, p0, Lcom/tendcloud/tenddata/zz$10;->val$category:Ljava/lang/String;

    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1114
    iget-object v2, p0, Lcom/tendcloud/tenddata/zz$10;->val$name:Ljava/lang/String;

    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1115
    iget v2, p0, Lcom/tendcloud/tenddata/zz$10;->val$unitPrice:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1116
    iget v2, p0, Lcom/tendcloud/tenddata/zz$10;->val$amount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1118
    :goto_0
    iget-object v2, p0, Lcom/tendcloud/tenddata/zz$10;->val$eventValue:Ljava/util/Map;

    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "eventValue"

    .line 1119
    iget-object v3, p0, Lcom/tendcloud/tenddata/zz$10;->val$eventValue:Ljava/util/Map;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1121
    :cond_4
    iget-object v2, v0, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v3, "data"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1122
    invoke-static {}, Lcom/tendcloud/tenddata/zz;->c()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x66

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return-void
.end method
