.class public abstract Lcom/coderpage/mine/module/backup/BackupFileActivityBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "BackupFileActivityBinding.java"


# instance fields
.field public final lyAutoBackup:Landroid/support/constraint/ConstraintLayout;

.field public final lyDataExport:Landroid/support/constraint/ConstraintLayout;

.field public final lyDataImport:Landroid/support/constraint/ConstraintLayout;

.field protected mActivity:Landroid/app/Activity;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mVm:Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final switchAutoBackup:Landroid/support/v7/widget/SwitchCompat;

.field public final toolbar:Landroid/view/View;

.field public final tvAutoBackup:Landroid/widget/TextView;

.field public final tvAutoBackupTip:Landroid/widget/TextView;

.field public final tvExportData:Landroid/widget/TextView;

.field public final tvExportDataTip:Landroid/widget/TextView;

.field public final tvImportData:Landroid/widget/TextView;

.field public final tvImportDataTip:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/support/constraint/ConstraintLayout;Landroid/support/constraint/ConstraintLayout;Landroid/support/constraint/ConstraintLayout;Landroid/support/v7/widget/SwitchCompat;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
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
            "lyAutoBackup",
            "lyDataExport",
            "lyDataImport",
            "switchAutoBackup",
            "toolbar",
            "tvAutoBackup",
            "tvAutoBackupTip",
            "tvExportData",
            "tvExportDataTip",
            "tvImportData",
            "tvImportDataTip"
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 67
    iput-object p4, p0, Lcom/coderpage/mine/module/backup/BackupFileActivityBinding;->lyAutoBackup:Landroid/support/constraint/ConstraintLayout;

    .line 68
    iput-object p5, p0, Lcom/coderpage/mine/module/backup/BackupFileActivityBinding;->lyDataExport:Landroid/support/constraint/ConstraintLayout;

    .line 69
    iput-object p6, p0, Lcom/coderpage/mine/module/backup/BackupFileActivityBinding;->lyDataImport:Landroid/support/constraint/ConstraintLayout;

    .line 70
    iput-object p7, p0, Lcom/coderpage/mine/module/backup/BackupFileActivityBinding;->switchAutoBackup:Landroid/support/v7/widget/SwitchCompat;

    .line 71
    iput-object p8, p0, Lcom/coderpage/mine/module/backup/BackupFileActivityBinding;->toolbar:Landroid/view/View;

    .line 72
    iput-object p9, p0, Lcom/coderpage/mine/module/backup/BackupFileActivityBinding;->tvAutoBackup:Landroid/widget/TextView;

    .line 73
    iput-object p10, p0, Lcom/coderpage/mine/module/backup/BackupFileActivityBinding;->tvAutoBackupTip:Landroid/widget/TextView;

    .line 74
    iput-object p11, p0, Lcom/coderpage/mine/module/backup/BackupFileActivityBinding;->tvExportData:Landroid/widget/TextView;

    .line 75
    iput-object p12, p0, Lcom/coderpage/mine/module/backup/BackupFileActivityBinding;->tvExportDataTip:Landroid/widget/TextView;

    .line 76
    iput-object p13, p0, Lcom/coderpage/mine/module/backup/BackupFileActivityBinding;->tvImportData:Landroid/widget/TextView;

    .line 77
    iput-object p14, p0, Lcom/coderpage/mine/module/backup/BackupFileActivityBinding;->tvImportDataTip:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/coderpage/mine/module/backup/BackupFileActivityBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 134
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/coderpage/mine/module/backup/BackupFileActivityBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/coderpage/mine/module/backup/BackupFileActivityBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/coderpage/mine/module/backup/BackupFileActivityBinding;
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

    const v0, 0x7f0b005a

    .line 146
    invoke-static {p1, p0, v0}, Lcom/coderpage/mine/module/backup/BackupFileActivityBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/coderpage/mine/module/backup/BackupFileActivityBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/coderpage/mine/module/backup/BackupFileActivityBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inflater"
        }
    .end annotation

    .line 116
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/coderpage/mine/module/backup/BackupFileActivityBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/coderpage/mine/module/backup/BackupFileActivityBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/coderpage/mine/module/backup/BackupFileActivityBinding;
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

    .line 97
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/coderpage/mine/module/backup/BackupFileActivityBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/coderpage/mine/module/backup/BackupFileActivityBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/coderpage/mine/module/backup/BackupFileActivityBinding;
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

    const v0, 0x7f0b005a

    .line 111
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/coderpage/mine/module/backup/BackupFileActivityBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/coderpage/mine/module/backup/BackupFileActivityBinding;
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

    const v0, 0x7f0b005a

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 130
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/coderpage/mine/module/backup/BackupFileActivityBinding;

    return-object p0
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/coderpage/mine/module/backup/BackupFileActivityBinding;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getVm()Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/coderpage/mine/module/backup/BackupFileActivityBinding;->mVm:Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;

    return-object v0
.end method

.method public abstract setActivity(Landroid/app/Activity;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation
.end method

.method public abstract setVm(Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vm"
        }
    .end annotation
.end method
