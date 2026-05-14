.class final Lcom/tendcloud/tenddata/bm$2;
.super Ljava/lang/Object;
.source "td"

# interfaces
.implements Lcom/tendcloud/tenddata/cq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tendcloud/tenddata/bm;->g(Lcom/tendcloud/tenddata/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$features:Lcom/tendcloud/tenddata/a;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/a;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/tendcloud/tenddata/bm$2;->val$features:Lcom/tendcloud/tenddata/a;

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

    const/4 v0, 0x0

    .line 249
    :try_start_0
    iget-object v1, p0, Lcom/tendcloud/tenddata/bm$2;->val$features:Lcom/tendcloud/tenddata/a;

    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/i;->a(ZLcom/tendcloud/tenddata/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
