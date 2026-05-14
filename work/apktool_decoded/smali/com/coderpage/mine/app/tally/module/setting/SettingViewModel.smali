.class public Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel;
.super Lcom/coderpage/framework/BaseViewModel;
.source "SettingViewModel.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mFingerprintSecretOpen:Landroidx/databinding/ObservableBoolean;

.field private mFingerprintSecretOpenShow:Landroidx/databinding/ObservableBoolean;

.field private mPermissionReqHandler:Lcom/coderpage/mine/app/tally/common/permission/PermissionReqHandler;

.field private mProcessMessage:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    const-class v0, Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel;

    invoke-static {v0}, Lcom/coderpage/base/utils/LogUtils;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel;->TAG:Ljava/lang/String;

    return-void
.end method

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

    .line 70
    invoke-direct {p0, p1}, Lcom/coderpage/framework/BaseViewModel;-><init>(Landroid/app/Application;)V

    .line 60
    new-instance v0, Landroidx/databinding/ObservableBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel;->mFingerprintSecretOpen:Landroidx/databinding/ObservableBoolean;

    .line 62
    new-instance v0, Landroidx/databinding/ObservableBoolean;

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel;->mFingerprintSecretOpenShow:Landroidx/databinding/ObservableBoolean;

    .line 65
    new-instance v0, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel;->mProcessMessage:Landroid/arch/lifecycle/MutableLiveData;

    .line 71
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel;->mFingerprintSecretOpen:Landroidx/databinding/ObservableBoolean;

    invoke-static {p1}, Lcom/coderpage/mine/app/tally/persistence/preference/SettingPreference;->isFingerprintSecretOpen(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 72
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel;->mFingerprintSecretOpenShow:Landroidx/databinding/ObservableBoolean;

    invoke-static {p1}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;->from(Landroid/content/Context;)Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;->isHardwareDetected()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel;)Landroid/arch/lifecycle/MutableLiveData;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel;->mProcessMessage:Landroid/arch/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel;Ljava/lang/String;)V
    .locals 0

    .line 55
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel;->showToastShort(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel;Ljava/lang/String;)V
    .locals 0

    .line 55
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel;->showToastShort(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel;Ljava/lang/Runnable;)V
    .locals 0

    .line 55
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getFingerprintSecretOpen()Landroidx/databinding/ObservableBoolean;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel;->mFingerprintSecretOpen:Landroidx/databinding/ObservableBoolean;

    return-object v0
.end method

.method public getFingerprintSecretOpenShow()Landroidx/databinding/ObservableBoolean;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel;->mFingerprintSecretOpenShow:Landroidx/databinding/ObservableBoolean;

    return-object v0
.end method

.method getProcessMessage()Landroid/arch/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/LiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel;->mProcessMessage:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public synthetic lambda$onFingerprintSecretClick$0$SettingViewModel(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 149
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel;->mFingerprintSecretOpen:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result p1

    .line 150
    invoke-static {}, Lcom/coderpage/mine/Global;->getInstance()Lcom/coderpage/mine/Global;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coderpage/mine/Global;->setNeedFingerprint(Z)V

    .line 151
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/coderpage/mine/app/tally/persistence/preference/SettingPreference;->setFingerprintSecretOpen(Landroid/content/Context;Z)V

    goto :goto_0

    .line 153
    :cond_0
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel;->mFingerprintSecretOpen:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    :goto_0
    return-void
.end method

.method onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "requestCode",
            "resultCode",
            "data"
        }
    .end annotation

    return-void
.end method

.method public onBackupDataClick(Landroid/app/Activity;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 160
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/coderpage/mine/app/tally/module/backup/BackupFileActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onExportDataExcelClick(Landroid/app/Activity;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 89
    new-instance p1, Lcom/coderpage/mine/persistence/document/DocumentFileCreate;

    invoke-direct {p1}, Lcom/coderpage/mine/persistence/document/DocumentFileCreate;-><init>()V

    sget-object v0, Lcom/coderpage/mine/common/Mime;->CSV:Lcom/coderpage/mine/common/Mime;

    .line 90
    invoke-virtual {p1, v0}, Lcom/coderpage/mine/persistence/document/DocumentFileCreate;->setMime(Lcom/coderpage/mine/common/Mime;)Lcom/coderpage/mine/persistence/document/DocumentFileCreate;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MyTallyBook"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "csv"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-virtual {p1, v0}, Lcom/coderpage/mine/persistence/document/DocumentFileCreate;->setPath(Ljava/lang/String;)Lcom/coderpage/mine/persistence/document/DocumentFileCreate;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "yyyyMMddHHmmss"

    .line 92
    invoke-static {v1}, Lcom/coderpage/mine/app/tally/utils/DateUtils;->currentDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".csv"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coderpage/mine/persistence/document/DocumentFileCreate;->setName(Ljava/lang/String;)Lcom/coderpage/mine/persistence/document/DocumentFileCreate;

    move-result-object p1

    .line 93
    new-instance v0, Lcom/coderpage/mine/persistence/document/DocumentPermissionReq;

    invoke-direct {v0}, Lcom/coderpage/mine/persistence/document/DocumentPermissionReq;-><init>()V

    const v1, 0x7f0e0087

    .line 94
    invoke-virtual {p0, v1}, Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coderpage/mine/persistence/document/DocumentPermissionReq;->setTipTitle(Ljava/lang/String;)Lcom/coderpage/mine/persistence/document/DocumentPermissionReq;

    move-result-object v0

    const v1, 0x7f0e007f

    .line 95
    invoke-virtual {p0, v1}, Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coderpage/mine/persistence/document/DocumentPermissionReq;->setTipMsg(Ljava/lang/String;)Lcom/coderpage/mine/persistence/document/DocumentPermissionReq;

    move-result-object v0

    const v1, 0x7f0e0084

    .line 96
    invoke-virtual {p0, v1}, Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coderpage/mine/persistence/document/DocumentPermissionReq;->setForceRefuseTipMsg(Ljava/lang/String;)Lcom/coderpage/mine/persistence/document/DocumentPermissionReq;

    move-result-object v0

    .line 97
    new-instance v1, Lcom/coderpage/mine/persistence/document/DocumentManager;

    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {}, Lcom/coderpage/concurrency/MineExecutors;->ioExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/coderpage/mine/persistence/document/DocumentManager;-><init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;)V

    new-instance v2, Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel$1;

    invoke-direct {v2, p0}, Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel$1;-><init>(Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel;)V

    invoke-virtual {v1, p1, v0, v2}, Lcom/coderpage/mine/persistence/document/DocumentManager;->saveFile(Lcom/coderpage/mine/persistence/document/DocumentFileCreate;Lcom/coderpage/mine/persistence/document/DocumentPermissionReq;Lcom/coderpage/mine/persistence/document/DocumentManager$SaveTask;)V

    return-void
.end method

.method public onFingerprintSecretClick(Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 147
    new-instance v0, Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog;

    invoke-direct {v0, p1}, Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog;-><init>(Landroid/app/Activity;)V

    new-instance p1, Lcom/coderpage/mine/app/tally/module/setting/-$$Lambda$SettingViewModel$asUWCLRrlmQOTElhcxESgnR0kWw;

    invoke-direct {p1, p0}, Lcom/coderpage/mine/app/tally/module/setting/-$$Lambda$SettingViewModel$asUWCLRrlmQOTElhcxESgnR0kWw;-><init>(Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel;)V

    invoke-virtual {v0, p1}, Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog;->setListener(Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog$Listener;)Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog;

    move-result-object p1

    .line 155
    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog;->show()V

    return-void
.end method

.method onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "requestCode",
            "permissions",
            "grantResults"
        }
    .end annotation

    .line 175
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel;->mPermissionReqHandler:Lcom/coderpage/mine/app/tally/common/permission/PermissionReqHandler;

    if-eqz p1, :cond_0

    .line 176
    invoke-virtual {p1, p2, p3, p4}, Lcom/coderpage/mine/app/tally/common/permission/PermissionReqHandler;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :cond_0
    return-void
.end method
