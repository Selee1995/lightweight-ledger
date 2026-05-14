.class public abstract Lcom/coderpage/mine/module/backup/ItemBackupFileManagerBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "ItemBackupFileManagerBinding.java"


# instance fields
.field protected mItem:Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mVm:Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerViewModel;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final tvDelete:Landroid/widget/TextView;

.field public final tvFileName:Landroid/widget/TextView;

.field public final tvShare:Landroid/widget/TextView;

.field public final tvSize:Landroid/widget/TextView;

.field public final tvSizeLabel:Landroid/widget/TextView;

.field public final tvTimeLabel:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "_bindingComponent",
            "_root",
            "_localFieldCount",
            "tvDelete",
            "tvFileName",
            "tvShare",
            "tvSize",
            "tvSizeLabel",
            "tvTimeLabel"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 48
    iput-object p4, p0, Lcom/coderpage/mine/module/backup/ItemBackupFileManagerBinding;->tvDelete:Landroid/widget/TextView;

    .line 49
    iput-object p5, p0, Lcom/coderpage/mine/module/backup/ItemBackupFileManagerBinding;->tvFileName:Landroid/widget/TextView;

    .line 50
    iput-object p6, p0, Lcom/coderpage/mine/module/backup/ItemBackupFileManagerBinding;->tvShare:Landroid/widget/TextView;

    .line 51
    iput-object p7, p0, Lcom/coderpage/mine/module/backup/ItemBackupFileManagerBinding;->tvSize:Landroid/widget/TextView;

    .line 52
    iput-object p8, p0, Lcom/coderpage/mine/module/backup/ItemBackupFileManagerBinding;->tvSizeLabel:Landroid/widget/TextView;

    .line 53
    iput-object p9, p0, Lcom/coderpage/mine/module/backup/ItemBackupFileManagerBinding;->tvTimeLabel:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/coderpage/mine/module/backup/ItemBackupFileManagerBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 110
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/coderpage/mine/module/backup/ItemBackupFileManagerBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/coderpage/mine/module/backup/ItemBackupFileManagerBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/coderpage/mine/module/backup/ItemBackupFileManagerBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "component"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0b005c

    .line 122
    invoke-static {p1, p0, v0}, Lcom/coderpage/mine/module/backup/ItemBackupFileManagerBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/coderpage/mine/module/backup/ItemBackupFileManagerBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/coderpage/mine/module/backup/ItemBackupFileManagerBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inflater"
        }
    .end annotation

    .line 92
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/coderpage/mine/module/backup/ItemBackupFileManagerBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/coderpage/mine/module/backup/ItemBackupFileManagerBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/coderpage/mine/module/backup/ItemBackupFileManagerBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "root",
            "attachToRoot"
        }
    .end annotation

    .line 73
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/coderpage/mine/module/backup/ItemBackupFileManagerBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/coderpage/mine/module/backup/ItemBackupFileManagerBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/coderpage/mine/module/backup/ItemBackupFileManagerBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "root",
            "attachToRoot",
            "component"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0b005c

    .line 87
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/coderpage/mine/module/backup/ItemBackupFileManagerBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/coderpage/mine/module/backup/ItemBackupFileManagerBinding;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inflater",
            "component"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0b005c

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 106
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/coderpage/mine/module/backup/ItemBackupFileManagerBinding;

    return-object p0
.end method


# virtual methods
.method public getItem()Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/coderpage/mine/module/backup/ItemBackupFileManagerBinding;->mItem:Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;

    return-object v0
.end method

.method public getVm()Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerViewModel;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/coderpage/mine/module/backup/ItemBackupFileManagerBinding;->mVm:Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerViewModel;

    return-object v0
.end method

.method public abstract setItem(Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation
.end method

.method public abstract setVm(Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerViewModel;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vm"
        }
    .end annotation
.end method
