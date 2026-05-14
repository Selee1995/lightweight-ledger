.class public final synthetic Lcom/coderpage/mine/app/tally/module/records/-$$Lambda$RecordItemViewModel$MHnjrKaN9EKwiMKguNb0I0bkB30;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/coderpage/mine/app/tally/module/records/RecordItemViewModel;

.field public final synthetic f$1:Lcom/coderpage/mine/app/tally/persistence/model/Record;


# direct methods
.method public synthetic constructor <init>(Lcom/coderpage/mine/app/tally/module/records/RecordItemViewModel;Lcom/coderpage/mine/app/tally/persistence/model/Record;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/records/-$$Lambda$RecordItemViewModel$MHnjrKaN9EKwiMKguNb0I0bkB30;->f$0:Lcom/coderpage/mine/app/tally/module/records/RecordItemViewModel;

    iput-object p2, p0, Lcom/coderpage/mine/app/tally/module/records/-$$Lambda$RecordItemViewModel$MHnjrKaN9EKwiMKguNb0I0bkB30;->f$1:Lcom/coderpage/mine/app/tally/persistence/model/Record;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/records/-$$Lambda$RecordItemViewModel$MHnjrKaN9EKwiMKguNb0I0bkB30;->f$0:Lcom/coderpage/mine/app/tally/module/records/RecordItemViewModel;

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/records/-$$Lambda$RecordItemViewModel$MHnjrKaN9EKwiMKguNb0I0bkB30;->f$1:Lcom/coderpage/mine/app/tally/persistence/model/Record;

    invoke-virtual {v0, v1, p1, p2}, Lcom/coderpage/mine/app/tally/module/records/RecordItemViewModel;->lambda$onItemLongClick$1$RecordItemViewModel(Lcom/coderpage/mine/app/tally/persistence/model/Record;Landroid/content/DialogInterface;I)V

    return-void
.end method
