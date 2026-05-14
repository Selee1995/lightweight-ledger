.class public Lcom/coderpage/mine/app/tally/module/home/ViewHolderBackupNotice;
.super Lcom/coderpage/mine/app/tally/module/home/BaseViewHolder;
.source "ViewHolderBackupNotice.java"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mBinding:Lcom/coderpage/mine/tally/module/home/BackupNoticeItemBinding;

.field private final mViewModel:Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;Lcom/coderpage/mine/tally/module/home/BackupNoticeItemBinding;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "viewModel",
            "binding"
        }
    .end annotation

    .line 20
    invoke-virtual {p3}, Lcom/coderpage/mine/tally/module/home/BackupNoticeItemBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coderpage/mine/app/tally/module/home/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 21
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/home/ViewHolderBackupNotice;->mActivity:Landroid/app/Activity;

    .line 22
    iput-object p2, p0, Lcom/coderpage/mine/app/tally/module/home/ViewHolderBackupNotice;->mViewModel:Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;

    .line 23
    iput-object p3, p0, Lcom/coderpage/mine/app/tally/module/home/ViewHolderBackupNotice;->mBinding:Lcom/coderpage/mine/tally/module/home/BackupNoticeItemBinding;

    return-void
.end method


# virtual methods
.method bindData(Lcom/coderpage/mine/app/tally/module/home/model/HomeDisplayData;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 28
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/home/ViewHolderBackupNotice;->mBinding:Lcom/coderpage/mine/tally/module/home/BackupNoticeItemBinding;

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/ViewHolderBackupNotice;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/coderpage/mine/tally/module/home/BackupNoticeItemBinding;->setActivity(Landroid/app/Activity;)V

    .line 29
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/home/ViewHolderBackupNotice;->mBinding:Lcom/coderpage/mine/tally/module/home/BackupNoticeItemBinding;

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/ViewHolderBackupNotice;->mViewModel:Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;

    invoke-virtual {p1, v0}, Lcom/coderpage/mine/tally/module/home/BackupNoticeItemBinding;->setVm(Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;)V

    .line 30
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/home/ViewHolderBackupNotice;->mBinding:Lcom/coderpage/mine/tally/module/home/BackupNoticeItemBinding;

    invoke-virtual {p1}, Lcom/coderpage/mine/tally/module/home/BackupNoticeItemBinding;->executePendingBindings()V

    return-void
.end method
