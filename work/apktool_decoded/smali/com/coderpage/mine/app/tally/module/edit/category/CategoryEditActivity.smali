.class public Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditActivity;
.super Lcom/coderpage/mine/ui/BaseActivity;
.source "CategoryEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditActivity$IconViewHolder;,
        Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditActivity$IconListAdapter;
    }
.end annotation


# static fields
.field static final EXTRA_CATEGORY_ID:Ljava/lang/String; = "extra_category_id"

.field static final EXTRA_CATEGORY_TYPE:Ljava/lang/String; = "extra_category_type"


# instance fields
.field private mAdapter:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditActivity$IconListAdapter;

.field private mBinding:Lcom/coderpage/mine/module/edit/category/CategoryEditActivityBinding;

.field private mViewModel:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/coderpage/mine/ui/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditActivity;)Lcom/coderpage/mine/ui/BaseActivity;
    .locals 0

    .line 31
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditActivity;->self()Lcom/coderpage/mine/ui/BaseActivity;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditActivity;)Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditActivity;->mViewModel:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;

    return-object p0
.end method

.method private initView()V
    .locals 4

    .line 87
    new-instance v0, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryEditActivity$zVDz4ebQRXl9BqxWgDpghEe1T-U;

    invoke-direct {v0, p0}, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryEditActivity$zVDz4ebQRXl9BqxWgDpghEe1T-U;-><init>(Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditActivity;)V

    invoke-virtual {p0, v0}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditActivity;->setToolbarAsBack(Landroid/view/View$OnClickListener;)V

    .line 92
    new-instance v0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditActivity$IconListAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditActivity$IconListAdapter;-><init>(Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditActivity;Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditActivity$1;)V

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditActivity;->mAdapter:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditActivity$IconListAdapter;

    .line 93
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditActivity;->mBinding:Lcom/coderpage/mine/module/edit/category/CategoryEditActivityBinding;

    iget-object v0, v0, Lcom/coderpage/mine/module/edit/category/CategoryEditActivityBinding;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 94
    new-instance v1, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditActivity;->self()Lcom/coderpage/mine/ui/BaseActivity;

    move-result-object v2

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 95
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditActivity;->mAdapter:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditActivity$IconListAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public static openAsAddNew(Landroid/content/Context;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "type"
        }
    .end annotation

    .line 77
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 78
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_0

    const/high16 v1, 0x10000000

    .line 79
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    const-string v1, "extra_category_type"

    .line 81
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p1, 0x0

    const-string v1, "extra_category_id"

    .line 82
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 83
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static openAsEdit(Landroid/content/Context;J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "categoryId"
        }
    .end annotation

    .line 60
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 61
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_0

    const/high16 v1, 0x10000000

    .line 62
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    const-string v1, "extra_category_id"

    .line 64
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 65
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private subscribeUi()V
    .locals 3

    .line 99
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditActivity;->mBinding:Lcom/coderpage/mine/module/edit/category/CategoryEditActivityBinding;

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditActivity;->mViewModel:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;

    invoke-virtual {v0, v1}, Lcom/coderpage/mine/module/edit/category/CategoryEditActivityBinding;->setVm(Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;)V

    .line 100
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditActivity;->mViewModel:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;

    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;->getToolbarTitle()Landroid/arch/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditActivity;->self()Lcom/coderpage/mine/ui/BaseActivity;

    move-result-object v1

    new-instance v2, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryEditActivity$ZcRvlvsc6jz3wiex54Z9AFOt7pQ;

    invoke-direct {v2, p0}, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryEditActivity$ZcRvlvsc6jz3wiex54Z9AFOt7pQ;-><init>(Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 105
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditActivity;->mViewModel:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;

    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;->getCategoryIconList()Landroid/arch/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryEditActivity$7aw_0QrXBouFz2_97SNrqlPrqyk;

    invoke-direct {v1, p0}, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryEditActivity$7aw_0QrXBouFz2_97SNrqlPrqyk;-><init>(Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditActivity;)V

    invoke-virtual {v0, p0, v1}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 108
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditActivity;->mViewModel:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;

    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;->getViewReliedTask()Landroid/arch/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryEditActivity$B7eAPVzrCfjWOAiBY7EkNzVhaUc;

    invoke-direct {v1, p0}, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryEditActivity$B7eAPVzrCfjWOAiBY7EkNzVhaUc;-><init>(Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditActivity;)V

    invoke-virtual {v0, p0, v1}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$initView$0$CategoryEditActivity(Landroid/view/View;)V
    .locals 0

    .line 88
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditActivity;->self()Lcom/coderpage/mine/ui/BaseActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/coderpage/base/utils/UIUtils;->hideSoftKeyboard(Landroid/app/Activity;)V

    .line 89
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditActivity;->onBackPressed()V

    return-void
.end method

.method public synthetic lambda$subscribeUi$1$CategoryEditActivity(Ljava/lang/String;)V
    .locals 1

    .line 101
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditActivity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$subscribeUi$2$CategoryEditActivity(Ljava/util/List;)V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditActivity;->mAdapter:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditActivity$IconListAdapter;

    invoke-virtual {v0, p1}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditActivity$IconListAdapter;->setDataList(Ljava/util/List;)V

    return-void
.end method

.method public synthetic lambda$subscribeUi$3$CategoryEditActivity(Lcom/coderpage/framework/ViewReliedTask;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditActivity;->self()Lcom/coderpage/mine/ui/BaseActivity;

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

    .line 42
    invoke-super {p0, p1}, Lcom/coderpage/mine/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b0063

    .line 43
    invoke-static {p0, p1}, Landroidx/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/coderpage/mine/module/edit/category/CategoryEditActivityBinding;

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditActivity;->mBinding:Lcom/coderpage/mine/module/edit/category/CategoryEditActivityBinding;

    .line 44
    invoke-static {p0}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object p1

    const-class v0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;

    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditActivity;->mViewModel:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;

    .line 45
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditActivity;->getLifecycle()Landroid/arch/lifecycle/Lifecycle;

    move-result-object p1

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditActivity;->mViewModel:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;

    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 47
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditActivity;->initView()V

    .line 48
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditActivity;->subscribeUi()V

    return-void
.end method
