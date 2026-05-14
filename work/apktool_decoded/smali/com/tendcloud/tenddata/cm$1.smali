.class Lcom/tendcloud/tenddata/cm$1;
.super Landroid/os/Handler;
.source "td"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tendcloud/tenddata/cm;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tendcloud/tenddata/cm;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/cm;Landroid/os/Looper;)V
    .locals 0

    .line 380
    iput-object p1, p0, Lcom/tendcloud/tenddata/cm$1;->this$0:Lcom/tendcloud/tenddata/cm;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 385
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/tendcloud/tenddata/a;

    if-eqz v0, :cond_0

    .line 386
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/tendcloud/tenddata/a;

    .line 387
    iget-object v0, p0, Lcom/tendcloud/tenddata/cm$1;->this$0:Lcom/tendcloud/tenddata/cm;

    invoke-static {v0, p1}, Lcom/tendcloud/tenddata/cm;->a(Lcom/tendcloud/tenddata/cm;Lcom/tendcloud/tenddata/a;)V

    .line 389
    :cond_0
    iget-object p1, p0, Lcom/tendcloud/tenddata/cm$1;->this$0:Lcom/tendcloud/tenddata/cm;

    invoke-static {p1}, Lcom/tendcloud/tenddata/cm;->a(Lcom/tendcloud/tenddata/cm;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
