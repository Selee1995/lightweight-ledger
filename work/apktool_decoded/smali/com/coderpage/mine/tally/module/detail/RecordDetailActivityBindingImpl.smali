.class public Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBindingImpl;
.super Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBinding;
.source "RecordDetailActivityBindingImpl.java"

# interfaces
.implements Lcom/coderpage/mine/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private final mCallback53:Landroid/view/View$OnClickListener;

.field private mDirtyFlags:J

.field private final mboundView0:Landroid/support/constraint/ConstraintLayout;

.field private final mboundView2:Landroid/support/v7/widget/AppCompatImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090115

    const/16 v2, 0x8

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f090157

    const/16 v2, 0x9

    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f090173

    const/16 v2, 0xa

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f090074

    const/16 v2, 0xb

    .line 20
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
    sget-object v0, Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0xc

    invoke-static {p1, p2, v2, v0, v1}, Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 16
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

    const/4 v0, 0x7

    .line 38
    aget-object v0, p3, v0

    move-object v4, v0

    check-cast v4, Landroid/widget/TextView;

    const/16 v0, 0xb

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/view/View;

    const/4 v15, 0x1

    aget-object v0, p3, v15

    move-object v6, v0

    check-cast v6, Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroid/support/v7/widget/Toolbar;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroid/widget/TextView;

    const/4 v0, 0x5

    aget-object v0, p3, v0

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

    move-object v12, v0

    check-cast v12, Landroid/widget/TextView;

    const/16 v0, 0xa

    aget-object v0, p3, v0

    move-object v13, v0

    check-cast v13, Landroid/widget/TextView;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v13}, Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/view/View;Landroid/widget/FrameLayout;Landroid/support/v7/widget/Toolbar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    const-wide/16 v0, -0x1

    .line 249
    iput-wide v0, v14, Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBindingImpl;->mDirtyFlags:J

    .line 50
    iget-object v0, v14, Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBindingImpl;->btnModify:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 51
    iget-object v0, v14, Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBindingImpl;->ivCategoryIcon:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 52
    aget-object v0, p3, v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout;

    iput-object v0, v14, Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBindingImpl;->mboundView0:Landroid/support/constraint/ConstraintLayout;

    .line 53
    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x2

    .line 54
    aget-object v0, p3, v0

    check-cast v0, Landroid/support/v7/widget/AppCompatImageView;

    iput-object v0, v14, Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBindingImpl;->mboundView2:Landroid/support/v7/widget/AppCompatImageView;

    .line 55
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatImageView;->setTag(Ljava/lang/Object;)V

    .line 56
    iget-object v0, v14, Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBindingImpl;->tvCategoryName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 57
    iget-object v0, v14, Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBindingImpl;->tvNote:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 58
    iget-object v0, v14, Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBindingImpl;->tvRecordAmount:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 59
    iget-object v0, v14, Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBindingImpl;->tvTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    .line 60
    invoke-virtual {v14, v0}, Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 62
    new-instance v0, Lcom/coderpage/mine/generated/callback/OnClickListener;

    invoke-direct {v0, v14, v15}, Lcom/coderpage/mine/generated/callback/OnClickListener;-><init>(Lcom/coderpage/mine/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v14, Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBindingImpl;->mCallback53:Landroid/view/View$OnClickListener;

    .line 63
    invoke-virtual/range {p0 .. p0}, Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBindingImpl;->invalidateAll()V

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

    .line 234
    iget-object p1, p0, Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel;

    .line 236
    iget-object p2, p0, Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBindingImpl;->mActivity:Landroid/app/Activity;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 245
    invoke-virtual {p1, p2}, Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel;->onUpdateClick(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method protected executeBindings()V
    .locals 19

    move-object/from16 v1, p0

    .line 137
    monitor-enter p0

    .line 138
    :try_start_0
    iget-wide v2, v1, Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 139
    iput-wide v4, v1, Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBindingImpl;->mDirtyFlags:J

    .line 140
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    iget-object v0, v1, Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel;

    .line 148
    iget-object v0, v1, Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBindingImpl;->mData:Lcom/coderpage/mine/app/tally/module/detail/RecordData;

    .line 151
    iget-object v6, v1, Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBindingImpl;->mActivity:Landroid/app/Activity;

    const-wide/16 v6, 0xa

    and-long v8, v2, v6

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    cmp-long v13, v8, v4

    if-eqz v13, :cond_7

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/detail/RecordData;->getCategoryIcon()Ljava/lang/String;

    move-result-object v13

    .line 163
    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/detail/RecordData;->getTime()Ljava/lang/String;

    move-result-object v14

    .line 165
    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/detail/RecordData;->getDesc()Ljava/lang/String;

    move-result-object v15

    .line 167
    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/detail/RecordData;->getCategoryName()Ljava/lang/String;

    move-result-object v16

    .line 169
    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/detail/RecordData;->getType()I

    move-result v17

    .line 171
    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/detail/RecordData;->getAmount()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v12

    move-object v13, v0

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    const/16 v17, 0x0

    .line 176
    :goto_0
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v17, :cond_1

    const/4 v11, 0x1

    :cond_1
    cmp-long v17, v8, v4

    if-eqz v17, :cond_3

    if-eqz v18, :cond_2

    const-wide/16 v8, 0x80

    goto :goto_1

    :cond_2
    const-wide/16 v8, 0x40

    :goto_1
    or-long/2addr v2, v8

    :cond_3
    and-long v8, v2, v6

    cmp-long v17, v8, v4

    if-eqz v17, :cond_5

    if-eqz v11, :cond_4

    const-wide/16 v8, 0x20

    goto :goto_2

    :cond_4
    const-wide/16 v8, 0x10

    :goto_2
    or-long/2addr v2, v8

    .line 198
    :cond_5
    iget-object v8, v1, Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBindingImpl;->ivCategoryIcon:Landroid/widget/FrameLayout;

    if-eqz v11, :cond_6

    const v9, 0x7f08006b

    goto :goto_3

    :cond_6
    const v9, 0x7f08006e

    :goto_3
    invoke-static {v8, v9}, Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBindingImpl;->getDrawableFromResource(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    move-object/from16 v9, v16

    move/from16 v11, v18

    goto :goto_4

    :cond_7
    move-object v0, v12

    move-object v8, v0

    move-object v9, v8

    move-object v13, v9

    move-object v14, v13

    move-object v15, v14

    :goto_4
    and-long/2addr v6, v2

    cmp-long v16, v6, v4

    if-eqz v16, :cond_9

    if-eqz v11, :cond_8

    const-string v11, "--"

    move-object v12, v11

    goto :goto_5

    :cond_8
    move-object v12, v15

    :cond_9
    :goto_5
    const-wide/16 v15, 0x8

    and-long/2addr v2, v15

    cmp-long v11, v2, v4

    if-eqz v11, :cond_a

    .line 211
    iget-object v2, v1, Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBindingImpl;->btnModify:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBindingImpl;->mCallback53:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    iget-object v2, v1, Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBindingImpl;->ivCategoryIcon:Landroid/widget/FrameLayout;

    invoke-static {v2, v10}, Lcom/coderpage/mine/app/tally/databinding/CommonBindAdapter;->setViewSelect(Landroid/view/View;Z)V

    .line 213
    iget-object v2, v1, Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBindingImpl;->mboundView2:Landroid/support/v7/widget/AppCompatImageView;

    invoke-static {v2, v10}, Lcom/coderpage/mine/app/tally/databinding/CommonBindAdapter;->setViewSelect(Landroid/view/View;Z)V

    .line 214
    iget-object v2, v1, Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBindingImpl;->tvRecordAmount:Landroid/widget/TextView;

    sget-object v3, Lcom/coderpage/mine/common/Font;->QUICKSAND_MEDIUM:Lcom/coderpage/mine/common/Font;

    invoke-static {v2, v3}, Lcom/coderpage/mine/app/tally/databinding/CommonBindAdapter;->setTypeFace(Landroid/widget/TextView;Lcom/coderpage/mine/common/Font;)V

    :cond_a
    cmp-long v2, v6, v4

    if-eqz v2, :cond_b

    .line 219
    iget-object v2, v1, Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBindingImpl;->ivCategoryIcon:Landroid/widget/FrameLayout;

    invoke-static {v2, v8}, Landroidx/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 220
    iget-object v2, v1, Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBindingImpl;->mboundView2:Landroid/support/v7/widget/AppCompatImageView;

    invoke-static {v2, v13}, Lcom/coderpage/mine/app/tally/databinding/CommonBindAdapter;->setCategoryIcon(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 221
    iget-object v2, v1, Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBindingImpl;->tvCategoryName:Landroid/widget/TextView;

    invoke-static {v2, v9}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 222
    iget-object v2, v1, Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBindingImpl;->tvNote:Landroid/widget/TextView;

    invoke-static {v2, v12}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 223
    iget-object v2, v1, Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBindingImpl;->tvRecordAmount:Landroid/widget/TextView;

    invoke-static {v2, v0}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 224
    iget-object v0, v1, Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBindingImpl;->tvTime:Landroid/widget/TextView;

    invoke-static {v0, v14}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_b
    return-void

    :catchall_0
    move-exception v0

    .line 140
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
    iget-wide v0, p0, Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBindingImpl;->mDirtyFlags:J

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

    const-wide/16 v0, 0x8

    .line 69
    :try_start_0
    iput-wide v0, p0, Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBindingImpl;->mDirtyFlags:J

    .line 70
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    invoke-virtual {p0}, Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBindingImpl;->requestRebind()V

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

    .line 119
    iput-object p1, p0, Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBindingImpl;->mActivity:Landroid/app/Activity;

    .line 120
    monitor-enter p0

    .line 121
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBindingImpl;->mDirtyFlags:J

    .line 122
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 123
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBindingImpl;->notifyPropertyChanged(I)V

    .line 124
    invoke-super {p0}, Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBinding;->requestRebind()V

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

.method public setData(Lcom/coderpage/mine/app/tally/module/detail/RecordData;)V
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
    iput-object p1, p0, Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBindingImpl;->mData:Lcom/coderpage/mine/app/tally/module/detail/RecordData;

    .line 112
    monitor-enter p0

    .line 113
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBindingImpl;->mDirtyFlags:J

    .line 114
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x5

    .line 115
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBindingImpl;->notifyPropertyChanged(I)V

    .line 116
    invoke-super {p0}, Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBinding;->requestRebind()V

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
    check-cast p2, Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel;

    invoke-virtual {p0, p2}, Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBindingImpl;->setVm(Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    if-ne v1, p1, :cond_1

    .line 91
    check-cast p2, Lcom/coderpage/mine/app/tally/module/detail/RecordData;

    invoke-virtual {p0, p2}, Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBindingImpl;->setData(Lcom/coderpage/mine/app/tally/module/detail/RecordData;)V

    goto :goto_0

    :cond_1
    if-ne v0, p1, :cond_2

    .line 94
    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p0, p2}, Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBindingImpl;->setActivity(Landroid/app/Activity;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setVm(Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel;)V
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
    iput-object p1, p0, Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel;

    .line 104
    monitor-enter p0

    .line 105
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBindingImpl;->mDirtyFlags:J

    .line 106
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0xd

    .line 107
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBindingImpl;->notifyPropertyChanged(I)V

    .line 108
    invoke-super {p0}, Lcom/coderpage/mine/tally/module/detail/RecordDetailActivityBinding;->requestRebind()V

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
