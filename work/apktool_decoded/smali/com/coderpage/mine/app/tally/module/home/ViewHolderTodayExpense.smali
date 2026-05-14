.class Lcom/coderpage/mine/app/tally/module/home/ViewHolderTodayExpense;
.super Lcom/coderpage/mine/app/tally/module/home/BaseViewHolder;
.source "ViewHolderTodayExpense.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBinding:Lcom/coderpage/mine/tally/module/home/TodayExpenseItemBinding;

.field private mViewModel:Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;Lcom/coderpage/mine/tally/module/home/TodayExpenseItemBinding;)V
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

    .line 20
    invoke-virtual {p3}, Lcom/coderpage/mine/tally/module/home/TodayExpenseItemBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coderpage/mine/app/tally/module/home/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 21
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/home/ViewHolderTodayExpense;->mActivity:Landroid/app/Activity;

    .line 22
    iput-object p2, p0, Lcom/coderpage/mine/app/tally/module/home/ViewHolderTodayExpense;->mViewModel:Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;

    .line 23
    iput-object p3, p0, Lcom/coderpage/mine/app/tally/module/home/ViewHolderTodayExpense;->mBinding:Lcom/coderpage/mine/tally/module/home/TodayExpenseItemBinding;

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

    .line 28
    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/module/home/model/HomeDisplayData;->getInternal()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/module/home/model/HomeDisplayData;->getInternal()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/coderpage/mine/app/tally/module/home/model/HomeTodayDayRecordsModel;

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/module/home/model/HomeDisplayData;->getInternal()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coderpage/mine/app/tally/module/home/model/HomeTodayDayRecordsModel;

    .line 30
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/ViewHolderTodayExpense;->mBinding:Lcom/coderpage/mine/tally/module/home/TodayExpenseItemBinding;

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/home/ViewHolderTodayExpense;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/coderpage/mine/tally/module/home/TodayExpenseItemBinding;->setActivity(Landroid/app/Activity;)V

    .line 31
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/ViewHolderTodayExpense;->mBinding:Lcom/coderpage/mine/tally/module/home/TodayExpenseItemBinding;

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/home/ViewHolderTodayExpense;->mViewModel:Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;

    invoke-virtual {v0, v1}, Lcom/coderpage/mine/tally/module/home/TodayExpenseItemBinding;->setVm(Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;)V

    .line 32
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/ViewHolderTodayExpense;->mBinding:Lcom/coderpage/mine/tally/module/home/TodayExpenseItemBinding;

    invoke-virtual {v0, p1}, Lcom/coderpage/mine/tally/module/home/TodayExpenseItemBinding;->setData(Lcom/coderpage/mine/app/tally/module/home/model/HomeTodayDayRecordsModel;)V

    .line 33
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/home/ViewHolderTodayExpense;->mBinding:Lcom/coderpage/mine/tally/module/home/TodayExpenseItemBinding;

    invoke-virtual {p1}, Lcom/coderpage/mine/tally/module/home/TodayExpenseItemBinding;->executePendingBindings()V

    :cond_0
    return-void
.end method
