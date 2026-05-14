.class public Lcom/coderpage/mine/app/tally/module/records/RecordsActivity;
.super Lcom/coderpage/mine/ui/BaseActivity;
.source "RecordsActivity.java"


# static fields
.field static final EXTRA_QUERY:Ljava/lang/String; = "extra_query"


# instance fields
.field private mAdapter:Lcom/coderpage/mine/app/tally/module/records/RecordsAdapter;

.field private mBinding:Lcom/coderpage/mine/module/records/RecordsActivityBinding;

.field private mLoadingLayout:Lcom/coderpage/base/widget/LoadingLayout;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mRefreshLayout:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

.field private mViewModel:Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/coderpage/mine/ui/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/coderpage/mine/app/tally/module/records/RecordsActivity;)Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsActivity;->mViewModel:Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;

    return-object p0
.end method

.method private initView()V
    .locals 4

    .line 77
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsActivity;->mBinding:Lcom/coderpage/mine/module/records/RecordsActivityBinding;

    iget-object v0, v0, Lcom/coderpage/mine/module/records/RecordsActivityBinding;->loadingLayout:Lcom/coderpage/base/widget/LoadingLayout;

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsActivity;->mLoadingLayout:Lcom/coderpage/base/widget/LoadingLayout;

    .line 78
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsActivity;->mBinding:Lcom/coderpage/mine/module/records/RecordsActivityBinding;

    iget-object v0, v0, Lcom/coderpage/mine/module/records/RecordsActivityBinding;->refreshLayout:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsActivity;->mRefreshLayout:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    .line 79
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsActivity;->mBinding:Lcom/coderpage/mine/module/records/RecordsActivityBinding;

    iget-object v0, v0, Lcom/coderpage/mine/module/records/RecordsActivityBinding;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 82
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsActivity;->mLoadingLayout:Lcom/coderpage/base/widget/LoadingLayout;

    new-instance v1, Lcom/coderpage/mine/app/tally/module/records/RecordsActivity$1;

    invoke-direct {v1, p0}, Lcom/coderpage/mine/app/tally/module/records/RecordsActivity$1;-><init>(Lcom/coderpage/mine/app/tally/module/records/RecordsActivity;)V

    invoke-virtual {v0, v1}, Lcom/coderpage/base/widget/LoadingLayout;->setUserActionListener(Lcom/coderpage/base/widget/LoadingLayout$BaseUserActionListener;)V

    .line 94
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsActivity;->mRefreshLayout:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setAutoLoadMore(Z)V

    .line 95
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsActivity;->mRefreshLayout:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    new-instance v2, Lcom/coderpage/mine/app/tally/ui/refresh/RefreshHeadView;

    invoke-direct {v2, p0}, Lcom/coderpage/mine/app/tally/ui/refresh/RefreshHeadView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setHeaderView(Lcom/lcodecore/tkrefreshlayout/IHeaderView;)V

    .line 96
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsActivity;->mRefreshLayout:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    const/high16 v2, 0x42f00000    # 120.0f

    invoke-virtual {v0, v2}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setHeaderHeight(F)V

    .line 97
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsActivity;->mRefreshLayout:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    new-instance v3, Lcom/coderpage/mine/app/tally/ui/refresh/RefreshFootView;

    invoke-direct {v3, p0}, Lcom/coderpage/mine/app/tally/ui/refresh/RefreshFootView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setBottomView(Lcom/lcodecore/tkrefreshlayout/IBottomView;)V

    .line 98
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsActivity;->mRefreshLayout:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-virtual {v0, v2}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setBottomHeight(F)V

    .line 99
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsActivity;->mRefreshLayout:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    new-instance v2, Lcom/coderpage/mine/app/tally/module/records/RecordsActivity$2;

    invoke-direct {v2, p0}, Lcom/coderpage/mine/app/tally/module/records/RecordsActivity$2;-><init>(Lcom/coderpage/mine/app/tally/module/records/RecordsActivity;)V

    invoke-virtual {v0, v2}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setOnRefreshListener(Lcom/lcodecore/tkrefreshlayout/RefreshListenerAdapter;)V

    .line 111
    new-instance v0, Lcom/coderpage/mine/app/tally/module/records/RecordsAdapter;

    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/records/RecordsActivity;->self()Lcom/coderpage/mine/ui/BaseActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/coderpage/mine/app/tally/module/records/RecordsAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsActivity;->mAdapter:Lcom/coderpage/mine/app/tally/module/records/RecordsAdapter;

    .line 112
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/records/RecordsActivity;->self()Lcom/coderpage/mine/ui/BaseActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 113
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsActivity;->mAdapter:Lcom/coderpage/mine/app/tally/module/records/RecordsAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 114
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public static open(Landroid/content/Context;Lcom/coderpage/mine/app/tally/module/records/RecordQuery;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "query"
        }
    .end annotation

    .line 68
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/coderpage/mine/app/tally/module/records/RecordsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 69
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_0

    const/high16 v1, 0x10000000

    .line 70
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    const-string v1, "extra_query"

    .line 72
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 73
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private subscribeUi()V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsActivity;->mViewModel:Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;

    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;->getLoadingStatus()Landroid/arch/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/coderpage/mine/app/tally/module/records/-$$Lambda$RecordsActivity$bkNUktNJgPnGAsT4iqTrxUGDQjo;

    invoke-direct {v1, p0}, Lcom/coderpage/mine/app/tally/module/records/-$$Lambda$RecordsActivity$bkNUktNJgPnGAsT4iqTrxUGDQjo;-><init>(Lcom/coderpage/mine/app/tally/module/records/RecordsActivity;)V

    invoke-virtual {v0, p0, v1}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 123
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsActivity;->mViewModel:Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;

    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;->getRefreshing()Landroid/arch/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/coderpage/mine/app/tally/module/records/-$$Lambda$RecordsActivity$alA8HJIsLT6N_geG9dDGrYzYcS4;

    invoke-direct {v1, p0}, Lcom/coderpage/mine/app/tally/module/records/-$$Lambda$RecordsActivity$alA8HJIsLT6N_geG9dDGrYzYcS4;-><init>(Lcom/coderpage/mine/app/tally/module/records/RecordsActivity;)V

    invoke-virtual {v0, p0, v1}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 128
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsActivity;->mViewModel:Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;

    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;->getLoadingMore()Landroid/arch/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/coderpage/mine/app/tally/module/records/-$$Lambda$RecordsActivity$Ge169PYVxJnugekknKMv8Z5fnoE;

    invoke-direct {v1, p0}, Lcom/coderpage/mine/app/tally/module/records/-$$Lambda$RecordsActivity$Ge169PYVxJnugekknKMv8Z5fnoE;-><init>(Lcom/coderpage/mine/app/tally/module/records/RecordsActivity;)V

    invoke-virtual {v0, p0, v1}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 133
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsActivity;->mViewModel:Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;

    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;->getRecordList()Landroid/arch/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/coderpage/mine/app/tally/module/records/-$$Lambda$RecordsActivity$g6rf2z5h3Y80u8h8GQplqWvQ6tg;

    invoke-direct {v1, p0}, Lcom/coderpage/mine/app/tally/module/records/-$$Lambda$RecordsActivity$g6rf2z5h3Y80u8h8GQplqWvQ6tg;-><init>(Lcom/coderpage/mine/app/tally/module/records/RecordsActivity;)V

    invoke-virtual {v0, p0, v1}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 138
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsActivity;->mViewModel:Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;

    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;->getToolbarTitle()Landroid/arch/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/coderpage/mine/app/tally/module/records/-$$Lambda$RecordsActivity$zkRxv3f5X_MSFUB5GOMDhnBldN8;

    invoke-direct {v1, p0}, Lcom/coderpage/mine/app/tally/module/records/-$$Lambda$RecordsActivity$zkRxv3f5X_MSFUB5GOMDhnBldN8;-><init>(Lcom/coderpage/mine/app/tally/module/records/RecordsActivity;)V

    invoke-virtual {v0, p0, v1}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onPostCreate$0$RecordsActivity(Landroid/view/View;)V
    .locals 0

    .line 58
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/records/RecordsActivity;->finish()V

    return-void
.end method

.method public synthetic lambda$subscribeUi$1$RecordsActivity(Ljava/lang/Integer;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 120
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsActivity;->mLoadingLayout:Lcom/coderpage/base/widget/LoadingLayout;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/coderpage/base/widget/LoadingLayout;->setStatus(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$subscribeUi$2$RecordsActivity(Ljava/lang/Boolean;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 124
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 125
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsActivity;->mRefreshLayout:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->finishRefreshing()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$subscribeUi$3$RecordsActivity(Ljava/lang/Boolean;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 129
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 130
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsActivity;->mRefreshLayout:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->finishLoadmore()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$subscribeUi$4$RecordsActivity(Ljava/util/List;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 135
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsActivity;->mAdapter:Lcom/coderpage/mine/app/tally/module/records/RecordsAdapter;

    invoke-virtual {v0, p1}, Lcom/coderpage/mine/app/tally/module/records/RecordsAdapter;->setDataList(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$subscribeUi$5$RecordsActivity(Ljava/lang/CharSequence;)V
    .locals 1

    .line 139
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 142
    :cond_0
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/module/records/RecordsActivity;->setToolbarTitle(Ljava/lang/CharSequence;)V

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

    .line 47
    invoke-super {p0, p1}, Lcom/coderpage/mine/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/records/RecordsActivity;->self()Lcom/coderpage/mine/ui/BaseActivity;

    move-result-object p1

    const v0, 0x7f0b0070

    invoke-static {p1, v0}, Landroidx/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/coderpage/mine/module/records/RecordsActivityBinding;

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsActivity;->mBinding:Lcom/coderpage/mine/module/records/RecordsActivityBinding;

    .line 49
    invoke-static {p0}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object p1

    const-class v0, Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;

    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsActivity;->mViewModel:Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;

    .line 50
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/records/RecordsActivity;->getLifecycle()Landroid/arch/lifecycle/Lifecycle;

    move-result-object p1

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsActivity;->mViewModel:Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;

    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 51
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/module/records/RecordsActivity;->initView()V

    .line 52
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/module/records/RecordsActivity;->subscribeUi()V

    return-void
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

    .line 57
    invoke-super {p0, p1}, Lcom/coderpage/mine/ui/BaseActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 58
    new-instance p1, Lcom/coderpage/mine/app/tally/module/records/-$$Lambda$RecordsActivity$pSXlsbeec1PKEI3XYmhb2xyBZJc;

    invoke-direct {p1, p0}, Lcom/coderpage/mine/app/tally/module/records/-$$Lambda$RecordsActivity$pSXlsbeec1PKEI3XYmhb2xyBZJc;-><init>(Lcom/coderpage/mine/app/tally/module/records/RecordsActivity;)V

    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/module/records/RecordsActivity;->setToolbarAsClose(Landroid/view/View$OnClickListener;)V

    return-void
.end method
