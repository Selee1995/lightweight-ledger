.class public final synthetic Lcom/coderpage/mine/-$$Lambda$Apm$w_zCdqSj-spTUCCFfTy-9iVNjVw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/coderpage/base/common/SimpleCallback;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/coderpage/base/common/SimpleCallback;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/-$$Lambda$Apm$w_zCdqSj-spTUCCFfTy-9iVNjVw;->f$0:Lcom/coderpage/base/common/SimpleCallback;

    iput-object p2, p0, Lcom/coderpage/mine/-$$Lambda$Apm$w_zCdqSj-spTUCCFfTy-9iVNjVw;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/coderpage/mine/-$$Lambda$Apm$w_zCdqSj-spTUCCFfTy-9iVNjVw;->f$0:Lcom/coderpage/base/common/SimpleCallback;

    iget-object v1, p0, Lcom/coderpage/mine/-$$Lambda$Apm$w_zCdqSj-spTUCCFfTy-9iVNjVw;->f$1:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/coderpage/mine/Apm;->lambda$init$0(Lcom/coderpage/base/common/SimpleCallback;Landroid/content/Context;)V

    return-void
.end method
