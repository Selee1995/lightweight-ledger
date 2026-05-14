.class public abstract Lcom/coderpage/mine/module/edit/category/ItemCategoryIconBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "ItemCategoryIconBinding.java"


# instance fields
.field protected mCategoryIcon:Ljava/lang/String;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mVm:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "_bindingComponent",
            "_root",
            "_localFieldCount"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/coderpage/mine/module/edit/category/ItemCategoryIconBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 82
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/coderpage/mine/module/edit/category/ItemCategoryIconBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/coderpage/mine/module/edit/category/ItemCategoryIconBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/coderpage/mine/module/edit/category/ItemCategoryIconBinding;
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

    const v0, 0x7f0b0066

    .line 94
    invoke-static {p1, p0, v0}, Lcom/coderpage/mine/module/edit/category/ItemCategoryIconBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/coderpage/mine/module/edit/category/ItemCategoryIconBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/coderpage/mine/module/edit/category/ItemCategoryIconBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inflater"
        }
    .end annotation

    .line 64
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/coderpage/mine/module/edit/category/ItemCategoryIconBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/coderpage/mine/module/edit/category/ItemCategoryIconBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/coderpage/mine/module/edit/category/ItemCategoryIconBinding;
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

    .line 45
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/coderpage/mine/module/edit/category/ItemCategoryIconBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/coderpage/mine/module/edit/category/ItemCategoryIconBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/coderpage/mine/module/edit/category/ItemCategoryIconBinding;
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

    const v0, 0x7f0b0066

    .line 59
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/coderpage/mine/module/edit/category/ItemCategoryIconBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/coderpage/mine/module/edit/category/ItemCategoryIconBinding;
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

    const v0, 0x7f0b0066

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 78
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/coderpage/mine/module/edit/category/ItemCategoryIconBinding;

    return-object p0
.end method


# virtual methods
.method public getCategoryIcon()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/coderpage/mine/module/edit/category/ItemCategoryIconBinding;->mCategoryIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getVm()Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/coderpage/mine/module/edit/category/ItemCategoryIconBinding;->mVm:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;

    return-object v0
.end method

.method public abstract setCategoryIcon(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "categoryIcon"
        }
    .end annotation
.end method

.method public abstract setVm(Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vm"
        }
    .end annotation
.end method
