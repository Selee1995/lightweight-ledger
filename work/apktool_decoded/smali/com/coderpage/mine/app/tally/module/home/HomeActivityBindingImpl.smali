.class public Lcom/coderpage/mine/app/tally/module/home/HomeActivityBindingImpl;
.super Lcom/coderpage/mine/app/tally/module/home/HomeActivityBinding;
.source "HomeActivityBindingImpl.java"

# interfaces
.implements Lcom/coderpage/mine/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private final mCallback50:Landroid/view/View$OnClickListener;

.field private final mCallback51:Landroid/view/View$OnClickListener;

.field private mDirtyFlags:J

.field private final mboundView0:Landroid/support/constraint/ConstraintLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/coderpage/mine/app/tally/module/home/HomeActivityBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090115

    const/4 v2, 0x3

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0900d1

    const/4 v2, 0x4

    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0900d0

    const/4 v2, 0x5

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f090071

    const/4 v2, 0x6

    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f090120

    const/4 v2, 0x7

    .line 21
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

    .line 36
    sget-object v0, Lcom/coderpage/mine/app/tally/module/home/HomeActivityBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/coderpage/mine/app/tally/module/home/HomeActivityBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0x8

    invoke-static {p1, p2, v2, v0, v1}, Lcom/coderpage/mine/app/tally/module/home/HomeActivityBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/coderpage/mine/app/tally/module/home/HomeActivityBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 14
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

    move-object v11, p0

    const/4 v12, 0x1

    .line 39
    aget-object v0, p3, v12

    move-object v4, v0

    check-cast v4, Landroid/support/constraint/ConstraintLayout;

    const/4 v0, 0x6

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/support/v7/widget/AppCompatImageView;

    const/4 v13, 0x2

    aget-object v0, p3, v13

    move-object v6, v0

    check-cast v6, Landroid/widget/FrameLayout;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroid/support/v7/widget/RecyclerView;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Landroid/support/v7/widget/Toolbar;

    const/4 v0, 0x7

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Landroid/widget/TextView;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v10}, Lcom/coderpage/mine/app/tally/module/home/HomeActivityBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/support/constraint/ConstraintLayout;Landroid/support/v7/widget/AppCompatImageView;Landroid/widget/FrameLayout;Landroid/support/v7/widget/RecyclerView;Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;Landroid/support/v7/widget/Toolbar;Landroid/widget/TextView;)V

    const-wide/16 v0, -0x1

    .line 180
    iput-wide v0, v11, Lcom/coderpage/mine/app/tally/module/home/HomeActivityBindingImpl;->mDirtyFlags:J

    .line 48
    iget-object v0, v11, Lcom/coderpage/mine/app/tally/module/home/HomeActivityBindingImpl;->btnAddRecord:Landroid/support/constraint/ConstraintLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    .line 49
    iget-object v0, v11, Lcom/coderpage/mine/app/tally/module/home/HomeActivityBindingImpl;->ivBottomMenu:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 50
    aget-object v0, p3, v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout;

    iput-object v0, v11, Lcom/coderpage/mine/app/tally/module/home/HomeActivityBindingImpl;->mboundView0:Landroid/support/constraint/ConstraintLayout;

    .line 51
    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    .line 52
    invoke-virtual {p0, v0}, Lcom/coderpage/mine/app/tally/module/home/HomeActivityBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 54
    new-instance v0, Lcom/coderpage/mine/generated/callback/OnClickListener;

    invoke-direct {v0, p0, v12}, Lcom/coderpage/mine/generated/callback/OnClickListener;-><init>(Lcom/coderpage/mine/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v11, Lcom/coderpage/mine/app/tally/module/home/HomeActivityBindingImpl;->mCallback50:Landroid/view/View$OnClickListener;

    .line 55
    new-instance v0, Lcom/coderpage/mine/generated/callback/OnClickListener;

    invoke-direct {v0, p0, v13}, Lcom/coderpage/mine/generated/callback/OnClickListener;-><init>(Lcom/coderpage/mine/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v11, Lcom/coderpage/mine/app/tally/module/home/HomeActivityBindingImpl;->mCallback51:Landroid/view/View$OnClickListener;

    .line 56
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/home/HomeActivityBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method public final _internalCallbackOnClick(ILandroid/view/View;)V
    .locals 2
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

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 162
    :cond_0
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/home/HomeActivityBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;

    .line 164
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/home/HomeActivityBindingImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    :cond_1
    if-eqz p2, :cond_4

    .line 173
    invoke-virtual {p1, v1}, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;->onBottomMenuClick(Landroid/support/v4/app/FragmentActivity;)V

    goto :goto_0

    .line 142
    :cond_2
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/home/HomeActivityBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;

    .line 144
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/home/HomeActivityBindingImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    :cond_3
    if-eqz p2, :cond_4

    .line 153
    invoke-virtual {p1, v1}, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;->onAddNewRecordClick(Landroid/app/Activity;)V

    :cond_4
    :goto_0
    return-void
.end method

.method protected executeBindings()V
    .locals 6

    .line 119
    monitor-enter p0

    .line 120
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomeActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 121
    iput-wide v2, p0, Lcom/coderpage/mine/app/tally/module/home/HomeActivityBindingImpl;->mDirtyFlags:J

    .line 122
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    iget-object v4, p0, Lcom/coderpage/mine/app/tally/module/home/HomeActivityBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;

    .line 124
    iget-object v4, p0, Lcom/coderpage/mine/app/tally/module/home/HomeActivityBindingImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    const-wide/16 v4, 0x4

    and-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 129
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomeActivityBindingImpl;->btnAddRecord:Landroid/support/constraint/ConstraintLayout;

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/home/HomeActivityBindingImpl;->mCallback50:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomeActivityBindingImpl;->ivBottomMenu:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/home/HomeActivityBindingImpl;->mCallback51:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 122
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 69
    monitor-enter p0

    .line 70
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomeActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 71
    monitor-exit p0

    return v0

    .line 73
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

    .line 61
    monitor-enter p0

    const-wide/16 v0, 0x4

    .line 62
    :try_start_0
    iput-wide v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomeActivityBindingImpl;->mDirtyFlags:J

    .line 63
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/home/HomeActivityBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 63
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

.method public setActivity(Landroid/support/v4/app/FragmentActivity;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "Activity"
        }
    .end annotation

    .line 101
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/home/HomeActivityBindingImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    .line 102
    monitor-enter p0

    .line 103
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomeActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomeActivityBindingImpl;->mDirtyFlags:J

    .line 104
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 105
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/module/home/HomeActivityBindingImpl;->notifyPropertyChanged(I)V

    .line 106
    invoke-super {p0}, Lcom/coderpage/mine/app/tally/module/home/HomeActivityBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 104
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 2
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

    const/4 v0, 0x1

    const/16 v1, 0xd

    if-ne v1, p1, :cond_0

    .line 81
    check-cast p2, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;

    invoke-virtual {p0, p2}, Lcom/coderpage/mine/app/tally/module/home/HomeActivityBindingImpl;->setVm(Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;)V

    goto :goto_0

    :cond_0
    if-ne v0, p1, :cond_1

    .line 84
    check-cast p2, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p0, p2}, Lcom/coderpage/mine/app/tally/module/home/HomeActivityBindingImpl;->setActivity(Landroid/support/v4/app/FragmentActivity;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setVm(Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "Vm"
        }
    .end annotation

    .line 93
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/home/HomeActivityBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;

    .line 94
    monitor-enter p0

    .line 95
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomeActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomeActivityBindingImpl;->mDirtyFlags:J

    .line 96
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0xd

    .line 97
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/module/home/HomeActivityBindingImpl;->notifyPropertyChanged(I)V

    .line 98
    invoke-super {p0}, Lcom/coderpage/mine/app/tally/module/home/HomeActivityBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 96
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
