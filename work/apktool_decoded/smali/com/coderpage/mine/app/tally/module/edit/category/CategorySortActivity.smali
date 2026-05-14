.class public Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity;
.super Lcom/coderpage/mine/ui/BaseActivity;
.source "CategorySortActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity$CategoryViewHolder;,
        Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity$CategoryListAdapter;
    }
.end annotation


# static fields
.field static final EXTRA_CATEGORY_TYPE:Ljava/lang/String; = "extra_category_type"


# instance fields
.field private mAdapter:Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity$CategoryListAdapter;

.field private mBinding:Lcom/coderpage/mine/module/edit/category/CategorySortActivityBinding;

.field mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

.field private mViewModel:Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortViewModel;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Lcom/coderpage/mine/ui/BaseActivity;-><init>()V

    .line 212
    new-instance v0, Landroid/support/v7/widget/helper/ItemTouchHelper;

    new-instance v1, Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity$1;

    invoke-direct {v1, p0}, Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity$1;-><init>(Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity;)V

    invoke-direct {v0, v1}, Landroid/support/v7/widget/helper/ItemTouchHelper;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;)V

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity;->mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    return-void
.end method

.method static synthetic access$200(Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity;)Lcom/coderpage/mine/ui/BaseActivity;
    .locals 0

    .line 40
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity;->self()Lcom/coderpage/mine/ui/BaseActivity;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity;)Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortViewModel;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity;->mViewModel:Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortViewModel;

    return-object p0
.end method

.method private initView()V
    .locals 5

    .line 87
    new-instance v0, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategorySortActivity$_Lj-IHr5hPxDImtj5YRiOvb8o5Q;

    invoke-direct {v0, p0}, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategorySortActivity$_Lj-IHr5hPxDImtj5YRiOvb8o5Q;-><init>(Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity;)V

    invoke-virtual {p0, v0}, Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity;->setToolbarAsClose(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity;->mBinding:Lcom/coderpage/mine/module/edit/category/CategorySortActivityBinding;

    iget-object v0, v0, Lcom/coderpage/mine/module/edit/category/CategorySortActivityBinding;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 90
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity;->self()Lcom/coderpage/mine/ui/BaseActivity;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 91
    new-instance v1, Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity$CategoryListAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity$CategoryListAdapter;-><init>(Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity;Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity$1;)V

    iput-object v1, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity;->mAdapter:Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity$CategoryListAdapter;

    .line 92
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 93
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity;->self()Lcom/coderpage/mine/ui/BaseActivity;

    move-result-object v1

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v1, v2}, Lcom/coderpage/base/utils/UIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    .line 94
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity;->self()Lcom/coderpage/mine/ui/BaseActivity;

    move-result-object v2

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v2, v3}, Lcom/coderpage/base/utils/UIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v2

    .line 95
    new-instance v3, Lcom/coderpage/mine/ui/widget/recyclerview/ItemMarginDecoration;

    invoke-direct {v3, v2, v1, v2, v1}, Lcom/coderpage/mine/ui/widget/recyclerview/ItemMarginDecoration;-><init>(IIII)V

    .line 96
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 97
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity;->mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/helper/ItemTouchHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method

.method public static open(Landroid/content/Context;ILandroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "categoryType",
            "sharedRoot"
        }
    .end annotation

    .line 68
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 69
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_0

    const/high16 v2, 0x10000000

    .line 70
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    const-string v2, "extra_category_type"

    .line 72
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v1, :cond_2

    if-eqz p2, :cond_2

    .line 75
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge p1, v1, :cond_1

    goto :goto_0

    .line 80
    :cond_1
    check-cast p0, Landroid/app/Activity;

    const-string p1, "sharedRoot"

    .line 82
    invoke-static {p0, p2, p1}, Landroid/support/v4/app/ActivityOptionsCompat;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroid/support/v4/app/ActivityOptionsCompat;

    move-result-object p1

    .line 83
    invoke-virtual {p1}, Landroid/support/v4/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    .line 81
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void

    .line 76
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private subscribeUi()V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity;->mViewModel:Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortViewModel;

    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortViewModel;->getCategoryList()Landroid/arch/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategorySortActivity$V36um7LxzLpv3adFivdrfIi3Hcw;

    invoke-direct {v1, p0}, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategorySortActivity$V36um7LxzLpv3adFivdrfIi3Hcw;-><init>(Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity;)V

    invoke-virtual {v0, p0, v1}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 104
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity;->mViewModel:Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortViewModel;

    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortViewModel;->getViewReliedTask()Landroid/arch/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategorySortActivity$OfTs8SWDlMno-7PHFyFI3L1eyAY;

    invoke-direct {v1, p0}, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategorySortActivity$OfTs8SWDlMno-7PHFyFI3L1eyAY;-><init>(Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity;)V

    invoke-virtual {v0, p0, v1}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 109
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity;->mViewModel:Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortViewModel;

    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortViewModel;->getViewReliedTask()Landroid/arch/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategorySortActivity$cuSYh2TGqob0KqoW0hhh07QtocA;

    invoke-direct {v1, p0}, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategorySortActivity$cuSYh2TGqob0KqoW0hhh07QtocA;-><init>(Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity;)V

    invoke-virtual {v0, p0, v1}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$initView$0$CategorySortActivity(Landroid/view/View;)V
    .locals 0

    .line 87
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity;->onBackPressed()V

    return-void
.end method

.method public synthetic lambda$subscribeUi$1$CategorySortActivity(Ljava/util/List;)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity;->mAdapter:Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity$CategoryListAdapter;

    invoke-virtual {v0, p1}, Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity$CategoryListAdapter;->setDataList(Ljava/util/List;)V

    return-void
.end method

.method public synthetic lambda$subscribeUi$2$CategorySortActivity(Lcom/coderpage/framework/ViewReliedTask;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity;->self()Lcom/coderpage/mine/ui/BaseActivity;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/coderpage/framework/ViewReliedTask;->execute(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$subscribeUi$3$CategorySortActivity(Lcom/coderpage/framework/ViewReliedTask;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity;->self()Lcom/coderpage/mine/ui/BaseActivity;

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

    .line 50
    invoke-super {p0, p1}, Lcom/coderpage/mine/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b0065

    .line 51
    invoke-static {p0, p1}, Landroidx/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/coderpage/mine/module/edit/category/CategorySortActivityBinding;

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity;->mBinding:Lcom/coderpage/mine/module/edit/category/CategorySortActivityBinding;

    .line 52
    invoke-static {p0}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object p1

    const-class v0, Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortViewModel;

    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortViewModel;

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity;->mViewModel:Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortViewModel;

    .line 53
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity;->getLifecycle()Landroid/arch/lifecycle/Lifecycle;

    move-result-object p1

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity;->mViewModel:Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortViewModel;

    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 54
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity;->initView()V

    .line 55
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity;->subscribeUi()V

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

    .line 118
    invoke-super {p0, p1}, Lcom/coderpage/mine/ui/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 119
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

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

    .line 125
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_1

    const v1, 0x7f0900a4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity;->mViewModel:Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortViewModel;

    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortViewModel;->onSaveClick()V

    .line 136
    :goto_0
    invoke-super {p0, p1}, Lcom/coderpage/mine/ui/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 128
    :cond_1
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity;->onBackPressed()V

    const/4 p1, 0x1

    return p1
.end method
