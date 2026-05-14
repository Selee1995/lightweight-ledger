.class public Lcom/coderpage/mine/app/tally/module/home/HomeActivity;
.super Lcom/coderpage/mine/ui/BaseActivity;
.source "HomeActivity.java"


# instance fields
.field private mAdapter:Lcom/coderpage/mine/app/tally/module/home/HomeAdapter;

.field private mBinding:Lcom/coderpage/mine/app/tally/module/home/HomeActivityBinding;

.field private mRefreshLayout:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

.field private mViewModel:Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/coderpage/mine/ui/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/coderpage/mine/app/tally/module/home/HomeActivity;)Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/coderpage/mine/app/tally/module/home/HomeActivity;->mViewModel:Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;

    return-object p0
.end method

.method private initView()V
    .locals 5

    .line 60
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomeActivity;->mBinding:Lcom/coderpage/mine/app/tally/module/home/HomeActivityBinding;

    iget-object v0, v0, Lcom/coderpage/mine/app/tally/module/home/HomeActivityBinding;->refreshLayout:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomeActivity;->mRefreshLayout:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    .line 61
    new-instance v1, Lcom/coderpage/mine/app/tally/ui/refresh/RefreshHeadView;

    invoke-direct {v1, p0}, Lcom/coderpage/mine/app/tally/ui/refresh/RefreshHeadView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setHeaderView(Lcom/lcodecore/tkrefreshlayout/IHeaderView;)V

    .line 62
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomeActivity;->mRefreshLayout:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    new-instance v1, Lcom/coderpage/mine/app/tally/module/home/HomeActivity$1;

    invoke-direct {v1, p0}, Lcom/coderpage/mine/app/tally/module/home/HomeActivity$1;-><init>(Lcom/coderpage/mine/app/tally/module/home/HomeActivity;)V

    invoke-virtual {v0, v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setOnRefreshListener(Lcom/lcodecore/tkrefreshlayout/RefreshListenerAdapter;)V

    .line 69
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomeActivity;->mBinding:Lcom/coderpage/mine/app/tally/module/home/HomeActivityBinding;

    iget-object v0, v0, Lcom/coderpage/mine/app/tally/module/home/HomeActivityBinding;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 70
    new-instance v1, Lcom/coderpage/mine/app/tally/module/home/HomeAdapter;

    iget-object v2, p0, Lcom/coderpage/mine/app/tally/module/home/HomeActivity;->mViewModel:Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;

    invoke-static {p0}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object v3

    const-class v4, Lcom/coderpage/mine/app/tally/module/records/RecordItemViewModel;

    invoke-virtual {v3, v4}, Landroid/arch/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object v3

    check-cast v3, Lcom/coderpage/mine/app/tally/module/records/RecordItemViewModel;

    invoke-direct {v1, p0, v2, v3}, Lcom/coderpage/mine/app/tally/module/home/HomeAdapter;-><init>(Landroid/support/v4/app/FragmentActivity;Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;Lcom/coderpage/mine/app/tally/module/records/RecordItemViewModel;)V

    iput-object v1, p0, Lcom/coderpage/mine/app/tally/module/home/HomeActivity;->mAdapter:Lcom/coderpage/mine/app/tally/module/home/HomeAdapter;

    .line 72
    new-instance v1, Lcom/coderpage/mine/ui/widget/recyclerview/ItemMarginDecoration;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2, v2}, Lcom/coderpage/mine/ui/widget/recyclerview/ItemMarginDecoration;-><init>(IIII)V

    const/high16 v3, 0x42a00000    # 80.0f

    .line 74
    invoke-static {p0, v3}, Lcom/coderpage/base/utils/UIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v1, v2, v2, v2, v3}, Lcom/coderpage/mine/ui/widget/recyclerview/ItemMarginDecoration;->setLastItemOffset(IIII)V

    .line 75
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 76
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v3, 0x1

    invoke-direct {v1, p0, v3, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 77
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/home/HomeActivity;->mAdapter:Lcom/coderpage/mine/app/tally/module/home/HomeAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private subscribeUi()V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomeActivity;->mBinding:Lcom/coderpage/mine/app/tally/module/home/HomeActivityBinding;

    invoke-virtual {v0, p0}, Lcom/coderpage/mine/app/tally/module/home/HomeActivityBinding;->setActivity(Landroid/support/v4/app/FragmentActivity;)V

    .line 82
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomeActivity;->mBinding:Lcom/coderpage/mine/app/tally/module/home/HomeActivityBinding;

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/home/HomeActivity;->mViewModel:Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;

    invoke-virtual {v0, v1}, Lcom/coderpage/mine/app/tally/module/home/HomeActivityBinding;->setVm(Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;)V

    .line 83
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomeActivity;->mViewModel:Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;

    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;->observableDataList()Landroid/arch/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/coderpage/mine/app/tally/module/home/-$$Lambda$HomeActivity$hJWYwmUb2C0nXiLa6hz6qhnUEZ8;

    invoke-direct {v1, p0}, Lcom/coderpage/mine/app/tally/module/home/-$$Lambda$HomeActivity$hJWYwmUb2C0nXiLa6hz6qhnUEZ8;-><init>(Lcom/coderpage/mine/app/tally/module/home/HomeActivity;)V

    invoke-virtual {v0, p0, v1}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 85
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomeActivity;->mViewModel:Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;

    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;->observableRefreshing()Landroid/arch/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/coderpage/mine/app/tally/module/home/-$$Lambda$HomeActivity$R5_9QohTYQfThmGldvbcHPQj86Q;

    invoke-direct {v1, p0}, Lcom/coderpage/mine/app/tally/module/home/-$$Lambda$HomeActivity$R5_9QohTYQfThmGldvbcHPQj86Q;-><init>(Lcom/coderpage/mine/app/tally/module/home/HomeActivity;)V

    invoke-virtual {v0, p0, v1}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 90
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomeActivity;->mViewModel:Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;

    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;->getViewReliedTask()Landroid/arch/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/coderpage/mine/app/tally/module/home/-$$Lambda$HomeActivity$a8HdNVrlDPTfa1FS5x1RVZf9NTM;

    invoke-direct {v1, p0}, Lcom/coderpage/mine/app/tally/module/home/-$$Lambda$HomeActivity$a8HdNVrlDPTfa1FS5x1RVZf9NTM;-><init>(Lcom/coderpage/mine/app/tally/module/home/HomeActivity;)V

    invoke-virtual {v0, p0, v1}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onOptionsItemSelected$3$HomeActivity()V
    .locals 2

    .line 121
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/coderpage/mine/app/tally/module/search/SearchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/coderpage/mine/app/tally/module/home/HomeActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$subscribeUi$0$HomeActivity(Ljava/util/List;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomeActivity;->mAdapter:Lcom/coderpage/mine/app/tally/module/home/HomeAdapter;

    invoke-virtual {v0, p1}, Lcom/coderpage/mine/app/tally/module/home/HomeAdapter;->setDataList(Ljava/util/List;)V

    return-void
.end method

.method public synthetic lambda$subscribeUi$1$HomeActivity(Ljava/lang/Boolean;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 86
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    .line 87
    :cond_0
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/home/HomeActivity;->mRefreshLayout:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->finishRefreshing()V

    :cond_1
    return-void
.end method

.method public synthetic lambda$subscribeUi$2$HomeActivity(Lcom/coderpage/framework/ViewReliedTask;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 92
    invoke-interface {p1, p0}, Lcom/coderpage/framework/ViewReliedTask;->execute(Ljava/lang/Object;)V

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

    .line 45
    invoke-super {p0, p1}, Lcom/coderpage/mine/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/lightweightledger/app/LanguageManager;->applyActivityTitle(Landroid/app/Activity;)V

    const p1, 0x7f0b003d

    .line 46
    invoke-static {p0, p1}, Landroidx/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/coderpage/mine/app/tally/module/home/HomeActivityBinding;

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/home/HomeActivity;->mBinding:Lcom/coderpage/mine/app/tally/module/home/HomeActivityBinding;

    .line 47
    invoke-static {p0}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object p1

    const-class v0, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;

    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/home/HomeActivity;->mViewModel:Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;

    .line 48
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/home/HomeActivity;->getLifecycle()Landroid/arch/lifecycle/Lifecycle;

    move-result-object p1

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomeActivity;->mViewModel:Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;

    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 50
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/module/home/HomeActivity;->initView()V

    .line 51
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/module/home/HomeActivity;->subscribeUi()V

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

    .line 105
    invoke-super {p0, p1}, Lcom/coderpage/mine/ui/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 106
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/home/HomeActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c0004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0900a6

    .line 107
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    const/4 v0, 0x0

    .line 108
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 p1, 0x1

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

    .line 114
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0900a6

    if-eq v0, v1, :cond_1

    const v1, 0x7f0900a8

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/home/HomeActivity;->self()Lcom/coderpage/mine/ui/BaseActivity;

    move-result-object v0

    new-instance v1, Lcom/coderpage/mine/app/tally/module/home/-$$Lambda$HomeActivity$XwCj0DyK_pdt6rX3X1d5Dk14sTk;

    invoke-direct {v1, p0}, Lcom/coderpage/mine/app/tally/module/home/-$$Lambda$HomeActivity$XwCj0DyK_pdt6rX3X1d5Dk14sTk;-><init>(Lcom/coderpage/mine/app/tally/module/home/HomeActivity;)V

    invoke-static {v0, v1}, Lcom/coderpage/mine/app/tally/utils/SecurityUtils;->executeAfterFingerprintAuth(Landroid/app/Activity;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 117
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/coderpage/mine/app/tally/module/debug/DebugActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/coderpage/mine/app/tally/module/home/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 127
    :goto_0
    invoke-super {p0, p1}, Lcom/coderpage/mine/ui/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 56
    invoke-super {p0, p1}, Lcom/coderpage/mine/ui/BaseActivity;->onPostCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "permissions",
            "grantResults"
        }
    .end annotation

    .line 99
    invoke-super {p0, p1, p2, p3}, Lcom/coderpage/mine/ui/BaseActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 100
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomeActivity;->mViewModel:Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;

    invoke-virtual {v0, p1, p2, p3}, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method
