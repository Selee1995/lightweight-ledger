.class public Lcom/coderpage/mine/module/debug/DebugActivityBindingImpl;
.super Lcom/coderpage/mine/module/debug/DebugActivityBinding;
.source "DebugActivityBindingImpl.java"

# interfaces
.implements Lcom/coderpage/mine/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private final mCallback54:Landroid/view/View$OnClickListener;

.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/LinearLayout;

.field private final mboundView1:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

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

    .line 31
    sget-object v0, Lcom/coderpage/mine/module/debug/DebugActivityBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/coderpage/mine/module/debug/DebugActivityBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x2

    invoke-static {p1, p2, v2, v0, v1}, Lcom/coderpage/mine/module/debug/DebugActivityBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/coderpage/mine/module/debug/DebugActivityBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 3
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

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, p2, v0}, Lcom/coderpage/mine/module/debug/DebugActivityBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 141
    iput-wide v1, p0, Lcom/coderpage/mine/module/debug/DebugActivityBindingImpl;->mDirtyFlags:J

    .line 36
    aget-object p1, p3, v0

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/coderpage/mine/module/debug/DebugActivityBindingImpl;->mboundView0:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    .line 37
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 38
    aget-object p3, p3, p1

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/coderpage/mine/module/debug/DebugActivityBindingImpl;->mboundView1:Landroid/widget/TextView;

    .line 39
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 40
    invoke-virtual {p0, p2}, Lcom/coderpage/mine/module/debug/DebugActivityBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 42
    new-instance p2, Lcom/coderpage/mine/generated/callback/OnClickListener;

    invoke-direct {p2, p0, p1}, Lcom/coderpage/mine/generated/callback/OnClickListener;-><init>(Lcom/coderpage/mine/generated/callback/OnClickListener$Listener;I)V

    iput-object p2, p0, Lcom/coderpage/mine/module/debug/DebugActivityBindingImpl;->mCallback54:Landroid/view/View$OnClickListener;

    .line 43
    invoke-virtual {p0}, Lcom/coderpage/mine/module/debug/DebugActivityBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method public final _internalCallbackOnClick(ILandroid/view/View;)V
    .locals 1
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

    .line 126
    iget-object p1, p0, Lcom/coderpage/mine/module/debug/DebugActivityBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/debug/DebugViewModel;

    .line 128
    iget-object p2, p0, Lcom/coderpage/mine/module/debug/DebugActivityBindingImpl;->mActivity:Landroid/app/Activity;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 137
    invoke-virtual {p1, p2}, Lcom/coderpage/mine/app/tally/module/debug/DebugViewModel;->onExportDataBaseClick(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method protected executeBindings()V
    .locals 6

    .line 106
    monitor-enter p0

    .line 107
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/module/debug/DebugActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 108
    iput-wide v2, p0, Lcom/coderpage/mine/module/debug/DebugActivityBindingImpl;->mDirtyFlags:J

    .line 109
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    iget-object v4, p0, Lcom/coderpage/mine/module/debug/DebugActivityBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/debug/DebugViewModel;

    .line 111
    iget-object v4, p0, Lcom/coderpage/mine/module/debug/DebugActivityBindingImpl;->mActivity:Landroid/app/Activity;

    const-wide/16 v4, 0x4

    and-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 116
    iget-object v0, p0, Lcom/coderpage/mine/module/debug/DebugActivityBindingImpl;->mboundView1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/coderpage/mine/module/debug/DebugActivityBindingImpl;->mCallback54:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 109
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 56
    monitor-enter p0

    .line 57
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/module/debug/DebugActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 58
    monitor-exit p0

    return v0

    .line 60
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

    .line 48
    monitor-enter p0

    const-wide/16 v0, 0x4

    .line 49
    :try_start_0
    iput-wide v0, p0, Lcom/coderpage/mine/module/debug/DebugActivityBindingImpl;->mDirtyFlags:J

    .line 50
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    invoke-virtual {p0}, Lcom/coderpage/mine/module/debug/DebugActivityBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 50
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

.method public setActivity(Landroid/app/Activity;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "Activity"
        }
    .end annotation

    .line 88
    iput-object p1, p0, Lcom/coderpage/mine/module/debug/DebugActivityBindingImpl;->mActivity:Landroid/app/Activity;

    .line 89
    monitor-enter p0

    .line 90
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/module/debug/DebugActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coderpage/mine/module/debug/DebugActivityBindingImpl;->mDirtyFlags:J

    .line 91
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 92
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/module/debug/DebugActivityBindingImpl;->notifyPropertyChanged(I)V

    .line 93
    invoke-super {p0}, Lcom/coderpage/mine/module/debug/DebugActivityBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 91
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

    .line 68
    check-cast p2, Lcom/coderpage/mine/app/tally/module/debug/DebugViewModel;

    invoke-virtual {p0, p2}, Lcom/coderpage/mine/module/debug/DebugActivityBindingImpl;->setVm(Lcom/coderpage/mine/app/tally/module/debug/DebugViewModel;)V

    goto :goto_0

    :cond_0
    if-ne v0, p1, :cond_1

    .line 71
    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p0, p2}, Lcom/coderpage/mine/module/debug/DebugActivityBindingImpl;->setActivity(Landroid/app/Activity;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setVm(Lcom/coderpage/mine/app/tally/module/debug/DebugViewModel;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "Vm"
        }
    .end annotation

    .line 80
    iput-object p1, p0, Lcom/coderpage/mine/module/debug/DebugActivityBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/debug/DebugViewModel;

    .line 81
    monitor-enter p0

    .line 82
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/module/debug/DebugActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coderpage/mine/module/debug/DebugActivityBindingImpl;->mDirtyFlags:J

    .line 83
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0xd

    .line 84
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/module/debug/DebugActivityBindingImpl;->notifyPropertyChanged(I)V

    .line 85
    invoke-super {p0}, Lcom/coderpage/mine/module/debug/DebugActivityBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 83
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
