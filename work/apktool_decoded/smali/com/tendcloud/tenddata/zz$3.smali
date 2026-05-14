.class Lcom/tendcloud/tenddata/zz$3;
.super Ljava/lang/Object;
.source "td"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tendcloud/tenddata/zz;->a(Ljava/lang/String;Lcom/tendcloud/tenddata/TalkingDataProfile;Ljava/lang/String;Ljava/util/Map;Lcom/tendcloud/tenddata/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tendcloud/tenddata/zz;

.field final synthetic val$eventValue:Ljava/util/Map;

.field final synthetic val$invitationCode:Ljava/lang/String;

.field final synthetic val$profile:Lcom/tendcloud/tenddata/TalkingDataProfile;

.field final synthetic val$profileId:Ljava/lang/String;

.field final synthetic val$service:Lcom/tendcloud/tenddata/a;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/zz;Lcom/tendcloud/tenddata/a;Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/TalkingDataProfile;Ljava/util/Map;)V
    .locals 0

    .line 787
    iput-object p1, p0, Lcom/tendcloud/tenddata/zz$3;->this$0:Lcom/tendcloud/tenddata/zz;

    iput-object p2, p0, Lcom/tendcloud/tenddata/zz$3;->val$service:Lcom/tendcloud/tenddata/a;

    iput-object p3, p0, Lcom/tendcloud/tenddata/zz$3;->val$profileId:Ljava/lang/String;

    iput-object p4, p0, Lcom/tendcloud/tenddata/zz$3;->val$invitationCode:Ljava/lang/String;

    iput-object p5, p0, Lcom/tendcloud/tenddata/zz$3;->val$profile:Lcom/tendcloud/tenddata/TalkingDataProfile;

    iput-object p6, p0, Lcom/tendcloud/tenddata/zz$3;->val$eventValue:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "action"

    .line 791
    :try_start_0
    new-instance v1, Lcom/tendcloud/tenddata/zz$a;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/zz$a;-><init>()V

    .line 792
    iget-object v2, v1, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v3, "apiType"

    const/16 v4, 0x9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 793
    iget-object v2, v1, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v3, "domain"

    const-string v4, "account"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 794
    iget-object v2, v1, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v3, "service"

    iget-object v4, p0, Lcom/tendcloud/tenddata/zz$3;->val$service:Lcom/tendcloud/tenddata/a;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    iget-object v2, v1, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v3, "register"

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "APP"

    .line 796
    iget-object v3, p0, Lcom/tendcloud/tenddata/zz$3;->val$service:Lcom/tendcloud/tenddata/a;

    invoke-virtual {v3}, Lcom/tendcloud/tenddata/a;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 797
    iget-object v2, v1, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v3, "_td_register"

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 799
    :cond_0
    iget-object v0, v1, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v2, "accountId"

    iget-object v3, p0, Lcom/tendcloud/tenddata/zz$3;->val$profileId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 800
    iget-object v0, v1, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v2, "invitationCode"

    iget-object v3, p0, Lcom/tendcloud/tenddata/zz$3;->val$invitationCode:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 801
    iget-object v0, v1, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v2, "data"

    iget-object v3, p0, Lcom/tendcloud/tenddata/zz$3;->val$profile:Lcom/tendcloud/tenddata/TalkingDataProfile;

    invoke-static {v3}, Lcom/tendcloud/tenddata/y;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 802
    iget-object v0, p0, Lcom/tendcloud/tenddata/zz$3;->val$eventValue:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 803
    iget-object v0, v1, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v2, "eventValue"

    iget-object v3, p0, Lcom/tendcloud/tenddata/zz$3;->val$eventValue:Ljava/util/Map;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    :cond_1
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
