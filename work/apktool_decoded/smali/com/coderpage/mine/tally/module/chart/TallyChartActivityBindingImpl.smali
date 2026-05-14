.class public Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBindingImpl;
.super Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBinding;
.source "TallyChartActivityBindingImpl.java"

# interfaces
.implements Lcom/coderpage/mine/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private final mCallback38:Landroid/view/View$OnClickListener;

.field private final mCallback39:Landroid/view/View$OnClickListener;

.field private final mCallback40:Landroid/view/View$OnClickListener;

.field private final mCallback41:Landroid/view/View$OnClickListener;

.field private mDirtyFlags:J

.field private final mboundView8:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090115

    const/16 v2, 0xb

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f090092

    const/16 v2, 0xc

    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0900c2

    const/16 v2, 0xd

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0900ca

    const/16 v2, 0xe

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

    .line 39
    sget-object v0, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0xf

    invoke-static {p1, p2, v2, v0, v1}, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

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

    move-object/from16 v3, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/16 v4, 0x9

    .line 42
    aget-object v4, p3, v4

    check-cast v4, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChart;

    const/4 v5, 0x7

    aget-object v5, p3, v5

    check-cast v5, Landroid/support/v7/widget/AppCompatImageView;

    const/16 v6, 0xa

    aget-object v6, p3, v6

    check-cast v6, Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChart;

    const/16 v7, 0xc

    aget-object v7, p3, v7

    check-cast v7, Landroid/support/v4/widget/NestedScrollView;

    const/4 v8, 0x0

    aget-object v8, p3, v8

    check-cast v8, Landroid/support/constraint/ConstraintLayout;

    const/16 v9, 0xd

    aget-object v9, p3, v9

    check-cast v9, Lcom/coderpage/mine/app/tally/module/chart/widget/MinePieChart;

    const/16 v10, 0xe

    aget-object v10, p3, v10

    check-cast v10, Landroid/support/v7/widget/RecyclerView;

    const/16 v11, 0xb

    aget-object v11, p3, v11

    check-cast v11, Landroid/support/v7/widget/Toolbar;

    const/4 v15, 0x1

    aget-object v12, p3, v15

    check-cast v12, Landroid/widget/TextView;

    const/4 v14, 0x2

    aget-object v13, p3, v14

    check-cast v13, Landroid/widget/TextView;

    const/4 v3, 0x3

    aget-object v16, p3, v3

    check-cast v16, Landroid/widget/TextView;

    move-object/from16 v14, v16

    const/4 v3, 0x4

    aget-object v16, p3, v3

    check-cast v16, Landroid/widget/TextView;

    move-object/from16 v15, v16

    const/16 v16, 0x5

    aget-object v16, p3, v16

    check-cast v16, Landroid/widget/TextView;

    const/16 v17, 0x6

    aget-object v17, p3, v17

    check-cast v17, Landroid/widget/TextView;

    const/16 v18, 0x6

    move/from16 v3, v18

    invoke-direct/range {v0 .. v17}, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/coderpage/mine/app/tally/module/chart/widget/MineBarChart;Landroid/support/v7/widget/AppCompatImageView;Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChart;Landroid/support/v4/widget/NestedScrollView;Landroid/support/constraint/ConstraintLayout;Lcom/coderpage/mine/app/tally/module/chart/widget/MinePieChart;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/Toolbar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    const-wide/16 v0, -0x1

    move-object/from16 v2, p0

    .line 455
    iput-wide v0, v2, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBindingImpl;->mDirtyFlags:J

    .line 58
    iget-object v0, v2, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBindingImpl;->barChart:Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChart;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChart;->setTag(Ljava/lang/Object;)V

    .line 59
    iget-object v0, v2, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBindingImpl;->ivSwitchDailyAndYearly:Landroid/support/v7/widget/AppCompatImageView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatImageView;->setTag(Ljava/lang/Object;)V

    .line 60
    iget-object v0, v2, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBindingImpl;->lineChart:Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChart;

    invoke-virtual {v0, v1}, Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChart;->setTag(Ljava/lang/Object;)V

    .line 61
    iget-object v0, v2, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBindingImpl;->mainContent:Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0x8

    .line 62
    aget-object v0, p3, v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBindingImpl;->mboundView8:Landroid/widget/TextView;

    .line 63
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 64
    iget-object v0, v2, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBindingImpl;->tvGlobalInfoDate:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 65
    iget-object v0, v2, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBindingImpl;->tvGlobalInfoExpense:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 66
    iget-object v0, v2, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBindingImpl;->tvGlobalInfoIncome:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 67
    iget-object v0, v2, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBindingImpl;->tvGlobalInfoLeft:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 68
    iget-object v0, v2, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBindingImpl;->tvSwitchExpense:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 69
    iget-object v0, v2, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBindingImpl;->tvSwitchIncome:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    .line 70
    invoke-virtual {v2, v0}, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 72
    new-instance v0, Lcom/coderpage/mine/generated/callback/OnClickListener;

    const/4 v1, 0x2

    invoke-direct {v0, v2, v1}, Lcom/coderpage/mine/generated/callback/OnClickListener;-><init>(Lcom/coderpage/mine/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v2, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBindingImpl;->mCallback39:Landroid/view/View$OnClickListener;

    .line 73
    new-instance v0, Lcom/coderpage/mine/generated/callback/OnClickListener;

    const/4 v1, 0x3

    invoke-direct {v0, v2, v1}, Lcom/coderpage/mine/generated/callback/OnClickListener;-><init>(Lcom/coderpage/mine/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v2, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBindingImpl;->mCallback40:Landroid/view/View$OnClickListener;

    .line 74
    new-instance v0, Lcom/coderpage/mine/generated/callback/OnClickListener;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v1}, Lcom/coderpage/mine/generated/callback/OnClickListener;-><init>(Lcom/coderpage/mine/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v2, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBindingImpl;->mCallback38:Landroid/view/View$OnClickListener;

    .line 75
    new-instance v0, Lcom/coderpage/mine/generated/callback/OnClickListener;

    const/4 v1, 0x4

    invoke-direct {v0, v2, v1}, Lcom/coderpage/mine/generated/callback/OnClickListener;-><init>(Lcom/coderpage/mine/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v2, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBindingImpl;->mCallback41:Landroid/view/View$OnClickListener;

    .line 76
    invoke-virtual/range {p0 .. p0}, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBindingImpl;->invalidateAll()V

    return-void
.end method

.method private onChangeVmCurrentDateText(Landroidx/databinding/ObservableField;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "VmCurrentDateText",
            "fieldId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 171
    monitor-enter p0

    .line 172
    :try_start_0
    iget-wide p1, p0, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x8

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBindingImpl;->mDirtyFlags:J

    .line 173
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

.method private onChangeVmDisplayDailyChart(Landroidx/databinding/ObservableBoolean;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "VmDisplayDailyChart",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 180
    monitor-enter p0

    .line 181
    :try_start_0
    iget-wide p1, p0, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x10

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBindingImpl;->mDirtyFlags:J

    .line 182
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

.method private onChangeVmDisplayExpenseChart(Landroidx/databinding/ObservableBoolean;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "VmDisplayExpenseChart",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 162
    monitor-enter p0

    .line 163
    :try_start_0
    iget-wide p1, p0, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x4

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBindingImpl;->mDirtyFlags:J

    .line 164
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

.method private onChangeVmExpenseTotalAmountText(Landroidx/databinding/ObservableField;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "VmExpenseTotalAmountText",
            "fieldId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 189
    monitor-enter p0

    .line 190
    :try_start_0
    iget-wide p1, p0, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x20

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBindingImpl;->mDirtyFlags:J

    .line 191
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

.method private onChangeVmIncomeTotalAmountText(Landroidx/databinding/ObservableField;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "VmIncomeTotalAmountText",
            "fieldId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 144
    monitor-enter p0

    .line 145
    :try_start_0
    iget-wide p1, p0, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBindingImpl;->mDirtyFlags:J

    .line 146
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

.method private onChangeVmLeftTotalAmountText(Landroidx/databinding/ObservableField;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "VmLeftTotalAmountText",
            "fieldId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 153
    monitor-enter p0

    .line 154
    :try_start_0
    iget-wide p1, p0, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBindingImpl;->mDirtyFlags:J

    .line 155
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

    if-eq p1, v0, :cond_6

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 440
    :cond_0
    iget-object p1, p0, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    :cond_1
    if-eqz p2, :cond_8

    .line 448
    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->onSwitchChartModelClick()V

    goto :goto_0

    .line 406
    :cond_2
    iget-object p1, p0, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    :cond_3
    if-eqz p2, :cond_8

    .line 414
    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->onSwitchChartModelClick()V

    goto :goto_0

    .line 389
    :cond_4
    iget-object p1, p0, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;

    if-eqz p1, :cond_5

    const/4 p2, 0x1

    :cond_5
    if-eqz p2, :cond_8

    .line 397
    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->onSelectAsIncomeChartClick()V

    goto :goto_0

    .line 423
    :cond_6
    iget-object p1, p0, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;

    if-eqz p1, :cond_7

    const/4 p2, 0x1

    :cond_7
    if-eqz p2, :cond_8

    .line 431
    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->onSelectAsExpenseChartClick()V

    :cond_8
    :goto_0
    return-void
.end method

.method protected executeBindings()V
    .locals 26

    move-object/from16 v1, p0

    .line 200
    monitor-enter p0

    .line 201
    :try_start_0
    iget-wide v2, v1, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 202
    iput-wide v4, v1, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBindingImpl;->mDirtyFlags:J

    .line 203
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    iget-object v0, v1, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;

    const-wide/16 v6, 0x17f

    and-long/2addr v6, v2

    const-wide/16 v10, 0x144

    const-wide/16 v12, 0x148

    const-wide/16 v14, 0x142

    const-wide/16 v16, 0x141

    const-wide/16 v18, 0x150

    const/4 v8, 0x0

    cmp-long v20, v6, v4

    if-eqz v20, :cond_13

    and-long v6, v2, v16

    cmp-long v20, v6, v4

    if-eqz v20, :cond_1

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->getIncomeTotalAmountText()Landroidx/databinding/ObservableField;

    move-result-object v6

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 231
    :goto_0
    invoke-virtual {v1, v8, v6}, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v6, :cond_1

    .line 236
    invoke-virtual {v6}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    and-long v20, v2, v14

    cmp-long v7, v20, v4

    if-eqz v7, :cond_3

    if-eqz v0, :cond_2

    .line 243
    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->getLeftTotalAmountText()Landroidx/databinding/ObservableField;

    move-result-object v7

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_2
    const/4 v8, 0x1

    .line 245
    invoke-virtual {v1, v8, v7}, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v7, :cond_3

    .line 250
    invoke-virtual {v7}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    :goto_3
    and-long v21, v2, v10

    cmp-long v8, v21, v4

    if-eqz v8, :cond_6

    if-eqz v0, :cond_4

    .line 257
    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->getDisplayExpenseChart()Landroidx/databinding/ObservableBoolean;

    move-result-object v8

    goto :goto_4

    :cond_4
    const/4 v8, 0x0

    :goto_4
    const/4 v9, 0x2

    .line 259
    invoke-virtual {v1, v9, v8}, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v8, :cond_5

    .line 264
    invoke-virtual {v8}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v8

    goto :goto_5

    :cond_5
    const/4 v8, 0x0

    :goto_5
    xor-int/lit8 v9, v8, 0x1

    goto :goto_6

    :cond_6
    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_6
    and-long v22, v2, v12

    cmp-long v24, v22, v4

    if-eqz v24, :cond_8

    if-eqz v0, :cond_7

    .line 275
    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->getCurrentDateText()Landroidx/databinding/ObservableField;

    move-result-object v22

    move-object/from16 v10, v22

    goto :goto_7

    :cond_7
    const/4 v10, 0x0

    :goto_7
    const/4 v11, 0x3

    .line 277
    invoke-virtual {v1, v11, v10}, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v10, :cond_8

    .line 282
    invoke-virtual {v10}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    goto :goto_8

    :cond_8
    const/4 v10, 0x0

    :goto_8
    and-long v24, v2, v18

    cmp-long v11, v24, v4

    if-eqz v11, :cond_10

    if-eqz v0, :cond_9

    .line 289
    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->getDisplayDailyChart()Landroidx/databinding/ObservableBoolean;

    move-result-object v11

    goto :goto_9

    :cond_9
    const/4 v11, 0x0

    :goto_9
    const/4 v14, 0x4

    .line 291
    invoke-virtual {v1, v14, v11}, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v11, :cond_a

    .line 296
    invoke-virtual {v11}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v11

    goto :goto_a

    :cond_a
    const/4 v11, 0x0

    :goto_a
    cmp-long v14, v24, v4

    if-eqz v14, :cond_c

    if-eqz v11, :cond_b

    const-wide/16 v14, 0x400

    or-long/2addr v2, v14

    const-wide/16 v14, 0x1000

    or-long/2addr v2, v14

    const-wide/16 v14, 0x4000

    goto :goto_b

    :cond_b
    const-wide/16 v14, 0x200

    or-long/2addr v2, v14

    const-wide/16 v14, 0x800

    or-long/2addr v2, v14

    const-wide/16 v14, 0x2000

    :goto_b
    or-long/2addr v2, v14

    :cond_c
    if-eqz v11, :cond_d

    const/4 v15, 0x0

    goto :goto_c

    :cond_d
    const/16 v15, 0x8

    :goto_c
    if-eqz v11, :cond_e

    .line 315
    iget-object v14, v1, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBindingImpl;->mboundView8:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v12, 0x7f0e00ea

    invoke-virtual {v14, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_d

    :cond_e
    iget-object v12, v1, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBindingImpl;->mboundView8:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0e00e9

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    :goto_d
    if-eqz v11, :cond_f

    const/16 v20, 0x8

    goto :goto_e

    :cond_f
    const/16 v20, 0x0

    :goto_e
    const-wide/16 v13, 0x160

    goto :goto_f

    :cond_10
    const/4 v12, 0x0

    const-wide/16 v13, 0x160

    const/4 v15, 0x0

    const/16 v20, 0x0

    :goto_f
    and-long v24, v2, v13

    cmp-long v11, v24, v4

    if-eqz v11, :cond_12

    if-eqz v0, :cond_11

    .line 323
    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->getExpenseTotalAmountText()Landroidx/databinding/ObservableField;

    move-result-object v0

    goto :goto_10

    :cond_11
    const/4 v0, 0x0

    :goto_10
    const/4 v11, 0x5

    .line 325
    invoke-virtual {v1, v11, v0}, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v0, :cond_12

    .line 330
    invoke-virtual {v0}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v11, v6

    move-object v13, v7

    move v6, v8

    move v8, v15

    move-object v7, v0

    move/from16 v0, v20

    goto :goto_11

    :cond_12
    move-object v11, v6

    move-object v13, v7

    move v6, v8

    move v8, v15

    move/from16 v0, v20

    const/4 v7, 0x0

    goto :goto_11

    :cond_13
    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_11
    and-long v14, v2, v18

    cmp-long v18, v14, v4

    if-eqz v18, :cond_14

    .line 338
    iget-object v14, v1, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBindingImpl;->barChart:Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChart;

    invoke-virtual {v14, v8}, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChart;->setVisibility(I)V

    .line 339
    iget-object v8, v1, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBindingImpl;->lineChart:Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChart;

    invoke-virtual {v8, v0}, Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChart;->setVisibility(I)V

    .line 340
    iget-object v0, v1, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBindingImpl;->mboundView8:Landroid/widget/TextView;

    invoke-static {v0, v12}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_14
    const-wide/16 v14, 0x100

    and-long/2addr v14, v2

    cmp-long v0, v14, v4

    if-eqz v0, :cond_15

    .line 345
    iget-object v0, v1, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBindingImpl;->ivSwitchDailyAndYearly:Landroid/support/v7/widget/AppCompatImageView;

    iget-object v8, v1, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBindingImpl;->mCallback40:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v8}, Landroid/support/v7/widget/AppCompatImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 346
    iget-object v0, v1, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBindingImpl;->mboundView8:Landroid/widget/TextView;

    iget-object v8, v1, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBindingImpl;->mCallback41:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 347
    iget-object v0, v1, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBindingImpl;->tvGlobalInfoExpense:Landroid/widget/TextView;

    sget-object v8, Lcom/coderpage/mine/common/Font;->QUICKSAND_MEDIUM:Lcom/coderpage/mine/common/Font;

    invoke-static {v0, v8}, Lcom/coderpage/mine/app/tally/databinding/CommonBindAdapter;->setTypeFace(Landroid/widget/TextView;Lcom/coderpage/mine/common/Font;)V

    .line 348
    iget-object v0, v1, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBindingImpl;->tvGlobalInfoIncome:Landroid/widget/TextView;

    sget-object v8, Lcom/coderpage/mine/common/Font;->QUICKSAND_MEDIUM:Lcom/coderpage/mine/common/Font;

    invoke-static {v0, v8}, Lcom/coderpage/mine/app/tally/databinding/CommonBindAdapter;->setTypeFace(Landroid/widget/TextView;Lcom/coderpage/mine/common/Font;)V

    .line 349
    iget-object v0, v1, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBindingImpl;->tvGlobalInfoLeft:Landroid/widget/TextView;

    sget-object v8, Lcom/coderpage/mine/common/Font;->QUICKSAND_MEDIUM:Lcom/coderpage/mine/common/Font;

    invoke-static {v0, v8}, Lcom/coderpage/mine/app/tally/databinding/CommonBindAdapter;->setTypeFace(Landroid/widget/TextView;Lcom/coderpage/mine/common/Font;)V

    .line 350
    iget-object v0, v1, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBindingImpl;->tvSwitchExpense:Landroid/widget/TextView;

    iget-object v8, v1, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBindingImpl;->mCallback38:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 351
    iget-object v0, v1, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBindingImpl;->tvSwitchIncome:Landroid/widget/TextView;

    iget-object v8, v1, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBindingImpl;->mCallback39:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_15
    const-wide/16 v14, 0x148

    and-long/2addr v14, v2

    cmp-long v0, v14, v4

    if-eqz v0, :cond_16

    .line 356
    iget-object v0, v1, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBindingImpl;->tvGlobalInfoDate:Landroid/widget/TextView;

    invoke-static {v0, v10}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_16
    const-wide/16 v14, 0x160

    and-long/2addr v14, v2

    cmp-long v0, v14, v4

    if-eqz v0, :cond_17

    .line 361
    iget-object v0, v1, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBindingImpl;->tvGlobalInfoExpense:Landroid/widget/TextView;

    invoke-static {v0, v7}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_17
    and-long v7, v2, v16

    cmp-long v0, v7, v4

    if-eqz v0, :cond_18

    .line 366
    iget-object v0, v1, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBindingImpl;->tvGlobalInfoIncome:Landroid/widget/TextView;

    invoke-static {v0, v11}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_18
    const-wide/16 v7, 0x142

    and-long/2addr v7, v2

    cmp-long v0, v7, v4

    if-eqz v0, :cond_19

    .line 371
    iget-object v0, v1, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBindingImpl;->tvGlobalInfoLeft:Landroid/widget/TextView;

    invoke-static {v0, v13}, Lcom/coderpage/mine/app/tally/databinding/CommonBindAdapter;->setHtmlText(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_19
    const-wide/16 v7, 0x144

    and-long/2addr v2, v7

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1a

    .line 376
    iget-object v0, v1, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBindingImpl;->tvSwitchExpense:Landroid/widget/TextView;

    invoke-static {v0, v6}, Lcom/coderpage/mine/app/tally/databinding/CommonBindAdapter;->setViewSelect(Landroid/view/View;Z)V

    .line 377
    iget-object v0, v1, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBindingImpl;->tvSwitchIncome:Landroid/widget/TextView;

    invoke-static {v0, v9}, Lcom/coderpage/mine/app/tally/databinding/CommonBindAdapter;->setViewSelect(Landroid/view/View;Z)V

    :cond_1a
    return-void

    :catchall_0
    move-exception v0

    .line 203
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 89
    monitor-enter p0

    .line 90
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 91
    monitor-exit p0

    return v0

    .line 93
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

    .line 81
    monitor-enter p0

    const-wide/16 v0, 0x100

    .line 82
    :try_start_0
    iput-wide v0, p0, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBindingImpl;->mDirtyFlags:J

    .line 83
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    invoke-virtual {p0}, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 83
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

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 138
    :cond_0
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBindingImpl;->onChangeVmExpenseTotalAmountText(Landroidx/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 136
    :cond_1
    check-cast p2, Landroidx/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBindingImpl;->onChangeVmDisplayDailyChart(Landroidx/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1

    .line 134
    :cond_2
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBindingImpl;->onChangeVmCurrentDateText(Landroidx/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 132
    :cond_3
    check-cast p2, Landroidx/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBindingImpl;->onChangeVmDisplayExpenseChart(Landroidx/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1

    .line 130
    :cond_4
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBindingImpl;->onChangeVmLeftTotalAmountText(Landroidx/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 128
    :cond_5
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBindingImpl;->onChangeVmIncomeTotalAmountText(Landroidx/databinding/ObservableField;I)Z

    move-result p1

    return p1
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "Activity"
        }
    .end annotation

    .line 121
    iput-object p1, p0, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBindingImpl;->mActivity:Landroid/app/Activity;

    return-void
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

    .line 101
    check-cast p2, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;

    invoke-virtual {p0, p2}, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBindingImpl;->setVm(Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;)V

    goto :goto_0

    :cond_0
    if-ne v0, p1, :cond_1

    .line 104
    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p0, p2}, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBindingImpl;->setActivity(Landroid/app/Activity;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
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

    .line 113
    iput-object p1, p0, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;

    .line 114
    monitor-enter p0

    .line 115
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBindingImpl;->mDirtyFlags:J

    .line 116
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0xd

    .line 117
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBindingImpl;->notifyPropertyChanged(I)V

    .line 118
    invoke-super {p0}, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBinding;->requestRebind()V

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
