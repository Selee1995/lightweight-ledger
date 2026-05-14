.class public Lcom/coderpage/mine/module/edit/category/CategoryManagerActivityBindingImpl;
.super Lcom/coderpage/mine/module/edit/category/CategoryManagerActivityBinding;
.source "CategoryManagerActivityBindingImpl.java"

# interfaces
.implements Lcom/coderpage/mine/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private final mCallback24:Landroid/view/View$OnClickListener;

.field private mDirtyFlags:J

.field private final mboundView0:Landroid/support/constraint/ConstraintLayout;

.field private final mboundView2:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/coderpage/mine/module/edit/category/CategoryManagerActivityBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090104

    const/4 v2, 0x3

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0900d0

    const/4 v2, 0x4

    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bindingComponent",
            "root"
        }
    .end annotation

    .line 33
    sget-object v0, Lcom/coderpage/mine/module/edit/category/CategoryManagerActivityBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/coderpage/mine/module/edit/category/CategoryManagerActivityBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x5

    invoke-static {p1, p2, v2, v0, v1}, Lcom/coderpage/mine/module/edit/category/CategoryManagerActivityBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/coderpage/mine/module/edit/category/CategoryManagerActivityBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bindingComponent",
            "root",
            "bindings"
        }
    .end annotation

    const/4 v0, 0x1

    .line 36
    aget-object v1, p3, v0

    move-object v6, v1

    check-cast v6, Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    aget-object v1, p3, v1

    move-object v7, v1

    check-cast v7, Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x3

    aget-object v1, p3, v1

    move-object v8, v1

    check-cast v8, Lcom/coderpage/base/widget/MTabLayout;

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v8}, Lcom/coderpage/mine/module/edit/category/CategoryManagerActivityBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/FrameLayout;Landroid/support/v7/widget/RecyclerView;Lcom/coderpage/base/widget/MTabLayout;)V

    const-wide/16 v1, -0x1

    .line 132
    iput-wide v1, p0, Lcom/coderpage/mine/module/edit/category/CategoryManagerActivityBindingImpl;->mDirtyFlags:J

    .line 41
    iget-object p1, p0, Lcom/coderpage/mine/module/edit/category/CategoryManagerActivityBindingImpl;->lyToolbar:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 42
    aget-object p1, p3, p1

    check-cast p1, Landroid/support/constraint/ConstraintLayout;

    iput-object p1, p0, Lcom/coderpage/mine/module/edit/category/CategoryManagerActivityBindingImpl;->mboundView0:Landroid/support/constraint/ConstraintLayout;

    .line 43
    invoke-virtual {p1, v1}, Landroid/support/constraint/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x2

    .line 44
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coderpage/mine/module/edit/category/CategoryManagerActivityBindingImpl;->mboundView2:Landroid/widget/TextView;

    .line 45
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 46
    invoke-virtual {p0, p2}, Lcom/coderpage/mine/module/edit/category/CategoryManagerActivityBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 48
    new-instance p1, Lcom/coderpage/mine/generated/callback/OnClickListener;

    invoke-direct {p1, p0, v0}, Lcom/coderpage/mine/generated/callback/OnClickListener;-><init>(Lcom/coderpage/mine/generated/callback/OnClickListener$Listener;I)V

    iput-object p1, p0, Lcom/coderpage/mine/module/edit/category/CategoryManagerActivityBindingImpl;->mCallback24:Landroid/view/View$OnClickListener;

    .line 49
    invoke-virtual {p0}, Lcom/coderpage/mine/module/edit/category/CategoryManagerActivityBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method public final _internalCallbackOnClick(ILandroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sourceId",
            "callbackArg_0"
        }
    .end annotation

    .line 120
    iget-object p1, p0, Lcom/coderpage/mine/module/edit/category/CategoryManagerActivityBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 128
    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;->onAddCategoryClick()V

    :cond_1
    return-void
.end method

.method protected executeBindings()V
    .locals 6

    .line 101
    monitor-enter p0

    .line 102
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/module/edit/category/CategoryManagerActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 103
    iput-wide v2, p0, Lcom/coderpage/mine/module/edit/category/CategoryManagerActivityBindingImpl;->mDirtyFlags:J

    .line 104
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    iget-object v4, p0, Lcom/coderpage/mine/module/edit/category/CategoryManagerActivityBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;

    const-wide/16 v4, 0x2

    and-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 110
    iget-object v0, p0, Lcom/coderpage/mine/module/edit/category/CategoryManagerActivityBindingImpl;->mboundView2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/coderpage/mine/module/edit/category/CategoryManagerActivityBindingImpl;->mCallback24:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 104
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 62
    monitor-enter p0

    .line 63
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/module/edit/category/CategoryManagerActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 64
    monitor-exit p0

    return v0

    .line 66
    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    .line 54
    monitor-enter p0

    const-wide/16 v0, 0x2

    .line 55
    :try_start_0
    iput-wide v0, p0, Lcom/coderpage/mine/module/edit/category/CategoryManagerActivityBindingImpl;->mDirtyFlags:J

    .line 56
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    invoke-virtual {p0}, Lcom/coderpage/mine/module/edit/category/CategoryManagerActivityBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 56
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onFieldChange(ILjava/lang/Object;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "localFieldId",
            "object",
            "fieldId"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "variableId",
            "variable"
        }
    .end annotation

    const/16 v0, 0xd

    if-ne v0, p1, :cond_0

    .line 74
    check-cast p2, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;

    invoke-virtual {p0, p2}, Lcom/coderpage/mine/module/edit/category/CategoryManagerActivityBindingImpl;->setVm(Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setVm(Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "Vm"
        }
    .end annotation

    .line 83
    iput-object p1, p0, Lcom/coderpage/mine/module/edit/category/CategoryManagerActivityBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;

    .line 84
    monitor-enter p0

    .line 85
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/module/edit/category/CategoryManagerActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coderpage/mine/module/edit/category/CategoryManagerActivityBindingImpl;->mDirtyFlags:J

    .line 86
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0xd

    .line 87
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/module/edit/category/CategoryManagerActivityBindingImpl;->notifyPropertyChanged(I)V

    .line 88
    invoke-super {p0}, Lcom/coderpage/mine/module/edit/category/CategoryManagerActivityBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 86
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
