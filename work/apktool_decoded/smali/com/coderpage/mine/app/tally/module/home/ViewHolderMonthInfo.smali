.class Lcom/coderpage/mine/app/tally/module/home/ViewHolderMonthInfo;
.super Lcom/coderpage/mine/app/tally/module/home/BaseViewHolder;
.source "ViewHolderMonthInfo.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBinding:Lcom/coderpage/mine/tally/module/home/MonthInfoItemBinding;

.field private mViewModel:Lcom/coderpage/mine/app/tally/module/home/HomeMonthInfoViewModel;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/coderpage/mine/app/tally/module/home/HomeMonthInfoViewModel;Lcom/coderpage/mine/tally/module/home/MonthInfoItemBinding;)V
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
    invoke-virtual {p3}, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coderpage/mine/app/tally/module/home/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 23
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/home/ViewHolderMonthInfo;->mActivity:Landroid/app/Activity;

    .line 24
    iput-object p2, p0, Lcom/coderpage/mine/app/tally/module/home/ViewHolderMonthInfo;->mViewModel:Lcom/coderpage/mine/app/tally/module/home/HomeMonthInfoViewModel;

    .line 25
    iput-object p3, p0, Lcom/coderpage/mine/app/tally/module/home/ViewHolderMonthInfo;->mBinding:Lcom/coderpage/mine/tally/module/home/MonthInfoItemBinding;

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

    .line 30
    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/module/home/model/HomeDisplayData;->getInternal()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/module/home/model/HomeDisplayData;->getInternal()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/coderpage/mine/app/tally/module/home/model/HomeMonthModel;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/ViewHolderMonthInfo;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 33
    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/module/home/model/HomeDisplayData;->getInternal()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coderpage/mine/app/tally/module/home/model/HomeMonthModel;

    .line 34
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/ViewHolderMonthInfo;->mBinding:Lcom/coderpage/mine/tally/module/home/MonthInfoItemBinding;

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/home/ViewHolderMonthInfo;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBinding;->setActivity(Landroid/app/Activity;)V

    .line 35
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/ViewHolderMonthInfo;->mBinding:Lcom/coderpage/mine/tally/module/home/MonthInfoItemBinding;

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/home/ViewHolderMonthInfo;->mViewModel:Lcom/coderpage/mine/app/tally/module/home/HomeMonthInfoViewModel;

    invoke-virtual {v0, v1}, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBinding;->setVm(Lcom/coderpage/mine/app/tally/module/home/HomeMonthInfoViewModel;)V

    .line 36
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/ViewHolderMonthInfo;->mBinding:Lcom/coderpage/mine/tally/module/home/MonthInfoItemBinding;

    invoke-virtual {v0, p1}, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBinding;->setData(Lcom/coderpage/mine/app/tally/module/home/model/HomeMonthModel;)V

    .line 37
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/ViewHolderMonthInfo;->mViewModel:Lcom/coderpage/mine/app/tally/module/home/HomeMonthInfoViewModel;

    invoke-virtual {v0, p1}, Lcom/coderpage/mine/app/tally/module/home/HomeMonthInfoViewModel;->setData(Lcom/coderpage/mine/app/tally/module/home/model/HomeMonthModel;)V

    .line 49
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/home/ViewHolderMonthInfo;->mBinding:Lcom/coderpage/mine/tally/module/home/MonthInfoItemBinding;

    invoke-virtual {p1}, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBinding;->executePendingBindings()V

    :cond_0
    return-void
.end method
