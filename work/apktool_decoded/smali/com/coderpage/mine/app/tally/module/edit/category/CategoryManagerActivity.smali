.class public Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity;
.super Lcom/coderpage/mine/ui/BaseActivity;
.source "CategoryManagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity$CategoryViewHolder;,
        Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity$CategoryListAdapter;
    }
.end annotation


# static fields
.field static final EXTRA_CATEGORY_TYPE:Ljava/lang/String; = "extra_category_type"


# instance fields
.field private mAdapter:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity$CategoryListAdapter;

.field private mBinding:Lcom/coderpage/mine/module/edit/category/CategoryManagerActivityBinding;

.field private mViewModel:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/coderpage/mine/ui/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity;)Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity;->mViewModel:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;

    return-object p0
.end method

.method static synthetic access$200(Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity;)Lcom/coderpage/mine/ui/BaseActivity;
    .locals 0

    .line 35
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity;->self()Lcom/coderpage/mine/ui/BaseActivity;

    move-result-object p0

    return-object p0
.end method

.method private initView()V
    .locals 6

    .line 71
    new-instance v0, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryManagerActivity$Jt04k5KGWf3vl4fHF6o7HzvAx4A;

    invoke-direct {v0, p0}, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryManagerActivity$Jt04k5KGWf3vl4fHF6o7HzvAx4A;-><init>(Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity;)V

    invoke-virtual {p0, v0}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity;->setToolbarAsBack(Landroid/view/View$OnClickListener;)V

    .line 73
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_category_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 75
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity;->mBinding:Lcom/coderpage/mine/module/edit/category/CategoryManagerActivityBinding;

    iget-object v1, v1, Lcom/coderpage/mine/module/edit/category/CategoryManagerActivityBinding;->tabLayout:Lcom/coderpage/base/widget/MTabLayout;

    .line 76
    invoke-virtual {v1}, Lcom/coderpage/base/widget/MTabLayout;->newTab()Lcom/coderpage/base/widget/MTabLayout$Tab;

    move-result-object v3

    .line 77
    invoke-virtual {v1}, Lcom/coderpage/base/widget/MTabLayout;->newTab()Lcom/coderpage/base/widget/MTabLayout$Tab;

    move-result-object v4

    const v5, 0x7f0e0041

    .line 78
    invoke-virtual {v3, v5}, Lcom/coderpage/base/widget/MTabLayout$Tab;->setText(I)Lcom/coderpage/base/widget/MTabLayout$Tab;

    const v5, 0x7f0e0047

    .line 79
    invoke-virtual {v4, v5}, Lcom/coderpage/base/widget/MTabLayout$Tab;->setText(I)Lcom/coderpage/base/widget/MTabLayout$Tab;

    .line 80
    invoke-virtual {v1, v3, v2}, Lcom/coderpage/base/widget/MTabLayout;->addTab(Lcom/coderpage/base/widget/MTabLayout$Tab;Z)V

    .line 81
    invoke-virtual {v1, v4, v2}, Lcom/coderpage/base/widget/MTabLayout;->addTab(Lcom/coderpage/base/widget/MTabLayout$Tab;Z)V

    .line 82
    new-instance v5, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity$1;

    invoke-direct {v5, p0, v3, v4}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity$1;-><init>(Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity;Lcom/coderpage/base/widget/MTabLayout$Tab;Lcom/coderpage/base/widget/MTabLayout$Tab;)V

    invoke-virtual {v1, v5}, Lcom/coderpage/base/widget/MTabLayout;->addOnTabSelectedListener(Lcom/coderpage/base/widget/MTabLayout$OnTabSelectedListener;)V

    if-nez v0, :cond_0

    .line 104
    invoke-virtual {v3}, Lcom/coderpage/base/widget/MTabLayout$Tab;->select()V

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 107
    invoke-virtual {v4}, Lcom/coderpage/base/widget/MTabLayout$Tab;->select()V

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity;->mBinding:Lcom/coderpage/mine/module/edit/category/CategoryManagerActivityBinding;

    iget-object v0, v0, Lcom/coderpage/mine/module/edit/category/CategoryManagerActivityBinding;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 111
    new-instance v3, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity;->self()Lcom/coderpage/mine/ui/BaseActivity;

    move-result-object v4

    invoke-direct {v3, v4, v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 112
    new-instance v1, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity$CategoryListAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity$CategoryListAdapter;-><init>(Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity;Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity$1;)V

    iput-object v1, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity;->mAdapter:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity$CategoryListAdapter;

    .line 113
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 114
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity;->self()Lcom/coderpage/mine/ui/BaseActivity;

    move-result-object v1

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v1, v2}, Lcom/coderpage/base/utils/UIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    .line 115
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity;->self()Lcom/coderpage/mine/ui/BaseActivity;

    move-result-object v2

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v2, v3}, Lcom/coderpage/base/utils/UIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v2

    .line 116
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity;->self()Lcom/coderpage/mine/ui/BaseActivity;

    move-result-object v3

    const/high16 v4, 0x42a00000    # 80.0f

    invoke-static {v3, v4}, Lcom/coderpage/base/utils/UIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v3

    .line 117
    new-instance v4, Lcom/coderpage/mine/ui/widget/recyclerview/ItemMarginDecoration;

    invoke-direct {v4, v2, v1, v2, v1}, Lcom/coderpage/mine/ui/widget/recyclerview/ItemMarginDecoration;-><init>(IIII)V

    .line 119
    invoke-virtual {v4, v2, v2, v2, v1}, Lcom/coderpage/mine/ui/widget/recyclerview/ItemMarginDecoration;->setFirstItemOffset(IIII)V

    .line 120
    invoke-virtual {v4, v2, v1, v2, v3}, Lcom/coderpage/mine/ui/widget/recyclerview/ItemMarginDecoration;->setLastItemOffset(IIII)V

    .line 121
    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method public static open(Landroid/content/Context;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "categoryType"
        }
    .end annotation

    .line 62
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_0

    const/high16 v1, 0x10000000

    .line 64
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    const-string v1, "extra_category_type"

    .line 66
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 67
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private subscribeUi()V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity;->mBinding:Lcom/coderpage/mine/module/edit/category/CategoryManagerActivityBinding;

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity;->mViewModel:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;

    invoke-virtual {v0, v1}, Lcom/coderpage/mine/module/edit/category/CategoryManagerActivityBinding;->setVm(Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;)V

    .line 126
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity;->mViewModel:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;

    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;->getCategoryList()Landroid/arch/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryManagerActivity$Rhc5AnRW0sF1UPyiB-AyoJFRil4;

    invoke-direct {v1, p0}, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryManagerActivity$Rhc5AnRW0sF1UPyiB-AyoJFRil4;-><init>(Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity;)V

    invoke-virtual {v0, p0, v1}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 129
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity;->mViewModel:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;

    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;->getViewReliedTask()Landroid/arch/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryManagerActivity$NvwCwSaS_5_9cRfQyy1Pq00TVY8;

    invoke-direct {v1, p0}, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryManagerActivity$NvwCwSaS_5_9cRfQyy1Pq00TVY8;-><init>(Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity;)V

    invoke-virtual {v0, p0, v1}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$initView$0$CategoryManagerActivity(Landroid/view/View;)V
    .locals 0

    .line 71
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity;->onBackPressed()V

    return-void
.end method

.method public synthetic lambda$subscribeUi$1$CategoryManagerActivity(Ljava/util/List;)V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity;->mAdapter:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity$CategoryListAdapter;

    invoke-virtual {v0, p1}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity$CategoryListAdapter;->setDataList(Ljava/util/List;)V

    return-void
.end method

.method public synthetic lambda$subscribeUi$2$CategoryManagerActivity(Lcom/coderpage/framework/ViewReliedTask;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity;->self()Lcom/coderpage/mine/ui/BaseActivity;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/coderpage/framework/ViewReliedTask;->execute(Ljava/lang/Object;)V

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

    const p1, 0x7f0b0064

    .line 46
    invoke-static {p0, p1}, Landroidx/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/coderpage/mine/module/edit/category/CategoryManagerActivityBinding;

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity;->mBinding:Lcom/coderpage/mine/module/edit/category/CategoryManagerActivityBinding;

    .line 47
    invoke-static {p0}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object p1

    const-class v0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;

    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity;->mViewModel:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;

    .line 48
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity;->getLifecycle()Landroid/arch/lifecycle/Lifecycle;

    move-result-object p1

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity;->mViewModel:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;

    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 49
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity;->initView()V

    .line 50
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity;->subscribeUi()V

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

    .line 138
    invoke-super {p0, p1}, Lcom/coderpage/mine/ui/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 139
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    .line 145
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0900a9

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity;->mViewModel:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;

    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity;->self()Lcom/coderpage/mine/ui/BaseActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity;->mBinding:Lcom/coderpage/mine/module/edit/category/CategoryManagerActivityBinding;

    iget-object v2, v2, Lcom/coderpage/mine/module/edit/category/CategoryManagerActivityBinding;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1, v2}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;->onMenuSortClick(Landroid/app/Activity;Landroid/view/View;)V

    .line 153
    :goto_0
    invoke-super {p0, p1}, Lcom/coderpage/mine/ui/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
