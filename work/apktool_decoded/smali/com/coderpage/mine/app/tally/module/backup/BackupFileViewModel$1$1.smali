.class Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel$1$1;
.super Ljava/lang/Object;
.source "BackupFileViewModel.java"

# interfaces
.implements Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel$1;->success(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel$1;


# direct methods
.method constructor <init>(Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 167
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel$1$1;->this$1:Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onFileSelect$0$BackupFileViewModel$1$1(Landroid/app/Activity;Lcom/coderpage/mine/app/tally/module/backup/BackupModel;)V
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel$1$1;->this$1:Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel$1;

    iget-object v0, v0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel$1;->this$0:Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;

    invoke-static {v0, p1, p2}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;->access$100(Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;Landroid/app/Activity;Lcom/coderpage/mine/app/tally/module/backup/BackupModel;)V

    return-void
.end method

.method public onCancelClick(Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    .line 170
    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog;->dismiss()V

    return-void
.end method

.method public onFileSelect(Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog;Lcom/coderpage/mine/persistence/document/DocumentFile;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dialog",
            "file"
        }
    .end annotation

    .line 183
    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog;->dismiss()V

    .line 185
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel$1$1;->this$1:Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel$1;

    iget-object p1, p1, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel$1;->this$0:Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel$1$1;->this$1:Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel$1;

    iget-object v0, v0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel$1;->val$activity:Landroid/app/Activity;

    new-instance v1, Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$BackupFileViewModel$1$1$Rz0TmsJb7tYLS4Qt8fNzvLSfHZs;

    invoke-direct {v1, p0, v0}, Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$BackupFileViewModel$1$1$Rz0TmsJb7tYLS4Qt8fNzvLSfHZs;-><init>(Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel$1$1;Landroid/app/Activity;)V

    invoke-static {p1, p2, v1}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;->access$000(Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;Ljava/lang/Object;Lcom/coderpage/base/common/SimpleCallback;)V

    return-void
.end method

.method public onSelectFromLocalClick(Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    .line 175
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.GET_CONTENT"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "*/*"

    .line 176
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.category.OPENABLE"

    .line 177
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel$1$1;->this$1:Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel$1;

    iget-object v0, v0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel$1;->val$activity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
