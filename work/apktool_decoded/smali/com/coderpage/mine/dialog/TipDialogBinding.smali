.class public abstract Lcom/coderpage/mine/dialog/TipDialogBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "TipDialogBinding.java"


# instance fields
.field public final lyContainer:Landroid/support/constraint/ConstraintLayout;

.field public final tvMessage:Landroid/widget/TextView;

.field public final tvNegative:Landroid/widget/TextView;

.field public final tvNeutral:Landroid/widget/TextView;

.field public final tvPositive:Landroid/widget/TextView;

.field public final tvTitle:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/support/constraint/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
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
            "lyContainer",
            "tvMessage",
            "tvNegative",
            "tvNeutral",
            "tvPositive",
            "tvTitle"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 40
    iput-object p4, p0, Lcom/coderpage/mine/dialog/TipDialogBinding;->lyContainer:Landroid/support/constraint/ConstraintLayout;

    .line 41
    iput-object p5, p0, Lcom/coderpage/mine/dialog/TipDialogBinding;->tvMessage:Landroid/widget/TextView;

    .line 42
    iput-object p6, p0, Lcom/coderpage/mine/dialog/TipDialogBinding;->tvNegative:Landroid/widget/TextView;

    .line 43
    iput-object p7, p0, Lcom/coderpage/mine/dialog/TipDialogBinding;->tvNeutral:Landroid/widget/TextView;

    .line 44
    iput-object p8, p0, Lcom/coderpage/mine/dialog/TipDialogBinding;->tvPositive:Landroid/widget/TextView;

    .line 45
    iput-object p9, p0, Lcom/coderpage/mine/dialog/TipDialogBinding;->tvTitle:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/coderpage/mine/dialog/TipDialogBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 88
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/coderpage/mine/dialog/TipDialogBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/coderpage/mine/dialog/TipDialogBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/coderpage/mine/dialog/TipDialogBinding;
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

    const v0, 0x7f0b0031

    .line 100
    invoke-static {p1, p0, v0}, Lcom/coderpage/mine/dialog/TipDialogBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/coderpage/mine/dialog/TipDialogBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/coderpage/mine/dialog/TipDialogBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inflater"
        }
    .end annotation

    .line 70
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/coderpage/mine/dialog/TipDialogBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/coderpage/mine/dialog/TipDialogBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/coderpage/mine/dialog/TipDialogBinding;
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

    .line 51
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/coderpage/mine/dialog/TipDialogBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/coderpage/mine/dialog/TipDialogBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/coderpage/mine/dialog/TipDialogBinding;
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

    const v0, 0x7f0b0031

    .line 65
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/coderpage/mine/dialog/TipDialogBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/coderpage/mine/dialog/TipDialogBinding;
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

    const v0, 0x7f0b0031

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 84
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/coderpage/mine/dialog/TipDialogBinding;

    return-object p0
.end method
