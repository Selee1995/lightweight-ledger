.class Lcom/tendcloud/tenddata/ci$1;
.super Ljava/lang/Object;
.source "td"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/ci;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tendcloud/tenddata/ci;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/ci;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/tendcloud/tenddata/ci$1;->this$0:Lcom/tendcloud/tenddata/ci;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 79
    sget-object p1, Lcom/tendcloud/tenddata/w;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lcom/tendcloud/tenddata/ci$1$1;

    invoke-direct {v0, p0, p2}, Lcom/tendcloud/tenddata/ci$1$1;-><init>(Lcom/tendcloud/tenddata/ci$1;Landroid/os/IBinder;)V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
