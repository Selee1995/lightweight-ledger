.class public Lcom/coderpage/mine/module/backup/BackupFileActivityBindingImpl;
.super Lcom/coderpage/mine/module/backup/BackupFileActivityBinding;
.source "BackupFileActivityBindingImpl.java"

# interfaces
.implements Lcom/coderpage/mine/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private final mCallback45:Landroid/view/View$OnClickListener;

.field private final mCallback46:Landroid/view/View$OnClickListener;

.field private final mCallback47:Landroid/view/View$OnClickListener;

.field private mDirtyFlags:J

.field private final mboundView0:Landroid/support/constraint/ConstraintLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/coderpage/mine/module/backup/BackupFileActivityBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090115

    const/4 v2, 0x4

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f09013f

    const/4 v2, 0x5

    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f090140

    const/4 v2, 0x6

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f090147

    const/4 v2, 0x7

    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f090148

    const/16 v2, 0x8

    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f090090

    const/16 v2, 0x9

    .line 22
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f090122

    const/16 v2, 0xa

    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f090123

    const/16 v2, 0xb

    .line 24
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

    .line 41
    sget-object v0, Lcom/coderpage/mine/module/backup/BackupFileActivityBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/coderpage/mine/module/backup/BackupFileActivityBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0xc

    invoke-static {p1, p2, v2, v0, v1}, Lcom/coderpage/mine/module/backup/BackupFileActivityBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/coderpage/mine/module/backup/BackupFileActivityBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 19
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

    move-object/from16 v15, p0

    const/16 v0, 0x9

    .line 44
    aget-object v0, p3, v0

    move-object v4, v0

    check-cast v4, Landroid/support/constraint/ConstraintLayout;

    const/4 v14, 0x1

    aget-object v0, p3, v14

    move-object v5, v0

    check-cast v5, Landroid/support/constraint/ConstraintLayout;

    const/4 v13, 0x2

    aget-object v0, p3, v13

    move-object v6, v0

    check-cast v6, Landroid/support/constraint/ConstraintLayout;

    const/4 v12, 0x3

    aget-object v0, p3, v12

    move-object v7, v0

    check-cast v7, Landroid/support/v7/widget/SwitchCompat;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroid/view/View;

    const/16 v0, 0xa

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Landroid/widget/TextView;

    const/16 v0, 0xb

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Landroid/widget/TextView;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object v11, v0

    check-cast v11, Landroid/widget/TextView;

    const/4 v0, 0x6

    aget-object v0, p3, v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/widget/TextView;

    const/4 v0, 0x7

    aget-object v0, p3, v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/widget/TextView;

    const/16 v0, 0x8

    aget-object v0, p3, v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/widget/TextView;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v12, v16

    move-object/from16 v13, v17

    move-object/from16 v14, v18

    invoke-direct/range {v0 .. v14}, Lcom/coderpage/mine/module/backup/BackupFileActivityBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/support/constraint/ConstraintLayout;Landroid/support/constraint/ConstraintLayout;Landroid/support/constraint/ConstraintLayout;Landroid/support/v7/widget/SwitchCompat;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    const-wide/16 v0, -0x1

    .line 248
    iput-wide v0, v15, Lcom/coderpage/mine/module/backup/BackupFileActivityBindingImpl;->mDirtyFlags:J

    .line 57
    iget-object v0, v15, Lcom/coderpage/mine/module/backup/BackupFileActivityBindingImpl;->lyDataExport:Landroid/support/constraint/ConstraintLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    .line 58
    iget-object v0, v15, Lcom/coderpage/mine/module/backup/BackupFileActivityBindingImpl;->lyDataImport:Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 59
    aget-object v0, p3, v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout;

    iput-object v0, v15, Lcom/coderpage/mine/module/backup/BackupFileActivityBindingImpl;->mboundView0:Landroid/support/constraint/ConstraintLayout;

    .line 60
    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    .line 61
    iget-object v0, v15, Lcom/coderpage/mine/module/backup/BackupFileActivityBindingImpl;->switchAutoBackup:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    .line 62
    invoke-virtual {v15, v0}, Lcom/coderpage/mine/module/backup/BackupFileActivityBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 64
    new-instance v0, Lcom/coderpage/mine/generated/callback/OnClickListener;

    const/4 v1, 0x3

    invoke-direct {v0, v15, v1}, Lcom/coderpage/mine/generated/callback/OnClickListener;-><init>(Lcom/coderpage/mine/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v15, Lcom/coderpage/mine/module/backup/BackupFileActivityBindingImpl;->mCallback47:Landroid/view/View$OnClickListener;

    .line 65
    new-instance v0, Lcom/coderpage/mine/generated/callback/OnClickListener;

    const/4 v1, 0x1

    invoke-direct {v0, v15, v1}, Lcom/coderpage/mine/generated/callback/OnClickListener;-><init>(Lcom/coderpage/mine/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v15, Lcom/coderpage/mine/module/backup/BackupFileActivityBindingImpl;->mCallback45:Landroid/view/View$OnClickListener;

    .line 66
    new-instance v0, Lcom/coderpage/mine/generated/callback/OnClickListener;

    const/4 v1, 0x2

    invoke-direct {v0, v15, v1}, Lcom/coderpage/mine/generated/callback/OnClickListener;-><init>(Lcom/coderpage/mine/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v15, Lcom/coderpage/mine/module/backup/BackupFileActivityBindingImpl;->mCallback46:Landroid/view/View$OnClickListener;

    .line 67
    invoke-virtual/range {p0 .. p0}, Lcom/coderpage/mine/module/backup/BackupFileActivityBindingImpl;->invalidateAll()V

    return-void
.end method

.method private onChangeVmIsAutoBackup(Landroidx/databinding/ObservableBoolean;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "VmIsAutoBackup",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 130
    monitor-enter p0

    .line 131
    :try_start_0
    iget-wide p1, p0, Lcom/coderpage/mine/module/backup/BackupFileActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/coderpage/mine/module/backup/BackupFileActivityBindingImpl;->mDirtyFlags:J

    .line 132
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final _internalCallbackOnClick(ILandroid/view/View;)V
    .locals 3
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

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 189
    :cond_0
    iget-object p1, p0, Lcom/coderpage/mine/module/backup/BackupFileActivityBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;

    .line 191
    iget-object v2, p0, Lcom/coderpage/mine/module/backup/BackupFileActivityBindingImpl;->mActivity:Landroid/app/Activity;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_6

    .line 201
    invoke-virtual {p1, p2, v2}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;->onAutoBackupClick(Landroid/view/View;Landroid/app/Activity;)V

    goto :goto_0

    .line 230
    :cond_2
    iget-object p1, p0, Lcom/coderpage/mine/module/backup/BackupFileActivityBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;

    .line 232
    iget-object p2, p0, Lcom/coderpage/mine/module/backup/BackupFileActivityBindingImpl;->mActivity:Landroid/app/Activity;

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    if-eqz v0, :cond_6

    .line 241
    invoke-virtual {p1, p2}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;->onImportDataClick(Landroid/app/Activity;)V

    goto :goto_0

    .line 210
    :cond_4
    iget-object p1, p0, Lcom/coderpage/mine/module/backup/BackupFileActivityBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;

    .line 212
    iget-object p2, p0, Lcom/coderpage/mine/module/backup/BackupFileActivityBindingImpl;->mActivity:Landroid/app/Activity;

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    :cond_5
    if-eqz v0, :cond_6

    .line 221
    invoke-virtual {p1, p2}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;->onExportDataClick(Landroid/app/Activity;)V

    :cond_6
    :goto_0
    return-void
.end method

.method protected executeBindings()V
    .locals 10

    .line 141
    monitor-enter p0

    .line 142
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/module/backup/BackupFileActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 143
    iput-wide v2, p0, Lcom/coderpage/mine/module/backup/BackupFileActivityBindingImpl;->mDirtyFlags:J

    .line 144
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    .line 147
    iget-object v5, p0, Lcom/coderpage/mine/module/backup/BackupFileActivityBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;

    .line 148
    iget-object v6, p0, Lcom/coderpage/mine/module/backup/BackupFileActivityBindingImpl;->mActivity:Landroid/app/Activity;

    const-wide/16 v6, 0xb

    and-long/2addr v6, v0

    const/4 v8, 0x0

    cmp-long v9, v6, v2

    if-eqz v9, :cond_1

    if-eqz v5, :cond_0

    .line 156
    invoke-virtual {v5}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;->getIsAutoBackup()Landroidx/databinding/ObservableBoolean;

    move-result-object v4

    .line 158
    :cond_0
    invoke-virtual {p0, v8, v4}, Lcom/coderpage/mine/module/backup/BackupFileActivityBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v4, :cond_1

    .line 163
    invoke-virtual {v4}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v8

    :cond_1
    const-wide/16 v4, 0x8

    and-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    .line 170
    iget-object v0, p0, Lcom/coderpage/mine/module/backup/BackupFileActivityBindingImpl;->lyDataExport:Landroid/support/constraint/ConstraintLayout;

    iget-object v1, p0, Lcom/coderpage/mine/module/backup/BackupFileActivityBindingImpl;->mCallback45:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v0, p0, Lcom/coderpage/mine/module/backup/BackupFileActivityBindingImpl;->lyDataImport:Landroid/support/constraint/ConstraintLayout;

    iget-object v1, p0, Lcom/coderpage/mine/module/backup/BackupFileActivityBindingImpl;->mCallback46:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object v0, p0, Lcom/coderpage/mine/module/backup/BackupFileActivityBindingImpl;->switchAutoBackup:Landroid/support/v7/widget/SwitchCompat;

    iget-object v1, p0, Lcom/coderpage/mine/module/backup/BackupFileActivityBindingImpl;->mCallback47:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    cmp-long v0, v6, v2

    if-eqz v0, :cond_3

    .line 177
    iget-object v0, p0, Lcom/coderpage/mine/module/backup/BackupFileActivityBindingImpl;->switchAutoBackup:Landroid/support/v7/widget/SwitchCompat;

    invoke-static {v0, v8}, Landroidx/databinding/adapters/CompoundButtonBindingAdapter;->setChecked(Landroid/widget/CompoundButton;Z)V

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    .line 144
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 80
    monitor-enter p0

    .line 81
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/module/backup/BackupFileActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 82
    monitor-exit p0

    return v0

    .line 84
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

    .line 72
    monitor-enter p0

    const-wide/16 v0, 0x8

    .line 73
    :try_start_0
    iput-wide v0, p0, Lcom/coderpage/mine/module/backup/BackupFileActivityBindingImpl;->mDirtyFlags:J

    .line 74
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    invoke-virtual {p0}, Lcom/coderpage/mine/module/backup/BackupFileActivityBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 74
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

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 124
    :cond_0
    check-cast p2, Landroidx/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lcom/coderpage/mine/module/backup/BackupFileActivityBindingImpl;->onChangeVmIsAutoBackup(Landroidx/databinding/ObservableBoolean;I)Z

    move-result p1

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

    .line 112
    iput-object p1, p0, Lcom/coderpage/mine/module/backup/BackupFileActivityBindingImpl;->mActivity:Landroid/app/Activity;

    .line 113
    monitor-enter p0

    .line 114
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/module/backup/BackupFileActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coderpage/mine/module/backup/BackupFileActivityBindingImpl;->mDirtyFlags:J

    .line 115
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 116
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/module/backup/BackupFileActivityBindingImpl;->notifyPropertyChanged(I)V

    .line 117
    invoke-super {p0}, Lcom/coderpage/mine/module/backup/BackupFileActivityBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 115
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

    .line 92
    check-cast p2, Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;

    invoke-virtual {p0, p2}, Lcom/coderpage/mine/module/backup/BackupFileActivityBindingImpl;->setVm(Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;)V

    goto :goto_0

    :cond_0
    if-ne v0, p1, :cond_1

    .line 95
    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p0, p2}, Lcom/coderpage/mine/module/backup/BackupFileActivityBindingImpl;->setActivity(Landroid/app/Activity;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setVm(Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "Vm"
        }
    .end annotation

    .line 104
    iput-object p1, p0, Lcom/coderpage/mine/module/backup/BackupFileActivityBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/backup/BackupFileViewModel;

    .line 105
    monitor-enter p0

    .line 106
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/module/backup/BackupFileActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coderpage/mine/module/backup/BackupFileActivityBindingImpl;->mDirtyFlags:J

    .line 107
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0xd

    .line 108
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/module/backup/BackupFileActivityBindingImpl;->notifyPropertyChanged(I)V

    .line 109
    invoke-super {p0}, Lcom/coderpage/mine/module/backup/BackupFileActivityBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 107
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
