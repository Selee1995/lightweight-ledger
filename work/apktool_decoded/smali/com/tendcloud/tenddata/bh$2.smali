.class Lcom/tendcloud/tenddata/bh$2;
.super Ljava/lang/Object;
.source "td"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tendcloud/tenddata/bh;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tendcloud/tenddata/bh;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/bh;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/tendcloud/tenddata/bh$2;->this$0:Lcom/tendcloud/tenddata/bh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/tendcloud/tenddata/bh$2;->this$0:Lcom/tendcloud/tenddata/bh;

    invoke-static {v0}, Lcom/tendcloud/tenddata/bh;->a(Lcom/tendcloud/tenddata/bh;)V

    return-void
.end method
