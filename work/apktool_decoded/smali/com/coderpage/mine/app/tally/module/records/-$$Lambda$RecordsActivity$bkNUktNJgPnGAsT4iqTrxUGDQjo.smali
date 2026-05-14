.class public final synthetic Lcom/coderpage/mine/app/tally/module/records/-$$Lambda$RecordsActivity$bkNUktNJgPnGAsT4iqTrxUGDQjo;
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

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/records/-$$Lambda$RecordsActivity$bkNUktNJgPnGAsT4iqTrxUGDQjo;->f$0:Lcom/coderpage/mine/app/tally/module/records/RecordsActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/records/-$$Lambda$RecordsActivity$bkNUktNJgPnGAsT4iqTrxUGDQjo;->f$0:Lcom/coderpage/mine/app/tally/module/records/RecordsActivity;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Lcom/coderpage/mine/app/tally/module/records/RecordsActivity;->lambda$subscribeUi$1$RecordsActivity(Ljava/lang/Integer;)V

    return-void
.end method
