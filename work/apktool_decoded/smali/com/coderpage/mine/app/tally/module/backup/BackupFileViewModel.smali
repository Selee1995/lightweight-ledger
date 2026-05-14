.class public Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;
.super Lcom/coderpage/framework/BaseViewModel;
.source "BackupFileViewModel.java"


# instance fields
.field private mIsAutoBackup:Landroidx/databinding/ObservableBoolean;

.field private final mNeedPermissionArray:[Ljava/lang/String;

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
.method public constructor <init>(Landroid/app/Application;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "application"
        }
    .end annotation

    .line 65
    invoke-direct {p0, p1}, Lcom/coderpage/framework/BaseViewModel;-><init>(Landroid/app/Application;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 55
    iput-object v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;->mNeedPermissionArray:[Ljava/lang/String;

    .line 60
    new-instance v1, Landroidx/databinding/ObservableBoolean;

    invoke-direct {v1, v2}, Landroidx/databinding/ObservableBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;->mIsAutoBackup:Landroidx/databinding/ObservableBoolean;

    .line 62
    new-instance v1, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {v1}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object v1, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;->mProcessMessage:Landroid/arch/lifecycle/MutableLiveData;

    .line 66
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-ge v1, v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 67
    :goto_0
    invoke-static {p1}, Lcom/coderpage/mine/app/tally/persistence/preference/SettingPreference;->isAutoBackup(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v1, :cond_1

    invoke-static {p1, v0}, Lcom/coderpage/lib/permission/PermissionReq;->isGranted(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v2, 0x1

    .line 68
    :cond_2
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;->mIsAutoBackup:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1, v2}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;Ljava/lang/Object;Lcom/coderpage/base/common/SimpleCallback;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;->readDataFromBackupJsonFile(Ljava/lang/Object;Lcom/coderpage/base/common/SimpleCallback;)V

    return-void
.end method

.method static synthetic access$100(Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;Landroid/app/Activity;Lcom/coderpage/mine/app/tally/module/backup/BackupModel;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;->showRestoreDataConfirmDialog(Landroid/app/Activity;Lcom/coderpage/mine/app/tally/module/backup/BackupModel;)V

    return-void
.end method

.method static synthetic access$200(Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;Ljava/lang/String;)V
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;->showToastShort(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;)Landroid/arch/lifecycle/MutableLiveData;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;->mProcessMessage:Landroid/arch/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static synthetic access$400(Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;I)V
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;->showToastShort(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;Ljava/lang/String;)V
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;->showToastLong(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;Ljava/lang/Runnable;)V
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$700(Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;Ljava/lang/String;)V
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;->showToastLong(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;I)V
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;->showToastShort(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;Ljava/lang/String;)V
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;->showToastLong(Ljava/lang/String;)V

    return-void
.end method

.method private backup2JsonFile()V
    .locals 2

    .line 235
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;->getApplication()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel$2;

    invoke-direct {v1, p0}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel$2;-><init>(Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;)V

    invoke-static {v0, v1}, Lcom/coderpage/mine/app/tally/module/backup/Backup;->backupToJsonFile(Landroid/content/Context;Lcom/coderpage/mine/app/tally/module/backup/Backup$BackupProgressListener;)V

    return-void
.end method

.method static synthetic lambda$onAutoBackupClick$0()V
    .locals 5

    .line 98
    new-instance v0, Landroidx/work/PeriodicWorkRequest$Builder;

    const-class v1, Lcom/coderpage/mine/app/tally/worker/AutoBackupWorker;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    invoke-direct {v0, v1, v3, v4, v2}, Landroidx/work/PeriodicWorkRequest$Builder;-><init>(Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;)V

    const-string v1, "tally_auto_backup_worker"

    .line 99
    invoke-virtual {v0, v1}, Landroidx/work/PeriodicWorkRequest$Builder;->addTag(Ljava/lang/String;)Landroidx/work/WorkRequest$Builder;

    move-result-object v0

    check-cast v0, Landroidx/work/PeriodicWorkRequest$Builder;

    .line 100
    invoke-virtual {v0}, Landroidx/work/PeriodicWorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    move-result-object v0

    check-cast v0, Landroidx/work/PeriodicWorkRequest;

    .line 101
    invoke-static {}, Landroidx/work/WorkManager;->getInstance()Landroidx/work/WorkManager;

    move-result-object v2

    sget-object v3, Landroidx/work/ExistingPeriodicWorkPolicy;->KEEP:Landroidx/work/ExistingPeriodicWorkPolicy;

    invoke-virtual {v2, v1, v3, v0}, Landroidx/work/WorkManager;->enqueueUniquePeriodicWork(Ljava/lang/String;Landroidx/work/ExistingPeriodicWorkPolicy;Landroidx/work/PeriodicWorkRequest;)Landroidx/work/Operation;

    return-void
.end method

.method static synthetic lambda$showRestoreDataConfirmDialog$3(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 221
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private onBackupFileSelectedFromFileSystem(Landroid/app/Activity;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "obj"
        }
    .end annotation

    const v0, 0x7f0e00ec

    if-nez p2, :cond_0

    .line 147
    invoke-virtual {p0, v0}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;->showToastShort(I)V

    return-void

    .line 150
    :cond_0
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 151
    new-instance v1, Ljava/io/File;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    move-object p2, v1

    goto :goto_1

    .line 153
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;->showToastShort(I)V

    return-void

    .line 158
    :cond_3
    :goto_1
    new-instance v0, Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$BackupFileViewModel$RHHlIcCNrjk2gs6IKKbfnYjWO1s;

    invoke-direct {v0, p0, p1}, Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$BackupFileViewModel$RHHlIcCNrjk2gs6IKKbfnYjWO1s;-><init>(Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;Landroid/app/Activity;)V

    invoke-direct {p0, p2, v0}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;->readDataFromBackupJsonFile(Ljava/lang/Object;Lcom/coderpage/base/common/SimpleCallback;)V

    return-void
.end method

.method private readDataFromBackupJsonFile(Ljava/lang/Object;Lcom/coderpage/base/common/SimpleCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "filePath",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/coderpage/base/common/SimpleCallback<",
            "Lcom/coderpage/mine/app/tally/module/backup/BackupModel;",
            ">;)V"
        }
    .end annotation

    .line 277
    new-instance v0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel$3;

    invoke-direct {v0, p0, p2}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel$3;-><init>(Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;Lcom/coderpage/base/common/SimpleCallback;)V

    invoke-static {p1, v0}, Lcom/coderpage/mine/app/tally/module/backup/Backup;->readBackupJsonFile(Ljava/lang/Object;Lcom/coderpage/mine/app/tally/module/backup/Backup$RestoreProgressListener;)V

    return-void
.end method

.method private restoreToDbFromBackupModel(Lcom/coderpage/mine/app/tally/module/backup/BackupModel;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "backupModel"
        }
    .end annotation

    .line 322
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;->getApplication()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel$4;

    invoke-direct {v1, p0}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel$4;-><init>(Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;)V

    invoke-static {v0, p1, v1}, Lcom/coderpage/mine/app/tally/module/backup/Backup;->restoreDataFromBackupData(Landroid/content/Context;Lcom/coderpage/mine/app/tally/module/backup/BackupModel;Lcom/coderpage/mine/app/tally/module/backup/Backup$RestoreProgressListener;)V

    return-void
.end method

.method private showBackupFileSelectDialog(Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 163
    new-instance v0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel$1;

    invoke-direct {v0, p0, p1}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel$1;-><init>(Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;Landroid/app/Activity;)V

    invoke-static {p1, v0}, Lcom/coderpage/mine/app/tally/module/backup/Backup;->listBackupFiles(Landroid/content/Context;Lcom/coderpage/base/common/Callback;)V

    return-void
.end method

.method private showRestoreDataConfirmDialog(Landroid/app/Activity;Lcom/coderpage/mine/app/tally/module/backup/BackupModel;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "backupModel"
        }
    .end annotation

    .line 205
    invoke-virtual {p2}, Lcom/coderpage/mine/app/tally/module/backup/BackupModel;->getMetadata()Lcom/coderpage/mine/app/tally/module/backup/BackupModelMetadata;

    move-result-object v0

    .line 206
    new-instance v1, Ljava/util/Date;

    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/backup/BackupModelMetadata;->getBackupDate()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v1

    .line 207
    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/backup/BackupModelMetadata;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    .line 208
    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/backup/BackupModelMetadata;->getExpenseNumber()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 209
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/backup/BackupModelMetadata;->getClientVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/backup/BackupModelMetadata;->getClientVersionCode()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 211
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0b0030

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f090125

    .line 212
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f090126

    .line 213
    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f09012a

    .line 214
    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f090128

    .line 215
    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p1, 0x7f0e00be

    .line 218
    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 219
    invoke-virtual {p1, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    sget-object v1, Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$BackupFileViewModel$NFeReYAf6wAgXvyRgL_xJMs1ZDA;->INSTANCE:Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$BackupFileViewModel$NFeReYAf6wAgXvyRgL_xJMs1ZDA;

    const v2, 0x7f0e0027

    .line 220
    invoke-virtual {p1, v2, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$BackupFileViewModel$4hSTb1MO8V-5X_pb0OlsoLRbuik;

    invoke-direct {v1, p0, p2}, Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$BackupFileViewModel$4hSTb1MO8V-5X_pb0OlsoLRbuik;-><init>(Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;Lcom/coderpage/mine/app/tally/module/backup/BackupModel;)V

    const p2, 0x7f0e002a

    .line 223
    invoke-virtual {p1, p2, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 227
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    const/4 p2, 0x0

    .line 228
    invoke-virtual {p1, p2}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 229
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public getIsAutoBackup()Landroidx/databinding/ObservableBoolean;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;->mIsAutoBackup:Landroidx/databinding/ObservableBoolean;

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

    .line 76
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;->mProcessMessage:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public synthetic lambda$onAutoBackupClick$1$BackupFileViewModel(Ljava/lang/Runnable;Landroid/view/View;ZLjava/util/List;Ljava/util/List;)V
    .locals 0

    if-eqz p3, :cond_0

    .line 116
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 117
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;->getApplication()Landroid/app/Application;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/coderpage/mine/app/tally/persistence/preference/SettingPreference;->setAutoBackup(Landroid/content/Context;Z)V

    goto :goto_0

    .line 119
    :cond_0
    instance-of p1, p2, Landroid/support/v7/widget/SwitchCompat;

    if-eqz p1, :cond_1

    .line 120
    check-cast p2, Landroid/support/v7/widget/SwitchCompat;

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic lambda$onBackupFileSelectedFromFileSystem$2$BackupFileViewModel(Landroid/app/Activity;Lcom/coderpage/mine/app/tally/module/backup/BackupModel;)V
    .locals 0

    .line 158
    invoke-direct {p0, p1, p2}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;->showRestoreDataConfirmDialog(Landroid/app/Activity;Lcom/coderpage/mine/app/tally/module/backup/BackupModel;)V

    return-void
.end method

.method public synthetic lambda$showRestoreDataConfirmDialog$4$BackupFileViewModel(Lcom/coderpage/mine/app/tally/module/backup/BackupModel;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 224
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    .line 225
    invoke-direct {p0, p1}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;->restoreToDbFromBackupModel(Lcom/coderpage/mine/app/tally/module/backup/BackupModel;)V

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

    const/4 p2, -0x1

    if-ne p3, p2, :cond_1

    .line 364
    invoke-virtual {p4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p1, "\u6587\u4ef6\u8def\u5f84\u4e3a\u7a7a"

    .line 366
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;->showToastShort(Ljava/lang/String;)V

    return-void

    .line 369
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;->onBackupFileSelectedFromFileSystem(Landroid/app/Activity;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onAutoBackupClick(Landroid/view/View;Landroid/app/Activity;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "activity"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;->mIsAutoBackup:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {v0}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 97
    sget-object v2, Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$BackupFileViewModel$VTzUmOt8fjXr_rsQiCNSsSRdbco;->INSTANCE:Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$BackupFileViewModel$VTzUmOt8fjXr_rsQiCNSsSRdbco;

    .line 105
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-ge v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 107
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;->mNeedPermissionArray:[Ljava/lang/String;

    invoke-static {p2, v1}, Lcom/coderpage/lib/permission/PermissionReq;->isGranted(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 108
    iget-object v4, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;->mNeedPermissionArray:[Ljava/lang/String;

    const/4 v5, 0x0

    const v0, 0x7f0e0086

    .line 111
    invoke-virtual {p0, v0}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v0, 0x7f0e007e

    .line 112
    invoke-virtual {p0, v0}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v0, 0x7f0e0083

    .line 113
    invoke-virtual {p0, v0}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$BackupFileViewModel$dPG5WeQQ86Ayj_bP3dDoQUrqnzs;

    invoke-direct {v9, p0, v2, p1}, Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$BackupFileViewModel$dPG5WeQQ86Ayj_bP3dDoQUrqnzs;-><init>(Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;Ljava/lang/Runnable;Landroid/view/View;)V

    move-object v3, p2

    .line 108
    invoke-static/range {v3 .. v9}, Lcom/coderpage/lib/permission/PermissionReq;->request(Landroid/content/Context;[Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/coderpage/lib/permission/PermissionReq$Listener;)V

    return-void

    .line 127
    :cond_1
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;->mIsAutoBackup:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1, v0}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 128
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/coderpage/mine/app/tally/persistence/preference/SettingPreference;->setAutoBackup(Landroid/content/Context;Z)V

    if-nez v0, :cond_2

    .line 132
    invoke-static {}, Landroidx/work/WorkManager;->getInstance()Landroidx/work/WorkManager;

    move-result-object p1

    const-string p2, "tally_auto_backup_worker"

    invoke-virtual {p1, p2}, Landroidx/work/WorkManager;->cancelAllWorkByTag(Ljava/lang/String;)Landroidx/work/Operation;

    return-void

    .line 136
    :cond_2
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public onExportDataClick(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;->backup2JsonFile()V

    return-void
.end method

.method public onImportDataClick(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 90
    invoke-direct {p0, p1}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;->showBackupFileSelectDialog(Landroid/app/Activity;)V

    return-void
.end method

.method onMenuManagerClick(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 80
    invoke-static {p1}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerActivity;->open(Landroid/content/Context;)V

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

    return-void
.end method
