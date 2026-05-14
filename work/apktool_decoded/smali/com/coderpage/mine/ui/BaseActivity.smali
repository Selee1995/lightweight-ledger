.class public abstract Lcom/coderpage/mine/ui/BaseActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "BaseActivity.java"


# instance fields
.field protected mProcessDialog:Lcom/coderpage/mine/ui/widget/MineProcessDialog;

.field protected mToolbar:Landroid/support/v7/widget/Toolbar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic lambda$setToolbarSubTitle$2(ILandroid/support/v7/app/ActionBar;)V
    .locals 0

    .line 81
    invoke-virtual {p1, p0}, Landroid/support/v7/app/ActionBar;->setSubtitle(I)V

    return-void
.end method

.method static synthetic lambda$setToolbarSubTitle$3(Ljava/lang/CharSequence;Landroid/support/v7/app/ActionBar;)V
    .locals 0

    .line 86
    invoke-virtual {p1, p0}, Landroid/support/v7/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic lambda$setToolbarTitle$0(ILandroid/support/v7/app/ActionBar;)V
    .locals 0

    .line 71
    invoke-virtual {p1, p0}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    return-void
.end method

.method static synthetic lambda$setToolbarTitle$1(Ljava/lang/CharSequence;Landroid/support/v7/app/ActionBar;)V
    .locals 0

    .line 76
    invoke-virtual {p1, p0}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setStatusBarColor(I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resId"
        }
    .end annotation

    .line 90
    invoke-static {p0, p1}, Lcom/coderpage/base/utils/StatusBarUtils;->setStatusBarColor(Landroid/app/Activity;I)V

    .line 93
    invoke-static {p0, p1}, Lcom/coderpage/base/utils/ResUtils;->getColor(Landroid/content/Context;I)I

    move-result p1

    const/high16 v0, 0xff0000

    and-int/2addr v0, p1

    shr-int/lit8 v0, v0, 0x10

    int-to-float v0, v0

    const v1, 0xff00

    and-int/2addr v1, p1

    shr-int/lit8 v1, v1, 0x8

    int-to-float v1, v1

    and-int/lit16 p1, p1, 0xff

    int-to-float p1, p1

    float-to-double v2, v0

    const-wide v4, 0x3fd322d0e5604189L    # 0.299

    .line 100
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    float-to-double v0, v1

    const-wide v4, 0x3fe27ef9db22d0e5L    # 0.578

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v4

    add-double/2addr v2, v0

    float-to-double v0, p1

    const-wide v4, 0x3fbd2f1a9fbe76c9L    # 0.114

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v4

    add-double/2addr v2, v0

    const-wide/high16 v0, 0x4068000000000000L    # 192.0

    cmpl-double p1, v2, v0

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 101
    :goto_0
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/ui/BaseActivity;->setStatusBarLightMode(Z)V

    return-void
.end method


# virtual methods
.method public dismissProcessDialog()V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/coderpage/mine/ui/BaseActivity;->mProcessDialog:Lcom/coderpage/mine/ui/widget/MineProcessDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coderpage/mine/ui/widget/MineProcessDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/coderpage/mine/ui/BaseActivity;->mProcessDialog:Lcom/coderpage/mine/ui/widget/MineProcessDialog;

    invoke-virtual {v0}, Lcom/coderpage/mine/ui/widget/MineProcessDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public getToolbar()Landroid/support/v7/widget/Toolbar;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/coderpage/mine/ui/BaseActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    if-nez v0, :cond_0

    const v0, 0x7f090115

    .line 47
    invoke-virtual {p0, v0}, Lcom/coderpage/mine/ui/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lcom/coderpage/mine/ui/BaseActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p0, v0}, Lcom/coderpage/mine/ui/BaseActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/coderpage/mine/ui/BaseActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 29
    invoke-static {p0}, Lcom/lightweightledger/app/LanguageManager;->applyToContext(Landroid/content/Context;)V

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0}, Lcom/coderpage/mine/ui/BaseActivity;->statusBarColor()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/coderpage/mine/ui/BaseActivity;->setStatusBarColor(I)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 35
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 36
    invoke-virtual {p0}, Lcom/coderpage/mine/ui/BaseActivity;->dismissProcessDialog()V

    return-void
.end method

.method protected self()Lcom/coderpage/mine/ui/BaseActivity;
    .locals 0

    return-object p0
.end method

.method public setContentView(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layoutResID"
        }
    .end annotation

    .line 41
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->setContentView(I)V

    .line 42
    invoke-virtual {p0}, Lcom/coderpage/mine/ui/BaseActivity;->getToolbar()Landroid/support/v7/widget/Toolbar;

    return-void
.end method

.method protected setStatusBarLightMode(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lightMode"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/coderpage/mine/ui/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p0}, Lcom/coderpage/mine/ui/BaseActivity;->statusBarColor()I

    move-result v0

    invoke-static {p1, v0}, Lcom/coderpage/base/utils/StatusBarUtils;->setStatusBarLightMode(Landroid/view/Window;I)V

    goto :goto_0

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/coderpage/mine/ui/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p0}, Lcom/coderpage/mine/ui/BaseActivity;->statusBarColor()I

    move-result v0

    invoke-static {p1, v0}, Lcom/coderpage/base/utils/StatusBarUtils;->setStatusBarDarkMode(Landroid/view/Window;I)V

    :goto_0
    return-void
.end method

.method protected setToolbarAsBack(Landroid/view/View$OnClickListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clickListener"
        }
    .end annotation

    .line 56
    invoke-virtual {p0}, Lcom/coderpage/mine/ui/BaseActivity;->getToolbar()Landroid/support/v7/widget/Toolbar;

    .line 58
    iget-object v0, p0, Lcom/coderpage/mine/ui/BaseActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f08009c

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 59
    iget-object v0, p0, Lcom/coderpage/mine/ui/BaseActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected setToolbarAsClose(Landroid/view/View$OnClickListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clickListener"
        }
    .end annotation

    .line 63
    invoke-virtual {p0}, Lcom/coderpage/mine/ui/BaseActivity;->getToolbar()Landroid/support/v7/widget/Toolbar;

    .line 65
    iget-object v0, p0, Lcom/coderpage/mine/ui/BaseActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f0800f9

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 66
    iget-object v0, p0, Lcom/coderpage/mine/ui/BaseActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected setToolbarSubTitle(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subTitleResId"
        }
    .end annotation

    .line 80
    invoke-virtual {p0}, Lcom/coderpage/mine/ui/BaseActivity;->getToolbar()Landroid/support/v7/widget/Toolbar;

    .line 81
    invoke-virtual {p0}, Lcom/coderpage/mine/ui/BaseActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    new-instance v1, Lcom/coderpage/mine/ui/-$$Lambda$BaseActivity$02ZmEWpan3TgZjLO59nlueAYRc4;

    invoke-direct {v1, p1}, Lcom/coderpage/mine/ui/-$$Lambda$BaseActivity$02ZmEWpan3TgZjLO59nlueAYRc4;-><init>(I)V

    invoke-static {v0, v1}, Lcom/coderpage/base/utils/FunctionUtils;->invokeSafe(Ljava/lang/Object;Lcom/coderpage/base/utils/FunctionUtils$Task;)V

    return-void
.end method

.method protected setToolbarSubTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subTitle"
        }
    .end annotation

    .line 85
    invoke-virtual {p0}, Lcom/coderpage/mine/ui/BaseActivity;->getToolbar()Landroid/support/v7/widget/Toolbar;

    .line 86
    invoke-virtual {p0}, Lcom/coderpage/mine/ui/BaseActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    new-instance v1, Lcom/coderpage/mine/ui/-$$Lambda$BaseActivity$EfJFZNYm-mMEVbnULZQc2jAuYj8;

    invoke-direct {v1, p1}, Lcom/coderpage/mine/ui/-$$Lambda$BaseActivity$EfJFZNYm-mMEVbnULZQc2jAuYj8;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0, v1}, Lcom/coderpage/base/utils/FunctionUtils;->invokeSafe(Ljava/lang/Object;Lcom/coderpage/base/utils/FunctionUtils$Task;)V

    return-void
.end method

.method protected setToolbarTitle(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "titleResId"
        }
    .end annotation

    .line 70
    invoke-virtual {p0}, Lcom/coderpage/mine/ui/BaseActivity;->getToolbar()Landroid/support/v7/widget/Toolbar;

    .line 71
    invoke-virtual {p0}, Lcom/coderpage/mine/ui/BaseActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    new-instance v1, Lcom/coderpage/mine/ui/-$$Lambda$BaseActivity$_fzeMY5FuSqAXtpwlNzEmA8DlYg;

    invoke-direct {v1, p1}, Lcom/coderpage/mine/ui/-$$Lambda$BaseActivity$_fzeMY5FuSqAXtpwlNzEmA8DlYg;-><init>(I)V

    invoke-static {v0, v1}, Lcom/coderpage/base/utils/FunctionUtils;->invokeSafe(Ljava/lang/Object;Lcom/coderpage/base/utils/FunctionUtils$Task;)V

    return-void
.end method

.method protected setToolbarTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    .line 75
    invoke-virtual {p0}, Lcom/coderpage/mine/ui/BaseActivity;->getToolbar()Landroid/support/v7/widget/Toolbar;

    .line 76
    invoke-virtual {p0}, Lcom/coderpage/mine/ui/BaseActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    new-instance v1, Lcom/coderpage/mine/ui/-$$Lambda$BaseActivity$2yL2aCCofdXS2HhTUobvU42jEbc;

    invoke-direct {v1, p1}, Lcom/coderpage/mine/ui/-$$Lambda$BaseActivity$2yL2aCCofdXS2HhTUobvU42jEbc;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0, v1}, Lcom/coderpage/base/utils/FunctionUtils;->invokeSafe(Ljava/lang/Object;Lcom/coderpage/base/utils/FunctionUtils$Task;)V

    return-void
.end method

.method protected showProcessDialog(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    const/4 v0, 0x1

    .line 138
    invoke-virtual {p0, p1, v0, v0}, Lcom/coderpage/mine/ui/BaseActivity;->showProcessDialog(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public showProcessDialog(Ljava/lang/String;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "cancelable",
            "cancelOutside"
        }
    .end annotation

    .line 149
    invoke-virtual {p0}, Lcom/coderpage/mine/ui/BaseActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/coderpage/mine/ui/BaseActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/coderpage/mine/ui/BaseActivity;->mProcessDialog:Lcom/coderpage/mine/ui/widget/MineProcessDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/coderpage/mine/ui/widget/MineProcessDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/coderpage/mine/ui/BaseActivity;->mProcessDialog:Lcom/coderpage/mine/ui/widget/MineProcessDialog;

    invoke-virtual {v0, p1}, Lcom/coderpage/mine/ui/widget/MineProcessDialog;->setMessage(Ljava/lang/String;)V

    .line 154
    iget-object p1, p0, Lcom/coderpage/mine/ui/BaseActivity;->mProcessDialog:Lcom/coderpage/mine/ui/widget/MineProcessDialog;

    invoke-virtual {p1, p2}, Lcom/coderpage/mine/ui/widget/MineProcessDialog;->setCancelable(Z)V

    .line 155
    iget-object p1, p0, Lcom/coderpage/mine/ui/BaseActivity;->mProcessDialog:Lcom/coderpage/mine/ui/widget/MineProcessDialog;

    invoke-virtual {p1, p3}, Lcom/coderpage/mine/ui/widget/MineProcessDialog;->setCanceledOnTouchOutside(Z)V

    return-void

    .line 158
    :cond_1
    new-instance v0, Lcom/coderpage/mine/ui/widget/MineProcessDialog$Builder;

    invoke-direct {v0, p0}, Lcom/coderpage/mine/ui/widget/MineProcessDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 159
    invoke-virtual {v0, p1}, Lcom/coderpage/mine/ui/widget/MineProcessDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/coderpage/mine/ui/widget/MineProcessDialog$Builder;

    move-result-object p1

    .line 160
    invoke-virtual {p1, p2}, Lcom/coderpage/mine/ui/widget/MineProcessDialog$Builder;->setCancelable(Z)Lcom/coderpage/mine/ui/widget/MineProcessDialog$Builder;

    move-result-object p1

    .line 161
    invoke-virtual {p1, p3}, Lcom/coderpage/mine/ui/widget/MineProcessDialog$Builder;->setCancelOutside(Z)Lcom/coderpage/mine/ui/widget/MineProcessDialog$Builder;

    move-result-object p1

    .line 162
    invoke-virtual {p1}, Lcom/coderpage/mine/ui/widget/MineProcessDialog$Builder;->create()Lcom/coderpage/mine/ui/widget/MineProcessDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/coderpage/mine/ui/BaseActivity;->mProcessDialog:Lcom/coderpage/mine/ui/widget/MineProcessDialog;

    .line 163
    invoke-virtual {p1}, Lcom/coderpage/mine/ui/widget/MineProcessDialog;->show()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected statusBarColor()I
    .locals 1

    const v0, 0x7f06005d

    return v0
.end method
