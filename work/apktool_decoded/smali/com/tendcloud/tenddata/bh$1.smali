.class Lcom/tendcloud/tenddata/bh$1;
.super Landroid/os/Handler;
.source "td"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tendcloud/tenddata/bh;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field appId:Ljava/lang/String;

.field channelId:Ljava/lang/String;

.field features:Lcom/tendcloud/tenddata/a;

.field final synthetic this$0:Lcom/tendcloud/tenddata/bh;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/bh;Landroid/os/Looper;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/tendcloud/tenddata/bh$1;->this$0:Lcom/tendcloud/tenddata/bh;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 110
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "appId"

    .line 112
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tendcloud/tenddata/bh$1;->appId:Ljava/lang/String;

    const-string v1, "channelId"

    .line 113
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tendcloud/tenddata/bh$1;->channelId:Ljava/lang/String;

    const-string v1, "Features"

    .line 114
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/a;

    iput-object v0, p0, Lcom/tendcloud/tenddata/bh$1;->features:Lcom/tendcloud/tenddata/a;

    .line 117
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 128
    :cond_1
    new-instance p1, Lcom/tendcloud/tenddata/bx;

    invoke-direct {p1}, Lcom/tendcloud/tenddata/bx;-><init>()V

    const-string v0, "app"

    .line 129
    iput-object v0, p1, Lcom/tendcloud/tenddata/bx;->b:Ljava/lang/String;

    const-string v0, "initaddition"

    .line 130
    iput-object v0, p1, Lcom/tendcloud/tenddata/bx;->c:Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lcom/tendcloud/tenddata/bh$1;->features:Lcom/tendcloud/tenddata/a;

    iput-object v0, p1, Lcom/tendcloud/tenddata/bx;->a:Lcom/tendcloud/tenddata/a;

    .line 132
    invoke-static {}, Lcom/tendcloud/tenddata/z;->a()Lcom/tendcloud/tenddata/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tendcloud/tenddata/z;->post(Ljava/lang/Object;)V

    .line 134
    new-instance p1, Lcom/tendcloud/tenddata/bw;

    invoke-direct {p1}, Lcom/tendcloud/tenddata/bw;-><init>()V

    .line 135
    iget-object v0, p0, Lcom/tendcloud/tenddata/bh$1;->features:Lcom/tendcloud/tenddata/a;

    iput-object v0, p1, Lcom/tendcloud/tenddata/bw;->a:Lcom/tendcloud/tenddata/a;

    .line 136
    sget-object v0, Lcom/tendcloud/tenddata/bw$a;->IMMEDIATELY:Lcom/tendcloud/tenddata/bw$a;

    iput-object v0, p1, Lcom/tendcloud/tenddata/bw;->b:Lcom/tendcloud/tenddata/bw$a;

    .line 137
    invoke-static {}, Lcom/tendcloud/tenddata/z;->a()Lcom/tendcloud/tenddata/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tendcloud/tenddata/z;->post(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 124
    invoke-static {p1}, Lcom/tendcloud/tenddata/bh;->a(Z)Z

    .line 125
    iget-object p1, p0, Lcom/tendcloud/tenddata/bh$1;->this$0:Lcom/tendcloud/tenddata/bh;

    iget-object v0, p0, Lcom/tendcloud/tenddata/bh$1;->appId:Ljava/lang/String;

    iget-object v1, p0, Lcom/tendcloud/tenddata/bh$1;->channelId:Ljava/lang/String;

    iget-object v2, p0, Lcom/tendcloud/tenddata/bh$1;->features:Lcom/tendcloud/tenddata/a;

    invoke-static {p1, v0, v1, v2}, Lcom/tendcloud/tenddata/bh;->a(Lcom/tendcloud/tenddata/bh;Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V

    goto :goto_0

    .line 120
    :cond_3
    iget-object p1, p0, Lcom/tendcloud/tenddata/bh$1;->this$0:Lcom/tendcloud/tenddata/bh;

    iget-object v0, p0, Lcom/tendcloud/tenddata/bh$1;->appId:Ljava/lang/String;

    iget-object v1, p0, Lcom/tendcloud/tenddata/bh$1;->channelId:Ljava/lang/String;

    iget-object v2, p0, Lcom/tendcloud/tenddata/bh$1;->features:Lcom/tendcloud/tenddata/a;

    invoke-static {p1, v0, v1, v2}, Lcom/tendcloud/tenddata/bh;->a(Lcom/tendcloud/tenddata/bh;Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method
