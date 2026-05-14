.class public Lcom/coderpage/mine/app/tally/module/backup/BackupFileActivity;
.super Lcom/coderpage/mine/ui/BaseActivity;
.source "BackupFileActivity.java"


# instance fields
.field private mBinding:Lcom/coderpage/mine/module/backup/BackupFileActivityBinding;

.field private mViewModel:Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/coderpage/mine/ui/BaseActivity;-><init>()V

    return-void
.end method

.method private subscribeUi()V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileActivity;->mBinding:Lcom/coderpage/mine/module/backup/BackupFileActivityBinding;

    invoke-virtual {v0, p0}, Lcom/coderpage/mine/module/backup/BackupFileActivityBinding;->setActivity(Landroid/app/Activity;)V

    .line 40
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileActivity;->mBinding:Lcom/coderpage/mine/module/backup/BackupFileActivityBinding;

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileActivity;->mViewModel:Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;

    invoke-virtual {v0, v1}, Lcom/coderpage/mine/module/backup/BackupFileActivityBinding;->setVm(Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;)V

    .line 41
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileActivity;->mViewModel:Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;

    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;->getProcessMessage()Landroid/arch/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$BackupFileActivity$vhm0XW1mk8EkGmJz_XFFIH7kGdc;

    invoke-direct {v1, p0}, Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$BackupFileActivity$vhm0XW1mk8EkGmJz_XFFIH7kGdc;-><init>(Lcom/coderpage/mine/app/tally/module/backup/BackupFileActivity;)V

    invoke-virtual {v0, p0, v1}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onPostCreate$1$BackupFileActivity(Landroid/view/View;)V
    .locals 0

    .line 74
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileActivity;->finish()V

    return-void
.end method

.method public synthetic lambda$subscribeUi$0$BackupFileActivity(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileActivity;->dismissProcessDialog()V

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileActivity;->showProcessDialog(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "resultCode",
            "data"
        }
    .end annotation

    .line 79
    invoke-super {p0, p1, p2, p3}, Lcom/coderpage/mine/ui/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 80
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileActivity;->mViewModel:Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;

    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileActivity;->self()Lcom/coderpage/mine/ui/BaseActivity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

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

    .line 31
    invoke-super {p0, p1}, Lcom/coderpage/mine/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b005a

    .line 32
    invoke-static {p0, p1}, Landroidx/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/coderpage/mine/module/backup/BackupFileActivityBinding;

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileActivity;->mBinding:Lcom/coderpage/mine/module/backup/BackupFileActivityBinding;

    .line 33
    invoke-static {p0}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object p1

    const-class v0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;

    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileActivity;->mViewModel:Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;

    .line 35
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileActivity;->subscribeUi()V

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

    .line 53
    invoke-super {p0, p1}, Lcom/coderpage/mine/ui/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 54
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0c0000

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

    .line 60
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0900a7

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileActivity;->mViewModel:Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;

    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileActivity;->self()Lcom/coderpage/mine/ui/BaseActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;->onMenuManagerClick(Landroid/app/Activity;)V

    .line 68
    :goto_0
    invoke-super {p0, p1}, Lcom/coderpage/mine/ui/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
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

    .line 73
    invoke-super {p0, p1}, Lcom/coderpage/mine/ui/BaseActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 74
    new-instance p1, Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$BackupFileActivity$FLomz0a-NhoJehsISqmT1ifH2WI;

    invoke-direct {p1, p0}, Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$BackupFileActivity$FLomz0a-NhoJehsISqmT1ifH2WI;-><init>(Lcom/coderpage/mine/app/tally/module/backup/BackupFileActivity;)V

    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileActivity;->setToolbarAsBack(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2
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

    .line 87
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileActivity;->mViewModel:Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;

    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileActivity;->self()Lcom/coderpage/mine/ui/BaseActivity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;->onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    .line 88
    invoke-super {p0, p1, p2, p3}, Lcom/coderpage/mine/ui/BaseActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method
