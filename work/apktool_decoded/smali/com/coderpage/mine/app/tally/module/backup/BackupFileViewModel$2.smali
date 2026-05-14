.class Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel$2;
.super Ljava/lang/Object;
.source "BackupFileViewModel.java"

# interfaces
.implements Lcom/coderpage/mine/app/tally/module/backup/Backup$BackupProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;->backup2JsonFile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;


# direct methods
.method constructor <init>(Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 235
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel$2;->this$0:Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lcom/coderpage/base/common/IError;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iError"
        }
    .end annotation

    .line 263
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel$2;->this$0:Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;

    invoke-static {v0}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;->access$300(Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;)Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 264
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel$2;->this$0:Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel$2;->this$0:Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;

    invoke-virtual {v2}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;->getApplication()Landroid/app/Application;

    move-result-object v2

    const v3, 0x7f0e00b7

    invoke-static {v2, v3}, Lcom/coderpage/base/utils/ResUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ERR:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    invoke-interface {p1}, Lcom/coderpage/base/common/IError;->msg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 264
    invoke-static {v0, p1}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;->access$500(Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;Ljava/lang/String;)V

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

    .line 235
    check-cast p1, Lcom/coderpage/base/common/IError;

    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel$2;->failure(Lcom/coderpage/base/common/IError;)V

    return-void
.end method

.method public onProgressUpdate(Lcom/coderpage/mine/app/tally/module/backup/Backup$BackupProgress;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "backupProgress"
        }
    .end annotation

    .line 238
    sget-object v0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel$5;->$SwitchMap$com$coderpage$mine$app$tally$module$backup$Backup$BackupProgress:[I

    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/module/backup/Backup$BackupProgress;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 246
    :cond_0
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel$2;->this$0:Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;

    invoke-static {p1}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;->access$300(Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;)Landroid/arch/lifecycle/MutableLiveData;

    move-result-object p1

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel$2;->this$0:Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;

    .line 247
    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;->getApplication()Landroid/app/Application;

    move-result-object v0

    const v1, 0x7f0e00c1

    .line 246
    invoke-static {v0, v1}, Lcom/coderpage/base/utils/ResUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 241
    :cond_1
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel$2;->this$0:Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;

    invoke-static {p1}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;->access$300(Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;)Landroid/arch/lifecycle/MutableLiveData;

    move-result-object p1

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel$2;->this$0:Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;

    .line 242
    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;->getApplication()Landroid/app/Application;

    move-result-object v0

    const v1, 0x7f0e00bd

    .line 241
    invoke-static {v0, v1}, Lcom/coderpage/base/utils/ResUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public success(Landroid/net/Uri;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aVoid"
        }
    .end annotation

    .line 257
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel$2;->this$0:Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;

    invoke-static {p1}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;->access$300(Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;)Landroid/arch/lifecycle/MutableLiveData;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 258
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel$2;->this$0:Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;

    const v0, 0x7f0e00b8

    invoke-static {p1, v0}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;->access$400(Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;I)V

    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "aVoid"
        }
    .end annotation

    .line 235
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel$2;->success(Landroid/net/Uri;)V

    return-void
.end method
