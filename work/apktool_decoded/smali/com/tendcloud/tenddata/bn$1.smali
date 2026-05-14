.class Lcom/tendcloud/tenddata/bn$1;
.super Landroid/os/Handler;
.source "td"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tendcloud/tenddata/bn;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tendcloud/tenddata/bn;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/bn;Landroid/os/Looper;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/tendcloud/tenddata/bn$1;->this$0:Lcom/tendcloud/tenddata/bn;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 90
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    iget-object p1, p0, Lcom/tendcloud/tenddata/bn$1;->this$0:Lcom/tendcloud/tenddata/bn;

    invoke-static {p1}, Lcom/tendcloud/tenddata/bn;->a(Lcom/tendcloud/tenddata/bn;)V

    .line 100
    iget-object p1, p0, Lcom/tendcloud/tenddata/bn$1;->this$0:Lcom/tendcloud/tenddata/bn;

    invoke-static {p1}, Lcom/tendcloud/tenddata/bn;->b(Lcom/tendcloud/tenddata/bn;)V

    goto :goto_0

    .line 92
    :cond_1
    iget-object p1, p0, Lcom/tendcloud/tenddata/bn$1;->this$0:Lcom/tendcloud/tenddata/bn;

    invoke-static {p1}, Lcom/tendcloud/tenddata/bn;->a(Lcom/tendcloud/tenddata/bn;)V

    goto :goto_0

    .line 95
    :cond_2
    iget-object p1, p0, Lcom/tendcloud/tenddata/bn$1;->this$0:Lcom/tendcloud/tenddata/bn;

    invoke-static {p1}, Lcom/tendcloud/tenddata/bn;->b(Lcom/tendcloud/tenddata/bn;)V

    :goto_0
    return-void
.end method
