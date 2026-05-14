.class Lcom/tendcloud/tenddata/zz$36;
.super Ljava/lang/Object;
.source "td"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tendcloud/tenddata/zz;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/tendcloud/tenddata/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tendcloud/tenddata/zz;

.field final synthetic val$eventId:Ljava/lang/String;

.field final synthetic val$eventLabel:Ljava/lang/String;

.field final synthetic val$eventValue:Ljava/util/Map;

.field final synthetic val$map:Ljava/util/Map;

.field final synthetic val$service:Lcom/tendcloud/tenddata/a;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/zz;Lcom/tendcloud/tenddata/a;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    .line 469
    iput-object p1, p0, Lcom/tendcloud/tenddata/zz$36;->this$0:Lcom/tendcloud/tenddata/zz;

    iput-object p2, p0, Lcom/tendcloud/tenddata/zz$36;->val$service:Lcom/tendcloud/tenddata/a;

    iput-object p3, p0, Lcom/tendcloud/tenddata/zz$36;->val$eventId:Ljava/lang/String;

    iput-object p4, p0, Lcom/tendcloud/tenddata/zz$36;->val$eventLabel:Ljava/lang/String;

    iput-object p5, p0, Lcom/tendcloud/tenddata/zz$36;->val$map:Ljava/util/Map;

    iput-object p6, p0, Lcom/tendcloud/tenddata/zz$36;->val$eventValue:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 473
    :try_start_0
    new-instance v0, Lcom/tendcloud/tenddata/zz$a;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/zz$a;-><init>()V

    .line 474
    iget-object v1, v0, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v2, "service"

    iget-object v3, p0, Lcom/tendcloud/tenddata/zz$36;->val$service:Lcom/tendcloud/tenddata/a;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    iget-object v1, v0, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v2, "apiType"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    iget-object v1, v0, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v2, "eventId"

    iget-object v3, p0, Lcom/tendcloud/tenddata/zz$36;->val$eventId:Ljava/lang/String;

    invoke-static {v3}, Lcom/tendcloud/tenddata/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    iget-object v1, v0, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v2, "eventLabel"

    iget-object v3, p0, Lcom/tendcloud/tenddata/zz$36;->val$eventLabel:Ljava/lang/String;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v3}, Lcom/tendcloud/tenddata/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    iget-object v1, v0, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v2, "map"

    iget-object v3, p0, Lcom/tendcloud/tenddata/zz$36;->val$map:Ljava/util/Map;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    iget-object v1, v0, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v2, "occurTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    iget-object v1, p0, Lcom/tendcloud/tenddata/zz$36;->val$eventValue:Ljava/util/Map;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 481
    iget-object v1, v0, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v2, "eventValue"

    iget-object v3, p0, Lcom/tendcloud/tenddata/zz$36;->val$eventValue:Ljava/util/Map;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    :cond_1
    invoke-static {}, Lcom/tendcloud/tenddata/zz;->c()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x66

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
