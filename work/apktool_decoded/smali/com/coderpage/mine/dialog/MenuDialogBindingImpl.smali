.class public Lcom/coderpage/mine/dialog/MenuDialogBindingImpl;
.super Lcom/coderpage/mine/dialog/MenuDialogBinding;
.source "MenuDialogBindingImpl.java"

# interfaces
.implements Lcom/coderpage/mine/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private final mCallback30:Landroid/view/View$OnClickListener;

.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/coderpage/mine/dialog/MenuDialogBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0900cd

    const/4 v2, 0x2

    .line 17
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

    .line 30
    sget-object v0, Lcom/coderpage/mine/dialog/MenuDialogBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/coderpage/mine/dialog/MenuDialogBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x3

    invoke-static {p1, p2, v2, v0, v1}, Lcom/coderpage/mine/dialog/MenuDialogBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/coderpage/mine/dialog/MenuDialogBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 8
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

    .line 33
    aget-object v1, p3, v0

    move-object v6, v1

    check-cast v6, Landroid/support/v7/widget/AppCompatImageView;

    const/4 v1, 0x2

    aget-object v1, p3, v1

    move-object v7, v1

    check-cast v7, Landroid/support/v7/widget/RecyclerView;

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v7}, Lcom/coderpage/mine/dialog/MenuDialogBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/support/v7/widget/AppCompatImageView;Landroid/support/v7/widget/RecyclerView;)V

    const-wide/16 v1, -0x1

    .line 126
    iput-wide v1, p0, Lcom/coderpage/mine/dialog/MenuDialogBindingImpl;->mDirtyFlags:J

    .line 37
    iget-object p1, p0, Lcom/coderpage/mine/dialog/MenuDialogBindingImpl;->ivClose:Landroid/support/v7/widget/AppCompatImageView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/AppCompatImageView;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 38
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/coderpage/mine/dialog/MenuDialogBindingImpl;->mboundView0:Landroid/widget/FrameLayout;

    .line 39
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 40
    invoke-virtual {p0, p2}, Lcom/coderpage/mine/dialog/MenuDialogBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 42
    new-instance p1, Lcom/coderpage/mine/generated/callback/OnClickListener;

    invoke-direct {p1, p0, v0}, Lcom/coderpage/mine/generated/callback/OnClickListener;-><init>(Lcom/coderpage/mine/generated/callback/OnClickListener$Listener;I)V

    iput-object p1, p0, Lcom/coderpage/mine/dialog/MenuDialogBindingImpl;->mCallback30:Landroid/view/View$OnClickListener;

    .line 43
    invoke-virtual {p0}, Lcom/coderpage/mine/dialog/MenuDialogBindingImpl;->invalidateAll()V

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

    .line 114
    iget-object p1, p0, Lcom/coderpage/mine/dialog/MenuDialogBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogViewModel;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 122
    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogViewModel;->onCloseClick()V

    :cond_1
    return-void
.end method

.method protected executeBindings()V
    .locals 6

    .line 95
    monitor-enter p0

    .line 96
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/dialog/MenuDialogBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 97
    iput-wide v2, p0, Lcom/coderpage/mine/dialog/MenuDialogBindingImpl;->mDirtyFlags:J

    .line 98
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    iget-object v4, p0, Lcom/coderpage/mine/dialog/MenuDialogBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogViewModel;

    const-wide/16 v4, 0x2

    and-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 104
    iget-object v0, p0, Lcom/coderpage/mine/dialog/MenuDialogBindingImpl;->ivClose:Landroid/support/v7/widget/AppCompatImageView;

    iget-object v1, p0, Lcom/coderpage/mine/dialog/MenuDialogBindingImpl;->mCallback30:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 98
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
    iget-wide v0, p0, Lcom/coderpage/mine/dialog/MenuDialogBindingImpl;->mDirtyFlags:J

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

    const-wide/16 v0, 0x2

    .line 49
    :try_start_0
    iput-wide v0, p0, Lcom/coderpage/mine/dialog/MenuDialogBindingImpl;->mDirtyFlags:J

    .line 50
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    invoke-virtual {p0}, Lcom/coderpage/mine/dialog/MenuDialogBindingImpl;->requestRebind()V

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

    .line 68
    check-cast p2, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogViewModel;

    invoke-virtual {p0, p2}, Lcom/coderpage/mine/dialog/MenuDialogBindingImpl;->setVm(Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogViewModel;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setVm(Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogViewModel;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "Vm"
        }
    .end annotation

    .line 77
    iput-object p1, p0, Lcom/coderpage/mine/dialog/MenuDialogBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogViewModel;

    .line 78
    monitor-enter p0

    .line 79
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/dialog/MenuDialogBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coderpage/mine/dialog/MenuDialogBindingImpl;->mDirtyFlags:J

    .line 80
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0xd

    .line 81
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/dialog/MenuDialogBindingImpl;->notifyPropertyChanged(I)V

    .line 82
    invoke-super {p0}, Lcom/coderpage/mine/dialog/MenuDialogBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 80
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
