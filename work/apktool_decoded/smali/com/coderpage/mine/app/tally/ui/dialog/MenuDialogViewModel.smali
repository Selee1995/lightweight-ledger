.class public Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogViewModel;
.super Lcom/coderpage/framework/BaseViewModel;
.source "MenuDialogViewModel.java"


# instance fields
.field private mMenuList:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private mViewReliedTask:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Lcom/coderpage/framework/ViewReliedTask<",
            "Landroid/support/v4/app/DialogFragment;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "application"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1}, Lcom/coderpage/framework/BaseViewModel;-><init>(Landroid/app/Application;)V

    .line 27
    new-instance p1, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogViewModel;->mMenuList:Landroid/arch/lifecycle/MutableLiveData;

    .line 28
    new-instance p1, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogViewModel;->mViewReliedTask:Landroid/arch/lifecycle/MutableLiveData;

    .line 32
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogViewModel;->init()V

    return-void
.end method

.method private init()V
    .locals 5

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 78
    new-instance v1, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogItem;

    .line 79
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogViewModel;->getApplication()Landroid/app/Application;

    move-result-object v2

    const v3, 0x7f0e005c

    invoke-static {v2, v3}, Lcom/coderpage/base/utils/ResUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 81
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogViewModel;->getApplication()Landroid/app/Application;

    move-result-object v3

    const v4, 0x7f08009a

    invoke-static {v3, v4}, Lcom/coderpage/base/utils/ResUtils;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const-string v4, "/app/tally/about"

    invoke-direct {v1, v2, v4, v3}, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 78
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance v1, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogItem;

    .line 81
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogViewModel;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "finance_plan_title"

    const-string v4, "Finance Plan"

    invoke-static {v2, v3, v4}, Lcom/lightweightledger/app/LanguageManager;->text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 83
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogViewModel;->getApplication()Landroid/app/Application;

    move-result-object v3

    const v4, 0x7f0800f8

    invoke-static {v3, v4}, Lcom/coderpage/base/utils/ResUtils;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const-string v4, "/app/tally/finance_plan"

    invoke-direct {v1, v2, v4, v3}, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 80
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    new-instance v1, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogItem;

    .line 84
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogViewModel;->getApplication()Landroid/app/Application;

    move-result-object v2

    const v3, 0x7f0e0063

    invoke-static {v2, v3}, Lcom/coderpage/base/utils/ResUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 86
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogViewModel;->getApplication()Landroid/app/Application;

    move-result-object v3

    const v4, 0x7f080110

    invoke-static {v3, v4}, Lcom/coderpage/base/utils/ResUtils;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const-string v4, "/app/tally/setting"

    invoke-direct {v1, v2, v4, v3}, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 83
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    new-instance v1, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogItem;

    .line 89
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogViewModel;->getApplication()Landroid/app/Application;

    move-result-object v2

    const v3, 0x7f0e0061

    invoke-static {v2, v3}, Lcom/coderpage/base/utils/ResUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 91
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogViewModel;->getApplication()Landroid/app/Application;

    move-result-object v3

    const v4, 0x7f080106

    invoke-static {v3, v4}, Lcom/coderpage/base/utils/ResUtils;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const-string v4, "/app/tally/records"

    invoke-direct {v1, v2, v4, v3}, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 88
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    new-instance v1, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogItem;

    .line 94
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogViewModel;->getApplication()Landroid/app/Application;

    move-result-object v2

    const v3, 0x7f0e005d

    invoke-static {v2, v3}, Lcom/coderpage/base/utils/ResUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 96
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogViewModel;->getApplication()Landroid/app/Application;

    move-result-object v3

    const v4, 0x7f0800f8

    invoke-static {v3, v4}, Lcom/coderpage/base/utils/ResUtils;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const-string v4, "/app/tally/chart"

    invoke-direct {v1, v2, v4, v3}, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 93
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogViewModel;->mMenuList:Landroid/arch/lifecycle/MutableLiveData;

    invoke-virtual {v1, v0}, Landroid/arch/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$onMenuClick$0(Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogItem;Landroid/support/v4/app/DialogFragment;)V
    .locals 1

    .line 59
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogItem;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/alibaba/android/arouter/launcher/ARouter;->build(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p0

    invoke-virtual {p1}, Landroid/support/v4/app/DialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation(Landroid/content/Context;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic lambda$onMenuClick$1(Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogItem;Landroid/support/v4/app/DialogFragment;)V
    .locals 3

    .line 49
    invoke-virtual {p1}, Landroid/support/v4/app/DialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :hasActivity

    return-void

    :hasActivity
    invoke-virtual {p1}, Landroid/support/v4/app/DialogFragment;->dismiss()V

    .line 54
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogItem;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/app/tally/finance_plan"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :checkCommon

    invoke-virtual {p1}, Landroid/support/v4/app/DialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :startFinance

    return-void

    :startFinance
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/lightweightledger/app/FinancePlanActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    :checkCommon
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "/app/tally/chart"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :needFingerprint

    const-string v1, "/app/tally/records"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :needFingerprint

    .line 64
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogItem;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/alibaba/android/arouter/launcher/ARouter;->build(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p0

    invoke-virtual {p1}, Landroid/support/v4/app/DialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation(Landroid/content/Context;)Ljava/lang/Object;

    goto :done

    .line 58
    :needFingerprint
    invoke-virtual {p1}, Landroid/support/v4/app/DialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/coderpage/mine/app/tally/ui/dialog/-$$Lambda$MenuDialogViewModel$2LfKhjofbRvK_8ooUd8vENLX4xI;

    invoke-direct {v1, p0, p1}, Lcom/coderpage/mine/app/tally/ui/dialog/-$$Lambda$MenuDialogViewModel$2LfKhjofbRvK_8ooUd8vENLX4xI;-><init>(Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogItem;Landroid/support/v4/app/DialogFragment;)V

    invoke-static {v0, v1}, Lcom/coderpage/mine/app/tally/utils/SecurityUtils;->executeAfterFingerprintAuth(Landroid/app/Activity;Ljava/lang/Runnable;)V

    :done
    return-void
.end method


# virtual methods
.method getMenuList()Landroid/arch/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogItem;",
            ">;>;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogViewModel;->mMenuList:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method getViewReliedTask()Landroid/arch/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/LiveData<",
            "Lcom/coderpage/framework/ViewReliedTask<",
            "Landroid/support/v4/app/DialogFragment;",
            ">;>;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogViewModel;->mViewReliedTask:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public onCloseClick()V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogViewModel;->mViewReliedTask:Landroid/arch/lifecycle/MutableLiveData;

    sget-object v1, Lcom/coderpage/mine/app/tally/ui/dialog/-$$Lambda$FprZZjcY9YeyaH-Ae6QxDN2sZdE;->INSTANCE:Lcom/coderpage/mine/app/tally/ui/dialog/-$$Lambda$FprZZjcY9YeyaH-Ae6QxDN2sZdE;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onMenuClick(Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogItem;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogViewModel;->mViewReliedTask:Landroid/arch/lifecycle/MutableLiveData;

    new-instance v1, Lcom/coderpage/mine/app/tally/ui/dialog/-$$Lambda$MenuDialogViewModel$anxFEOm8_d2XqZ4yxR1R0pLj9P0;

    invoke-direct {v1, p1}, Lcom/coderpage/mine/app/tally/ui/dialog/-$$Lambda$MenuDialogViewModel$anxFEOm8_d2XqZ4yxR1R0pLj9P0;-><init>(Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogItem;)V

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method
