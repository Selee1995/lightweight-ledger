.class Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel$1;
.super Ljava/lang/Object;
.source "BackupFileViewModel.java"

# interfaces
.implements Lcom/coderpage/base/common/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;->showBackupFileSelectDialog(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/coderpage/base/common/Callback<",
        "Ljava/util/List<",
        "Lcom/coderpage/mine/persistence/document/DocumentFile;",
        ">;",
        "Lcom/coderpage/base/common/IError;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$activity"
        }
    .end annotation

    .line 163
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel$1;->this$0:Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;

    iput-object p2, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lcom/coderpage/base/common/IError;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel$1;->this$0:Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;

    invoke-interface {p1}, Lcom/coderpage/base/common/IError;->msg()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;->access$200(Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic failure(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "error"
        }
    .end annotation

    .line 163
    check-cast p1, Lcom/coderpage/base/common/IError;

    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel$1;->failure(Lcom/coderpage/base/common/IError;)V

    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "fileList"
        }
    .end annotation

    .line 163
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel$1;->success(Ljava/util/List;)V

    return-void
.end method

.method public success(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fileList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/persistence/document/DocumentFile;",
            ">;)V"
        }
    .end annotation

    .line 166
    new-instance v0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog;

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel$1;->val$activity:Landroid/app/Activity;

    invoke-direct {v0, v1, p1}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    new-instance p1, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel$1$1;

    invoke-direct {p1, p0}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel$1$1;-><init>(Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel$1;)V

    .line 167
    invoke-virtual {v0, p1}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog;->setListener(Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog$Listener;)Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog;

    move-result-object p1

    .line 188
    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog;->show()V

    return-void
.end method
