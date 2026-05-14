.class Lcom/tendcloud/tenddata/zz$23;
.super Ljava/lang/Object;
.source "td"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tendcloud/tenddata/zz;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tendcloud/tenddata/zz;

.field final synthetic val$service:Lcom/tendcloud/tenddata/a;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/zz;Lcom/tendcloud/tenddata/a;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/tendcloud/tenddata/zz$23;->this$0:Lcom/tendcloud/tenddata/zz;

    iput-object p2, p0, Lcom/tendcloud/tenddata/zz$23;->val$service:Lcom/tendcloud/tenddata/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 229
    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/bm;->a()Lcom/tendcloud/tenddata/bm;

    .line 231
    new-instance v0, Lcom/tendcloud/tenddata/zz$a;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/zz$a;-><init>()V

    .line 232
    iget-object v1, v0, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v2, "apiType"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    iget-object v1, v0, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v2, "appId"

    invoke-static {}, Lcom/tendcloud/tenddata/zz;->f()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, ""

    if-eqz v3, :cond_0

    :try_start_1
    invoke-static {}, Lcom/tendcloud/tenddata/zz;->f()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    iget-object v1, v0, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v2, "channelId"

    invoke-static {}, Lcom/tendcloud/tenddata/zz;->g()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/tendcloud/tenddata/zz;->g()Ljava/lang/String;

    move-result-object v4

    :cond_1
    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    iget-object v1, v0, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v2, "service"

    iget-object v3, p0, Lcom/tendcloud/tenddata/zz$23;->val$service:Lcom/tendcloud/tenddata/a;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    iget-object v1, v0, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v2, "action"

    const-string v3, "init"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    invoke-static {}, Lcom/tendcloud/tenddata/zz;->c()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x65

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 241
    invoke-static {}, Lcom/tendcloud/tenddata/bn;->a()Lcom/tendcloud/tenddata/bn;

    .line 244
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tendcloud/tenddata/y;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 245
    iget-object v0, p0, Lcom/tendcloud/tenddata/zz$23;->val$service:Lcom/tendcloud/tenddata/a;

    invoke-static {v0}, Lcom/tendcloud/tenddata/c;->a(Lcom/tendcloud/tenddata/a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_2
    return-void
.end method
