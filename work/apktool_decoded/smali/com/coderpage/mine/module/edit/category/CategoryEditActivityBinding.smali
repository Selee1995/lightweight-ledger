.class public abstract Lcom/coderpage/mine/module/edit/category/CategoryEditActivityBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "CategoryEditActivityBinding.java"


# instance fields
.field public final etCategoryName:Landroid/widget/EditText;

.field public final lySelectCategoryIcon:Landroid/widget/FrameLayout;

.field public final lyTop:Landroid/support/constraint/ConstraintLayout;

.field protected mVm:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final recyclerView:Landroid/support/v7/widget/RecyclerView;

.field public final tvSubmit:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/EditText;Landroid/widget/FrameLayout;Landroid/support/constraint/ConstraintLayout;Landroid/support/v7/widget/RecyclerView;Landroid/widget/TextView;)V
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
            0x0
        }
        names = {
            "_bindingComponent",
            "_root",
            "_localFieldCount",
            "etCategoryName",
            "lySelectCategoryIcon",
            "lyTop",
            "recyclerView",
            "tvSubmit"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 45
    iput-object p4, p0, Lcom/coderpage/mine/module/edit/category/CategoryEditActivityBinding;->etCategoryName:Landroid/widget/EditText;

    .line 46
    iput-object p5, p0, Lcom/coderpage/mine/module/edit/category/CategoryEditActivityBinding;->lySelectCategoryIcon:Landroid/widget/FrameLayout;

    .line 47
    iput-object p6, p0, Lcom/coderpage/mine/module/edit/category/CategoryEditActivityBinding;->lyTop:Landroid/support/constraint/ConstraintLayout;

    .line 48
    iput-object p7, p0, Lcom/coderpage/mine/module/edit/category/CategoryEditActivityBinding;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 49
    iput-object p8, p0, Lcom/coderpage/mine/module/edit/category/CategoryEditActivityBinding;->tvSubmit:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/coderpage/mine/module/edit/category/CategoryEditActivityBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 99
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/coderpage/mine/module/edit/category/CategoryEditActivityBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/coderpage/mine/module/edit/category/CategoryEditActivityBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/coderpage/mine/module/edit/category/CategoryEditActivityBinding;
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

    const v0, 0x7f0b0063

    .line 111
    invoke-static {p1, p0, v0}, Lcom/coderpage/mine/module/edit/category/CategoryEditActivityBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/coderpage/mine/module/edit/category/CategoryEditActivityBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/coderpage/mine/module/edit/category/CategoryEditActivityBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inflater"
        }
    .end annotation

    .line 81
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/coderpage/mine/module/edit/category/CategoryEditActivityBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/coderpage/mine/module/edit/category/CategoryEditActivityBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/coderpage/mine/module/edit/category/CategoryEditActivityBinding;
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

    .line 62
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/coderpage/mine/module/edit/category/CategoryEditActivityBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/coderpage/mine/module/edit/category/CategoryEditActivityBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/coderpage/mine/module/edit/category/CategoryEditActivityBinding;
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

    const v0, 0x7f0b0063

    .line 76
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/coderpage/mine/module/edit/category/CategoryEditActivityBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/coderpage/mine/module/edit/category/CategoryEditActivityBinding;
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

    const v0, 0x7f0b0063

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 95
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/coderpage/mine/module/edit/category/CategoryEditActivityBinding;

    return-object p0
.end method


# virtual methods
.method public getVm()Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/coderpage/mine/module/edit/category/CategoryEditActivityBinding;->mVm:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;

    return-object v0
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
