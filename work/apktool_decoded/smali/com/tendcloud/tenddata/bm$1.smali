.class final Lcom/tendcloud/tenddata/bm$1;
.super Ljava/util/TimerTask;
.source "td"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tendcloud/tenddata/bm;->f(Lcom/tendcloud/tenddata/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$feature:Lcom/tendcloud/tenddata/a;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/a;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/tendcloud/tenddata/bm$1;->val$feature:Lcom/tendcloud/tenddata/a;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 188
    invoke-static {}, Lcom/tendcloud/tenddata/l;->a()V

    .line 189
    iget-object v0, p0, Lcom/tendcloud/tenddata/bm$1;->val$feature:Lcom/tendcloud/tenddata/a;

    invoke-static {v0}, Lcom/tendcloud/tenddata/bm;->a(Lcom/tendcloud/tenddata/a;)V

    .line 190
    invoke-static {}, Lcom/tendcloud/tenddata/bm;->b()V

    .line 191
    iget-object v0, p0, Lcom/tendcloud/tenddata/bm$1;->val$feature:Lcom/tendcloud/tenddata/a;

    invoke-static {v0}, Lcom/tendcloud/tenddata/bm;->b(Lcom/tendcloud/tenddata/a;)V

    return-void
.end method
