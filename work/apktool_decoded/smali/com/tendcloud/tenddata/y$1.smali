.class final Lcom/tendcloud/tenddata/y$1;
.super Ljava/lang/Object;
.source "td"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tendcloud/tenddata/y;->a(Ljava/lang/Object;Lcom/tendcloud/tenddata/v;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/tendcloud/tenddata/v;

.field final synthetic val$real:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/v;Ljava/lang/Object;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/tendcloud/tenddata/y$1;->val$callback:Lcom/tendcloud/tenddata/v;

    iput-object p2, p0, Lcom/tendcloud/tenddata/y$1;->val$real:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/tendcloud/tenddata/y$1;->val$callback:Lcom/tendcloud/tenddata/v;

    invoke-interface {v0, p1, p2, p3}, Lcom/tendcloud/tenddata/v;->beforeMethodInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    .line 172
    iget-object v0, p0, Lcom/tendcloud/tenddata/y$1;->val$real:Ljava/lang/Object;

    invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 173
    iget-object v1, p0, Lcom/tendcloud/tenddata/y$1;->val$callback:Lcom/tendcloud/tenddata/v;

    invoke-interface {v1, p1, p2, p3, v0}, Lcom/tendcloud/tenddata/v;->afterMethodInvoked(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
