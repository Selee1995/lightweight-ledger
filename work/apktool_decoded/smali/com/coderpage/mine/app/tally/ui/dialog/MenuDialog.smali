.class public Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "MenuDialog.java"


# instance fields
.field private mAdapter:Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogAdapter;

.field private mBinding:Lcom/coderpage/mine/dialog/MenuDialogBinding;

.field private mViewModel:Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogViewModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method private initView()V
    .locals 4

    .line 66
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialog;->mBinding:Lcom/coderpage/mine/dialog/MenuDialogBinding;

    iget-object v0, v0, Lcom/coderpage/mine/dialog/MenuDialogBinding;->recyclerMenu:Landroid/support/v7/widget/RecyclerView;

    .line 67
    new-instance v1, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 68
    new-instance v1, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogAdapter;

    iget-object v2, p0, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialog;->mViewModel:Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogViewModel;

    invoke-direct {v1, v2}, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogAdapter;-><init>(Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogViewModel;)V

    iput-object v1, p0, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialog;->mAdapter:Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogAdapter;

    .line 69
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public static show(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 39
    new-instance v0, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialog;

    invoke-direct {v0}, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialog;-><init>()V

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p0

    const-string v1, "menu_dialog"

    invoke-virtual {v0, p0, v1}, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private subscribeUi()V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialog;->mBinding:Lcom/coderpage/mine/dialog/MenuDialogBinding;

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialog;->mViewModel:Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogViewModel;

    invoke-virtual {v0, v1}, Lcom/coderpage/mine/dialog/MenuDialogBinding;->setVm(Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogViewModel;)V

    .line 74
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialog;->mViewModel:Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogViewModel;

    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogViewModel;->getMenuList()Landroid/arch/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/coderpage/mine/app/tally/ui/dialog/-$$Lambda$MenuDialog$aDfHparDPXCzhcDVgH_CyYF1ivE;

    invoke-direct {v1, p0}, Lcom/coderpage/mine/app/tally/ui/dialog/-$$Lambda$MenuDialog$aDfHparDPXCzhcDVgH_CyYF1ivE;-><init>(Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialog;)V

    invoke-virtual {v0, p0, v1}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 77
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialog;->mViewModel:Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogViewModel;

    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogViewModel;->getViewReliedTask()Landroid/arch/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/coderpage/mine/app/tally/ui/dialog/-$$Lambda$MenuDialog$K0vM-uysysSh5fRpEmu8kj3NRE8;

    invoke-direct {v1, p0}, Lcom/coderpage/mine/app/tally/ui/dialog/-$$Lambda$MenuDialog$K0vM-uysysSh5fRpEmu8kj3NRE8;-><init>(Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialog;)V

    invoke-virtual {v0, p0, v1}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$subscribeUi$0$MenuDialog(Ljava/util/List;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialog;->mAdapter:Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogAdapter;

    invoke-virtual {v0, p1}, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogAdapter;->setMenuList(Ljava/util/List;)V

    return-void
.end method

.method public synthetic lambda$subscribeUi$1$MenuDialog(Lcom/coderpage/framework/ViewReliedTask;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 79
    invoke-interface {p1, p0}, Lcom/coderpage/framework/ViewReliedTask;->execute(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
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
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 44
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    const v0, 0x7f0f0131

    .line 45
    invoke-virtual {p0, p1, v0}, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialog;->setStyle(II)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "container",
            "savedInstanceState"
        }
    .end annotation

    const p3, 0x7f0b0054

    const/4 v0, 0x0

    .line 53
    invoke-static {p1, p3, p2, v0}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/coderpage/mine/dialog/MenuDialogBinding;

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialog;->mBinding:Lcom/coderpage/mine/dialog/MenuDialogBinding;

    .line 54
    invoke-static {p0}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/Fragment;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object p1

    const-class p2, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogViewModel;

    invoke-virtual {p1, p2}, Landroid/arch/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogViewModel;

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialog;->mViewModel:Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogViewModel;

    .line 55
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialog;->initView()V

    .line 56
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialog;->subscribeUi()V

    .line 57
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialog;->mBinding:Lcom/coderpage/mine/dialog/MenuDialogBinding;

    invoke-virtual {p1}, Lcom/coderpage/mine/dialog/MenuDialogBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
