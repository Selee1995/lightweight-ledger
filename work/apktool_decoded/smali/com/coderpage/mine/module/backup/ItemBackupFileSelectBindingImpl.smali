.class public Lcom/coderpage/mine/module/backup/ItemBackupFileSelectBindingImpl;
.super Lcom/coderpage/mine/module/backup/ItemBackupFileSelectBinding;
.source "ItemBackupFileSelectBindingImpl.java"

# interfaces
.implements Lcom/coderpage/mine/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private final mCallback25:Landroid/view/View$OnClickListener;

.field private mDirtyFlags:J

.field private final mboundView0:Landroid/support/constraint/ConstraintLayout;

.field private final mboundView2:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/coderpage/mine/module/backup/ItemBackupFileSelectBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090173

    const/4 v2, 0x4

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f09016c

    const/4 v2, 0x5

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
    sget-object v0, Lcom/coderpage/mine/module/backup/ItemBackupFileSelectBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/coderpage/mine/module/backup/ItemBackupFileSelectBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x6

    invoke-static {p1, p2, v2, v0, v1}, Lcom/coderpage/mine/module/backup/ItemBackupFileSelectBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/coderpage/mine/module/backup/ItemBackupFileSelectBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 10
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

    check-cast v6, Landroid/widget/TextView;

    const/4 v1, 0x3

    aget-object v1, p3, v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    const/4 v1, 0x5

    aget-object v1, p3, v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    const/4 v1, 0x4

    aget-object v1, p3, v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v9}, Lcom/coderpage/mine/module/backup/ItemBackupFileSelectBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    const-wide/16 v1, -0x1

    .line 182
    iput-wide v1, p0, Lcom/coderpage/mine/module/backup/ItemBackupFileSelectBindingImpl;->mDirtyFlags:J

    const/4 p1, 0x0

    .line 42
    aget-object p1, p3, p1

    check-cast p1, Landroid/support/constraint/ConstraintLayout;

    iput-object p1, p0, Lcom/coderpage/mine/module/backup/ItemBackupFileSelectBindingImpl;->mboundView0:Landroid/support/constraint/ConstraintLayout;

    const/4 v1, 0x0

    .line 43
    invoke-virtual {p1, v1}, Landroid/support/constraint/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x2

    .line 44
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coderpage/mine/module/backup/ItemBackupFileSelectBindingImpl;->mboundView2:Landroid/widget/TextView;

    .line 45
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 46
    iget-object p1, p0, Lcom/coderpage/mine/module/backup/ItemBackupFileSelectBindingImpl;->tvFileName:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 47
    iget-object p1, p0, Lcom/coderpage/mine/module/backup/ItemBackupFileSelectBindingImpl;->tvSize:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 48
    invoke-virtual {p0, p2}, Lcom/coderpage/mine/module/backup/ItemBackupFileSelectBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 50
    new-instance p1, Lcom/coderpage/mine/generated/callback/OnClickListener;

    invoke-direct {p1, p0, v0}, Lcom/coderpage/mine/generated/callback/OnClickListener;-><init>(Lcom/coderpage/mine/generated/callback/OnClickListener$Listener;I)V

    iput-object p1, p0, Lcom/coderpage/mine/module/backup/ItemBackupFileSelectBindingImpl;->mCallback25:Landroid/view/View$OnClickListener;

    .line 51
    invoke-virtual {p0}, Lcom/coderpage/mine/module/backup/ItemBackupFileSelectBindingImpl;->invalidateAll()V

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

    .line 167
    iget-object p1, p0, Lcom/coderpage/mine/module/backup/ItemBackupFileSelectBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog$ItemViewModel;

    .line 169
    iget-object p2, p0, Lcom/coderpage/mine/module/backup/ItemBackupFileSelectBindingImpl;->mItem:Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 178
    invoke-virtual {p1, p2}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog$ItemViewModel;->onItemClick(Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;)V

    :cond_1
    return-void
.end method

.method protected executeBindings()V
    .locals 14

    .line 114
    monitor-enter p0

    .line 115
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/module/backup/ItemBackupFileSelectBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 116
    iput-wide v2, p0, Lcom/coderpage/mine/module/backup/ItemBackupFileSelectBindingImpl;->mDirtyFlags:J

    .line 117
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    iget-object v4, p0, Lcom/coderpage/mine/module/backup/ItemBackupFileSelectBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog$ItemViewModel;

    .line 120
    iget-object v5, p0, Lcom/coderpage/mine/module/backup/ItemBackupFileSelectBindingImpl;->mItem:Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;

    const-wide/16 v6, 0x7

    and-long/2addr v6, v0

    const-wide/16 v8, 0x6

    const/4 v10, 0x0

    cmp-long v11, v6, v2

    if-eqz v11, :cond_2

    and-long v11, v0, v8

    cmp-long v13, v11, v2

    if-eqz v13, :cond_0

    if-eqz v5, :cond_0

    .line 131
    invoke-virtual {v5}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;->getName()Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    :cond_0
    move-object v11, v10

    :goto_0
    if-eqz v4, :cond_1

    .line 137
    invoke-virtual {v4, v5}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog$ItemViewModel;->formatBackupTime(Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;)Ljava/lang/String;

    move-result-object v10

    .line 139
    invoke-virtual {v4, v5}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog$ItemViewModel;->formatBackupFileSize(Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v10

    goto :goto_1

    :cond_2
    move-object v4, v10

    move-object v11, v4

    :goto_1
    const-wide/16 v12, 0x4

    and-long/2addr v12, v0

    cmp-long v5, v12, v2

    if-eqz v5, :cond_3

    .line 146
    iget-object v5, p0, Lcom/coderpage/mine/module/backup/ItemBackupFileSelectBindingImpl;->mboundView0:Landroid/support/constraint/ConstraintLayout;

    iget-object v12, p0, Lcom/coderpage/mine/module/backup/ItemBackupFileSelectBindingImpl;->mCallback25:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v12}, Landroid/support/constraint/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    cmp-long v5, v6, v2

    if-eqz v5, :cond_4

    .line 151
    iget-object v5, p0, Lcom/coderpage/mine/module/backup/ItemBackupFileSelectBindingImpl;->mboundView2:Landroid/widget/TextView;

    invoke-static {v5, v10}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 152
    iget-object v5, p0, Lcom/coderpage/mine/module/backup/ItemBackupFileSelectBindingImpl;->tvSize:Landroid/widget/TextView;

    invoke-static {v5, v4}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_4
    and-long/2addr v0, v8

    cmp-long v4, v0, v2

    if-eqz v4, :cond_5

    .line 157
    iget-object v0, p0, Lcom/coderpage/mine/module/backup/ItemBackupFileSelectBindingImpl;->tvFileName:Landroid/widget/TextView;

    invoke-static {v0, v11}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_5
    return-void

    :catchall_0
    move-exception v0

    .line 117
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 64
    monitor-enter p0

    .line 65
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/module/backup/ItemBackupFileSelectBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 66
    monitor-exit p0

    return v0

    .line 68
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

    .line 56
    monitor-enter p0

    const-wide/16 v0, 0x4

    .line 57
    :try_start_0
    iput-wide v0, p0, Lcom/coderpage/mine/module/backup/ItemBackupFileSelectBindingImpl;->mDirtyFlags:J

    .line 58
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    invoke-virtual {p0}, Lcom/coderpage/mine/module/backup/ItemBackupFileSelectBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 58
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

    .line 96
    iput-object p1, p0, Lcom/coderpage/mine/module/backup/ItemBackupFileSelectBindingImpl;->mItem:Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;

    .line 97
    monitor-enter p0

    .line 98
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/module/backup/ItemBackupFileSelectBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coderpage/mine/module/backup/ItemBackupFileSelectBindingImpl;->mDirtyFlags:J

    .line 99
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x7

    .line 100
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/module/backup/ItemBackupFileSelectBindingImpl;->notifyPropertyChanged(I)V

    .line 101
    invoke-super {p0}, Lcom/coderpage/mine/module/backup/ItemBackupFileSelectBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 99
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

    const/16 v0, 0xd

    if-ne v0, p1, :cond_0

    .line 76
    check-cast p2, Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog$ItemViewModel;

    invoke-virtual {p0, p2}, Lcom/coderpage/mine/module/backup/ItemBackupFileSelectBindingImpl;->setVm(Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog$ItemViewModel;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x7

    if-ne v0, p1, :cond_1

    .line 79
    check-cast p2, Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;

    invoke-virtual {p0, p2}, Lcom/coderpage/mine/module/backup/ItemBackupFileSelectBindingImpl;->setItem(Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public setVm(Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog$ItemViewModel;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "Vm"
        }
    .end annotation

    .line 88
    iput-object p1, p0, Lcom/coderpage/mine/module/backup/ItemBackupFileSelectBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog$ItemViewModel;

    .line 89
    monitor-enter p0

    .line 90
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/module/backup/ItemBackupFileSelectBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coderpage/mine/module/backup/ItemBackupFileSelectBindingImpl;->mDirtyFlags:J

    .line 91
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0xd

    .line 92
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/module/backup/ItemBackupFileSelectBindingImpl;->notifyPropertyChanged(I)V

    .line 93
    invoke-super {p0}, Lcom/coderpage/mine/module/backup/ItemBackupFileSelectBinding;->requestRebind()V

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
