.class public Lcom/coderpage/mine/module/chart/ItemCategoryDataBindingImpl;
.super Lcom/coderpage/mine/module/chart/ItemCategoryDataBinding;
.source "ItemCategoryDataBindingImpl.java"

# interfaces
.implements Lcom/coderpage/mine/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private final mCallback49:Landroid/view/View$OnClickListener;

.field private mDirtyFlags:J

.field private final mboundView0:Landroid/support/constraint/ConstraintLayout;

.field private final mboundView2:Landroid/support/v7/widget/AppCompatImageView;

.field private final mboundView6:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/coderpage/mine/module/chart/ItemCategoryDataBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090072

    const/4 v2, 0x7

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

    .line 34
    sget-object v0, Lcom/coderpage/mine/module/chart/ItemCategoryDataBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/coderpage/mine/module/chart/ItemCategoryDataBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0x8

    invoke-static {p1, p2, v2, v0, v1}, Lcom/coderpage/mine/module/chart/ItemCategoryDataBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/coderpage/mine/module/chart/ItemCategoryDataBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

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

    const/4 v0, 0x7

    .line 37
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/support/v7/widget/AppCompatImageView;

    const/4 v0, 0x1

    aget-object v1, p3, v0

    move-object v6, v1

    check-cast v6, Landroid/widget/FrameLayout;

    const/4 v1, 0x5

    aget-object v1, p3, v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    const/4 v1, 0x3

    aget-object v1, p3, v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    const/4 v1, 0x4

    aget-object v1, p3, v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v9}, Lcom/coderpage/mine/module/chart/ItemCategoryDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/support/v7/widget/AppCompatImageView;Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    const-wide/16 v1, -0x1

    .line 253
    iput-wide v1, p0, Lcom/coderpage/mine/module/chart/ItemCategoryDataBindingImpl;->mDirtyFlags:J

    .line 44
    iget-object p1, p0, Lcom/coderpage/mine/module/chart/ItemCategoryDataBindingImpl;->lyCategoryIcon:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 45
    aget-object p1, p3, p1

    check-cast p1, Landroid/support/constraint/ConstraintLayout;

    iput-object p1, p0, Lcom/coderpage/mine/module/chart/ItemCategoryDataBindingImpl;->mboundView0:Landroid/support/constraint/ConstraintLayout;

    .line 46
    invoke-virtual {p1, v1}, Landroid/support/constraint/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x2

    .line 47
    aget-object p1, p3, p1

    check-cast p1, Landroid/support/v7/widget/AppCompatImageView;

    iput-object p1, p0, Lcom/coderpage/mine/module/chart/ItemCategoryDataBindingImpl;->mboundView2:Landroid/support/v7/widget/AppCompatImageView;

    .line 48
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/AppCompatImageView;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x6

    .line 49
    aget-object p1, p3, p1

    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lcom/coderpage/mine/module/chart/ItemCategoryDataBindingImpl;->mboundView6:Landroid/view/View;

    .line 50
    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 51
    iget-object p1, p0, Lcom/coderpage/mine/module/chart/ItemCategoryDataBindingImpl;->tvCategoryExpenseTotal:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 52
    iget-object p1, p0, Lcom/coderpage/mine/module/chart/ItemCategoryDataBindingImpl;->tvCategoryName:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 53
    iget-object p1, p0, Lcom/coderpage/mine/module/chart/ItemCategoryDataBindingImpl;->tvCategoryPercent:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 54
    invoke-virtual {p0, p2}, Lcom/coderpage/mine/module/chart/ItemCategoryDataBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 56
    new-instance p1, Lcom/coderpage/mine/generated/callback/OnClickListener;

    invoke-direct {p1, p0, v0}, Lcom/coderpage/mine/generated/callback/OnClickListener;-><init>(Lcom/coderpage/mine/generated/callback/OnClickListener$Listener;I)V

    iput-object p1, p0, Lcom/coderpage/mine/module/chart/ItemCategoryDataBindingImpl;->mCallback49:Landroid/view/View$OnClickListener;

    .line 57
    invoke-virtual {p0}, Lcom/coderpage/mine/module/chart/ItemCategoryDataBindingImpl;->invalidateAll()V

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

    .line 238
    iget-object p1, p0, Lcom/coderpage/mine/module/chart/ItemCategoryDataBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;

    .line 240
    iget-object p2, p0, Lcom/coderpage/mine/module/chart/ItemCategoryDataBindingImpl;->mData:Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 249
    invoke-virtual {p1, p2}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->onCategoryDataItemClick(Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;)V

    :cond_1
    return-void
.end method

.method protected executeBindings()V
    .locals 21

    move-object/from16 v1, p0

    .line 131
    monitor-enter p0

    .line 132
    :try_start_0
    iget-wide v2, v1, Lcom/coderpage/mine/module/chart/ItemCategoryDataBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 133
    iput-wide v4, v1, Lcom/coderpage/mine/module/chart/ItemCategoryDataBindingImpl;->mDirtyFlags:J

    .line 134
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    iget-object v0, v1, Lcom/coderpage/mine/module/chart/ItemCategoryDataBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;

    .line 139
    iget-object v6, v1, Lcom/coderpage/mine/module/chart/ItemCategoryDataBindingImpl;->mData:Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;

    .line 140
    iget-boolean v7, v1, Lcom/coderpage/mine/module/chart/ItemCategoryDataBindingImpl;->mShowDivider:Z

    const-wide/16 v8, 0xb

    and-long v10, v2, v8

    const/4 v12, 0x1

    const-wide/16 v13, 0xa

    const/16 v16, 0x0

    cmp-long v17, v10, v4

    if-eqz v17, :cond_7

    and-long v10, v2, v13

    cmp-long v17, v10, v4

    if-eqz v17, :cond_5

    if-eqz v6, :cond_0

    .line 155
    invoke-virtual {v6}, Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;->getCategoryIconName()Ljava/lang/String;

    move-result-object v17

    .line 157
    invoke-virtual {v6}, Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;->getPercentRateString()Ljava/lang/String;

    move-result-object v18

    .line 159
    invoke-virtual {v6}, Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;->getCategoryName()Ljava/lang/String;

    move-result-object v19

    .line 161
    invoke-virtual {v6}, Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;->getType()I

    move-result v20

    move-object/from16 v15, v18

    goto :goto_0

    :cond_0
    move-object/from16 v15, v16

    move-object/from16 v17, v15

    move-object/from16 v19, v17

    const/16 v20, 0x0

    .line 166
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "%"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    if-nez v20, :cond_1

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    :goto_1
    cmp-long v15, v10, v4

    if-eqz v15, :cond_3

    if-eqz v9, :cond_2

    const-wide/16 v10, 0x80

    goto :goto_2

    :cond_2
    const-wide/16 v10, 0x40

    :goto_2
    or-long/2addr v2, v10

    :cond_3
    if-eqz v9, :cond_4

    .line 180
    iget-object v9, v1, Lcom/coderpage/mine/module/chart/ItemCategoryDataBindingImpl;->lyCategoryIcon:Landroid/widget/FrameLayout;

    const v10, 0x7f08006b

    goto :goto_3

    :cond_4
    iget-object v9, v1, Lcom/coderpage/mine/module/chart/ItemCategoryDataBindingImpl;->lyCategoryIcon:Landroid/widget/FrameLayout;

    const v10, 0x7f08006e

    :goto_3
    invoke-static {v9, v10}, Lcom/coderpage/mine/module/chart/ItemCategoryDataBindingImpl;->getDrawableFromResource(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    goto :goto_4

    :cond_5
    move-object/from16 v8, v16

    move-object v9, v8

    move-object/from16 v17, v9

    move-object/from16 v19, v17

    :goto_4
    if-eqz v0, :cond_6

    .line 185
    invoke-virtual {v0, v6}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->formatCategoryDataAmount(Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;)Ljava/lang/String;

    move-result-object v16

    :cond_6
    move-object/from16 v10, v16

    move-object/from16 v0, v17

    move-object/from16 v6, v19

    goto :goto_5

    :cond_7
    move-object/from16 v0, v16

    move-object v6, v0

    move-object v8, v6

    move-object v9, v8

    move-object v10, v9

    :goto_5
    const-wide/16 v15, 0xc

    and-long v19, v2, v15

    cmp-long v11, v19, v4

    if-eqz v11, :cond_b

    cmp-long v11, v19, v4

    if-eqz v11, :cond_9

    if-eqz v7, :cond_8

    const-wide/16 v19, 0x20

    goto :goto_6

    :cond_8
    const-wide/16 v19, 0x10

    :goto_6
    or-long v2, v2, v19

    :cond_9
    if-eqz v7, :cond_a

    const/16 v18, 0x0

    goto :goto_7

    :cond_a
    const/16 v7, 0x8

    const/16 v18, 0x8

    :goto_7
    move/from16 v7, v18

    goto :goto_8

    :cond_b
    const/4 v7, 0x0

    :goto_8
    const-wide/16 v17, 0x8

    and-long v17, v2, v17

    cmp-long v11, v17, v4

    if-eqz v11, :cond_c

    .line 207
    iget-object v11, v1, Lcom/coderpage/mine/module/chart/ItemCategoryDataBindingImpl;->lyCategoryIcon:Landroid/widget/FrameLayout;

    invoke-static {v11, v12}, Lcom/coderpage/mine/app/tally/databinding/CommonBindAdapter;->setViewSelect(Landroid/view/View;Z)V

    .line 208
    iget-object v11, v1, Lcom/coderpage/mine/module/chart/ItemCategoryDataBindingImpl;->mboundView0:Landroid/support/constraint/ConstraintLayout;

    iget-object v12, v1, Lcom/coderpage/mine/module/chart/ItemCategoryDataBindingImpl;->mCallback49:Landroid/view/View$OnClickListener;

    invoke-virtual {v11, v12}, Landroid/support/constraint/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    iget-object v11, v1, Lcom/coderpage/mine/module/chart/ItemCategoryDataBindingImpl;->tvCategoryExpenseTotal:Landroid/widget/TextView;

    sget-object v12, Lcom/coderpage/mine/common/Font;->QUICKSAND_MEDIUM:Lcom/coderpage/mine/common/Font;

    invoke-static {v11, v12}, Lcom/coderpage/mine/app/tally/databinding/CommonBindAdapter;->setTypeFace(Landroid/widget/TextView;Lcom/coderpage/mine/common/Font;)V

    .line 210
    iget-object v11, v1, Lcom/coderpage/mine/module/chart/ItemCategoryDataBindingImpl;->tvCategoryPercent:Landroid/widget/TextView;

    sget-object v12, Lcom/coderpage/mine/common/Font;->QUICKSAND_MEDIUM:Lcom/coderpage/mine/common/Font;

    invoke-static {v11, v12}, Lcom/coderpage/mine/app/tally/databinding/CommonBindAdapter;->setTypeFace(Landroid/widget/TextView;Lcom/coderpage/mine/common/Font;)V

    :cond_c
    and-long v11, v2, v13

    cmp-long v13, v11, v4

    if-eqz v13, :cond_d

    .line 215
    iget-object v11, v1, Lcom/coderpage/mine/module/chart/ItemCategoryDataBindingImpl;->lyCategoryIcon:Landroid/widget/FrameLayout;

    invoke-static {v11, v9}, Landroidx/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 216
    iget-object v9, v1, Lcom/coderpage/mine/module/chart/ItemCategoryDataBindingImpl;->mboundView2:Landroid/support/v7/widget/AppCompatImageView;

    invoke-static {v9, v0}, Lcom/coderpage/mine/app/tally/databinding/CommonBindAdapter;->setCategoryIcon(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 217
    iget-object v0, v1, Lcom/coderpage/mine/module/chart/ItemCategoryDataBindingImpl;->tvCategoryName:Landroid/widget/TextView;

    invoke-static {v0, v6}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 218
    iget-object v0, v1, Lcom/coderpage/mine/module/chart/ItemCategoryDataBindingImpl;->tvCategoryPercent:Landroid/widget/TextView;

    invoke-static {v0, v8}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_d
    and-long v8, v2, v15

    cmp-long v0, v8, v4

    if-eqz v0, :cond_e

    .line 223
    iget-object v0, v1, Lcom/coderpage/mine/module/chart/ItemCategoryDataBindingImpl;->mboundView6:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_e
    const-wide/16 v6, 0xb

    and-long/2addr v2, v6

    cmp-long v0, v2, v4

    if-eqz v0, :cond_f

    .line 228
    iget-object v0, v1, Lcom/coderpage/mine/module/chart/ItemCategoryDataBindingImpl;->tvCategoryExpenseTotal:Landroid/widget/TextView;

    invoke-static {v0, v10}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_f
    return-void

    :catchall_0
    move-exception v0

    .line 134
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 70
    monitor-enter p0

    .line 71
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/module/chart/ItemCategoryDataBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 72
    monitor-exit p0

    return v0

    .line 74
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

    .line 62
    monitor-enter p0

    const-wide/16 v0, 0x8

    .line 63
    :try_start_0
    iput-wide v0, p0, Lcom/coderpage/mine/module/chart/ItemCategoryDataBindingImpl;->mDirtyFlags:J

    .line 64
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    invoke-virtual {p0}, Lcom/coderpage/mine/module/chart/ItemCategoryDataBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 64
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

.method public setData(Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "Data"
        }
    .end annotation

    .line 105
    iput-object p1, p0, Lcom/coderpage/mine/module/chart/ItemCategoryDataBindingImpl;->mData:Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;

    .line 106
    monitor-enter p0

    .line 107
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/module/chart/ItemCategoryDataBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coderpage/mine/module/chart/ItemCategoryDataBindingImpl;->mDirtyFlags:J

    .line 108
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x5

    .line 109
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/module/chart/ItemCategoryDataBindingImpl;->notifyPropertyChanged(I)V

    .line 110
    invoke-super {p0}, Lcom/coderpage/mine/module/chart/ItemCategoryDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 108
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setShowDivider(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ShowDivider"
        }
    .end annotation

    .line 113
    iput-boolean p1, p0, Lcom/coderpage/mine/module/chart/ItemCategoryDataBindingImpl;->mShowDivider:Z

    .line 114
    monitor-enter p0

    .line 115
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/module/chart/ItemCategoryDataBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coderpage/mine/module/chart/ItemCategoryDataBindingImpl;->mDirtyFlags:J

    .line 116
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x9

    .line 117
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/module/chart/ItemCategoryDataBindingImpl;->notifyPropertyChanged(I)V

    .line 118
    invoke-super {p0}, Lcom/coderpage/mine/module/chart/ItemCategoryDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 116
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

    .line 82
    check-cast p2, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;

    invoke-virtual {p0, p2}, Lcom/coderpage/mine/module/chart/ItemCategoryDataBindingImpl;->setVm(Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    if-ne v0, p1, :cond_1

    .line 85
    check-cast p2, Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;

    invoke-virtual {p0, p2}, Lcom/coderpage/mine/module/chart/ItemCategoryDataBindingImpl;->setData(Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x9

    if-ne v0, p1, :cond_2

    .line 88
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/coderpage/mine/module/chart/ItemCategoryDataBindingImpl;->setShowDivider(Z)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public setVm(Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "Vm"
        }
    .end annotation

    .line 97
    iput-object p1, p0, Lcom/coderpage/mine/module/chart/ItemCategoryDataBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;

    .line 98
    monitor-enter p0

    .line 99
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/module/chart/ItemCategoryDataBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coderpage/mine/module/chart/ItemCategoryDataBindingImpl;->mDirtyFlags:J

    .line 100
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0xd

    .line 101
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/module/chart/ItemCategoryDataBindingImpl;->notifyPropertyChanged(I)V

    .line 102
    invoke-super {p0}, Lcom/coderpage/mine/module/chart/ItemCategoryDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 100
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
