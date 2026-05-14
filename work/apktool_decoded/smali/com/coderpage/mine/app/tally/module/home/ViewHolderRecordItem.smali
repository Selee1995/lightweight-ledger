.class public Lcom/coderpage/mine/app/tally/module/home/ViewHolderRecordItem;
.super Lcom/coderpage/mine/app/tally/module/home/BaseViewHolder;
.source "ViewHolderRecordItem.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBinding:Lcom/coderpage/mine/tally/module/records/RecordItemBinding;

.field private mViewModel:Lcom/coderpage/mine/app/tally/module/records/RecordItemViewModel;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/coderpage/mine/app/tally/module/records/RecordItemViewModel;Lcom/coderpage/mine/tally/module/records/RecordItemBinding;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "viewModel",
            "binding"
        }
    .end annotation

    .line 22
    invoke-virtual {p3}, Lcom/coderpage/mine/tally/module/records/RecordItemBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coderpage/mine/app/tally/module/home/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 23
    iput-object p3, p0, Lcom/coderpage/mine/app/tally/module/home/ViewHolderRecordItem;->mBinding:Lcom/coderpage/mine/tally/module/records/RecordItemBinding;

    .line 24
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/home/ViewHolderRecordItem;->mActivity:Landroid/app/Activity;

    .line 25
    iput-object p2, p0, Lcom/coderpage/mine/app/tally/module/home/ViewHolderRecordItem;->mViewModel:Lcom/coderpage/mine/app/tally/module/records/RecordItemViewModel;

    return-void
.end method


# virtual methods
.method bindData(Lcom/coderpage/mine/app/tally/module/home/model/HomeDisplayData;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 29
    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/module/home/model/HomeDisplayData;->getInternal()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/module/home/model/HomeDisplayData;->getInternal()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/coderpage/mine/app/tally/persistence/model/Record;

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/module/home/model/HomeDisplayData;->getInternal()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coderpage/mine/app/tally/persistence/model/Record;

    .line 31
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/ViewHolderRecordItem;->mBinding:Lcom/coderpage/mine/tally/module/records/RecordItemBinding;

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/home/ViewHolderRecordItem;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/coderpage/mine/tally/module/records/RecordItemBinding;->setActivity(Landroid/app/Activity;)V

    .line 32
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/ViewHolderRecordItem;->mBinding:Lcom/coderpage/mine/tally/module/records/RecordItemBinding;

    invoke-virtual {v0, p1}, Lcom/coderpage/mine/tally/module/records/RecordItemBinding;->setData(Lcom/coderpage/mine/app/tally/persistence/model/Record;)V

    .line 33
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/home/ViewHolderRecordItem;->mBinding:Lcom/coderpage/mine/tally/module/records/RecordItemBinding;

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/ViewHolderRecordItem;->mViewModel:Lcom/coderpage/mine/app/tally/module/records/RecordItemViewModel;

    invoke-virtual {p1, v0}, Lcom/coderpage/mine/tally/module/records/RecordItemBinding;->setVm(Lcom/coderpage/mine/app/tally/module/records/RecordItemViewModel;)V

    .line 34
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/home/ViewHolderRecordItem;->mBinding:Lcom/coderpage/mine/tally/module/records/RecordItemBinding;

    invoke-virtual {p1}, Lcom/coderpage/mine/tally/module/records/RecordItemBinding;->executePendingBindings()V

    :cond_0
    return-void
.end method
