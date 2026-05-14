.class Lcom/tendcloud/tenddata/bt$1;
.super Ljava/lang/Object;
.source "td"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tendcloud/tenddata/bt;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tendcloud/tenddata/bt;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/bt;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/tendcloud/tenddata/bt$1;->this$0:Lcom/tendcloud/tenddata/bt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 287
    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/bt$1;->this$0:Lcom/tendcloud/tenddata/bt;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tendcloud/tenddata/bt;->f:J

    .line 288
    iget-object v0, p0, Lcom/tendcloud/tenddata/bt$1;->this$0:Lcom/tendcloud/tenddata/bt;

    iget-wide v0, v0, Lcom/tendcloud/tenddata/bt;->f:J

    iget-object v2, p0, Lcom/tendcloud/tenddata/bt$1;->this$0:Lcom/tendcloud/tenddata/bt;

    iget-wide v2, v2, Lcom/tendcloud/tenddata/bt;->g:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/tendcloud/tenddata/bt$1;->this$0:Lcom/tendcloud/tenddata/bt;

    invoke-static {v2}, Lcom/tendcloud/tenddata/bt;->a(Lcom/tendcloud/tenddata/bt;)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 289
    iget-object v0, p0, Lcom/tendcloud/tenddata/bt$1;->this$0:Lcom/tendcloud/tenddata/bt;

    iget-wide v1, v0, Lcom/tendcloud/tenddata/bt;->f:J

    iput-wide v1, v0, Lcom/tendcloud/tenddata/bt;->g:J

    .line 290
    iget-object v0, p0, Lcom/tendcloud/tenddata/bt$1;->this$0:Lcom/tendcloud/tenddata/bt;

    invoke-static {v0}, Lcom/tendcloud/tenddata/bt;->b(Lcom/tendcloud/tenddata/bt;)Lcom/tendcloud/tenddata/ba;

    move-result-object v1

    iput-object v1, v0, Lcom/tendcloud/tenddata/bt;->d:Lcom/tendcloud/tenddata/ba;

    .line 291
    iget-object v0, p0, Lcom/tendcloud/tenddata/bt$1;->this$0:Lcom/tendcloud/tenddata/bt;

    iget-object v0, v0, Lcom/tendcloud/tenddata/bt;->d:Lcom/tendcloud/tenddata/ba;

    if-nez v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/tendcloud/tenddata/bt$1;->this$0:Lcom/tendcloud/tenddata/bt;

    invoke-static {v0}, Lcom/tendcloud/tenddata/bt;->c(Lcom/tendcloud/tenddata/bt;)V

    .line 294
    iget-object v0, p0, Lcom/tendcloud/tenddata/bt$1;->this$0:Lcom/tendcloud/tenddata/bt;

    invoke-static {v0}, Lcom/tendcloud/tenddata/bt;->d(Lcom/tendcloud/tenddata/bt;)Lcom/tendcloud/tenddata/ba;

    move-result-object v1

    iput-object v1, v0, Lcom/tendcloud/tenddata/bt;->d:Lcom/tendcloud/tenddata/ba;

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/bt$1;->this$0:Lcom/tendcloud/tenddata/bt;

    invoke-static {v0}, Lcom/tendcloud/tenddata/bt;->d(Lcom/tendcloud/tenddata/bt;)Lcom/tendcloud/tenddata/ba;

    move-result-object v1

    iput-object v1, v0, Lcom/tendcloud/tenddata/bt;->e:Lcom/tendcloud/tenddata/ba;

    .line 297
    iget-object v0, p0, Lcom/tendcloud/tenddata/bt$1;->this$0:Lcom/tendcloud/tenddata/bt;

    iget-object v0, v0, Lcom/tendcloud/tenddata/bt;->d:Lcom/tendcloud/tenddata/ba;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tendcloud/tenddata/bt$1;->this$0:Lcom/tendcloud/tenddata/bt;

    iget-object v0, v0, Lcom/tendcloud/tenddata/bt;->e:Lcom/tendcloud/tenddata/ba;

    if-nez v0, :cond_1

    goto :goto_0

    .line 303
    :cond_1
    iget-object v0, p0, Lcom/tendcloud/tenddata/bt$1;->this$0:Lcom/tendcloud/tenddata/bt;

    iget-object v0, v0, Lcom/tendcloud/tenddata/bt;->a:Lcom/tendcloud/tenddata/bb;

    iget-object v1, p0, Lcom/tendcloud/tenddata/bt$1;->this$0:Lcom/tendcloud/tenddata/bt;

    iget-object v1, v1, Lcom/tendcloud/tenddata/bt;->d:Lcom/tendcloud/tenddata/ba;

    iget-object v2, p0, Lcom/tendcloud/tenddata/bt$1;->this$0:Lcom/tendcloud/tenddata/bt;

    iget-object v2, v2, Lcom/tendcloud/tenddata/bt;->e:Lcom/tendcloud/tenddata/ba;

    invoke-virtual {v0, v1, v2}, Lcom/tendcloud/tenddata/bb;->a(Lcom/tendcloud/tenddata/ba;Lcom/tendcloud/tenddata/ba;)D

    move-result-wide v0

    const-wide v2, 0x3fe999999999999aL    # 0.8

    cmpg-double v4, v0, v2

    if-gez v4, :cond_2

    .line 304
    iget-object v0, p0, Lcom/tendcloud/tenddata/bt$1;->this$0:Lcom/tendcloud/tenddata/bt;

    invoke-static {v0}, Lcom/tendcloud/tenddata/bt;->c(Lcom/tendcloud/tenddata/bt;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :catchall_0
    :cond_2
    :goto_0
    return-void
.end method
