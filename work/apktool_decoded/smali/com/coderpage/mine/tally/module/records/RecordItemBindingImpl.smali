.class public Lcom/coderpage/mine/tally/module/records/RecordItemBindingImpl;
.super Lcom/coderpage/mine/tally/module/records/RecordItemBinding;
.source "RecordItemBindingImpl.java"

# interfaces
.implements Lcom/coderpage/mine/generated/callback/OnClickListener$Listener;
.implements Lcom/coderpage/mine/generated/callback/OnLongClickListener$Listener;


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private final mCallback21:Landroid/view/View$OnClickListener;

.field private final mCallback22:Landroid/view/View$OnLongClickListener;

.field private final mCallback23:Landroid/view/View$OnClickListener;

.field private mDirtyFlags:J

.field private final mboundView7:Landroid/support/constraint/ConstraintLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/coderpage/mine/tally/module/records/RecordItemBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09007b

    const/16 v2, 0x8

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f09014a

    const/16 v2, 0x9

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
    sget-object v0, Lcom/coderpage/mine/tally/module/records/RecordItemBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/coderpage/mine/tally/module/records/RecordItemBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0xa

    invoke-static {p1, p2, v2, v0, v1}, Lcom/coderpage/mine/tally/module/records/RecordItemBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/coderpage/mine/tally/module/records/RecordItemBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 17
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

    move-object/from16 v13, p0

    const/4 v0, 0x0

    .line 38
    aget-object v0, p3, v0

    move-object v4, v0

    check-cast v4, Landroid/support/v7/widget/CardView;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/TextView;

    const/4 v14, 0x2

    aget-object v0, p3, v14

    move-object v6, v0

    check-cast v6, Landroid/support/v7/widget/AppCompatImageView;

    const/16 v0, 0x8

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroid/support/v7/widget/AppCompatImageView;

    const/4 v15, 0x1

    aget-object v0, p3, v15

    move-object v8, v0

    check-cast v8, Landroid/widget/FrameLayout;

    const/4 v12, 0x3

    aget-object v0, p3, v12

    move-object v9, v0

    check-cast v9, Landroid/widget/TextView;

    const/16 v0, 0x9

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Landroid/widget/TextView;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v11, v0

    check-cast v11, Landroid/widget/TextView;

    const/4 v0, 0x6

    aget-object v0, p3, v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/widget/TextView;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v14, 0x3

    move-object/from16 v12, v16

    invoke-direct/range {v0 .. v12}, Lcom/coderpage/mine/tally/module/records/RecordItemBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/support/v7/widget/CardView;Landroid/widget/TextView;Landroid/support/v7/widget/AppCompatImageView;Landroid/support/v7/widget/AppCompatImageView;Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    const-wide/16 v0, -0x1

    .line 359
    iput-wide v0, v13, Lcom/coderpage/mine/tally/module/records/RecordItemBindingImpl;->mDirtyFlags:J

    .line 49
    iget-object v0, v13, Lcom/coderpage/mine/tally/module/records/RecordItemBindingImpl;->cardView:Landroid/support/v7/widget/CardView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->setTag(Ljava/lang/Object;)V

    .line 50
    iget-object v0, v13, Lcom/coderpage/mine/tally/module/records/RecordItemBindingImpl;->etAmount:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 51
    iget-object v0, v13, Lcom/coderpage/mine/tally/module/records/RecordItemBindingImpl;->ivCategoryIcon:Landroid/support/v7/widget/AppCompatImageView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatImageView;->setTag(Ljava/lang/Object;)V

    .line 52
    iget-object v0, v13, Lcom/coderpage/mine/tally/module/records/RecordItemBindingImpl;->lyCategoryIcon:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x7

    .line 53
    aget-object v0, p3, v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout;

    iput-object v0, v13, Lcom/coderpage/mine/tally/module/records/RecordItemBindingImpl;->mboundView7:Landroid/support/constraint/ConstraintLayout;

    .line 54
    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    .line 55
    iget-object v0, v13, Lcom/coderpage/mine/tally/module/records/RecordItemBindingImpl;->tvCategoryName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 56
    iget-object v0, v13, Lcom/coderpage/mine/tally/module/records/RecordItemBindingImpl;->tvRecordDec:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 57
    iget-object v0, v13, Lcom/coderpage/mine/tally/module/records/RecordItemBindingImpl;->tvTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    .line 58
    invoke-virtual {v13, v0}, Lcom/coderpage/mine/tally/module/records/RecordItemBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 60
    new-instance v0, Lcom/coderpage/mine/generated/callback/OnClickListener;

    invoke-direct {v0, v13, v14}, Lcom/coderpage/mine/generated/callback/OnClickListener;-><init>(Lcom/coderpage/mine/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v13, Lcom/coderpage/mine/tally/module/records/RecordItemBindingImpl;->mCallback23:Landroid/view/View$OnClickListener;

    .line 61
    new-instance v0, Lcom/coderpage/mine/generated/callback/OnClickListener;

    invoke-direct {v0, v13, v15}, Lcom/coderpage/mine/generated/callback/OnClickListener;-><init>(Lcom/coderpage/mine/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v13, Lcom/coderpage/mine/tally/module/records/RecordItemBindingImpl;->mCallback21:Landroid/view/View$OnClickListener;

    .line 62
    new-instance v0, Lcom/coderpage/mine/generated/callback/OnLongClickListener;

    const/4 v1, 0x2

    invoke-direct {v0, v13, v1}, Lcom/coderpage/mine/generated/callback/OnLongClickListener;-><init>(Lcom/coderpage/mine/generated/callback/OnLongClickListener$Listener;I)V

    iput-object v0, v13, Lcom/coderpage/mine/tally/module/records/RecordItemBindingImpl;->mCallback22:Landroid/view/View$OnLongClickListener;

    .line 63
    invoke-virtual/range {p0 .. p0}, Lcom/coderpage/mine/tally/module/records/RecordItemBindingImpl;->invalidateAll()V

    return-void
.end method

.method private onChangeVmNeedFingerprint(Landroidx/databinding/ObservableBoolean;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "VmNeedFingerprint",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 137
    monitor-enter p0

    .line 138
    :try_start_0
    iget-wide p1, p0, Lcom/coderpage/mine/tally/module/records/RecordItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/coderpage/mine/tally/module/records/RecordItemBindingImpl;->mDirtyFlags:J

    .line 139
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
    .locals 4
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

    if-eq p1, v1, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 291
    :cond_0
    iget-object p1, p0, Lcom/coderpage/mine/tally/module/records/RecordItemBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/records/RecordItemViewModel;

    .line 293
    iget-object p2, p0, Lcom/coderpage/mine/tally/module/records/RecordItemBindingImpl;->mActivity:Landroid/app/Activity;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_4

    .line 302
    invoke-virtual {p1, p2}, Lcom/coderpage/mine/app/tally/module/records/RecordItemViewModel;->onLockCoverClick(Landroid/app/Activity;)V

    goto :goto_0

    .line 311
    :cond_2
    iget-object p1, p0, Lcom/coderpage/mine/tally/module/records/RecordItemBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/records/RecordItemViewModel;

    .line 313
    iget-object v2, p0, Lcom/coderpage/mine/tally/module/records/RecordItemBindingImpl;->mActivity:Landroid/app/Activity;

    .line 315
    iget-object v3, p0, Lcom/coderpage/mine/tally/module/records/RecordItemBindingImpl;->mData:Lcom/coderpage/mine/app/tally/persistence/model/Record;

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    if-eqz v0, :cond_4

    .line 326
    invoke-virtual {p1, p2, v2, v3}, Lcom/coderpage/mine/app/tally/module/records/RecordItemViewModel;->onItemClick(Landroid/view/View;Landroid/app/Activity;Lcom/coderpage/mine/app/tally/persistence/model/Record;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final _internalCallbackOnLongClick(ILandroid/view/View;)Z
    .locals 4
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

    .line 339
    iget-object p1, p0, Lcom/coderpage/mine/tally/module/records/RecordItemBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/records/RecordItemViewModel;

    .line 341
    iget-object v0, p0, Lcom/coderpage/mine/tally/module/records/RecordItemBindingImpl;->mActivity:Landroid/app/Activity;

    .line 343
    iget-object v1, p0, Lcom/coderpage/mine/tally/module/records/RecordItemBindingImpl;->mData:Lcom/coderpage/mine/app/tally/persistence/model/Record;

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    .line 354
    invoke-virtual {p1, p2, v0, v1}, Lcom/coderpage/mine/app/tally/module/records/RecordItemViewModel;->onItemLongClick(Landroid/view/View;Landroid/app/Activity;Lcom/coderpage/mine/app/tally/persistence/model/Record;)Z

    move-result v2

    :cond_1
    return v2
.end method

.method protected executeBindings()V
    .locals 30

    move-object/from16 v1, p0

    .line 148
    monitor-enter p0

    .line 149
    :try_start_0
    iget-wide v2, v1, Lcom/coderpage/mine/tally/module/records/RecordItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 150
    iput-wide v4, v1, Lcom/coderpage/mine/tally/module/records/RecordItemBindingImpl;->mDirtyFlags:J

    .line 151
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    iget-object v0, v1, Lcom/coderpage/mine/tally/module/records/RecordItemBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/records/RecordItemViewModel;

    .line 159
    iget-object v6, v1, Lcom/coderpage/mine/tally/module/records/RecordItemBindingImpl;->mData:Lcom/coderpage/mine/app/tally/persistence/model/Record;

    .line 164
    iget-object v7, v1, Lcom/coderpage/mine/tally/module/records/RecordItemBindingImpl;->mActivity:Landroid/app/Activity;

    const-wide/16 v7, 0x17

    and-long/2addr v7, v2

    const/16 v9, 0x8

    const-wide/16 v10, 0x13

    const/4 v13, 0x0

    cmp-long v14, v7, v4

    if-eqz v14, :cond_5

    and-long v7, v2, v10

    cmp-long v14, v7, v4

    if-eqz v14, :cond_5

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/records/RecordItemViewModel;->getNeedFingerprint()Landroidx/databinding/ObservableBoolean;

    move-result-object v14

    goto :goto_0

    :cond_0
    const/4 v14, 0x0

    .line 178
    :goto_0
    invoke-virtual {v1, v13, v14}, Lcom/coderpage/mine/tally/module/records/RecordItemBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v14, :cond_1

    .line 183
    invoke-virtual {v14}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v14

    goto :goto_1

    :cond_1
    const/4 v14, 0x0

    :goto_1
    cmp-long v15, v7, v4

    if-eqz v15, :cond_3

    if-eqz v14, :cond_2

    const-wide/16 v7, 0x40

    goto :goto_2

    :cond_2
    const-wide/16 v7, 0x20

    :goto_2
    or-long/2addr v2, v7

    :cond_3
    if-eqz v14, :cond_4

    goto :goto_3

    :cond_4
    const/16 v7, 0x8

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v7, 0x0

    :goto_4
    const-wide/16 v14, 0x16

    and-long v16, v2, v14

    const/4 v8, 0x1

    const-wide/16 v18, 0x14

    cmp-long v20, v16, v4

    if-eqz v20, :cond_10

    and-long v16, v2, v18

    cmp-long v20, v16, v4

    if-eqz v20, :cond_e

    if-eqz v6, :cond_6

    .line 206
    invoke-virtual {v6}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->getCategoryIcon()Ljava/lang/String;

    move-result-object v20

    .line 208
    invoke-virtual {v6}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->getTime()J

    move-result-wide v21

    .line 210
    invoke-virtual {v6}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->getDesc()Ljava/lang/String;

    move-result-object v23

    .line 212
    invoke-virtual {v6}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->getCategoryName()Ljava/lang/String;

    move-result-object v24

    .line 214
    invoke-virtual {v6}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->getType()I

    move-result v25

    goto :goto_5

    :cond_6
    move-wide/from16 v21, v4

    const/16 v20, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    .line 219
    :goto_5
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v25, :cond_7

    const/16 v25, 0x1

    goto :goto_6

    :cond_7
    const/16 v25, 0x0

    :goto_6
    cmp-long v27, v16, v4

    if-eqz v27, :cond_9

    if-eqz v26, :cond_8

    const-wide/16 v16, 0x100

    goto :goto_7

    :cond_8
    const-wide/16 v16, 0x80

    :goto_7
    or-long v2, v2, v16

    :cond_9
    and-long v16, v2, v18

    cmp-long v27, v16, v4

    if-eqz v27, :cond_b

    if-eqz v25, :cond_a

    const-wide/16 v16, 0x400

    goto :goto_8

    :cond_a
    const-wide/16 v16, 0x200

    :goto_8
    or-long v2, v2, v16

    :cond_b
    if-eqz v26, :cond_c

    goto :goto_9

    :cond_c
    const/4 v9, 0x0

    :goto_9
    if-eqz v25, :cond_d

    .line 243
    iget-object v13, v1, Lcom/coderpage/mine/tally/module/records/RecordItemBindingImpl;->lyCategoryIcon:Landroid/widget/FrameLayout;

    const v12, 0x7f08006b

    invoke-static {v13, v12}, Lcom/coderpage/mine/tally/module/records/RecordItemBindingImpl;->getDrawableFromResource(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    goto :goto_a

    :cond_d
    iget-object v12, v1, Lcom/coderpage/mine/tally/module/records/RecordItemBindingImpl;->lyCategoryIcon:Landroid/widget/FrameLayout;

    const v13, 0x7f08006e

    invoke-static {v12, v13}, Lcom/coderpage/mine/tally/module/records/RecordItemBindingImpl;->getDrawableFromResource(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    :goto_a
    move v13, v9

    goto :goto_b

    :cond_e
    move-wide/from16 v21, v4

    const/4 v12, 0x0

    const/16 v20, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    :goto_b
    if-eqz v0, :cond_f

    .line 248
    invoke-virtual {v0, v6}, Lcom/coderpage/mine/app/tally/module/records/RecordItemViewModel;->formatMoney(Lcom/coderpage/mine/app/tally/persistence/model/Record;)Ljava/lang/String;

    move-result-object v0

    move-object v6, v12

    move v10, v13

    move-wide/from16 v28, v21

    move-object/from16 v13, v23

    move-object/from16 v9, v24

    move-object v12, v0

    move-object/from16 v0, v20

    goto :goto_c

    :cond_f
    move-object v6, v12

    move v10, v13

    move-object/from16 v0, v20

    move-wide/from16 v28, v21

    move-object/from16 v13, v23

    move-object/from16 v9, v24

    const/4 v12, 0x0

    goto :goto_c

    :cond_10
    move-wide/from16 v28, v4

    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_c
    const-wide/16 v20, 0x10

    and-long v20, v2, v20

    cmp-long v11, v20, v4

    if-eqz v11, :cond_11

    .line 255
    iget-object v11, v1, Lcom/coderpage/mine/tally/module/records/RecordItemBindingImpl;->cardView:Landroid/support/v7/widget/CardView;

    iget-object v4, v1, Lcom/coderpage/mine/tally/module/records/RecordItemBindingImpl;->mCallback21:Landroid/view/View$OnClickListener;

    invoke-virtual {v11, v4}, Landroid/support/v7/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    iget-object v4, v1, Lcom/coderpage/mine/tally/module/records/RecordItemBindingImpl;->cardView:Landroid/support/v7/widget/CardView;

    iget-object v5, v1, Lcom/coderpage/mine/tally/module/records/RecordItemBindingImpl;->mCallback22:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/CardView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 257
    iget-object v4, v1, Lcom/coderpage/mine/tally/module/records/RecordItemBindingImpl;->etAmount:Landroid/widget/TextView;

    sget-object v5, Lcom/coderpage/mine/common/Font;->QUICKSAND_BOLD:Lcom/coderpage/mine/common/Font;

    invoke-static {v4, v5}, Lcom/coderpage/mine/app/tally/databinding/CommonBindAdapter;->setTypeFace(Landroid/widget/TextView;Lcom/coderpage/mine/common/Font;)V

    .line 258
    iget-object v4, v1, Lcom/coderpage/mine/tally/module/records/RecordItemBindingImpl;->lyCategoryIcon:Landroid/widget/FrameLayout;

    invoke-static {v4, v8}, Lcom/coderpage/mine/app/tally/databinding/CommonBindAdapter;->setViewSelect(Landroid/view/View;Z)V

    .line 259
    iget-object v4, v1, Lcom/coderpage/mine/tally/module/records/RecordItemBindingImpl;->mboundView7:Landroid/support/constraint/ConstraintLayout;

    iget-object v5, v1, Lcom/coderpage/mine/tally/module/records/RecordItemBindingImpl;->mCallback23:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/support/constraint/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_11
    and-long v4, v2, v14

    const-wide/16 v14, 0x0

    cmp-long v8, v4, v14

    if-eqz v8, :cond_12

    .line 264
    iget-object v4, v1, Lcom/coderpage/mine/tally/module/records/RecordItemBindingImpl;->etAmount:Landroid/widget/TextView;

    invoke-static {v4, v12}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_12
    and-long v4, v2, v18

    cmp-long v8, v4, v14

    if-eqz v8, :cond_13

    .line 269
    iget-object v4, v1, Lcom/coderpage/mine/tally/module/records/RecordItemBindingImpl;->ivCategoryIcon:Landroid/support/v7/widget/AppCompatImageView;

    invoke-static {v4, v0}, Lcom/coderpage/mine/app/tally/databinding/CommonBindAdapter;->setCategoryIcon(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 270
    iget-object v0, v1, Lcom/coderpage/mine/tally/module/records/RecordItemBindingImpl;->lyCategoryIcon:Landroid/widget/FrameLayout;

    invoke-static {v0, v6}, Landroidx/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 271
    iget-object v0, v1, Lcom/coderpage/mine/tally/module/records/RecordItemBindingImpl;->tvCategoryName:Landroid/widget/TextView;

    invoke-static {v0, v9}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 272
    iget-object v0, v1, Lcom/coderpage/mine/tally/module/records/RecordItemBindingImpl;->tvRecordDec:Landroid/widget/TextView;

    invoke-static {v0, v13}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 273
    iget-object v0, v1, Lcom/coderpage/mine/tally/module/records/RecordItemBindingImpl;->tvRecordDec:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 274
    iget-object v0, v1, Lcom/coderpage/mine/tally/module/records/RecordItemBindingImpl;->tvTime:Landroid/widget/TextView;

    move-wide/from16 v4, v28

    invoke-static {v0, v4, v5}, Lcom/coderpage/mine/app/tally/databinding/CommonBindAdapter;->setDisplayTimeText(Landroid/widget/TextView;J)V

    :cond_13
    const-wide/16 v4, 0x13

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_14

    .line 279
    iget-object v0, v1, Lcom/coderpage/mine/tally/module/records/RecordItemBindingImpl;->mboundView7:Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v0, v7}, Landroid/support/constraint/ConstraintLayout;->setVisibility(I)V

    :cond_14
    return-void

    :catchall_0
    move-exception v0

    .line 151
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 76
    monitor-enter p0

    .line 77
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/tally/module/records/RecordItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 78
    monitor-exit p0

    return v0

    .line 80
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

    .line 68
    monitor-enter p0

    const-wide/16 v0, 0x10

    .line 69
    :try_start_0
    iput-wide v0, p0, Lcom/coderpage/mine/tally/module/records/RecordItemBindingImpl;->mDirtyFlags:J

    .line 70
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    invoke-virtual {p0}, Lcom/coderpage/mine/tally/module/records/RecordItemBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 70
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

    .line 131
    :cond_0
    check-cast p2, Landroidx/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lcom/coderpage/mine/tally/module/records/RecordItemBindingImpl;->onChangeVmNeedFingerprint(Landroidx/databinding/ObservableBoolean;I)Z

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

    .line 119
    iput-object p1, p0, Lcom/coderpage/mine/tally/module/records/RecordItemBindingImpl;->mActivity:Landroid/app/Activity;

    .line 120
    monitor-enter p0

    .line 121
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/tally/module/records/RecordItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coderpage/mine/tally/module/records/RecordItemBindingImpl;->mDirtyFlags:J

    .line 122
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 123
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/tally/module/records/RecordItemBindingImpl;->notifyPropertyChanged(I)V

    .line 124
    invoke-super {p0}, Lcom/coderpage/mine/tally/module/records/RecordItemBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 122
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setData(Lcom/coderpage/mine/app/tally/persistence/model/Record;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "Data"
        }
    .end annotation

    .line 111
    iput-object p1, p0, Lcom/coderpage/mine/tally/module/records/RecordItemBindingImpl;->mData:Lcom/coderpage/mine/app/tally/persistence/model/Record;

    .line 112
    monitor-enter p0

    .line 113
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/tally/module/records/RecordItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coderpage/mine/tally/module/records/RecordItemBindingImpl;->mDirtyFlags:J

    .line 114
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x5

    .line 115
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/tally/module/records/RecordItemBindingImpl;->notifyPropertyChanged(I)V

    .line 116
    invoke-super {p0}, Lcom/coderpage/mine/tally/module/records/RecordItemBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 114
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

    .line 88
    check-cast p2, Lcom/coderpage/mine/app/tally/module/records/RecordItemViewModel;

    invoke-virtual {p0, p2}, Lcom/coderpage/mine/tally/module/records/RecordItemBindingImpl;->setVm(Lcom/coderpage/mine/app/tally/module/records/RecordItemViewModel;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    if-ne v1, p1, :cond_1

    .line 91
    check-cast p2, Lcom/coderpage/mine/app/tally/persistence/model/Record;

    invoke-virtual {p0, p2}, Lcom/coderpage/mine/tally/module/records/RecordItemBindingImpl;->setData(Lcom/coderpage/mine/app/tally/persistence/model/Record;)V

    goto :goto_0

    :cond_1
    if-ne v0, p1, :cond_2

    .line 94
    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p0, p2}, Lcom/coderpage/mine/tally/module/records/RecordItemBindingImpl;->setActivity(Landroid/app/Activity;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setVm(Lcom/coderpage/mine/app/tally/module/records/RecordItemViewModel;)V
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
    iput-object p1, p0, Lcom/coderpage/mine/tally/module/records/RecordItemBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/records/RecordItemViewModel;

    .line 104
    monitor-enter p0

    .line 105
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/tally/module/records/RecordItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coderpage/mine/tally/module/records/RecordItemBindingImpl;->mDirtyFlags:J

    .line 106
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0xd

    .line 107
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/tally/module/records/RecordItemBindingImpl;->notifyPropertyChanged(I)V

    .line 108
    invoke-super {p0}, Lcom/coderpage/mine/tally/module/records/RecordItemBinding;->requestRebind()V

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
