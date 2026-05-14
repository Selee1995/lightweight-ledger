.class public abstract Lcom/coderpage/mine/module/setting/SettingActivityBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SettingActivityBinding.java"


# instance fields
.field public final lyDataExport:Landroid/support/constraint/ConstraintLayout;

.field public final lyDataImport:Landroid/support/constraint/ConstraintLayout;

.field public final lyFingerprintSecret:Landroid/support/constraint/ConstraintLayout;

.field protected mActivity:Landroid/app/Activity;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mVm:Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final switchFingerprintSecret:Landroid/support/v7/widget/SwitchCompat;

.field public final toolbar:Landroid/view/View;

.field public final tvExportCsv:Landroid/widget/TextView;

.field public final tvExportCsvTip:Landroid/widget/TextView;

.field public final tvExportData:Landroid/widget/TextView;

.field public final tvExportDataTip:Landroid/widget/TextView;

.field public final tvFingerprintSecret:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/support/constraint/ConstraintLayout;Landroid/support/constraint/ConstraintLayout;Landroid/support/constraint/ConstraintLayout;Landroid/support/v7/widget/SwitchCompat;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
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
            0x0
        }
        names = {
            "_bindingComponent",
            "_root",
            "_localFieldCount",
            "lyDataExport",
            "lyDataImport",
            "lyFingerprintSecret",
            "switchFingerprintSecret",
            "toolbar",
            "tvExportCsv",
            "tvExportCsvTip",
            "tvExportData",
            "tvExportDataTip",
            "tvFingerprintSecret"
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 64
    iput-object p4, p0, Lcom/coderpage/mine/module/setting/SettingActivityBinding;->lyDataExport:Landroid/support/constraint/ConstraintLayout;

    .line 65
    iput-object p5, p0, Lcom/coderpage/mine/module/setting/SettingActivityBinding;->lyDataImport:Landroid/support/constraint/ConstraintLayout;

    .line 66
    iput-object p6, p0, Lcom/coderpage/mine/module/setting/SettingActivityBinding;->lyFingerprintSecret:Landroid/support/constraint/ConstraintLayout;

    .line 67
    iput-object p7, p0, Lcom/coderpage/mine/module/setting/SettingActivityBinding;->switchFingerprintSecret:Landroid/support/v7/widget/SwitchCompat;

    .line 68
    iput-object p8, p0, Lcom/coderpage/mine/module/setting/SettingActivityBinding;->toolbar:Landroid/view/View;

    .line 69
    iput-object p9, p0, Lcom/coderpage/mine/module/setting/SettingActivityBinding;->tvExportCsv:Landroid/widget/TextView;

    .line 70
    iput-object p10, p0, Lcom/coderpage/mine/module/setting/SettingActivityBinding;->tvExportCsvTip:Landroid/widget/TextView;

    .line 71
    iput-object p11, p0, Lcom/coderpage/mine/module/setting/SettingActivityBinding;->tvExportData:Landroid/widget/TextView;

    .line 72
    iput-object p12, p0, Lcom/coderpage/mine/module/setting/SettingActivityBinding;->tvExportDataTip:Landroid/widget/TextView;

    .line 73
    iput-object p13, p0, Lcom/coderpage/mine/module/setting/SettingActivityBinding;->tvFingerprintSecret:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/coderpage/mine/module/setting/SettingActivityBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 130
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/coderpage/mine/module/setting/SettingActivityBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/coderpage/mine/module/setting/SettingActivityBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/coderpage/mine/module/setting/SettingActivityBinding;
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

    const v0, 0x7f0b001c

    .line 142
    invoke-static {p1, p0, v0}, Lcom/coderpage/mine/module/setting/SettingActivityBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/coderpage/mine/module/setting/SettingActivityBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/coderpage/mine/module/setting/SettingActivityBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inflater"
        }
    .end annotation

    .line 112
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/coderpage/mine/module/setting/SettingActivityBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/coderpage/mine/module/setting/SettingActivityBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/coderpage/mine/module/setting/SettingActivityBinding;
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

    .line 93
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/coderpage/mine/module/setting/SettingActivityBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/coderpage/mine/module/setting/SettingActivityBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/coderpage/mine/module/setting/SettingActivityBinding;
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

    const v0, 0x7f0b001c

    .line 107
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/coderpage/mine/module/setting/SettingActivityBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/coderpage/mine/module/setting/SettingActivityBinding;
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

    const v0, 0x7f0b001c

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 126
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/coderpage/mine/module/setting/SettingActivityBinding;

    return-object p0
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/coderpage/mine/module/setting/SettingActivityBinding;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getVm()Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/coderpage/mine/module/setting/SettingActivityBinding;->mVm:Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel;

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

.method public abstract setVm(Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vm"
        }
    .end annotation
.end method
