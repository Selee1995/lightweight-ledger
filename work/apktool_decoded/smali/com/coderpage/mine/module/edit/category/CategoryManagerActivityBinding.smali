.class public abstract Lcom/coderpage/mine/module/edit/category/CategoryManagerActivityBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "CategoryManagerActivityBinding.java"


# instance fields
.field public final lyToolbar:Landroid/widget/FrameLayout;

.field protected mVm:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final recyclerView:Landroid/support/v7/widget/RecyclerView;

.field public final tabLayout:Lcom/coderpage/base/widget/MTabLayout;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/FrameLayout;Landroid/support/v7/widget/RecyclerView;Lcom/coderpage/base/widget/MTabLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
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
            "lyToolbar",
            "recyclerView",
            "tabLayout"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 37
    iput-object p4, p0, Lcom/coderpage/mine/module/edit/category/CategoryManagerActivityBinding;->lyToolbar:Landroid/widget/FrameLayout;

    .line 38
    iput-object p5, p0, Lcom/coderpage/mine/module/edit/category/CategoryManagerActivityBinding;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 39
    iput-object p6, p0, Lcom/coderpage/mine/module/edit/category/CategoryManagerActivityBinding;->tabLayout:Lcom/coderpage/base/widget/MTabLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/coderpage/mine/module/edit/category/CategoryManagerActivityBinding;
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

    invoke-static {p0, v0}, Lcom/coderpage/mine/module/edit/category/CategoryManagerActivityBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/coderpage/mine/module/edit/category/CategoryManagerActivityBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/coderpage/mine/module/edit/category/CategoryManagerActivityBinding;
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

    const v0, 0x7f0b0064

    .line 102
    invoke-static {p1, p0, v0}, Lcom/coderpage/mine/module/edit/category/CategoryManagerActivityBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/coderpage/mine/module/edit/category/CategoryManagerActivityBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/coderpage/mine/module/edit/category/CategoryManagerActivityBinding;
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

    invoke-static {p0, v0}, Lcom/coderpage/mine/module/edit/category/CategoryManagerActivityBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/coderpage/mine/module/edit/category/CategoryManagerActivityBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/coderpage/mine/module/edit/category/CategoryManagerActivityBinding;
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

    invoke-static {p0, p1, p2, v0}, Lcom/coderpage/mine/module/edit/category/CategoryManagerActivityBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/coderpage/mine/module/edit/category/CategoryManagerActivityBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/coderpage/mine/module/edit/category/CategoryManagerActivityBinding;
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

    const v0, 0x7f0b0064

    .line 66
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/coderpage/mine/module/edit/category/CategoryManagerActivityBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/coderpage/mine/module/edit/category/CategoryManagerActivityBinding;
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

    const v0, 0x7f0b0064

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 85
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/coderpage/mine/module/edit/category/CategoryManagerActivityBinding;

    return-object p0
.end method


# virtual methods
.method public getVm()Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/coderpage/mine/module/edit/category/CategoryManagerActivityBinding;->mVm:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;

    return-object v0
.end method

.method public abstract setVm(Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vm"
        }
    .end annotation
.end method
