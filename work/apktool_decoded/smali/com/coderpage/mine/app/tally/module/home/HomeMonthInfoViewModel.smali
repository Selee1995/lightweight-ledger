.class public Lcom/coderpage/mine/app/tally/module/home/HomeMonthInfoViewModel;
.super Lcom/coderpage/framework/BaseViewModel;
.source "HomeMonthInfoViewModel.java"


# instance fields
.field private mBudgetLeftMoney:Landroidx/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mData:Lcom/coderpage/mine/app/tally/module/home/model/HomeMonthModel;

.field private mExpenseMoney:Landroidx/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHideMoney:Landroidx/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mIncomeMoney:Landroidx/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMoneyFormat:Ljava/text/DecimalFormat;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "application"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1}, Lcom/coderpage/framework/BaseViewModel;-><init>(Landroid/app/Application;)V

    .line 27
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomeMonthInfoViewModel;->mMoneyFormat:Ljava/text/DecimalFormat;

    .line 32
    new-instance v0, Landroidx/databinding/ObservableField;

    invoke-direct {v0}, Landroidx/databinding/ObservableField;-><init>()V

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomeMonthInfoViewModel;->mExpenseMoney:Landroidx/databinding/ObservableField;

    .line 34
    new-instance v0, Landroidx/databinding/ObservableField;

    invoke-direct {v0}, Landroidx/databinding/ObservableField;-><init>()V

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomeMonthInfoViewModel;->mIncomeMoney:Landroidx/databinding/ObservableField;

    .line 36
    new-instance v0, Landroidx/databinding/ObservableField;

    invoke-direct {v0}, Landroidx/databinding/ObservableField;-><init>()V

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomeMonthInfoViewModel;->mBudgetLeftMoney:Landroidx/databinding/ObservableField;

    .line 39
    new-instance v0, Landroidx/databinding/ObservableField;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableField;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomeMonthInfoViewModel;->mHideMoney:Landroidx/databinding/ObservableField;

    .line 43
    invoke-static {p1}, Lcom/coderpage/mine/app/tally/persistence/preference/SettingPreference;->getHideMoney(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    return-void
.end method

.method private formatBudgetLeftMoney(Lcom/coderpage/mine/app/tally/module/home/model/HomeMonthModel;)Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomeMonthInfoViewModel;->mHideMoney:Landroidx/databinding/ObservableField;

    invoke-virtual {v0}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "****"

    return-object p1

    .line 112
    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/home/HomeMonthInfoViewModel;->getApplication()Landroid/app/Application;

    move-result-object p1

    const v0, 0x7f0e00d9

    invoke-static {p1, v0}, Lcom/coderpage/base/utils/ResUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 115
    :cond_1
    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/module/home/model/HomeMonthModel;->getMonthInComeAmount()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double p1, v1, v3

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/home/HomeMonthInfoViewModel;->getApplication()Landroid/app/Application;

    move-result-object p1

    const v0, 0x7f0e00d9

    invoke-static {p1, v0}, Lcom/coderpage/base/utils/ResUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 121
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\uFFE5"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomeMonthInfoViewModel;->mMoneyFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private formatExpenseMoney(Lcom/coderpage/mine/app/tally/module/home/model/HomeMonthModel;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomeMonthInfoViewModel;->mHideMoney:Landroidx/databinding/ObservableField;

    invoke-virtual {v0}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "****"

    return-object p1

    :cond_0
    const v0, 0x7f0e00d8

    if-nez p1, :cond_1

    .line 81
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/home/HomeMonthInfoViewModel;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/coderpage/base/utils/ResUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 83
    :cond_1
    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/module/home/model/HomeMonthModel;->getMonthExpenseAmount()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double p1, v1, v3

    if-nez p1, :cond_2

    .line 85
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/home/HomeMonthInfoViewModel;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/coderpage/base/utils/ResUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 87
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\uFFE5"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomeMonthInfoViewModel;->mMoneyFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private formatIncomeMoney(Lcom/coderpage/mine/app/tally/module/home/model/HomeMonthModel;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomeMonthInfoViewModel;->mHideMoney:Landroidx/databinding/ObservableField;

    invoke-virtual {v0}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "****"

    return-object p1

    :cond_0
    const v1, 0x7f0e00d7

    .line 97
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/home/HomeMonthInfoViewModel;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lcom/coderpage/mine/app/tally/persistence/preference/SettingPreference;->getBudgetMonth(Landroid/content/Context;)F

    move-result p1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    .line 99
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/home/HomeMonthInfoViewModel;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/coderpage/base/utils/ResUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 101
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\uFFE5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    float-to-double v1, p1

    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/home/HomeMonthInfoViewModel;->mMoneyFormat:Ljava/text/DecimalFormat;

    invoke-virtual {p1, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic lambda$onMonthInfoClick$0(Landroid/app/Activity;)V
    .locals 2

    .line 124
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private refresh(Lcom/coderpage/mine/app/tally/module/home/model/HomeMonthModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 68
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/home/HomeMonthInfoViewModel;->mData:Lcom/coderpage/mine/app/tally/module/home/model/HomeMonthModel;

    .line 69
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomeMonthInfoViewModel;->mExpenseMoney:Landroidx/databinding/ObservableField;

    invoke-direct {p0, p1}, Lcom/coderpage/mine/app/tally/module/home/HomeMonthInfoViewModel;->formatExpenseMoney(Lcom/coderpage/mine/app/tally/module/home/model/HomeMonthModel;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 70
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/home/HomeMonthInfoViewModel;->mIncomeMoney:Landroidx/databinding/ObservableField;

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomeMonthInfoViewModel;->mData:Lcom/coderpage/mine/app/tally/module/home/model/HomeMonthModel;

    invoke-direct {p0, v0}, Lcom/coderpage/mine/app/tally/module/home/HomeMonthInfoViewModel;->formatIncomeMoney(Lcom/coderpage/mine/app/tally/module/home/model/HomeMonthModel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 71
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/home/HomeMonthInfoViewModel;->mBudgetLeftMoney:Landroidx/databinding/ObservableField;

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomeMonthInfoViewModel;->mData:Lcom/coderpage/mine/app/tally/module/home/model/HomeMonthModel;

    invoke-direct {p0, v0}, Lcom/coderpage/mine/app/tally/module/home/HomeMonthInfoViewModel;->formatBudgetLeftMoney(Lcom/coderpage/mine/app/tally/module/home/model/HomeMonthModel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getBudgetLeftMoney()Landroidx/databinding/ObservableField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomeMonthInfoViewModel;->mBudgetLeftMoney:Landroidx/databinding/ObservableField;

    return-object v0
.end method

.method public getExpenseMoney()Landroidx/databinding/ObservableField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomeMonthInfoViewModel;->mExpenseMoney:Landroidx/databinding/ObservableField;

    return-object v0
.end method

.method public getHideMoney()Landroidx/databinding/ObservableField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomeMonthInfoViewModel;->mHideMoney:Landroidx/databinding/ObservableField;

    return-object v0
.end method

.method public getIncomeMoney()Landroidx/databinding/ObservableField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomeMonthInfoViewModel;->mIncomeMoney:Landroidx/databinding/ObservableField;

    return-object v0
.end method

.method public synthetic lambda$onBudgetMoneyClick$2$HomeMonthInfoViewModel(Landroid/content/DialogInterface;F)V
    .locals 1

    .line 153
    iget-object p2, p0, Lcom/coderpage/mine/app/tally/module/home/HomeMonthInfoViewModel;->mData:Lcom/coderpage/mine/app/tally/module/home/model/HomeMonthModel;

    invoke-direct {p0, p2}, Lcom/coderpage/mine/app/tally/module/home/HomeMonthInfoViewModel;->refresh(Lcom/coderpage/mine/app/tally/module/home/model/HomeMonthModel;)V

    .line 154
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public synthetic lambda$onShowOrHideMoneyClick$1$HomeMonthInfoViewModel()V
    .locals 3

    .line 142
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomeMonthInfoViewModel;->mHideMoney:Landroidx/databinding/ObservableField;

    invoke-virtual {v0}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 143
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 144
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/home/HomeMonthInfoViewModel;->mHideMoney:Landroidx/databinding/ObservableField;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 145
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/home/HomeMonthInfoViewModel;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v1, v0}, Lcom/coderpage/mine/app/tally/persistence/preference/SettingPreference;->setHideMoney(Landroid/content/Context;Z)V

    .line 146
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomeMonthInfoViewModel;->mData:Lcom/coderpage/mine/app/tally/module/home/model/HomeMonthModel;

    invoke-direct {p0, v0}, Lcom/coderpage/mine/app/tally/module/home/HomeMonthInfoViewModel;->refresh(Lcom/coderpage/mine/app/tally/module/home/model/HomeMonthModel;)V

    return-void
.end method

.method public onBudgetMoneyClick(Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 152
    new-instance v0, Lcom/coderpage/mine/app/tally/ui/dialog/SetBudgetMonthDialog;

    invoke-direct {v0, p1}, Lcom/coderpage/mine/app/tally/ui/dialog/SetBudgetMonthDialog;-><init>(Landroid/app/Activity;)V

    new-instance p1, Lcom/coderpage/mine/app/tally/module/home/-$$Lambda$HomeMonthInfoViewModel$NF9akfeOVWeJmWNiDzJolw-m8hA;

    invoke-direct {p1, p0}, Lcom/coderpage/mine/app/tally/module/home/-$$Lambda$HomeMonthInfoViewModel$NF9akfeOVWeJmWNiDzJolw-m8hA;-><init>(Lcom/coderpage/mine/app/tally/module/home/HomeMonthInfoViewModel;)V

    invoke-virtual {v0, p1}, Lcom/coderpage/mine/app/tally/ui/dialog/SetBudgetMonthDialog;->setListener(Lcom/coderpage/mine/app/tally/ui/dialog/SetBudgetMonthDialog$Listener;)Lcom/coderpage/mine/app/tally/ui/dialog/SetBudgetMonthDialog;

    move-result-object p1

    .line 155
    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/ui/dialog/SetBudgetMonthDialog;->show()V

    return-void
.end method

.method public onMonthInfoClick(Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 123
    new-instance v0, Lcom/coderpage/mine/app/tally/module/home/-$$Lambda$HomeMonthInfoViewModel$NlHXFklONI7ofbmYv01hBvE1GUs;

    invoke-direct {v0, p1}, Lcom/coderpage/mine/app/tally/module/home/-$$Lambda$HomeMonthInfoViewModel$NlHXFklONI7ofbmYv01hBvE1GUs;-><init>(Landroid/app/Activity;)V

    invoke-static {p1, v0}, Lcom/coderpage/mine/app/tally/utils/SecurityUtils;->executeAfterFingerprintAuth(Landroid/app/Activity;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onShowOrHideMoneyClick(Landroid/app/Activity;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomeMonthInfoViewModel;->mHideMoney:Landroidx/databinding/ObservableField;

    invoke-virtual {v0}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 135
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/home/HomeMonthInfoViewModel;->mHideMoney:Landroidx/databinding/ObservableField;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 136
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/home/HomeMonthInfoViewModel;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/coderpage/mine/app/tally/persistence/preference/SettingPreference;->setHideMoney(Landroid/content/Context;Z)V

    .line 137
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/home/HomeMonthInfoViewModel;->mData:Lcom/coderpage/mine/app/tally/module/home/model/HomeMonthModel;

    invoke-direct {p0, p1}, Lcom/coderpage/mine/app/tally/module/home/HomeMonthInfoViewModel;->refresh(Lcom/coderpage/mine/app/tally/module/home/model/HomeMonthModel;)V

    return-void

    .line 141
    :cond_1
    new-instance v0, Lcom/coderpage/mine/app/tally/module/home/-$$Lambda$HomeMonthInfoViewModel$8Za6CiDy5ePMWVRc64oXqUr9OF8;

    invoke-direct {v0, p0}, Lcom/coderpage/mine/app/tally/module/home/-$$Lambda$HomeMonthInfoViewModel$8Za6CiDy5ePMWVRc64oXqUr9OF8;-><init>(Lcom/coderpage/mine/app/tally/module/home/HomeMonthInfoViewModel;)V

    invoke-static {p1, v0}, Lcom/coderpage/mine/app/tally/utils/SecurityUtils;->executeAfterFingerprintAuth(Landroid/app/Activity;Ljava/lang/Runnable;)V

    return-void
.end method

.method public setData(Lcom/coderpage/mine/app/tally/module/home/model/HomeMonthModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 47
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/home/HomeMonthInfoViewModel;->mData:Lcom/coderpage/mine/app/tally/module/home/model/HomeMonthModel;

    .line 48
    invoke-direct {p0, p1}, Lcom/coderpage/mine/app/tally/module/home/HomeMonthInfoViewModel;->refresh(Lcom/coderpage/mine/app/tally/module/home/model/HomeMonthModel;)V

    return-void
.end method
