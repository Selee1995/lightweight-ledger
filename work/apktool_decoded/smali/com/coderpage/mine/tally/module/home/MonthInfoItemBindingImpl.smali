.class public Lcom/coderpage/mine/tally/module/home/MonthInfoItemBindingImpl;
.super Lcom/coderpage/mine/tally/module/home/MonthInfoItemBinding;
.source "MonthInfoItemBindingImpl.java"

# interfaces
.implements Lcom/coderpage/mine/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private final mCallback26:Landroid/view/View$OnClickListener;

.field private final mCallback27:Landroid/view/View$OnClickListener;

.field private final mCallback28:Landroid/view/View$OnClickListener;

.field private final mCallback29:Landroid/view/View$OnClickListener;

.field private mDirtyFlags:J

.field private final mboundView0:Landroid/support/constraint/ConstraintLayout;

.field private final mboundView5:Landroid/support/v7/widget/AppCompatImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090150

    const/4 v2, 0x6

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f090152

    const/4 v2, 0x7

    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f090076

    const/16 v2, 0x8

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f090134

    const/16 v2, 0x9

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

    .line 41
    sget-object v0, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0xa

    invoke-static {p1, p2, v2, v0, v1}, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

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

    move-object/from16 v12, p0

    const/16 v0, 0x8

    .line 44
    aget-object v0, p3, v0

    move-object v4, v0

    check-cast v4, Landroid/support/v7/widget/AppCompatImageView;

    const/16 v0, 0x9

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/TextView;

    const/4 v13, 0x4

    aget-object v0, p3, v13

    move-object v6, v0

    check-cast v6, Landroid/widget/TextView;

    const/4 v14, 0x3

    aget-object v0, p3, v14

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    const/4 v15, 0x1

    aget-object v0, p3, v15

    move-object v8, v0

    check-cast v8, Landroid/widget/TextView;

    const/4 v0, 0x6

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Landroid/widget/TextView;

    const/4 v11, 0x2

    aget-object v0, p3, v11

    move-object v10, v0

    check-cast v10, Landroid/widget/TextView;

    const/4 v0, 0x7

    aget-object v0, p3, v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/widget/TextView;

    const/4 v3, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v15, 0x2

    move-object/from16 v11, v16

    invoke-direct/range {v0 .. v11}, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/support/v7/widget/AppCompatImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    const-wide/16 v0, -0x1

    .line 391
    iput-wide v0, v12, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBindingImpl;->mDirtyFlags:J

    const/4 v0, 0x0

    .line 54
    aget-object v0, p3, v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout;

    iput-object v0, v12, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBindingImpl;->mboundView0:Landroid/support/constraint/ConstraintLayout;

    const/4 v1, 0x0

    .line 55
    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x5

    .line 56
    aget-object v0, p3, v0

    check-cast v0, Landroid/support/v7/widget/AppCompatImageView;

    iput-object v0, v12, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBindingImpl;->mboundView5:Landroid/support/v7/widget/AppCompatImageView;

    .line 57
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatImageView;->setTag(Ljava/lang/Object;)V

    .line 58
    iget-object v0, v12, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBindingImpl;->tvMonthBudgetLeft:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 59
    iget-object v0, v12, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBindingImpl;->tvMonthBudgetLeftLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 60
    iget-object v0, v12, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBindingImpl;->tvMonthExpense:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 61
    iget-object v0, v12, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBindingImpl;->tvMonthIncome:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    .line 62
    invoke-virtual {v12, v0}, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 64
    new-instance v0, Lcom/coderpage/mine/generated/callback/OnClickListener;

    invoke-direct {v0, v12, v15}, Lcom/coderpage/mine/generated/callback/OnClickListener;-><init>(Lcom/coderpage/mine/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v12, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBindingImpl;->mCallback27:Landroid/view/View$OnClickListener;

    .line 65
    new-instance v0, Lcom/coderpage/mine/generated/callback/OnClickListener;

    invoke-direct {v0, v12, v13}, Lcom/coderpage/mine/generated/callback/OnClickListener;-><init>(Lcom/coderpage/mine/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v12, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBindingImpl;->mCallback29:Landroid/view/View$OnClickListener;

    .line 66
    new-instance v0, Lcom/coderpage/mine/generated/callback/OnClickListener;

    invoke-direct {v0, v12, v14}, Lcom/coderpage/mine/generated/callback/OnClickListener;-><init>(Lcom/coderpage/mine/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v12, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBindingImpl;->mCallback28:Landroid/view/View$OnClickListener;

    .line 67
    new-instance v0, Lcom/coderpage/mine/generated/callback/OnClickListener;

    const/4 v1, 0x1

    invoke-direct {v0, v12, v1}, Lcom/coderpage/mine/generated/callback/OnClickListener;-><init>(Lcom/coderpage/mine/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v12, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBindingImpl;->mCallback26:Landroid/view/View$OnClickListener;

    .line 68
    invoke-virtual/range {p0 .. p0}, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBindingImpl;->invalidateAll()V

    return-void
.end method

.method private onChangeVmBudgetLeftMoney(Landroidx/databinding/ObservableField;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "VmBudgetLeftMoney",
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

    .line 152
    monitor-enter p0

    .line 153
    :try_start_0
    iget-wide p1, p0, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBindingImpl;->mDirtyFlags:J

    .line 154
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

.method private onChangeVmExpenseMoney(Landroidx/databinding/ObservableField;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "VmExpenseMoney",
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

    .line 170
    monitor-enter p0

    .line 171
    :try_start_0
    iget-wide p1, p0, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x8

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBindingImpl;->mDirtyFlags:J

    .line 172
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

.method private onChangeVmHideMoney(Landroidx/databinding/ObservableField;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "VmHideMoney",
            "fieldId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/Boolean;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 143
    monitor-enter p0

    .line 144
    :try_start_0
    iget-wide p1, p0, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBindingImpl;->mDirtyFlags:J

    .line 145
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

.method private onChangeVmIncomeMoney(Landroidx/databinding/ObservableField;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "VmIncomeMoney",
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

    .line 161
    monitor-enter p0

    .line 162
    :try_start_0
    iget-wide p1, p0, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x4

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBindingImpl;->mDirtyFlags:J

    .line 163
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

    .line 333
    :cond_0
    iget-object p1, p0, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/home/HomeMonthInfoViewModel;

    .line 335
    iget-object v1, p0, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBindingImpl;->mActivity:Landroid/app/Activity;

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    :cond_1
    if-eqz p2, :cond_8

    .line 344
    invoke-virtual {p1, v1}, Lcom/coderpage/mine/app/tally/module/home/HomeMonthInfoViewModel;->onShowOrHideMoneyClick(Landroid/app/Activity;)V

    goto :goto_0

    .line 353
    :cond_2
    iget-object p1, p0, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/home/HomeMonthInfoViewModel;

    .line 355
    iget-object v1, p0, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBindingImpl;->mActivity:Landroid/app/Activity;

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    :cond_3
    if-eqz p2, :cond_8

    .line 364
    invoke-virtual {p1, v1}, Lcom/coderpage/mine/app/tally/module/home/HomeMonthInfoViewModel;->onBudgetMoneyClick(Landroid/app/Activity;)V

    goto :goto_0

    .line 313
    :cond_4
    iget-object p1, p0, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/home/HomeMonthInfoViewModel;

    .line 315
    iget-object v1, p0, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBindingImpl;->mActivity:Landroid/app/Activity;

    if-eqz p1, :cond_5

    const/4 p2, 0x1

    :cond_5
    if-eqz p2, :cond_8

    .line 324
    invoke-virtual {p1, v1}, Lcom/coderpage/mine/app/tally/module/home/HomeMonthInfoViewModel;->onBudgetMoneyClick(Landroid/app/Activity;)V

    goto :goto_0

    .line 373
    :cond_6
    iget-object p1, p0, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/home/HomeMonthInfoViewModel;

    .line 375
    iget-object v1, p0, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBindingImpl;->mActivity:Landroid/app/Activity;

    if-eqz p1, :cond_7

    const/4 p2, 0x1

    :cond_7
    if-eqz p2, :cond_8

    .line 384
    invoke-virtual {p1, v1}, Lcom/coderpage/mine/app/tally/module/home/HomeMonthInfoViewModel;->onMonthInfoClick(Landroid/app/Activity;)V

    :cond_8
    :goto_0
    return-void
.end method

.method protected executeBindings()V
    .locals 21

    move-object/from16 v1, p0

    .line 181
    monitor-enter p0

    .line 182
    :try_start_0
    iget-wide v2, v1, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 183
    iput-wide v4, v1, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBindingImpl;->mDirtyFlags:J

    .line 184
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    iget-object v0, v1, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/home/HomeMonthInfoViewModel;

    .line 196
    iget-object v6, v1, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBindingImpl;->mActivity:Landroid/app/Activity;

    const-wide/16 v6, 0x9f

    and-long/2addr v6, v2

    const-wide/16 v10, 0x94

    const-wide/16 v12, 0x92

    const-wide/16 v14, 0x91

    const/4 v8, 0x0

    cmp-long v18, v6, v4

    if-eqz v18, :cond_9

    and-long v6, v2, v14

    const/4 v9, 0x1

    cmp-long v19, v6, v4

    if-eqz v19, :cond_2

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/home/HomeMonthInfoViewModel;->getHideMoney()Landroidx/databinding/ObservableField;

    move-result-object v6

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 208
    :goto_0
    invoke-virtual {v1, v8, v6}, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v6, :cond_1

    .line 213
    invoke-virtual {v6}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    .line 218
    :goto_1
    invoke-static {v6}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v6

    xor-int/2addr v6, v9

    .line 226
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v6}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v8

    :cond_2
    and-long v6, v2, v12

    cmp-long v19, v6, v4

    if-eqz v19, :cond_4

    if-eqz v0, :cond_3

    .line 232
    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/home/HomeMonthInfoViewModel;->getBudgetLeftMoney()Landroidx/databinding/ObservableField;

    move-result-object v6

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    .line 234
    :goto_2
    invoke-virtual {v1, v9, v6}, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v6, :cond_4

    .line 239
    invoke-virtual {v6}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_3

    :cond_4
    const/4 v6, 0x0

    :goto_3
    and-long v19, v2, v10

    cmp-long v7, v19, v4

    if-eqz v7, :cond_6

    if-eqz v0, :cond_5

    .line 246
    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/home/HomeMonthInfoViewModel;->getIncomeMoney()Landroidx/databinding/ObservableField;

    move-result-object v7

    goto :goto_4

    :cond_5
    const/4 v7, 0x0

    :goto_4
    const/4 v9, 0x2

    .line 248
    invoke-virtual {v1, v9, v7}, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v7, :cond_6

    .line 253
    invoke-virtual {v7}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    goto :goto_5

    :cond_6
    const/4 v7, 0x0

    :goto_5
    const-wide/16 v16, 0x98

    and-long v19, v2, v16

    cmp-long v9, v19, v4

    if-eqz v9, :cond_8

    if-eqz v0, :cond_7

    .line 260
    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/home/HomeMonthInfoViewModel;->getExpenseMoney()Landroidx/databinding/ObservableField;

    move-result-object v0

    goto :goto_6

    :cond_7
    const/4 v0, 0x0

    :goto_6
    const/4 v9, 0x3

    .line 262
    invoke-virtual {v1, v9, v0}, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v0, :cond_8

    .line 267
    invoke-virtual {v0}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    move-object v0, v9

    move-object v9, v6

    goto :goto_7

    :cond_8
    move-object v9, v6

    const/4 v0, 0x0

    goto :goto_7

    :cond_9
    const/4 v0, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    :goto_7
    const-wide/16 v18, 0x80

    and-long v18, v2, v18

    cmp-long v6, v18, v4

    if-eqz v6, :cond_a

    .line 275
    iget-object v6, v1, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBindingImpl;->mboundView0:Landroid/support/constraint/ConstraintLayout;

    iget-object v10, v1, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBindingImpl;->mCallback26:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v10}, Landroid/support/constraint/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    iget-object v6, v1, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBindingImpl;->mboundView5:Landroid/support/v7/widget/AppCompatImageView;

    iget-object v10, v1, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBindingImpl;->mCallback29:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v10}, Landroid/support/v7/widget/AppCompatImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    iget-object v6, v1, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBindingImpl;->tvMonthBudgetLeft:Landroid/widget/TextView;

    sget-object v10, Lcom/coderpage/mine/common/Font;->QUICKSAND_MEDIUM:Lcom/coderpage/mine/common/Font;

    invoke-static {v6, v10}, Lcom/coderpage/mine/app/tally/databinding/CommonBindAdapter;->setTypeFace(Landroid/widget/TextView;Lcom/coderpage/mine/common/Font;)V

    .line 278
    iget-object v6, v1, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBindingImpl;->tvMonthBudgetLeft:Landroid/widget/TextView;

    iget-object v10, v1, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBindingImpl;->mCallback28:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    iget-object v6, v1, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBindingImpl;->tvMonthBudgetLeftLabel:Landroid/widget/TextView;

    iget-object v10, v1, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBindingImpl;->mCallback27:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    iget-object v6, v1, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBindingImpl;->tvMonthExpense:Landroid/widget/TextView;

    sget-object v10, Lcom/coderpage/mine/common/Font;->QUICKSAND_BOLD:Lcom/coderpage/mine/common/Font;

    invoke-static {v6, v10}, Lcom/coderpage/mine/app/tally/databinding/CommonBindAdapter;->setTypeFace(Landroid/widget/TextView;Lcom/coderpage/mine/common/Font;)V

    .line 281
    iget-object v6, v1, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBindingImpl;->tvMonthIncome:Landroid/widget/TextView;

    sget-object v10, Lcom/coderpage/mine/common/Font;->QUICKSAND_MEDIUM:Lcom/coderpage/mine/common/Font;

    invoke-static {v6, v10}, Lcom/coderpage/mine/app/tally/databinding/CommonBindAdapter;->setTypeFace(Landroid/widget/TextView;Lcom/coderpage/mine/common/Font;)V

    :cond_a
    and-long v10, v2, v14

    cmp-long v6, v10, v4

    if-eqz v6, :cond_b

    .line 286
    iget-object v6, v1, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBindingImpl;->mboundView5:Landroid/support/v7/widget/AppCompatImageView;

    invoke-static {v6, v8}, Lcom/coderpage/mine/app/tally/databinding/CommonBindAdapter;->setViewSelect(Landroid/view/View;Z)V

    :cond_b
    and-long v10, v2, v12

    cmp-long v6, v10, v4

    if-eqz v6, :cond_c

    .line 291
    iget-object v6, v1, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBindingImpl;->tvMonthBudgetLeft:Landroid/widget/TextView;

    invoke-static {v6, v9}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_c
    const-wide/16 v8, 0x98

    and-long/2addr v8, v2

    cmp-long v6, v8, v4

    if-eqz v6, :cond_d

    .line 296
    iget-object v6, v1, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBindingImpl;->tvMonthExpense:Landroid/widget/TextView;

    invoke-static {v6, v0}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_d
    const-wide/16 v8, 0x94

    and-long/2addr v2, v8

    cmp-long v0, v2, v4

    if-eqz v0, :cond_e

    .line 301
    iget-object v0, v1, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBindingImpl;->tvMonthIncome:Landroid/widget/TextView;

    invoke-static {v0, v7}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_e
    return-void

    :catchall_0
    move-exception v0

    .line 184
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 81
    monitor-enter p0

    .line 82
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 83
    monitor-exit p0

    return v0

    .line 85
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

    .line 73
    monitor-enter p0

    const-wide/16 v0, 0x80

    .line 74
    :try_start_0
    iput-wide v0, p0, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBindingImpl;->mDirtyFlags:J

    .line 75
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    invoke-virtual {p0}, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 75
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

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 137
    :cond_0
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBindingImpl;->onChangeVmExpenseMoney(Landroidx/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 135
    :cond_1
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBindingImpl;->onChangeVmIncomeMoney(Landroidx/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 133
    :cond_2
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBindingImpl;->onChangeVmBudgetLeftMoney(Landroidx/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 131
    :cond_3
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBindingImpl;->onChangeVmHideMoney(Landroidx/databinding/ObservableField;I)Z

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
    iput-object p1, p0, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBindingImpl;->mActivity:Landroid/app/Activity;

    .line 120
    monitor-enter p0

    .line 121
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBindingImpl;->mDirtyFlags:J

    .line 122
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 123
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBindingImpl;->notifyPropertyChanged(I)V

    .line 124
    invoke-super {p0}, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBinding;->requestRebind()V

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

.method public setData(Lcom/coderpage/mine/app/tally/module/home/model/HomeMonthModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "Data"
        }
    .end annotation

    .line 116
    iput-object p1, p0, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBindingImpl;->mData:Lcom/coderpage/mine/app/tally/module/home/model/HomeMonthModel;

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

    .line 93
    check-cast p2, Lcom/coderpage/mine/app/tally/module/home/HomeMonthInfoViewModel;

    invoke-virtual {p0, p2}, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBindingImpl;->setVm(Lcom/coderpage/mine/app/tally/module/home/HomeMonthInfoViewModel;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    if-ne v1, p1, :cond_1

    .line 96
    check-cast p2, Lcom/coderpage/mine/app/tally/module/home/model/HomeMonthModel;

    invoke-virtual {p0, p2}, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBindingImpl;->setData(Lcom/coderpage/mine/app/tally/module/home/model/HomeMonthModel;)V

    goto :goto_0

    :cond_1
    if-ne v0, p1, :cond_2

    .line 99
    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p0, p2}, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBindingImpl;->setActivity(Landroid/app/Activity;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setVm(Lcom/coderpage/mine/app/tally/module/home/HomeMonthInfoViewModel;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "Vm"
        }
    .end annotation

    .line 108
    iput-object p1, p0, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/home/HomeMonthInfoViewModel;

    .line 109
    monitor-enter p0

    .line 110
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBindingImpl;->mDirtyFlags:J

    .line 111
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0xd

    .line 112
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBindingImpl;->notifyPropertyChanged(I)V

    .line 113
    invoke-super {p0}, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 111
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
