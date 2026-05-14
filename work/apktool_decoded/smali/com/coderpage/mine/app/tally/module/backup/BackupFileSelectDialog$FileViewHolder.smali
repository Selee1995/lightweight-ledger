.class Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog$FileViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "BackupFileSelectDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileViewHolder"
.end annotation


# instance fields
.field private binding:Lcom/coderpage/mine/module/backup/ItemBackupFileSelectBinding;

.field final synthetic this$0:Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog;


# direct methods
.method constructor <init>(Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog;Lcom/coderpage/mine/module/backup/ItemBackupFileSelectBinding;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            "this$0",
            "binding"
        }
    .end annotation

    .line 136
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog$FileViewHolder;->this$0:Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog;

    .line 137
    invoke-virtual {p2}, Lcom/coderpage/mine/module/backup/ItemBackupFileSelectBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 138
    iput-object p2, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog$FileViewHolder;->binding:Lcom/coderpage/mine/module/backup/ItemBackupFileSelectBinding;

    return-void
.end method


# virtual methods
.method bindData(Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog$FileViewHolder;->binding:Lcom/coderpage/mine/module/backup/ItemBackupFileSelectBinding;

    invoke-virtual {v0, p1}, Lcom/coderpage/mine/module/backup/ItemBackupFileSelectBinding;->setItem(Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;)V

    .line 143
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog$FileViewHolder;->binding:Lcom/coderpage/mine/module/backup/ItemBackupFileSelectBinding;

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog$FileViewHolder;->this$0:Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog;

    invoke-static {v0}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog;->access$000(Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog;)Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog$ItemViewModel;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coderpage/mine/module/backup/ItemBackupFileSelectBinding;->setVm(Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog$ItemViewModel;)V

    .line 144
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog$FileViewHolder;->binding:Lcom/coderpage/mine/module/backup/ItemBackupFileSelectBinding;

    invoke-virtual {p1}, Lcom/coderpage/mine/module/backup/ItemBackupFileSelectBinding;->executePendingBindings()V

    return-void
.end method
