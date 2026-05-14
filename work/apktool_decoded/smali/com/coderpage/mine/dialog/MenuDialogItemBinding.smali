.class public abstract Lcom/coderpage/mine/dialog/MenuDialogItemBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "MenuDialogItemBinding.java"


# instance fields
.field public final ivIcon:Landroid/support/v7/widget/AppCompatImageView;

.field protected mItem:Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogItem;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mVm:Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogViewModel;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/support/v7/widget/AppCompatImageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "_bindingComponent",
            "_root",
            "_localFieldCount",
            "ivIcon"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 32
    iput-object p4, p0, Lcom/coderpage/mine/dialog/MenuDialogItemBinding;->ivIcon:Landroid/support/v7/widget/AppCompatImageView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/coderpage/mine/dialog/MenuDialogItemBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 89
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/coderpage/mine/dialog/MenuDialogItemBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/coderpage/mine/dialog/MenuDialogItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/coderpage/mine/dialog/MenuDialogItemBinding;
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

    const v0, 0x7f0b0055

    .line 101
    invoke-static {p1, p0, v0}, Lcom/coderpage/mine/dialog/MenuDialogItemBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/coderpage/mine/dialog/MenuDialogItemBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/coderpage/mine/dialog/MenuDialogItemBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inflater"
        }
    .end annotation

    .line 71
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/coderpage/mine/dialog/MenuDialogItemBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/coderpage/mine/dialog/MenuDialogItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/coderpage/mine/dialog/MenuDialogItemBinding;
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

    .line 52
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/coderpage/mine/dialog/MenuDialogItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/coderpage/mine/dialog/MenuDialogItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/coderpage/mine/dialog/MenuDialogItemBinding;
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

    const v0, 0x7f0b0055

    .line 66
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/coderpage/mine/dialog/MenuDialogItemBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/coderpage/mine/dialog/MenuDialogItemBinding;
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

    const v0, 0x7f0b0055

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 85
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/coderpage/mine/dialog/MenuDialogItemBinding;

    return-object p0
.end method


# virtual methods
.method public getItem()Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogItem;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/coderpage/mine/dialog/MenuDialogItemBinding;->mItem:Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogItem;

    return-object v0
.end method

.method public getVm()Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogViewModel;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/coderpage/mine/dialog/MenuDialogItemBinding;->mVm:Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogViewModel;

    return-object v0
.end method

.method public abstract setItem(Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogItem;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation
.end method

.method public abstract setVm(Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogViewModel;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vm"
        }
    .end annotation
.end method
