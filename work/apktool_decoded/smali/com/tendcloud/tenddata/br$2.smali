.class Lcom/tendcloud/tenddata/br$2;
.super Ljava/lang/Object;
.source "td"

# interfaces
.implements Lcom/tendcloud/tenddata/cq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tendcloud/tenddata/br;->a(JLcom/tendcloud/tenddata/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tendcloud/tenddata/br;

.field final synthetic val$service:Lcom/tendcloud/tenddata/a;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/br;Lcom/tendcloud/tenddata/a;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/tendcloud/tenddata/br$2;->this$0:Lcom/tendcloud/tenddata/br;

    iput-object p2, p0, Lcom/tendcloud/tenddata/br$2;->val$service:Lcom/tendcloud/tenddata/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStoreFailed()V
    .locals 0

    return-void
.end method

.method public onStoreSuccess()V
    .locals 2

    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/br$2;->this$0:Lcom/tendcloud/tenddata/br;

    iget-object v1, p0, Lcom/tendcloud/tenddata/br$2;->val$service:Lcom/tendcloud/tenddata/a;

    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/br;->a(Lcom/tendcloud/tenddata/br;Lcom/tendcloud/tenddata/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
