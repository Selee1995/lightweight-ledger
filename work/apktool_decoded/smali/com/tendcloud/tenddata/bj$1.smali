.class Lcom/tendcloud/tenddata/bj$1;
.super Ljava/lang/Object;
.source "td"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tendcloud/tenddata/bj;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tendcloud/tenddata/bj;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/bj;Landroid/content/Context;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/tendcloud/tenddata/bj$1;->this$0:Lcom/tendcloud/tenddata/bj;

    iput-object p2, p0, Lcom/tendcloud/tenddata/bj$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 29
    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/ce;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/tendcloud/tenddata/bj$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tendcloud/tenddata/ce;->reflectMSA(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 32
    :try_start_1
    sget-object v0, Lcom/tendcloud/tenddata/bj;->a:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0x2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 33
    invoke-static {}, Lcom/tendcloud/tenddata/dd;->a()Lcom/tendcloud/tenddata/dd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/dd;->c()Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-static {v0}, Lcom/tendcloud/tenddata/y;->b(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_0

    return-void

    .line 43
    :catchall_0
    :cond_0
    :try_start_2
    invoke-static {}, Lcom/tendcloud/tenddata/ck;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/tendcloud/tenddata/bj$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tendcloud/tenddata/ck;->reflectMiUi(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/tendcloud/tenddata/bj$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tendcloud/tenddata/cb;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 46
    iget-object v0, p0, Lcom/tendcloud/tenddata/bj$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tendcloud/tenddata/cb;->bindHWServiceGetOAID(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 47
    :cond_2
    iget-object v0, p0, Lcom/tendcloud/tenddata/bj$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tendcloud/tenddata/ci;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 48
    iget-object v0, p0, Lcom/tendcloud/tenddata/bj$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tendcloud/tenddata/ci;->bindSECServiceGetOAID(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 49
    :cond_3
    iget-object v0, p0, Lcom/tendcloud/tenddata/bj$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tendcloud/tenddata/ch;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 50
    iget-object v0, p0, Lcom/tendcloud/tenddata/bj$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tendcloud/tenddata/ch;->bindOPPOServiceGetOAID(Landroid/content/Context;)V

    goto :goto_0

    .line 51
    :cond_4
    iget-object v0, p0, Lcom/tendcloud/tenddata/bj$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tendcloud/tenddata/cg;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 52
    iget-object v0, p0, Lcom/tendcloud/tenddata/bj$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tendcloud/tenddata/cg;->bindONEPLUSServiceGetOAID(Landroid/content/Context;)V

    goto :goto_0

    .line 53
    :cond_5
    invoke-static {}, Lcom/tendcloud/tenddata/cj;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 54
    iget-object v0, p0, Lcom/tendcloud/tenddata/bj$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tendcloud/tenddata/cj;->reflectVIVO(Landroid/content/Context;)V

    goto :goto_0

    .line 55
    :cond_6
    iget-object v0, p0, Lcom/tendcloud/tenddata/bj$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tendcloud/tenddata/ca;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 56
    iget-object v0, p0, Lcom/tendcloud/tenddata/bj$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tendcloud/tenddata/ca;->bindASUSServiceGetOAID(Landroid/content/Context;)V

    goto :goto_0

    .line 57
    :cond_7
    iget-object v0, p0, Lcom/tendcloud/tenddata/bj$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tendcloud/tenddata/cd;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 58
    iget-object v0, p0, Lcom/tendcloud/tenddata/bj$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tendcloud/tenddata/cd;->reflectMEiZU(Landroid/content/Context;)V

    goto :goto_0

    .line 59
    :cond_8
    iget-object v0, p0, Lcom/tendcloud/tenddata/bj$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tendcloud/tenddata/cl;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 60
    iget-object v0, p0, Lcom/tendcloud/tenddata/bj$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tendcloud/tenddata/cl;->bindZTEServiceGetOAID(Landroid/content/Context;)V

    goto :goto_0

    .line 61
    :cond_9
    iget-object v0, p0, Lcom/tendcloud/tenddata/bj$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tendcloud/tenddata/cc;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 62
    iget-object v0, p0, Lcom/tendcloud/tenddata/bj$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tendcloud/tenddata/cc;->bindLENOVOServiceGetOAID(Landroid/content/Context;)V

    goto :goto_0

    .line 63
    :cond_a
    iget-object v0, p0, Lcom/tendcloud/tenddata/bj$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tendcloud/tenddata/cf;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 64
    iget-object v0, p0, Lcom/tendcloud/tenddata/bj$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tendcloud/tenddata/cf;->reflectNUBIA(Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :cond_b
    :goto_0
    return-void
.end method
