.class public Lcom/coderpage/mine/app/tally/module/records/RecordItemViewModel;
.super Lcom/coderpage/framework/BaseViewModel;
.source "RecordItemViewModel.java"


# instance fields
.field private mMoneyFormat:Ljava/text/DecimalFormat;

.field private mNeedFingerprint:Landroidx/databinding/ObservableBoolean;

.field private mRepository:Lcom/coderpage/mine/app/tally/module/records/RecordsRepository;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "application"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1}, Lcom/coderpage/framework/BaseViewModel;-><init>(Landroid/app/Application;)V

    .line 34
    new-instance p1, Ljava/text/DecimalFormat;

    const-string v0, "0.00"

    invoke-direct {p1, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/records/RecordItemViewModel;->mMoneyFormat:Ljava/text/DecimalFormat;

    .line 42
    new-instance p1, Lcom/coderpage/mine/app/tally/module/records/RecordsRepository;

    invoke-direct {p1}, Lcom/coderpage/mine/app/tally/module/records/RecordsRepository;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/records/RecordItemViewModel;->mRepository:Lcom/coderpage/mine/app/tally/module/records/RecordsRepository;

    .line 43
    invoke-static {}, Lcom/coderpage/mine/Global;->getInstance()Lcom/coderpage/mine/Global;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coderpage/mine/Global;->getNeedFingerprintAuth()Landroidx/databinding/ObservableBoolean;

    move-result-object p1

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/records/RecordItemViewModel;->mNeedFingerprint:Landroidx/databinding/ObservableBoolean;

    return-void
.end method

.method static synthetic lambda$onLockCoverClick$0()V
    .locals 0

    return-void
.end method


# virtual methods
.method public formatMoney(Lcom/coderpage/mine/app/tally/persistence/model/Record;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "record"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, "--"

    return-object p1

    .line 55
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u00a5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/records/RecordItemViewModel;->mMoneyFormat:Ljava/text/DecimalFormat;

    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->getAmount()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getNeedFingerprint()Landroidx/databinding/ObservableBoolean;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/records/RecordItemViewModel;->mNeedFingerprint:Landroidx/databinding/ObservableBoolean;

    return-object v0
.end method

.method public synthetic lambda$onItemLongClick$1$RecordItemViewModel(Lcom/coderpage/mine/app/tally/persistence/model/Record;Landroid/content/DialogInterface;I)V
    .locals 2

    .line 112
    iget-object p2, p0, Lcom/coderpage/mine/app/tally/module/records/RecordItemViewModel;->mRepository:Lcom/coderpage/mine/app/tally/module/records/RecordsRepository;

    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->getId()J

    move-result-wide v0

    new-instance p3, Lcom/coderpage/mine/app/tally/module/records/RecordItemViewModel$1;

    invoke-direct {p3, p0, p1}, Lcom/coderpage/mine/app/tally/module/records/RecordItemViewModel$1;-><init>(Lcom/coderpage/mine/app/tally/module/records/RecordItemViewModel;Lcom/coderpage/mine/app/tally/persistence/model/Record;)V

    invoke-virtual {p2, v0, v1, p3}, Lcom/coderpage/mine/app/tally/module/records/RecordsRepository;->deleteRecord(JLcom/coderpage/base/common/Callback;)V

    return-void
.end method

.method public synthetic lambda$onItemLongClick$2$RecordItemViewModel(Lcom/coderpage/mine/app/tally/persistence/model/Record;Landroid/app/Activity;Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 p3, 0x1

    if-eqz p4, :cond_1

    if-eq p4, p3, :cond_0

    goto :goto_0

    .line 107
    :cond_0
    new-instance p3, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {p3, p2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p2, 0x7f0e003c

    .line 108
    invoke-virtual {p3, p2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p2

    const p3, 0x7f0e0035

    const/4 p4, 0x0

    .line 109
    invoke-virtual {p2, p3, p4}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p2

    const p3, 0x7f0e0037

    new-instance p4, Lcom/coderpage/mine/app/tally/module/records/-$$Lambda$RecordItemViewModel$MHnjrKaN9EKwiMKguNb0I0bkB30;

    invoke-direct {p4, p0, p1}, Lcom/coderpage/mine/app/tally/module/records/-$$Lambda$RecordItemViewModel$MHnjrKaN9EKwiMKguNb0I0bkB30;-><init>(Lcom/coderpage/mine/app/tally/module/records/RecordItemViewModel;Lcom/coderpage/mine/app/tally/persistence/model/Record;)V

    .line 110
    invoke-virtual {p2, p3, p4}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 123
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0

    .line 97
    :cond_1
    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->getType()I

    move-result p4

    if-nez p4, :cond_2

    .line 98
    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->getId()J

    move-result-wide v0

    invoke-static {p2, v0, v1}, Lcom/coderpage/mine/app/tally/module/edit/RecordEditActivity;->openAsUpdateExpense(Landroid/content/Context;J)V

    .line 100
    :cond_2
    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->getType()I

    move-result p4

    if-ne p4, p3, :cond_3

    .line 101
    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->getId()J

    move-result-wide p3

    invoke-static {p2, p3, p4}, Lcom/coderpage/mine/app/tally/module/edit/RecordEditActivity;->openAsUpdateIncome(Landroid/content/Context;J)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onItemClick(Landroid/view/View;Landroid/app/Activity;Lcom/coderpage/mine/app/tally/persistence/model/Record;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "activity",
            "record"
        }
    .end annotation

    .line 73
    invoke-static {p1}, Lcom/coderpage/base/utils/CommonUtils;->isViewFastDoubleClick(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {p3}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->getType()I

    move-result p1

    if-nez p1, :cond_1

    .line 77
    invoke-virtual {p3}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->getId()J

    move-result-wide v0

    invoke-static {p2, v0, v1}, Lcom/coderpage/mine/app/tally/module/detail/RecordDetailActivity;->openExpenseDetail(Landroid/content/Context;J)V

    .line 79
    :cond_1
    invoke-virtual {p3}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->getType()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 80
    invoke-virtual {p3}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->getId()J

    move-result-wide v0

    invoke-static {p2, v0, v1}, Lcom/coderpage/mine/app/tally/module/detail/RecordDetailActivity;->openIncomeDetail(Landroid/content/Context;J)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onItemDateTitleClick(Landroid/app/Activity;Lcom/coderpage/mine/app/tally/module/records/RecordsDateTitle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "date"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 139
    :cond_0
    invoke-virtual {p2}, Lcom/coderpage/mine/app/tally/module/records/RecordsDateTitle;->getYear()I

    move-result v0

    invoke-virtual {p2}, Lcom/coderpage/mine/app/tally/module/records/RecordsDateTitle;->getMonth()I

    move-result p2

    invoke-static {p1, v0, p2}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->open(Landroid/app/Activity;II)V

    return-void
.end method

.method public onItemLongClick(Landroid/view/View;Landroid/app/Activity;Lcom/coderpage/mine/app/tally/persistence/model/Record;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "activity",
            "record"
        }
    .end annotation

    .line 92
    new-instance p1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {p1, p2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/coderpage/mine/app/tally/module/records/-$$Lambda$RecordItemViewModel$23kg9Nk6sYt3HGSUiZyTyXKVO20;

    invoke-direct {v0, p0, p3, p2}, Lcom/coderpage/mine/app/tally/module/records/-$$Lambda$RecordItemViewModel$23kg9Nk6sYt3HGSUiZyTyXKVO20;-><init>(Lcom/coderpage/mine/app/tally/module/records/RecordItemViewModel;Lcom/coderpage/mine/app/tally/persistence/model/Record;Landroid/app/Activity;)V

    const/high16 p2, 0x7f030000

    invoke-virtual {p1, p2, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 129
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    const/4 p1, 0x1

    return p1
.end method

.method public onLockCoverClick(Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 60
    sget-object v0, Lcom/coderpage/mine/app/tally/module/records/-$$Lambda$RecordItemViewModel$R0oK9IEBnVZ8J-icM3jrH_p-7ZU;->INSTANCE:Lcom/coderpage/mine/app/tally/module/records/-$$Lambda$RecordItemViewModel$R0oK9IEBnVZ8J-icM3jrH_p-7ZU;

    invoke-static {p1, v0}, Lcom/coderpage/mine/app/tally/utils/SecurityUtils;->executeAfterFingerprintAuth(Landroid/app/Activity;Ljava/lang/Runnable;)V

    return-void
.end method
