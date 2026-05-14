.class public Lcom/coderpage/mine/app/tally/module/debug/DebugActivity;
.super Lcom/coderpage/mine/ui/BaseActivity;
.source "DebugActivity.java"


# instance fields
.field private mBinding:Lcom/coderpage/mine/module/debug/DebugActivityBinding;

.field private mViewModel:Lcom/coderpage/mine/app/tally/module/debug/DebugViewModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/coderpage/mine/ui/BaseActivity;-><init>()V

    return-void
.end method

.method private subscribeUi()V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/debug/DebugActivity;->mBinding:Lcom/coderpage/mine/module/debug/DebugActivityBinding;

    invoke-virtual {v0, p0}, Lcom/coderpage/mine/module/debug/DebugActivityBinding;->setActivity(Landroid/app/Activity;)V

    .line 47
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/debug/DebugActivity;->mBinding:Lcom/coderpage/mine/module/debug/DebugActivityBinding;

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/debug/DebugActivity;->mViewModel:Lcom/coderpage/mine/app/tally/module/debug/DebugViewModel;

    invoke-virtual {v0, v1}, Lcom/coderpage/mine/module/debug/DebugActivityBinding;->setVm(Lcom/coderpage/mine/app/tally/module/debug/DebugViewModel;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onPostCreate$0$DebugActivity(Landroid/view/View;)V
    .locals 0

    .line 34
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/debug/DebugActivity;->onBackPressed()V

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

    .line 24
    invoke-super {p0, p1}, Lcom/coderpage/mine/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b0060

    .line 25
    invoke-static {p0, p1}, Landroidx/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/coderpage/mine/module/debug/DebugActivityBinding;

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/debug/DebugActivity;->mBinding:Lcom/coderpage/mine/module/debug/DebugActivityBinding;

    .line 26
    invoke-static {p0}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object p1

    const-class v0, Lcom/coderpage/mine/app/tally/module/debug/DebugViewModel;

    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/coderpage/mine/app/tally/module/debug/DebugViewModel;

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/debug/DebugActivity;->mViewModel:Lcom/coderpage/mine/app/tally/module/debug/DebugViewModel;

    .line 28
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/module/debug/DebugActivity;->subscribeUi()V

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

    .line 33
    invoke-super {p0, p1}, Lcom/coderpage/mine/ui/BaseActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 34
    new-instance p1, Lcom/coderpage/mine/app/tally/module/debug/-$$Lambda$DebugActivity$5JP1h0YDOrrlYmlPrMkNxeKX8J0;

    invoke-direct {p1, p0}, Lcom/coderpage/mine/app/tally/module/debug/-$$Lambda$DebugActivity$5JP1h0YDOrrlYmlPrMkNxeKX8J0;-><init>(Lcom/coderpage/mine/app/tally/module/debug/DebugActivity;)V

    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/module/debug/DebugActivity;->setToolbarAsClose(Landroid/view/View$OnClickListener;)V

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

    .line 41
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/debug/DebugActivity;->mViewModel:Lcom/coderpage/mine/app/tally/module/debug/DebugViewModel;

    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/debug/DebugActivity;->self()Lcom/coderpage/mine/ui/BaseActivity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/coderpage/mine/app/tally/module/debug/DebugViewModel;->onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    .line 42
    invoke-super {p0, p1, p2, p3}, Lcom/coderpage/mine/ui/BaseActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method
