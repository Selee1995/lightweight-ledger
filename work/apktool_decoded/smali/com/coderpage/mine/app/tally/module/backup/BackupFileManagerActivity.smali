.class public Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerActivity;
.super Lcom/coderpage/mine/ui/BaseActivity;
.source "BackupFileManagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerActivity$FileItemViewHolder;,
        Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerActivity$FileItemAadapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerActivity$FileItemAadapter;

.field private mBinding:Lcom/coderpage/mine/module/backup/BackupFileManagerActivityBinding;

.field private mViewModel:Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerViewModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/coderpage/mine/ui/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerActivity;)Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerViewModel;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerActivity;->mViewModel:Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerViewModel;

    return-object p0
.end method

.method private initView()V
    .locals 5

    .line 67
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerActivity;->mBinding:Lcom/coderpage/mine/module/backup/BackupFileManagerActivityBinding;

    iget-object v0, v0, Lcom/coderpage/mine/module/backup/BackupFileManagerActivityBinding;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 68
    new-instance v1, Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerActivity$FileItemAadapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerActivity$FileItemAadapter;-><init>(Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerActivity;Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerActivity$1;)V

    iput-object v1, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerActivity;->mAdapter:Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerActivity$FileItemAadapter;

    .line 69
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 70
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerActivity;->self()Lcom/coderpage/mine/ui/BaseActivity;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public static open(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 53
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 54
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_0

    const/high16 v1, 0x10000000

    .line 55
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 57
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private subscribeUi()V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerActivity;->mViewModel:Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerViewModel;

    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerViewModel;->getBackupFileList()Landroid/arch/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$BackupFileManagerActivity$ZdIvHb9-23hraOi_wCfse3bb4OE;

    invoke-direct {v1, p0}, Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$BackupFileManagerActivity$ZdIvHb9-23hraOi_wCfse3bb4OE;-><init>(Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerActivity;)V

    invoke-virtual {v0, p0, v1}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 77
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerActivity;->mViewModel:Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerViewModel;

    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerViewModel;->getViewReliedTask()Landroid/arch/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$BackupFileManagerActivity$1JKrRhpVK58CluRhiwA1zS94X0U;

    invoke-direct {v1, p0}, Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$BackupFileManagerActivity$1JKrRhpVK58CluRhiwA1zS94X0U;-><init>(Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerActivity;)V

    invoke-virtual {v0, p0, v1}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onPostCreate$0$BackupFileManagerActivity(Landroid/view/View;)V
    .locals 0

    .line 63
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerActivity;->finish()V

    return-void
.end method

.method public synthetic lambda$subscribeUi$1$BackupFileManagerActivity(Ljava/util/List;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerActivity;->mAdapter:Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerActivity$FileItemAadapter;

    invoke-static {v0, p1}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerActivity$FileItemAadapter;->access$200(Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerActivity$FileItemAadapter;Ljava/util/List;)V

    return-void
.end method

.method public synthetic lambda$subscribeUi$2$BackupFileManagerActivity(Lcom/coderpage/framework/ViewReliedTask;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerActivity;->self()Lcom/coderpage/mine/ui/BaseActivity;

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

    .line 43
    invoke-super {p0, p1}, Lcom/coderpage/mine/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b005b

    .line 44
    invoke-static {p0, p1}, Landroidx/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/coderpage/mine/module/backup/BackupFileManagerActivityBinding;

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerActivity;->mBinding:Lcom/coderpage/mine/module/backup/BackupFileManagerActivityBinding;

    .line 45
    invoke-static {p0}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object p1

    const-class v0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerViewModel;

    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerViewModel;

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerActivity;->mViewModel:Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerViewModel;

    .line 46
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerActivity;->getLifecycle()Landroid/arch/lifecycle/Lifecycle;

    move-result-object p1

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerActivity;->mViewModel:Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerViewModel;

    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 48
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerActivity;->initView()V

    .line 49
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerActivity;->subscribeUi()V

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 62
    invoke-super {p0, p1}, Lcom/coderpage/mine/ui/BaseActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 63
    new-instance p1, Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$BackupFileManagerActivity$ihk9hg5HQXYOjkWV5oUdIgUpQDg;

    invoke-direct {p1, p0}, Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$BackupFileManagerActivity$ihk9hg5HQXYOjkWV5oUdIgUpQDg;-><init>(Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerActivity;)V

    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerActivity;->setToolbarAsClose(Landroid/view/View$OnClickListener;)V

    return-void
.end method
