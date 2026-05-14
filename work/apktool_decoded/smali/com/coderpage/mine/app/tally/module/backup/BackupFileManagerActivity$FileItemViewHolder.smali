.class Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerActivity$FileItemViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "BackupFileManagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileItemViewHolder"
.end annotation


# instance fields
.field private mBinding:Lcom/coderpage/mine/module/backup/ItemBackupFileManagerBinding;

.field final synthetic this$0:Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerActivity;


# direct methods
.method constructor <init>(Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerActivity;Lcom/coderpage/mine/module/backup/ItemBackupFileManagerBinding;)V
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

    .line 119
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerActivity$FileItemViewHolder;->this$0:Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerActivity;

    .line 120
    invoke-virtual {p2}, Lcom/coderpage/mine/module/backup/ItemBackupFileManagerBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 121
    iput-object p2, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerActivity$FileItemViewHolder;->mBinding:Lcom/coderpage/mine/module/backup/ItemBackupFileManagerBinding;

    return-void
.end method


# virtual methods
.method bind(Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerActivity$FileItemViewHolder;->mBinding:Lcom/coderpage/mine/module/backup/ItemBackupFileManagerBinding;

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerActivity$FileItemViewHolder;->this$0:Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerActivity;

    invoke-static {v1}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerActivity;->access$100(Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerActivity;)Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerViewModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coderpage/mine/module/backup/ItemBackupFileManagerBinding;->setVm(Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerViewModel;)V

    .line 126
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerActivity$FileItemViewHolder;->mBinding:Lcom/coderpage/mine/module/backup/ItemBackupFileManagerBinding;

    invoke-virtual {v0, p1}, Lcom/coderpage/mine/module/backup/ItemBackupFileManagerBinding;->setItem(Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;)V

    .line 127
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerActivity$FileItemViewHolder;->mBinding:Lcom/coderpage/mine/module/backup/ItemBackupFileManagerBinding;

    invoke-virtual {p1}, Lcom/coderpage/mine/module/backup/ItemBackupFileManagerBinding;->executePendingBindings()V

    return-void
.end method
