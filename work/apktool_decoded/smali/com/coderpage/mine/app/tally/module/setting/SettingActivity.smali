.class public Lcom/coderpage/mine/app/tally/module/setting/SettingActivity;
.super Lcom/coderpage/mine/ui/BaseActivity;
.source "SettingActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBinding:Lcom/coderpage/mine/module/setting/SettingActivityBinding;

.field private mViewModel:Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-class v0, Lcom/coderpage/mine/app/tally/module/setting/SettingActivity;

    invoke-static {v0}, Lcom/coderpage/base/utils/LogUtils;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coderpage/mine/app/tally/module/setting/SettingActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/coderpage/mine/ui/BaseActivity;-><init>()V

    return-void
.end method

.method private subscribeUi()V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/setting/SettingActivity;->mBinding:Lcom/coderpage/mine/module/setting/SettingActivityBinding;

    invoke-virtual {v0, p0}, Lcom/coderpage/mine/module/setting/SettingActivityBinding;->setActivity(Landroid/app/Activity;)V

    .line 41
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/setting/SettingActivity;->mBinding:Lcom/coderpage/mine/module/setting/SettingActivityBinding;

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/setting/SettingActivity;->mViewModel:Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel;

    invoke-virtual {v0, v1}, Lcom/coderpage/mine/module/setting/SettingActivityBinding;->setVm(Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel;)V

    .line 42
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/setting/SettingActivity;->mViewModel:Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel;

    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel;->getProcessMessage()Landroid/arch/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/coderpage/mine/app/tally/module/setting/-$$Lambda$SettingActivity$7Idjtv3oKqn1Q2TYx9JE98mIXbM;

    invoke-direct {v1, p0}, Lcom/coderpage/mine/app/tally/module/setting/-$$Lambda$SettingActivity$7Idjtv3oKqn1Q2TYx9JE98mIXbM;-><init>(Lcom/coderpage/mine/app/tally/module/setting/SettingActivity;)V

    invoke-virtual {v0, p0, v1}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onPostCreate$1$SettingActivity(Landroid/view/View;)V
    .locals 0

    .line 54
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/setting/SettingActivity;->finish()V

    return-void
.end method

.method public synthetic lambda$subscribeUi$0$SettingActivity(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/setting/SettingActivity;->dismissProcessDialog()V

    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/module/setting/SettingActivity;->showProcessDialog(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onOpenFinancePlan(Landroid/view/View;)V
    .locals 2

    .line 70
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/lightweightledger/app/FinancePlanActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/module/setting/SettingActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onLanguageSwitch(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/lightweightledger/app/LanguageManager;->showLanguageDialog(Landroid/app/Activity;)V

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

    .line 59
    invoke-super {p0, p1, p2, p3}, Lcom/coderpage/mine/ui/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 60
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/setting/SettingActivity;->mViewModel:Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel;

    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/setting/SettingActivity;->self()Lcom/coderpage/mine/ui/BaseActivity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

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

    .line 32
    invoke-super {p0, p1}, Lcom/coderpage/mine/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b001c

    .line 33
    invoke-static {p0, p1}, Landroidx/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/coderpage/mine/module/setting/SettingActivityBinding;

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/setting/SettingActivity;->mBinding:Lcom/coderpage/mine/module/setting/SettingActivityBinding;

    .line 34
    invoke-static {p0}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object p1

    const-class v0, Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel;

    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel;

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/setting/SettingActivity;->mViewModel:Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel;

    .line 36
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/module/setting/SettingActivity;->subscribeUi()V

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

    .line 53
    invoke-super {p0, p1}, Lcom/coderpage/mine/ui/BaseActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 54
    new-instance p1, Lcom/coderpage/mine/app/tally/module/setting/-$$Lambda$SettingActivity$CgGL9IusMaIzjFFDPHeldij8XMs;

    invoke-direct {p1, p0}, Lcom/coderpage/mine/app/tally/module/setting/-$$Lambda$SettingActivity$CgGL9IusMaIzjFFDPHeldij8XMs;-><init>(Lcom/coderpage/mine/app/tally/module/setting/SettingActivity;)V

    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/module/setting/SettingActivity;->setToolbarAsBack(Landroid/view/View$OnClickListener;)V

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

    .line 67
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/setting/SettingActivity;->mViewModel:Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel;

    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/setting/SettingActivity;->self()Lcom/coderpage/mine/ui/BaseActivity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel;->onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    .line 68
    invoke-super {p0, p1, p2, p3}, Lcom/coderpage/mine/ui/BaseActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method
