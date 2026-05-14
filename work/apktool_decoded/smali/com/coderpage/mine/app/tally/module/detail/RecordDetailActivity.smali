.class public Lcom/coderpage/mine/app/tally/module/detail/RecordDetailActivity;
.super Lcom/coderpage/mine/ui/BaseActivity;
.source "RecordDetailActivity.java"


# instance fields
.field private mBinding:Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBinding;

.field private mViewModel:Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/coderpage/mine/ui/BaseActivity;-><init>()V

    return-void
.end method

.method private initView()V
    .locals 1

    .line 99
    new-instance v0, Lcom/coderpage/mine/app/tally/module/detail/-$$Lambda$RecordDetailActivity$4aGLB-jl1fAHecLtwOqYjX_7IuA;

    invoke-direct {v0, p0}, Lcom/coderpage/mine/app/tally/module/detail/-$$Lambda$RecordDetailActivity$4aGLB-jl1fAHecLtwOqYjX_7IuA;-><init>(Lcom/coderpage/mine/app/tally/module/detail/RecordDetailActivity;)V

    invoke-virtual {p0, v0}, Lcom/coderpage/mine/app/tally/module/detail/RecordDetailActivity;->setToolbarAsClose(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static openExpenseDetail(Landroid/content/Context;J)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "expenseId"
        }
    .end annotation

    .line 46
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/coderpage/mine/app/tally/module/detail/RecordDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra_record_type"

    const/4 v2, 0x0

    .line 47
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "extra_record_id"

    .line 48
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 49
    instance-of p1, p0, Landroid/app/Activity;

    if-nez p1, :cond_0

    const/high16 p1, 0x10000000

    .line 50
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 52
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static openIncomeDetail(Landroid/content/Context;J)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "incomeId"
        }
    .end annotation

    .line 62
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/coderpage/mine/app/tally/module/detail/RecordDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra_record_type"

    const/4 v2, 0x1

    .line 63
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "extra_record_id"

    .line 64
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 65
    instance-of p1, p0, Landroid/app/Activity;

    if-nez p1, :cond_0

    const/high16 p1, 0x10000000

    .line 66
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 68
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private subscribeUi()V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/detail/RecordDetailActivity;->mBinding:Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBinding;

    invoke-virtual {v0, p0}, Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBinding;->setActivity(Landroid/app/Activity;)V

    .line 104
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/detail/RecordDetailActivity;->mBinding:Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBinding;

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/detail/RecordDetailActivity;->mViewModel:Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel;

    invoke-virtual {v0, v1}, Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBinding;->setVm(Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel;)V

    .line 105
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/detail/RecordDetailActivity;->mViewModel:Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel;

    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel;->getRecordData()Landroid/arch/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/coderpage/mine/app/tally/module/detail/-$$Lambda$RecordDetailActivity$iFMS95j-WulxggHwKX4WXYYYvh0;

    invoke-direct {v1, p0}, Lcom/coderpage/mine/app/tally/module/detail/-$$Lambda$RecordDetailActivity$iFMS95j-WulxggHwKX4WXYYYvh0;-><init>(Lcom/coderpage/mine/app/tally/module/detail/RecordDetailActivity;)V

    invoke-virtual {v0, p0, v1}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$initView$0$RecordDetailActivity(Landroid/view/View;)V
    .locals 0

    .line 99
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/detail/RecordDetailActivity;->onBackPressed()V

    return-void
.end method

.method public synthetic lambda$subscribeUi$1$RecordDetailActivity(Lcom/coderpage/mine/app/tally/module/detail/RecordData;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 107
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/detail/RecordDetailActivity;->mBinding:Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBinding;

    invoke-virtual {v0, p1}, Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBinding;->setData(Lcom/coderpage/mine/app/tally/module/detail/RecordData;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/detail/RecordDetailActivity;->mViewModel:Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel;

    invoke-virtual {v0, p0}, Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel;->onBackPressed(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    invoke-super {p0}, Lcom/coderpage/mine/ui/BaseActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 30
    invoke-super {p0, p1}, Lcom/coderpage/mine/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b0061

    .line 31
    invoke-static {p0, p1}, Landroidx/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBinding;

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/detail/RecordDetailActivity;->mBinding:Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBinding;

    .line 32
    invoke-static {p0}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object p1

    const-class v0, Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel;

    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel;

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/detail/RecordDetailActivity;->mViewModel:Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel;

    .line 33
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/detail/RecordDetailActivity;->getLifecycle()Landroid/arch/lifecycle/Lifecycle;

    move-result-object p1

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/detail/RecordDetailActivity;->mViewModel:Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel;

    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 35
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/module/detail/RecordDetailActivity;->initView()V

    .line 36
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/module/detail/RecordDetailActivity;->subscribeUi()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "menu"
        }
    .end annotation

    .line 73
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/detail/RecordDetailActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c0005

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 74
    invoke-super {p0, p1}, Lcom/coderpage/mine/ui/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    .line 79
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0900aa

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/detail/RecordDetailActivity;->mViewModel:Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel;

    invoke-virtual {v0, p0}, Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel;->onDeleteClick(Landroid/app/Activity;)V

    .line 87
    :goto_0
    invoke-super {p0, p1}, Lcom/coderpage/mine/ui/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
