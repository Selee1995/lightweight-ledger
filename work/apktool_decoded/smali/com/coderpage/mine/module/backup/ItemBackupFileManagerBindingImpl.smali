.class public Lcom/coderpage/mine/module/backup/ItemBackupFileManagerBindingImpl;
.super Lcom/coderpage/mine/module/backup/ItemBackupFileManagerBinding;
.source "ItemBackupFileManagerBindingImpl.java"

# interfaces
.implements Lcom/coderpage/mine/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private final mCallback33:Landroid/view/View$OnClickListener;

.field private final mCallback34:Landroid/view/View$OnClickListener;

.field private mDirtyFlags:J

.field private final mboundView0:Landroid/support/constraint/ConstraintLayout;

.field private final mboundView2:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/coderpage/mine/module/backup/ItemBackupFileManagerBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090173

    const/4 v2, 0x6

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f09016c

    const/4 v2, 0x7

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

    .line 35
    sget-object v0, Lcom/coderpage/mine/module/backup/ItemBackupFileManagerBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/coderpage/mine/module/backup/ItemBackupFileManagerBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0x8

    invoke-static {p1, p2, v2, v0, v1}, Lcom/coderpage/mine/module/backup/ItemBackupFileManagerBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/coderpage/mine/module/backup/ItemBackupFileManagerBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 11
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

    const/4 v0, 0x5

    .line 38
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/TextView;

    const/4 v0, 0x1

    aget-object v1, p3, v0

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    const/4 v1, 0x4

    aget-object v1, p3, v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    const/4 v1, 0x3

    aget-object v1, p3, v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    const/4 v1, 0x7

    aget-object v1, p3, v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    const/4 v1, 0x6

    aget-object v1, p3, v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v10}, Lcom/coderpage/mine/module/backup/ItemBackupFileManagerBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    const-wide/16 v1, -0x1

    .line 215
    iput-wide v1, p0, Lcom/coderpage/mine/module/backup/ItemBackupFileManagerBindingImpl;->mDirtyFlags:J

    const/4 p1, 0x0

    .line 46
    aget-object p1, p3, p1

    check-cast p1, Landroid/support/constraint/ConstraintLayout;

    iput-object p1, p0, Lcom/coderpage/mine/module/backup/ItemBackupFileManagerBindingImpl;->mboundView0:Landroid/support/constraint/ConstraintLayout;

    const/4 v1, 0x0

    .line 47
    invoke-virtual {p1, v1}, Landroid/support/constraint/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x2

    .line 48
    aget-object p3, p3, p1

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/coderpage/mine/module/backup/ItemBackupFileManagerBindingImpl;->mboundView2:Landroid/widget/TextView;

    .line 49
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 50
    iget-object p3, p0, Lcom/coderpage/mine/module/backup/ItemBackupFileManagerBindingImpl;->tvDelete:Landroid/widget/TextView;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 51
    iget-object p3, p0, Lcom/coderpage/mine/module/backup/ItemBackupFileManagerBindingImpl;->tvFileName:Landroid/widget/TextView;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 52
    iget-object p3, p0, Lcom/coderpage/mine/module/backup/ItemBackupFileManagerBindingImpl;->tvShare:Landroid/widget/TextView;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 53
    iget-object p3, p0, Lcom/coderpage/mine/module/backup/ItemBackupFileManagerBindingImpl;->tvSize:Landroid/widget/TextView;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 54
    invoke-virtual {p0, p2}, Lcom/coderpage/mine/module/backup/ItemBackupFileManagerBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 56
    new-instance p2, Lcom/coderpage/mine/generated/callback/OnClickListener;

    invoke-direct {p2, p0, p1}, Lcom/coderpage/mine/generated/callback/OnClickListener;-><init>(Lcom/coderpage/mine/generated/callback/OnClickListener$Listener;I)V

    iput-object p2, p0, Lcom/coderpage/mine/module/backup/ItemBackupFileManagerBindingImpl;->mCallback34:Landroid/view/View$OnClickListener;

    .line 57
    new-instance p1, Lcom/coderpage/mine/generated/callback/OnClickListener;

    invoke-direct {p1, p0, v0}, Lcom/coderpage/mine/generated/callback/OnClickListener;-><init>(Lcom/coderpage/mine/generated/callback/OnClickListener$Listener;I)V

    iput-object p1, p0, Lcom/coderpage/mine/module/backup/ItemBackupFileManagerBindingImpl;->mCallback33:Landroid/view/View$OnClickListener;

    .line 58
    invoke-virtual {p0}, Lcom/coderpage/mine/module/backup/ItemBackupFileManagerBindingImpl;->invalidateAll()V

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

    .line 177
    :cond_0
    iget-object p1, p0, Lcom/coderpage/mine/module/backup/ItemBackupFileManagerBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerViewModel;

    .line 179
    iget-object v1, p0, Lcom/coderpage/mine/module/backup/ItemBackupFileManagerBindingImpl;->mItem:Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    :cond_1
    if-eqz p2, :cond_4

    .line 188
    invoke-virtual {p1, v1}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerViewModel;->onItemDeleteClick(Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;)V

    goto :goto_0

    .line 197
    :cond_2
    iget-object p1, p0, Lcom/coderpage/mine/module/backup/ItemBackupFileManagerBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerViewModel;

    .line 199
    iget-object v1, p0, Lcom/coderpage/mine/module/backup/ItemBackupFileManagerBindingImpl;->mItem:Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    :cond_3
    if-eqz p2, :cond_4

    .line 208
    invoke-virtual {p1, v1}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerViewModel;->onItemShareClick(Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;)V

    :cond_4
    :goto_0
    return-void
.end method

.method protected executeBindings()V
    .locals 14

    .line 121
    monitor-enter p0

    .line 122
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/module/backup/ItemBackupFileManagerBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 123
    iput-wide v2, p0, Lcom/coderpage/mine/module/backup/ItemBackupFileManagerBindingImpl;->mDirtyFlags:J

    .line 124
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    iget-object v4, p0, Lcom/coderpage/mine/module/backup/ItemBackupFileManagerBindingImpl;->mItem:Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;

    .line 128
    iget-object v5, p0, Lcom/coderpage/mine/module/backup/ItemBackupFileManagerBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerViewModel;

    const-wide/16 v6, 0x7

    and-long/2addr v6, v0

    const-wide/16 v8, 0x5

    const/4 v10, 0x0

    cmp-long v11, v6, v2

    if-eqz v11, :cond_2

    and-long v11, v0, v8

    cmp-long v13, v11, v2

    if-eqz v13, :cond_0

    if-eqz v4, :cond_0

    .line 138
    invoke-virtual {v4}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;->getName()Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    :cond_0
    move-object v11, v10

    :goto_0
    if-eqz v5, :cond_1

    .line 144
    invoke-virtual {v5, v4}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerViewModel;->formatBackupTime(Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;)Ljava/lang/String;

    move-result-object v10

    .line 146
    invoke-virtual {v5, v4}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerViewModel;->formatBackupFileSize(Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v10

    goto :goto_1

    :cond_2
    move-object v4, v10

    move-object v11, v4

    :goto_1
    cmp-long v5, v6, v2

    if-eqz v5, :cond_3

    .line 153
    iget-object v5, p0, Lcom/coderpage/mine/module/backup/ItemBackupFileManagerBindingImpl;->mboundView2:Landroid/widget/TextView;

    invoke-static {v5, v10}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 154
    iget-object v5, p0, Lcom/coderpage/mine/module/backup/ItemBackupFileManagerBindingImpl;->tvSize:Landroid/widget/TextView;

    invoke-static {v5, v4}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_3
    const-wide/16 v4, 0x4

    and-long/2addr v4, v0

    cmp-long v6, v4, v2

    if-eqz v6, :cond_4

    .line 159
    iget-object v4, p0, Lcom/coderpage/mine/module/backup/ItemBackupFileManagerBindingImpl;->tvDelete:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/coderpage/mine/module/backup/ItemBackupFileManagerBindingImpl;->mCallback34:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v4, p0, Lcom/coderpage/mine/module/backup/ItemBackupFileManagerBindingImpl;->tvShare:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/coderpage/mine/module/backup/ItemBackupFileManagerBindingImpl;->mCallback33:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    and-long/2addr v0, v8

    cmp-long v4, v0, v2

    if-eqz v4, :cond_5

    .line 165
    iget-object v0, p0, Lcom/coderpage/mine/module/backup/ItemBackupFileManagerBindingImpl;->tvFileName:Landroid/widget/TextView;

    invoke-static {v0, v11}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_5
    return-void

    :catchall_0
    move-exception v0

    .line 124
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 71
    monitor-enter p0

    .line 72
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/module/backup/ItemBackupFileManagerBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 73
    monitor-exit p0

    return v0

    .line 75
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

    .line 63
    monitor-enter p0

    const-wide/16 v0, 0x4

    .line 64
    :try_start_0
    iput-wide v0, p0, Lcom/coderpage/mine/module/backup/ItemBackupFileManagerBindingImpl;->mDirtyFlags:J

    .line 65
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    invoke-virtual {p0}, Lcom/coderpage/mine/module/backup/ItemBackupFileManagerBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 65
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

.method public setItem(Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "Item"
        }
    .end annotation

    .line 95
    iput-object p1, p0, Lcom/coderpage/mine/module/backup/ItemBackupFileManagerBindingImpl;->mItem:Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;

    .line 96
    monitor-enter p0

    .line 97
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/module/backup/ItemBackupFileManagerBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coderpage/mine/module/backup/ItemBackupFileManagerBindingImpl;->mDirtyFlags:J

    .line 98
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x7

    .line 99
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/module/backup/ItemBackupFileManagerBindingImpl;->notifyPropertyChanged(I)V

    .line 100
    invoke-super {p0}, Lcom/coderpage/mine/module/backup/ItemBackupFileManagerBinding;->requestRebind()V

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

    const/4 v0, 0x7

    if-ne v0, p1, :cond_0

    .line 83
    check-cast p2, Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;

    invoke-virtual {p0, p2}, Lcom/coderpage/mine/module/backup/ItemBackupFileManagerBindingImpl;->setItem(Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0xd

    if-ne v0, p1, :cond_1

    .line 86
    check-cast p2, Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerViewModel;

    invoke-virtual {p0, p2}, Lcom/coderpage/mine/module/backup/ItemBackupFileManagerBindingImpl;->setVm(Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerViewModel;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public setVm(Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerViewModel;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "Vm"
        }
    .end annotation

    .line 103
    iput-object p1, p0, Lcom/coderpage/mine/module/backup/ItemBackupFileManagerBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerViewModel;

    .line 104
    monitor-enter p0

    .line 105
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/module/backup/ItemBackupFileManagerBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coderpage/mine/module/backup/ItemBackupFileManagerBindingImpl;->mDirtyFlags:J

    .line 106
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0xd

    .line 107
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/module/backup/ItemBackupFileManagerBindingImpl;->notifyPropertyChanged(I)V

    .line 108
    invoke-super {p0}, Lcom/coderpage/mine/module/backup/ItemBackupFileManagerBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 106
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
