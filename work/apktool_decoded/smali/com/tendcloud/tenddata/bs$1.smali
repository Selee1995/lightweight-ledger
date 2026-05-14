.class Lcom/tendcloud/tenddata/bs$1;
.super Ljava/lang/Object;
.source "td"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tendcloud/tenddata/bs;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tendcloud/tenddata/bs;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/bs;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/tendcloud/tenddata/bs$1;->this$0:Lcom/tendcloud/tenddata/bs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 241
    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/bs$1;->this$0:Lcom/tendcloud/tenddata/bs;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tendcloud/tenddata/bs;->b:J

    .line 244
    iget-object v0, p0, Lcom/tendcloud/tenddata/bs$1;->this$0:Lcom/tendcloud/tenddata/bs;

    iget v0, v0, Lcom/tendcloud/tenddata/bs;->d:I

    iget-object v1, p0, Lcom/tendcloud/tenddata/bs$1;->this$0:Lcom/tendcloud/tenddata/bs;

    iget v1, v1, Lcom/tendcloud/tenddata/bs;->e:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/tendcloud/tenddata/bs$1;->this$0:Lcom/tendcloud/tenddata/bs;

    iget v0, v0, Lcom/tendcloud/tenddata/bs;->d:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/tendcloud/tenddata/bs$1;->this$0:Lcom/tendcloud/tenddata/bs;

    iget-wide v0, v0, Lcom/tendcloud/tenddata/bs;->b:J

    iget-object v2, p0, Lcom/tendcloud/tenddata/bs$1;->this$0:Lcom/tendcloud/tenddata/bs;

    iget-wide v2, v2, Lcom/tendcloud/tenddata/bs;->c:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x2bf20

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 245
    new-instance v0, Lcom/tendcloud/tenddata/bx;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/bx;-><init>()V

    const-string v1, "env"

    .line 246
    iput-object v1, v0, Lcom/tendcloud/tenddata/bx;->b:Ljava/lang/String;

    const-string v1, "cellUpdate"

    .line 247
    iput-object v1, v0, Lcom/tendcloud/tenddata/bx;->c:Ljava/lang/String;

    .line 248
    sget-object v1, Lcom/tendcloud/tenddata/a;->ENV:Lcom/tendcloud/tenddata/a;

    iput-object v1, v0, Lcom/tendcloud/tenddata/bx;->a:Lcom/tendcloud/tenddata/a;

    .line 249
    invoke-static {}, Lcom/tendcloud/tenddata/z;->a()Lcom/tendcloud/tenddata/z;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tendcloud/tenddata/z;->post(Ljava/lang/Object;)V

    .line 251
    iget-object v0, p0, Lcom/tendcloud/tenddata/bs$1;->this$0:Lcom/tendcloud/tenddata/bs;

    iget-wide v1, v0, Lcom/tendcloud/tenddata/bs;->b:J

    iput-wide v1, v0, Lcom/tendcloud/tenddata/bs;->c:J

    .line 252
    iget-object v0, p0, Lcom/tendcloud/tenddata/bs$1;->this$0:Lcom/tendcloud/tenddata/bs;

    iget v1, v0, Lcom/tendcloud/tenddata/bs;->d:I

    iput v1, v0, Lcom/tendcloud/tenddata/bs;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method
