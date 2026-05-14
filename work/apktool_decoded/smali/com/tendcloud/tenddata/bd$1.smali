.class Lcom/tendcloud/tenddata/bd$1;
.super Ljava/lang/Object;
.source "td"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tendcloud/tenddata/bd;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tendcloud/tenddata/bd;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/bd;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/tendcloud/tenddata/bd$1;->this$0:Lcom/tendcloud/tenddata/bd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 60
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tendcloud/tenddata/o;->C(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    new-instance v1, Lcom/tendcloud/tenddata/bx;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/bx;-><init>()V

    const-string v2, "env"

    .line 63
    iput-object v2, v1, Lcom/tendcloud/tenddata/bx;->b:Ljava/lang/String;

    const-string v2, "arp"

    .line 64
    iput-object v2, v1, Lcom/tendcloud/tenddata/bx;->c:Ljava/lang/String;

    .line 65
    iput-object v0, v1, Lcom/tendcloud/tenddata/bx;->d:Ljava/util/Map;

    .line 66
    sget-object v0, Lcom/tendcloud/tenddata/a;->ENV:Lcom/tendcloud/tenddata/a;

    iput-object v0, v1, Lcom/tendcloud/tenddata/bx;->a:Lcom/tendcloud/tenddata/a;

    .line 67
    invoke-static {}, Lcom/tendcloud/tenddata/z;->a()Lcom/tendcloud/tenddata/z;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/z;->post(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method
