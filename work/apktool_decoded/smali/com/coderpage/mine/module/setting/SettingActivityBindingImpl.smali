.class public Lcom/coderpage/mine/module/setting/SettingActivityBindingImpl;
.super Lcom/coderpage/mine/module/setting/SettingActivityBinding;
.source "SettingActivityBindingImpl.java"

# interfaces
.implements Lcom/coderpage/mine/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private final mCallback35:Landroid/view/View$OnClickListener;

.field private final mCallback36:Landroid/view/View$OnClickListener;

.field private final mCallback37:Landroid/view/View$OnClickListener;

.field private mDirtyFlags:J

.field private final mboundView0:Landroid/support/constraint/ConstraintLayout;

.field private switchFingerprintSecretandroidCheckedAttrChanged:Landroidx/databinding/InverseBindingListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/coderpage/mine/module/setting/SettingActivityBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090115

    const/4 v2, 0x5

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f09013f

    const/4 v2, 0x6

    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f090140

    const/4 v2, 0x7

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f09013d

    const/16 v2, 0x8

    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f09013e

    const/16 v2, 0x9

    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f090142

    const/16 v2, 0xa

    .line 22
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

    .line 76
    sget-object v0, Lcom/coderpage/mine/module/setting/SettingActivityBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/coderpage/mine/module/setting/SettingActivityBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0xb

    invoke-static {p1, p2, v2, v0, v1}, Lcom/coderpage/mine/module/setting/SettingActivityBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/coderpage/mine/module/setting/SettingActivityBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 18
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

    move-object/from16 v14, p0

    const/4 v15, 0x1

    .line 79
    aget-object v0, p3, v15

    move-object v4, v0

    check-cast v4, Landroid/support/constraint/ConstraintLayout;

    const/4 v13, 0x2

    aget-object v0, p3, v13

    move-object v5, v0

    check-cast v5, Landroid/support/constraint/ConstraintLayout;

    const/4 v12, 0x3

    aget-object v0, p3, v12

    move-object v6, v0

    check-cast v6, Landroid/support/constraint/ConstraintLayout;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroid/support/v7/widget/SwitchCompat;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroid/view/View;

    const/16 v0, 0x8

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Landroid/widget/TextView;

    const/16 v0, 0x9

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Landroid/widget/TextView;

    const/4 v0, 0x6

    aget-object v0, p3, v0

    move-object v11, v0

    check-cast v11, Landroid/widget/TextView;

    const/4 v0, 0x7

    aget-object v0, p3, v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/widget/TextView;

    const/16 v0, 0xa

    aget-object v0, p3, v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/widget/TextView;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v15, 0x3

    move-object/from16 v12, v16

    move-object/from16 v13, v17

    invoke-direct/range {v0 .. v13}, Lcom/coderpage/mine/module/setting/SettingActivityBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/support/constraint/ConstraintLayout;Landroid/support/constraint/ConstraintLayout;Landroid/support/constraint/ConstraintLayout;Landroid/support/v7/widget/SwitchCompat;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 37
    new-instance v0, Lcom/coderpage/mine/module/setting/SettingActivityBindingImpl$1;

    invoke-direct {v0, v14}, Lcom/coderpage/mine/module/setting/SettingActivityBindingImpl$1;-><init>(Lcom/coderpage/mine/module/setting/SettingActivityBindingImpl;)V

    iput-object v0, v14, Lcom/coderpage/mine/module/setting/SettingActivityBindingImpl;->switchFingerprintSecretandroidCheckedAttrChanged:Landroidx/databinding/InverseBindingListener;

    const-wide/16 v0, -0x1

    .line 330
    iput-wide v0, v14, Lcom/coderpage/mine/module/setting/SettingActivityBindingImpl;->mDirtyFlags:J

    .line 91
    iget-object v0, v14, Lcom/coderpage/mine/module/setting/SettingActivityBindingImpl;->lyDataExport:Landroid/support/constraint/ConstraintLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    .line 92
    iget-object v0, v14, Lcom/coderpage/mine/module/setting/SettingActivityBindingImpl;->lyDataImport:Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    .line 93
    iget-object v0, v14, Lcom/coderpage/mine/module/setting/SettingActivityBindingImpl;->lyFingerprintSecret:Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 94
    aget-object v0, p3, v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout;

    iput-object v0, v14, Lcom/coderpage/mine/module/setting/SettingActivityBindingImpl;->mboundView0:Landroid/support/constraint/ConstraintLayout;

    .line 95
    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    .line 96
    iget-object v0, v14, Lcom/coderpage/mine/module/setting/SettingActivityBindingImpl;->switchFingerprintSecret:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    .line 97
    invoke-virtual {v14, v0}, Lcom/coderpage/mine/module/setting/SettingActivityBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 99
    new-instance v0, Lcom/coderpage/mine/generated/callback/OnClickListener;

    invoke-direct {v0, v14, v15}, Lcom/coderpage/mine/generated/callback/OnClickListener;-><init>(Lcom/coderpage/mine/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v14, Lcom/coderpage/mine/module/setting/SettingActivityBindingImpl;->mCallback37:Landroid/view/View$OnClickListener;

    .line 100
    new-instance v0, Lcom/coderpage/mine/generated/callback/OnClickListener;

    const/4 v1, 0x1

    invoke-direct {v0, v14, v1}, Lcom/coderpage/mine/generated/callback/OnClickListener;-><init>(Lcom/coderpage/mine/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v14, Lcom/coderpage/mine/module/setting/SettingActivityBindingImpl;->mCallback35:Landroid/view/View$OnClickListener;

    .line 101
    new-instance v0, Lcom/coderpage/mine/generated/callback/OnClickListener;

    const/4 v1, 0x2

    invoke-direct {v0, v14, v1}, Lcom/coderpage/mine/generated/callback/OnClickListener;-><init>(Lcom/coderpage/mine/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v14, Lcom/coderpage/mine/module/setting/SettingActivityBindingImpl;->mCallback36:Landroid/view/View$OnClickListener;

    .line 102
    invoke-virtual/range {p0 .. p0}, Lcom/coderpage/mine/module/setting/SettingActivityBindingImpl;->invalidateAll()V

    return-void
.end method

.method private onChangeVmFingerprintSecretOpen(Landroidx/databinding/ObservableBoolean;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "VmFingerprintSecretOpen",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 176
    monitor-enter p0

    .line 177
    :try_start_0
    iget-wide p1, p0, Lcom/coderpage/mine/module/setting/SettingActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/coderpage/mine/module/setting/SettingActivityBindingImpl;->mDirtyFlags:J

    .line 178
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

.method private onChangeVmFingerprintSecretOpenShow(Landroidx/databinding/ObservableBoolean;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "VmFingerprintSecretOpenShow",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 167
    monitor-enter p0

    .line 168
    :try_start_0
    iget-wide p1, p0, Lcom/coderpage/mine/module/setting/SettingActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/coderpage/mine/module/setting/SettingActivityBindingImpl;->mDirtyFlags:J

    .line 169
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

    if-eq p1, v0, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 272
    :cond_0
    iget-object p1, p0, Lcom/coderpage/mine/module/setting/SettingActivityBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel;

    .line 274
    iget-object v1, p0, Lcom/coderpage/mine/module/setting/SettingActivityBindingImpl;->mActivity:Landroid/app/Activity;

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    :cond_1
    if-eqz p2, :cond_6

    .line 283
    invoke-virtual {p1, v1}, Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel;->onFingerprintSecretClick(Landroid/app/Activity;)V

    goto :goto_0

    .line 312
    :cond_2
    iget-object p1, p0, Lcom/coderpage/mine/module/setting/SettingActivityBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel;

    .line 314
    iget-object v1, p0, Lcom/coderpage/mine/module/setting/SettingActivityBindingImpl;->mActivity:Landroid/app/Activity;

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    :cond_3
    if-eqz p2, :cond_6

    .line 323
    invoke-virtual {p1, v1}, Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel;->onExportDataExcelClick(Landroid/app/Activity;)V

    goto :goto_0

    .line 292
    :cond_4
    iget-object p1, p0, Lcom/coderpage/mine/module/setting/SettingActivityBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel;

    .line 294
    iget-object v1, p0, Lcom/coderpage/mine/module/setting/SettingActivityBindingImpl;->mActivity:Landroid/app/Activity;

    if-eqz p1, :cond_5

    const/4 p2, 0x1

    :cond_5
    if-eqz p2, :cond_6

    .line 303
    invoke-virtual {p1, v1}, Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel;->onBackupDataClick(Landroid/app/Activity;)V

    :cond_6
    :goto_0
    return-void
.end method

.method protected executeBindings()V
    .locals 15

    .line 187
    monitor-enter p0

    .line 188
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/module/setting/SettingActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 189
    iput-wide v2, p0, Lcom/coderpage/mine/module/setting/SettingActivityBindingImpl;->mDirtyFlags:J

    .line 190
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    iget-object v4, p0, Lcom/coderpage/mine/module/setting/SettingActivityBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel;

    .line 196
    iget-object v5, p0, Lcom/coderpage/mine/module/setting/SettingActivityBindingImpl;->mActivity:Landroid/app/Activity;

    const-wide/16 v5, 0x17

    and-long/2addr v5, v0

    const-wide/16 v7, 0x16

    const-wide/16 v9, 0x15

    const/4 v11, 0x0

    const/4 v12, 0x0

    cmp-long v13, v5, v2

    if-eqz v13, :cond_8

    and-long v5, v0, v9

    cmp-long v13, v5, v2

    if-eqz v13, :cond_5

    if-eqz v4, :cond_0

    .line 206
    invoke-virtual {v4}, Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel;->getFingerprintSecretOpenShow()Landroidx/databinding/ObservableBoolean;

    move-result-object v13

    goto :goto_0

    :cond_0
    move-object v13, v11

    .line 208
    :goto_0
    invoke-virtual {p0, v12, v13}, Lcom/coderpage/mine/module/setting/SettingActivityBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v13, :cond_1

    .line 213
    invoke-virtual {v13}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v13

    goto :goto_1

    :cond_1
    const/4 v13, 0x0

    :goto_1
    cmp-long v14, v5, v2

    if-eqz v14, :cond_3

    if-eqz v13, :cond_2

    const-wide/16 v5, 0x40

    goto :goto_2

    :cond_2
    const-wide/16 v5, 0x20

    :goto_2
    or-long/2addr v0, v5

    :cond_3
    if-eqz v13, :cond_4

    goto :goto_3

    :cond_4
    const/16 v5, 0x8

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v5, 0x0

    :goto_4
    and-long v13, v0, v7

    cmp-long v6, v13, v2

    if-eqz v6, :cond_7

    if-eqz v4, :cond_6

    .line 232
    invoke-virtual {v4}, Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel;->getFingerprintSecretOpen()Landroidx/databinding/ObservableBoolean;

    move-result-object v4

    goto :goto_5

    :cond_6
    move-object v4, v11

    :goto_5
    const/4 v6, 0x1

    .line 234
    invoke-virtual {p0, v6, v4}, Lcom/coderpage/mine/module/setting/SettingActivityBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v4, :cond_7

    .line 239
    invoke-virtual {v4}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v12

    move v4, v12

    move v12, v5

    goto :goto_6

    :cond_7
    move v12, v5

    :cond_8
    const/4 v4, 0x0

    :goto_6
    const-wide/16 v5, 0x10

    and-long/2addr v5, v0

    cmp-long v13, v5, v2

    if-eqz v13, :cond_9

    .line 247
    iget-object v5, p0, Lcom/coderpage/mine/module/setting/SettingActivityBindingImpl;->lyDataExport:Landroid/support/constraint/ConstraintLayout;

    iget-object v6, p0, Lcom/coderpage/mine/module/setting/SettingActivityBindingImpl;->mCallback35:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/support/constraint/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    iget-object v5, p0, Lcom/coderpage/mine/module/setting/SettingActivityBindingImpl;->lyDataImport:Landroid/support/constraint/ConstraintLayout;

    iget-object v6, p0, Lcom/coderpage/mine/module/setting/SettingActivityBindingImpl;->mCallback36:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/support/constraint/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    iget-object v5, p0, Lcom/coderpage/mine/module/setting/SettingActivityBindingImpl;->switchFingerprintSecret:Landroid/support/v7/widget/SwitchCompat;

    iget-object v6, p0, Lcom/coderpage/mine/module/setting/SettingActivityBindingImpl;->mCallback37:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/SwitchCompat;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    iget-object v5, p0, Lcom/coderpage/mine/module/setting/SettingActivityBindingImpl;->switchFingerprintSecret:Landroid/support/v7/widget/SwitchCompat;

    check-cast v11, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    iget-object v6, p0, Lcom/coderpage/mine/module/setting/SettingActivityBindingImpl;->switchFingerprintSecretandroidCheckedAttrChanged:Landroidx/databinding/InverseBindingListener;

    invoke-static {v5, v11, v6}, Landroidx/databinding/adapters/CompoundButtonBindingAdapter;->setListeners(Landroid/widget/CompoundButton;Landroid/widget/CompoundButton$OnCheckedChangeListener;Landroidx/databinding/InverseBindingListener;)V

    :cond_9
    and-long v5, v0, v9

    cmp-long v9, v5, v2

    if-eqz v9, :cond_a

    .line 255
    iget-object v5, p0, Lcom/coderpage/mine/module/setting/SettingActivityBindingImpl;->lyFingerprintSecret:Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v5, v12}, Landroid/support/constraint/ConstraintLayout;->setVisibility(I)V

    :cond_a
    and-long/2addr v0, v7

    cmp-long v5, v0, v2

    if-eqz v5, :cond_b

    .line 260
    iget-object v0, p0, Lcom/coderpage/mine/module/setting/SettingActivityBindingImpl;->switchFingerprintSecret:Landroid/support/v7/widget/SwitchCompat;

    invoke-static {v0, v4}, Landroidx/databinding/adapters/CompoundButtonBindingAdapter;->setChecked(Landroid/widget/CompoundButton;Z)V

    :cond_b
    return-void

    :catchall_0
    move-exception v0

    .line 190
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 115
    monitor-enter p0

    .line 116
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/module/setting/SettingActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 117
    monitor-exit p0

    return v0

    .line 119
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

    .line 107
    monitor-enter p0

    const-wide/16 v0, 0x10

    .line 108
    :try_start_0
    iput-wide v0, p0, Lcom/coderpage/mine/module/setting/SettingActivityBindingImpl;->mDirtyFlags:J

    .line 109
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    invoke-virtual {p0}, Lcom/coderpage/mine/module/setting/SettingActivityBindingImpl;->requestRebind()V

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

.method protected onFieldChange(ILjava/lang/Object;I)Z
    .locals 1
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

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 161
    :cond_0
    check-cast p2, Landroidx/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lcom/coderpage/mine/module/setting/SettingActivityBindingImpl;->onChangeVmFingerprintSecretOpen(Landroidx/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1

    .line 159
    :cond_1
    check-cast p2, Landroidx/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lcom/coderpage/mine/module/setting/SettingActivityBindingImpl;->onChangeVmFingerprintSecretOpenShow(Landroidx/databinding/ObservableBoolean;I)Z

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

    .line 147
    iput-object p1, p0, Lcom/coderpage/mine/module/setting/SettingActivityBindingImpl;->mActivity:Landroid/app/Activity;

    .line 148
    monitor-enter p0

    .line 149
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/module/setting/SettingActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coderpage/mine/module/setting/SettingActivityBindingImpl;->mDirtyFlags:J

    .line 150
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 151
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/module/setting/SettingActivityBindingImpl;->notifyPropertyChanged(I)V

    .line 152
    invoke-super {p0}, Lcom/coderpage/mine/module/setting/SettingActivityBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 150
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

    .line 127
    check-cast p2, Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel;

    invoke-virtual {p0, p2}, Lcom/coderpage/mine/module/setting/SettingActivityBindingImpl;->setVm(Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel;)V

    goto :goto_0

    :cond_0
    if-ne v0, p1, :cond_1

    .line 130
    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p0, p2}, Lcom/coderpage/mine/module/setting/SettingActivityBindingImpl;->setActivity(Landroid/app/Activity;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setVm(Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "Vm"
        }
    .end annotation

    .line 139
    iput-object p1, p0, Lcom/coderpage/mine/module/setting/SettingActivityBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel;

    .line 140
    monitor-enter p0

    .line 141
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/module/setting/SettingActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coderpage/mine/module/setting/SettingActivityBindingImpl;->mDirtyFlags:J

    .line 142
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0xd

    .line 143
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/module/setting/SettingActivityBindingImpl;->notifyPropertyChanged(I)V

    .line 144
    invoke-super {p0}, Lcom/coderpage/mine/module/setting/SettingActivityBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 142
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
