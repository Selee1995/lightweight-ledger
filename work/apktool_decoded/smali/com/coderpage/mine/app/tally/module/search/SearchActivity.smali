.class public Lcom/coderpage/mine/app/tally/module/search/SearchActivity;
.super Lcom/coderpage/mine/ui/BaseActivity;
.source "SearchActivity.java"


# instance fields
.field private mBinding:Lcom/coderpage/mine/module/search/SearchActivityBinding;

.field private mLoadingLayout:Lcom/coderpage/base/widget/LoadingLayout;

.field private mRefreshLayout:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

.field private mSearchEt:Landroid/widget/EditText;

.field private mSearchHistoryAdapter:Lcom/coderpage/mine/app/tally/module/search/SearchHistoryAdapter;

.field private mSearchHistoryRecycler:Landroid/support/v7/widget/RecyclerView;

.field private mSearchResultAdapter:Lcom/coderpage/mine/app/tally/module/records/RecordsAdapter;

.field private mSearchResultRecycler:Landroid/support/v7/widget/RecyclerView;

.field private mViewModel:Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/coderpage/mine/ui/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/coderpage/mine/app/tally/module/search/SearchActivity;)Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/coderpage/mine/app/tally/module/search/SearchActivity;->mViewModel:Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;

    return-object p0
.end method

.method private hideSoftKeyBoard()V
    .locals 3

    const-string v0, "input_method"

    .line 169
    invoke-virtual {p0, v0}, Lcom/coderpage/mine/app/tally/module/search/SearchActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_0

    return-void

    .line 173
    :cond_0
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/search/SearchActivity;->mSearchEt:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method private initView()V
    .locals 5

    .line 58
    new-instance v0, Lcom/coderpage/mine/app/tally/module/search/-$$Lambda$SearchActivity$C8EvyilqEEYGAfXkOrZeqHP32vo;

    invoke-direct {v0, p0}, Lcom/coderpage/mine/app/tally/module/search/-$$Lambda$SearchActivity$C8EvyilqEEYGAfXkOrZeqHP32vo;-><init>(Lcom/coderpage/mine/app/tally/module/search/SearchActivity;)V

    invoke-virtual {p0, v0}, Lcom/coderpage/mine/app/tally/module/search/SearchActivity;->setToolbarAsBack(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/search/SearchActivity;->mBinding:Lcom/coderpage/mine/module/search/SearchActivityBinding;

    iget-object v0, v0, Lcom/coderpage/mine/module/search/SearchActivityBinding;->etSearch:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/module/search/SearchActivity;->mSearchEt:Landroid/widget/EditText;

    .line 61
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/module/search/SearchActivity;->setupSearchView()V

    .line 63
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/search/SearchActivity;->mBinding:Lcom/coderpage/mine/module/search/SearchActivityBinding;

    iget-object v0, v0, Lcom/coderpage/mine/module/search/SearchActivityBinding;->loadingLayout:Lcom/coderpage/base/widget/LoadingLayout;

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/module/search/SearchActivity;->mLoadingLayout:Lcom/coderpage/base/widget/LoadingLayout;

    const/4 v1, 0x2

    .line 64
    invoke-virtual {v0, v1}, Lcom/coderpage/base/widget/LoadingLayout;->getConfig(I)Lcom/coderpage/base/widget/LoadingLayout$Config;

    move-result-object v0

    const-string v1, ""

    .line 65
    invoke-virtual {v0, v1}, Lcom/coderpage/base/widget/LoadingLayout$Config;->setButtonPositiveText(Ljava/lang/String;)Lcom/coderpage/base/widget/LoadingLayout$Config;

    .line 66
    invoke-virtual {v0, v1}, Lcom/coderpage/base/widget/LoadingLayout$Config;->setButtonNegativeText(Ljava/lang/String;)Lcom/coderpage/base/widget/LoadingLayout$Config;

    .line 67
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/search/SearchActivity;->mLoadingLayout:Lcom/coderpage/base/widget/LoadingLayout;

    new-instance v1, Lcom/coderpage/mine/app/tally/module/search/SearchActivity$1;

    invoke-direct {v1, p0}, Lcom/coderpage/mine/app/tally/module/search/SearchActivity$1;-><init>(Lcom/coderpage/mine/app/tally/module/search/SearchActivity;)V

    invoke-virtual {v0, v1}, Lcom/coderpage/base/widget/LoadingLayout;->setUserActionListener(Lcom/coderpage/base/widget/LoadingLayout$BaseUserActionListener;)V

    .line 83
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/search/SearchActivity;->mBinding:Lcom/coderpage/mine/module/search/SearchActivityBinding;

    iget-object v0, v0, Lcom/coderpage/mine/module/search/SearchActivityBinding;->refreshLayout:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/module/search/SearchActivity;->mRefreshLayout:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    .line 84
    new-instance v1, Lcom/coderpage/mine/app/tally/ui/refresh/RefreshHeadView;

    invoke-direct {v1, p0}, Lcom/coderpage/mine/app/tally/ui/refresh/RefreshHeadView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setHeaderView(Lcom/lcodecore/tkrefreshlayout/IHeaderView;)V

    .line 85
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/search/SearchActivity;->mRefreshLayout:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    new-instance v1, Lcom/coderpage/mine/app/tally/ui/refresh/RefreshFootView;

    invoke-direct {v1, p0}, Lcom/coderpage/mine/app/tally/ui/refresh/RefreshFootView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setBottomView(Lcom/lcodecore/tkrefreshlayout/IBottomView;)V

    .line 86
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/search/SearchActivity;->mRefreshLayout:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    new-instance v1, Lcom/coderpage/mine/app/tally/module/search/SearchActivity$2;

    invoke-direct {v1, p0}, Lcom/coderpage/mine/app/tally/module/search/SearchActivity$2;-><init>(Lcom/coderpage/mine/app/tally/module/search/SearchActivity;)V

    invoke-virtual {v0, v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setOnRefreshListener(Lcom/lcodecore/tkrefreshlayout/RefreshListenerAdapter;)V

    .line 98
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/search/SearchActivity;->mBinding:Lcom/coderpage/mine/module/search/SearchActivityBinding;

    iget-object v0, v0, Lcom/coderpage/mine/module/search/SearchActivityBinding;->recyclerHistory:Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/module/search/SearchActivity;->mSearchHistoryRecycler:Landroid/support/v7/widget/RecyclerView;

    .line 99
    new-instance v0, Lcom/coderpage/mine/app/tally/module/search/SearchHistoryAdapter;

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/search/SearchActivity;->mViewModel:Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;

    invoke-direct {v0, p0, v1}, Lcom/coderpage/mine/app/tally/module/search/SearchHistoryAdapter;-><init>(Landroid/content/Context;Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;)V

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/module/search/SearchActivity;->mSearchHistoryAdapter:Lcom/coderpage/mine/app/tally/module/search/SearchHistoryAdapter;

    .line 100
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/search/SearchActivity;->mSearchHistoryRecycler:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 101
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/search/SearchActivity;->mSearchHistoryRecycler:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/search/SearchActivity;->mSearchHistoryAdapter:Lcom/coderpage/mine/app/tally/module/search/SearchHistoryAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 103
    new-instance v0, Lcom/coderpage/mine/ui/widget/recyclerview/ItemMarginDecoration;

    invoke-direct {v0, v3, v3, v3, v3}, Lcom/coderpage/mine/ui/widget/recyclerview/ItemMarginDecoration;-><init>(IIII)V

    .line 104
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/search/SearchActivity;->self()Lcom/coderpage/mine/ui/BaseActivity;

    move-result-object v1

    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v1, v4}, Lcom/coderpage/base/utils/UIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v3, v1, v3, v3}, Lcom/coderpage/mine/ui/widget/recyclerview/ItemMarginDecoration;->setFirstItemOffset(IIII)V

    .line 105
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/search/SearchActivity;->self()Lcom/coderpage/mine/ui/BaseActivity;

    move-result-object v1

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v1, v4}, Lcom/coderpage/base/utils/UIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v3, v3, v3, v1}, Lcom/coderpage/mine/ui/widget/recyclerview/ItemMarginDecoration;->setLastItemOffset(IIII)V

    .line 106
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/search/SearchActivity;->mBinding:Lcom/coderpage/mine/module/search/SearchActivityBinding;

    iget-object v1, v1, Lcom/coderpage/mine/module/search/SearchActivityBinding;->recyclerResult:Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lcom/coderpage/mine/app/tally/module/search/SearchActivity;->mSearchResultRecycler:Landroid/support/v7/widget/RecyclerView;

    .line 107
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 108
    new-instance v0, Lcom/coderpage/mine/app/tally/module/records/RecordsAdapter;

    invoke-direct {v0, p0}, Lcom/coderpage/mine/app/tally/module/records/RecordsAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/module/search/SearchActivity;->mSearchResultAdapter:Lcom/coderpage/mine/app/tally/module/records/RecordsAdapter;

    .line 109
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/search/SearchActivity;->mSearchResultRecycler:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p0, v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 110
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/search/SearchActivity;->mSearchResultRecycler:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/search/SearchActivity;->mSearchResultAdapter:Lcom/coderpage/mine/app/tally/module/records/RecordsAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private setupSearchView()V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/search/SearchActivity;->mSearchEt:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 115
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/search/SearchActivity;->mSearchEt:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 116
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/search/SearchActivity;->mSearchEt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 117
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/module/search/SearchActivity;->showSoftKeyBoard()V

    .line 119
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/search/SearchActivity;->mSearchEt:Landroid/widget/EditText;

    new-instance v1, Lcom/coderpage/mine/app/tally/module/search/-$$Lambda$SearchActivity$UIaWPBkislBLG8jn1JJJjHoiS4w;

    invoke-direct {v1, p0}, Lcom/coderpage/mine/app/tally/module/search/-$$Lambda$SearchActivity$UIaWPBkislBLG8jn1JJJjHoiS4w;-><init>(Lcom/coderpage/mine/app/tally/module/search/SearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method private showSoftKeyBoard()V
    .locals 3

    const-string v0, "input_method"

    .line 161
    invoke-virtual {p0, v0}, Lcom/coderpage/mine/app/tally/module/search/SearchActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_0

    return-void

    .line 165
    :cond_0
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/search/SearchActivity;->mSearchEt:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInputFromInputMethod(Landroid/os/IBinder;I)V

    return-void
.end method

.method private subScribeUi()V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/search/SearchActivity;->mBinding:Lcom/coderpage/mine/module/search/SearchActivityBinding;

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/search/SearchActivity;->mViewModel:Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;

    invoke-virtual {v0, v1}, Lcom/coderpage/mine/module/search/SearchActivityBinding;->setVm(Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;)V

    .line 133
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/search/SearchActivity;->mViewModel:Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;

    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;->getLoadingStatus()Landroid/arch/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/coderpage/mine/app/tally/module/search/-$$Lambda$SearchActivity$vtPh33B-5366vrse6atMDy_HpLY;

    invoke-direct {v1, p0}, Lcom/coderpage/mine/app/tally/module/search/-$$Lambda$SearchActivity$vtPh33B-5366vrse6atMDy_HpLY;-><init>(Lcom/coderpage/mine/app/tally/module/search/SearchActivity;)V

    invoke-virtual {v0, p0, v1}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 138
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/search/SearchActivity;->mViewModel:Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;

    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;->getRefreshing()Landroid/arch/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/coderpage/mine/app/tally/module/search/-$$Lambda$SearchActivity$yU2wUanC10WSBYqjNW16lSAkwHA;

    invoke-direct {v1, p0}, Lcom/coderpage/mine/app/tally/module/search/-$$Lambda$SearchActivity$yU2wUanC10WSBYqjNW16lSAkwHA;-><init>(Lcom/coderpage/mine/app/tally/module/search/SearchActivity;)V

    invoke-virtual {v0, p0, v1}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 143
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/search/SearchActivity;->mViewModel:Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;

    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;->getLoadingMore()Landroid/arch/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/coderpage/mine/app/tally/module/search/-$$Lambda$SearchActivity$_G_DcbNrRcBBlWHbvLV5eTyzOlQ;

    invoke-direct {v1, p0}, Lcom/coderpage/mine/app/tally/module/search/-$$Lambda$SearchActivity$_G_DcbNrRcBBlWHbvLV5eTyzOlQ;-><init>(Lcom/coderpage/mine/app/tally/module/search/SearchActivity;)V

    invoke-virtual {v0, p0, v1}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 148
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/search/SearchActivity;->mViewModel:Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;

    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;->getSearchHistoryList()Landroid/arch/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/coderpage/mine/app/tally/module/search/-$$Lambda$SearchActivity$9q0g6TTdy85xgF_KekCYxPBQfwk;

    invoke-direct {v1, p0}, Lcom/coderpage/mine/app/tally/module/search/-$$Lambda$SearchActivity$9q0g6TTdy85xgF_KekCYxPBQfwk;-><init>(Lcom/coderpage/mine/app/tally/module/search/SearchActivity;)V

    invoke-virtual {v0, p0, v1}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 153
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/search/SearchActivity;->mViewModel:Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;

    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;->getSearchResultList()Landroid/arch/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/coderpage/mine/app/tally/module/search/-$$Lambda$SearchActivity$XBfpKoOQX0VRkw0mnt3_PG1323Q;

    invoke-direct {v1, p0}, Lcom/coderpage/mine/app/tally/module/search/-$$Lambda$SearchActivity$XBfpKoOQX0VRkw0mnt3_PG1323Q;-><init>(Lcom/coderpage/mine/app/tally/module/search/SearchActivity;)V

    invoke-virtual {v0, p0, v1}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$initView$0$SearchActivity(Landroid/view/View;)V
    .locals 0

    .line 58
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/search/SearchActivity;->finish()V

    return-void
.end method

.method public synthetic lambda$setupSearchView$1$SearchActivity(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/16 p1, 0x42

    if-ne p2, p1, :cond_1

    .line 120
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1

    .line 121
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/search/SearchActivity;->mSearchEt:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 122
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 123
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/search/SearchActivity;->mViewModel:Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;

    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;->onSearchClick()V

    .line 125
    :cond_0
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/module/search/SearchActivity;->hideSoftKeyBoard()V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public synthetic lambda$subScribeUi$2$SearchActivity(Ljava/lang/Integer;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 135
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/search/SearchActivity;->mLoadingLayout:Lcom/coderpage/base/widget/LoadingLayout;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/coderpage/base/widget/LoadingLayout;->setStatus(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$subScribeUi$3$SearchActivity(Ljava/lang/Boolean;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 139
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 140
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/search/SearchActivity;->mRefreshLayout:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->finishRefreshing()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$subScribeUi$4$SearchActivity(Ljava/lang/Boolean;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 144
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 145
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/search/SearchActivity;->mRefreshLayout:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->finishLoadmore()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$subScribeUi$5$SearchActivity(Ljava/util/List;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 150
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/search/SearchActivity;->mSearchHistoryAdapter:Lcom/coderpage/mine/app/tally/module/search/SearchHistoryAdapter;

    invoke-virtual {v0, p1}, Lcom/coderpage/mine/app/tally/module/search/SearchHistoryAdapter;->refresh(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$subScribeUi$6$SearchActivity(Ljava/util/List;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 155
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/search/SearchActivity;->mSearchResultAdapter:Lcom/coderpage/mine/app/tally/module/records/RecordsAdapter;

    invoke-virtual {v0, p1}, Lcom/coderpage/mine/app/tally/module/records/RecordsAdapter;->setDataList(Ljava/util/List;)V

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

    .line 42
    invoke-super {p0, p1}, Lcom/coderpage/mine/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b001b

    .line 43
    invoke-static {p0, p1}, Landroidx/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/coderpage/mine/module/search/SearchActivityBinding;

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/search/SearchActivity;->mBinding:Lcom/coderpage/mine/module/search/SearchActivityBinding;

    .line 44
    invoke-static {p0}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object p1

    const-class v0, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;

    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/search/SearchActivity;->mViewModel:Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;

    const/4 p1, 0x0

    .line 45
    invoke-virtual {p0, p1, p1}, Lcom/coderpage/mine/app/tally/module/search/SearchActivity;->overridePendingTransition(II)V

    .line 47
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/module/search/SearchActivity;->initView()V

    .line 48
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/module/search/SearchActivity;->subScribeUi()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    const/4 v0, 0x0

    .line 53
    invoke-virtual {p0, v0, v0}, Lcom/coderpage/mine/app/tally/module/search/SearchActivity;->overridePendingTransition(II)V

    .line 54
    invoke-super {p0}, Lcom/coderpage/mine/ui/BaseActivity;->onPause()V

    return-void
.end method
