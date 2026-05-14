.class public final synthetic Lcom/coderpage/mine/app/tally/module/home/-$$Lambda$HomeActivity$R5_9QohTYQfThmGldvbcHPQj86Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/arch/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/coderpage/mine/app/tally/module/home/HomeActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/coderpage/mine/app/tally/module/home/HomeActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/home/-$$Lambda$HomeActivity$R5_9QohTYQfThmGldvbcHPQj86Q;->f$0:Lcom/coderpage/mine/app/tally/module/home/HomeActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/-$$Lambda$HomeActivity$R5_9QohTYQfThmGldvbcHPQj86Q;->f$0:Lcom/coderpage/mine/app/tally/module/home/HomeActivity;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Lcom/coderpage/mine/app/tally/module/home/HomeActivity;->lambda$subscribeUi$1$HomeActivity(Ljava/lang/Boolean;)V

    return-void
.end method
