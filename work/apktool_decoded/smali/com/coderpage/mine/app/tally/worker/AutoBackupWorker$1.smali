.class Lcom/coderpage/mine/app/tally/worker/AutoBackupWorker$1;
.super Ljava/lang/Object;
.source "AutoBackupWorker.java"

# interfaces
.implements Lcom/coderpage/mine/app/tally/module/backup/Backup$BackupProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coderpage/mine/app/tally/worker/AutoBackupWorker;->exportBackupFile()Lcom/coderpage/base/common/Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coderpage/mine/app/tally/worker/AutoBackupWorker;


# direct methods
.method constructor <init>(Lcom/coderpage/mine/app/tally/worker/AutoBackupWorker;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 78
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/worker/AutoBackupWorker$1;->this$0:Lcom/coderpage/mine/app/tally/worker/AutoBackupWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lcom/coderpage/base/common/IError;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iError"
        }
    .end annotation

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

    .line 78
    check-cast p1, Lcom/coderpage/base/common/IError;

    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/worker/AutoBackupWorker$1;->failure(Lcom/coderpage/base/common/IError;)V

    return-void
.end method

.method public onProgressUpdate(Lcom/coderpage/mine/app/tally/module/backup/Backup$BackupProgress;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "backupProgress"
        }
    .end annotation

    return-void
.end method

.method public success(Landroid/net/Uri;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aVoid"
        }
    .end annotation

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

    .line 78
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/worker/AutoBackupWorker$1;->success(Landroid/net/Uri;)V

    return-void
.end method
