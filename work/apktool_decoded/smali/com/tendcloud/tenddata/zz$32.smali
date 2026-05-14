.class Lcom/tendcloud/tenddata/zz$32;
.super Ljava/lang/Object;
.source "td"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tendcloud/tenddata/zz;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/tendcloud/tenddata/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tendcloud/tenddata/zz;

.field final synthetic val$category:Ljava/lang/String;

.field final synthetic val$content:Ljava/lang/String;

.field final synthetic val$eventValue:Ljava/util/Map;

.field final synthetic val$features:Lcom/tendcloud/tenddata/a;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/zz;Lcom/tendcloud/tenddata/a;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 2071
    iput-object p1, p0, Lcom/tendcloud/tenddata/zz$32;->this$0:Lcom/tendcloud/tenddata/zz;

    iput-object p2, p0, Lcom/tendcloud/tenddata/zz$32;->val$features:Lcom/tendcloud/tenddata/a;

    iput-object p3, p0, Lcom/tendcloud/tenddata/zz$32;->val$category:Ljava/lang/String;

    iput-object p4, p0, Lcom/tendcloud/tenddata/zz$32;->val$content:Ljava/lang/String;

    iput-object p5, p0, Lcom/tendcloud/tenddata/zz$32;->val$eventValue:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 2075
    :try_start_0
    new-instance v0, Lcom/tendcloud/tenddata/zz$a;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/zz$a;-><init>()V

    .line 2076
    iget-object v1, v0, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v2, "apiType"

    const/16 v3, 0x11

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2077
    iget-object v1, v0, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v2, "service"

    iget-object v3, p0, Lcom/tendcloud/tenddata/zz$32;->val$features:Lcom/tendcloud/tenddata/a;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2078
    iget-object v1, v0, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v2, "domain"

    const-string v3, "user"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2079
    iget-object v1, v0, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v2, "action"

    const-string v3, "favorites"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2080
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    const-string v2, "category"

    .line 2081
    iget-object v3, p0, Lcom/tendcloud/tenddata/zz$32;->val$category:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "content"

    .line 2082
    iget-object v3, p0, Lcom/tendcloud/tenddata/zz$32;->val$content:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2083
    iget-object v2, p0, Lcom/tendcloud/tenddata/zz$32;->val$eventValue:Ljava/util/Map;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "eventValue"

    .line 2084
    iget-object v3, p0, Lcom/tendcloud/tenddata/zz$32;->val$eventValue:Ljava/util/Map;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2086
    :cond_0
    iget-object v2, v0, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v3, "data"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2087
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
