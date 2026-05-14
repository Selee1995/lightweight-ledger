.class public final synthetic Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryEditActivity$ZcRvlvsc6jz3wiex54Z9AFOt7pQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/arch/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryEditActivity$ZcRvlvsc6jz3wiex54Z9AFOt7pQ;->f$0:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryEditActivity$ZcRvlvsc6jz3wiex54Z9AFOt7pQ;->f$0:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditActivity;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditActivity;->lambda$subscribeUi$1$CategoryEditActivity(Ljava/lang/String;)V

    return-void
.end method
