.class public final synthetic Lcom/coderpage/mine/app/tally/module/records/-$$Lambda$RecordsActivity$zkRxv3f5X_MSFUB5GOMDhnBldN8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/arch/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/coderpage/mine/app/tally/module/records/RecordsActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/coderpage/mine/app/tally/module/records/RecordsActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/records/-$$Lambda$RecordsActivity$zkRxv3f5X_MSFUB5GOMDhnBldN8;->f$0:Lcom/coderpage/mine/app/tally/module/records/RecordsActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/records/-$$Lambda$RecordsActivity$zkRxv3f5X_MSFUB5GOMDhnBldN8;->f$0:Lcom/coderpage/mine/app/tally/module/records/RecordsActivity;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lcom/coderpage/mine/app/tally/module/records/RecordsActivity;->lambda$subscribeUi$5$RecordsActivity(Ljava/lang/CharSequence;)V

    return-void
.end method
