.class public Lcom/coderpage/mine/tally/module/home/BackupNoticeItemBindingImpl;
.super Lcom/coderpage/mine/tally/module/home/BackupNoticeItemBinding;
.source "BackupNoticeItemBindingImpl.java"

# interfaces
.implements Lcom/coderpage/mine/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private final mCallback18:Landroid/view/View$OnClickListener;

.field private final mCallback19:Landroid/view/View$OnClickListener;

.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/LinearLayout;

.field private final mboundView1:Landroid/widget/TextView;

.field private final mboundView2:Landroid/support/v7/widget/AppCompatImageView;


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

    .line 35
    sget-object v0, Lcom/coderpage/mine/tally/module/home/BackupNoticeItemBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/coderpage/mine/tally/module/home/BackupNoticeItemBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x3

    invoke-static {p1, p2, v2, v0, v1}, Lcom/coderpage/mine/tally/module/home/BackupNoticeItemBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/coderpage/mine/tally/module/home/BackupNoticeItemBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

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

    .line 38
    invoke-direct {p0, p1, p2, v0}, Lcom/coderpage/mine/tally/module/home/BackupNoticeItemBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 174
    iput-wide v1, p0, Lcom/coderpage/mine/tally/module/home/BackupNoticeItemBindingImpl;->mDirtyFlags:J

    .line 40
    aget-object p1, p3, v0

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/coderpage/mine/tally/module/home/BackupNoticeItemBindingImpl;->mboundView0:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    .line 41
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 42
    aget-object v1, p3, p1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/coderpage/mine/tally/module/home/BackupNoticeItemBindingImpl;->mboundView1:Landroid/widget/TextView;

    .line 43
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x2

    .line 44
    aget-object p3, p3, v1

    check-cast p3, Landroid/support/v7/widget/AppCompatImageView;

    iput-object p3, p0, Lcom/coderpage/mine/tally/module/home/BackupNoticeItemBindingImpl;->mboundView2:Landroid/support/v7/widget/AppCompatImageView;

    .line 45
    invoke-virtual {p3, v0}, Landroid/support/v7/widget/AppCompatImageView;->setTag(Ljava/lang/Object;)V

    .line 46
    invoke-virtual {p0, p2}, Lcom/coderpage/mine/tally/module/home/BackupNoticeItemBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 48
    new-instance p2, Lcom/coderpage/mine/generated/callback/OnClickListener;

    invoke-direct {p2, p0, p1}, Lcom/coderpage/mine/generated/callback/OnClickListener;-><init>(Lcom/coderpage/mine/generated/callback/OnClickListener$Listener;I)V

    iput-object p2, p0, Lcom/coderpage/mine/tally/module/home/BackupNoticeItemBindingImpl;->mCallback18:Landroid/view/View$OnClickListener;

    .line 49
    new-instance p1, Lcom/coderpage/mine/generated/callback/OnClickListener;

    invoke-direct {p1, p0, v1}, Lcom/coderpage/mine/generated/callback/OnClickListener;-><init>(Lcom/coderpage/mine/generated/callback/OnClickListener$Listener;I)V

    iput-object p1, p0, Lcom/coderpage/mine/tally/module/home/BackupNoticeItemBindingImpl;->mCallback19:Landroid/view/View$OnClickListener;

    .line 50
    invoke-virtual {p0}, Lcom/coderpage/mine/tally/module/home/BackupNoticeItemBindingImpl;->invalidateAll()V

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

    .line 156
    :cond_0
    iget-object p1, p0, Lcom/coderpage/mine/tally/module/home/BackupNoticeItemBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;

    .line 158
    iget-object v1, p0, Lcom/coderpage/mine/tally/module/home/BackupNoticeItemBindingImpl;->mActivity:Landroid/app/Activity;

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    :cond_1
    if-eqz p2, :cond_4

    .line 167
    invoke-virtual {p1, v1}, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;->onBackupNoticeCloseClick(Landroid/app/Activity;)V

    goto :goto_0

    .line 136
    :cond_2
    iget-object p1, p0, Lcom/coderpage/mine/tally/module/home/BackupNoticeItemBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;

    .line 138
    iget-object v1, p0, Lcom/coderpage/mine/tally/module/home/BackupNoticeItemBindingImpl;->mActivity:Landroid/app/Activity;

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    :cond_3
    if-eqz p2, :cond_4

    .line 147
    invoke-virtual {p1, v1}, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;->onBackupNoticeClick(Landroid/app/Activity;)V

    :cond_4
    :goto_0
    return-void
.end method

.method protected executeBindings()V
    .locals 6

    .line 113
    monitor-enter p0

    .line 114
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/tally/module/home/BackupNoticeItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 115
    iput-wide v2, p0, Lcom/coderpage/mine/tally/module/home/BackupNoticeItemBindingImpl;->mDirtyFlags:J

    .line 116
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    iget-object v4, p0, Lcom/coderpage/mine/tally/module/home/BackupNoticeItemBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;

    .line 118
    iget-object v4, p0, Lcom/coderpage/mine/tally/module/home/BackupNoticeItemBindingImpl;->mActivity:Landroid/app/Activity;

    const-wide/16 v4, 0x4

    and-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 123
    iget-object v0, p0, Lcom/coderpage/mine/tally/module/home/BackupNoticeItemBindingImpl;->mboundView1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/coderpage/mine/tally/module/home/BackupNoticeItemBindingImpl;->mCallback18:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v0, p0, Lcom/coderpage/mine/tally/module/home/BackupNoticeItemBindingImpl;->mboundView2:Landroid/support/v7/widget/AppCompatImageView;

    iget-object v1, p0, Lcom/coderpage/mine/tally/module/home/BackupNoticeItemBindingImpl;->mCallback19:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 116
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 63
    monitor-enter p0

    .line 64
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/tally/module/home/BackupNoticeItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 65
    monitor-exit p0

    return v0

    .line 67
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

    .line 55
    monitor-enter p0

    const-wide/16 v0, 0x4

    .line 56
    :try_start_0
    iput-wide v0, p0, Lcom/coderpage/mine/tally/module/home/BackupNoticeItemBindingImpl;->mDirtyFlags:J

    .line 57
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    invoke-virtual {p0}, Lcom/coderpage/mine/tally/module/home/BackupNoticeItemBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 57
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

    .line 95
    iput-object p1, p0, Lcom/coderpage/mine/tally/module/home/BackupNoticeItemBindingImpl;->mActivity:Landroid/app/Activity;

    .line 96
    monitor-enter p0

    .line 97
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/tally/module/home/BackupNoticeItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coderpage/mine/tally/module/home/BackupNoticeItemBindingImpl;->mDirtyFlags:J

    .line 98
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 99
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/tally/module/home/BackupNoticeItemBindingImpl;->notifyPropertyChanged(I)V

    .line 100
    invoke-super {p0}, Lcom/coderpage/mine/tally/module/home/BackupNoticeItemBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 98
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

    .line 75
    check-cast p2, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;

    invoke-virtual {p0, p2}, Lcom/coderpage/mine/tally/module/home/BackupNoticeItemBindingImpl;->setVm(Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;)V

    goto :goto_0

    :cond_0
    if-ne v0, p1, :cond_1

    .line 78
    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p0, p2}, Lcom/coderpage/mine/tally/module/home/BackupNoticeItemBindingImpl;->setActivity(Landroid/app/Activity;)V

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

    .line 87
    iput-object p1, p0, Lcom/coderpage/mine/tally/module/home/BackupNoticeItemBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;

    .line 88
    monitor-enter p0

    .line 89
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/tally/module/home/BackupNoticeItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coderpage/mine/tally/module/home/BackupNoticeItemBindingImpl;->mDirtyFlags:J

    .line 90
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0xd

    .line 91
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/tally/module/home/BackupNoticeItemBindingImpl;->notifyPropertyChanged(I)V

    .line 92
    invoke-super {p0}, Lcom/coderpage/mine/tally/module/home/BackupNoticeItemBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 90
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
