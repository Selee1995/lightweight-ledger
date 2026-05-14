.class Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel$3;
.super Ljava/lang/Object;
.source "BackupFileViewModel.java"

# interfaces
.implements Lcom/coderpage/mine/app/tally/module/backup/Backup$RestoreProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;->readDataFromBackupJsonFile(Ljava/lang/Object;Lcom/coderpage/base/common/SimpleCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;

.field final synthetic val$callback:Lcom/coderpage/base/common/SimpleCallback;


# direct methods
.method constructor <init>(Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;Lcom/coderpage/base/common/SimpleCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$callback"
        }
    .end annotation

    .line 277
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel$3;->this$0:Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;

    iput-object p2, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel$3;->val$callback:Lcom/coderpage/base/common/SimpleCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$success$0(Lcom/coderpage/base/common/SimpleCallback;Lcom/coderpage/mine/app/tally/module/backup/BackupModel;)V
    .locals 0

    .line 305
    invoke-interface {p0, p1}, Lcom/coderpage/base/common/SimpleCallback;->success(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public failure(Lcom/coderpage/base/common/IError;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iError"
        }
    .end annotation

    .line 310
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel$3;->this$0:Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;

    invoke-static {v0}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;->access$300(Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;)Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 311
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel$3;->this$0:Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;

    invoke-interface {p1}, Lcom/coderpage/base/common/IError;->msg()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;->access$700(Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic failure(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "iError"
        }
    .end annotation

    .line 277
    check-cast p1, Lcom/coderpage/base/common/IError;

    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel$3;->failure(Lcom/coderpage/base/common/IError;)V

    return-void
.end method

.method public onProgressUpdate(Lcom/coderpage/mine/app/tally/module/backup/Backup$RestoreProgress;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "restoreProgress"
        }
    .end annotation

    .line 280
    sget-object v0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel$5;->$SwitchMap$com$coderpage$mine$app$tally$module$backup$Backup$RestoreProgress:[I

    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/module/backup/Backup$RestoreProgress;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 290
    :cond_0
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel$3;->this$0:Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;

    invoke-static {p1}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;->access$300(Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;)Landroid/arch/lifecycle/MutableLiveData;

    move-result-object p1

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel$3;->this$0:Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;

    .line 291
    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;->getApplication()Landroid/app/Application;

    move-result-object v0

    const v1, 0x7f0e00be

    .line 290
    invoke-static {v0, v1}, Lcom/coderpage/base/utils/ResUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 286
    :cond_1
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel$3;->this$0:Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;

    invoke-static {p1}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;->access$300(Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;)Landroid/arch/lifecycle/MutableLiveData;

    move-result-object p1

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel$3;->this$0:Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;

    .line 287
    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;->getApplication()Landroid/app/Application;

    move-result-object v0

    const v1, 0x7f0e00b9

    .line 286
    invoke-static {v0, v1}, Lcom/coderpage/base/utils/ResUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 282
    :cond_2
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel$3;->this$0:Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;

    invoke-static {p1}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;->access$300(Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;)Landroid/arch/lifecycle/MutableLiveData;

    move-result-object p1

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel$3;->this$0:Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;

    .line 283
    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;->getApplication()Landroid/app/Application;

    move-result-object v0

    const v1, 0x7f0e00bd

    .line 282
    invoke-static {v0, v1}, Lcom/coderpage/base/utils/ResUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public success(Lcom/coderpage/mine/app/tally/module/backup/BackupModel;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "backupModel"
        }
    .end annotation

    .line 300
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel$3;->this$0:Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;

    invoke-static {v0}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;->access$300(Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;)Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    if-nez p1, :cond_0

    .line 302
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel$3;->this$0:Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;

    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;->getApplication()Landroid/app/Application;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\u5907\u4efd\u6587\u4ef6\u8bfb\u53d6\u5931\u8d25"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/tendcloud/tenddata/TalkingDataSDK;->onError(Landroid/content/Context;Ljava/lang/Throwable;)V

    return-void

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel$3;->this$0:Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel$3;->val$callback:Lcom/coderpage/base/common/SimpleCallback;

    new-instance v2, Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$BackupFileViewModel$3$GDkMvMh5YHKZ_6TfpRjrXUjsRg8;

    invoke-direct {v2, v1, p1}, Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$BackupFileViewModel$3$GDkMvMh5YHKZ_6TfpRjrXUjsRg8;-><init>(Lcom/coderpage/base/common/SimpleCallback;Lcom/coderpage/mine/app/tally/module/backup/BackupModel;)V

    invoke-static {v0, v2}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;->access$600(Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "backupModel"
        }
    .end annotation

    .line 277
    check-cast p1, Lcom/coderpage/mine/app/tally/module/backup/BackupModel;

    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel$3;->success(Lcom/coderpage/mine/app/tally/module/backup/BackupModel;)V

    return-void
.end method
