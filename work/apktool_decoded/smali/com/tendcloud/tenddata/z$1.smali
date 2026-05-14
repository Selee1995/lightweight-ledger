.class Lcom/tendcloud/tenddata/z$1;
.super Ljava/lang/ThreadLocal;
.source "td"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Ljava/util/concurrent/ConcurrentLinkedQueue<",
        "Lcom/tendcloud/tenddata/z$a;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tendcloud/tenddata/z;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/z;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/tendcloud/tenddata/z$1;->this$0:Lcom/tendcloud/tenddata/z;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lcom/tendcloud/tenddata/z$1;->initialValue()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/tendcloud/tenddata/z$a;",
            ">;"
        }
    .end annotation

    .line 47
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    return-object v0
.end method
