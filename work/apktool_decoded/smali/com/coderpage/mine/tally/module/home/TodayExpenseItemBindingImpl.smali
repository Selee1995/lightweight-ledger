.class public Lcom/coderpage/mine/tally/module/home/TodayExpenseItemBindingImpl;
.super Lcom/coderpage/mine/tally/module/home/TodayExpenseItemBinding;
.source "TodayExpenseItemBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/FrameLayout;

.field private final mboundView1:Landroid/widget/TextView;


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

    .line 29
    sget-object v0, Lcom/coderpage/mine/tally/module/home/TodayExpenseItemBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/coderpage/mine/tally/module/home/TodayExpenseItemBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x2

    invoke-static {p1, p2, v2, v0, v1}, Lcom/coderpage/mine/tally/module/home/TodayExpenseItemBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/coderpage/mine/tally/module/home/TodayExpenseItemBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

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

    const/4 v0, 0x1

    .line 32
    invoke-direct {p0, p1, p2, v0}, Lcom/coderpage/mine/tally/module/home/TodayExpenseItemBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 195
    iput-wide v1, p0, Lcom/coderpage/mine/tally/module/home/TodayExpenseItemBindingImpl;->mDirtyFlags:J

    const/4 p1, 0x0

    .line 34
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/coderpage/mine/tally/module/home/TodayExpenseItemBindingImpl;->mboundView0:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    .line 35
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 36
    aget-object p1, p3, v0

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coderpage/mine/tally/module/home/TodayExpenseItemBindingImpl;->mboundView1:Landroid/widget/TextView;

    .line 37
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 38
    invoke-virtual {p0, p2}, Lcom/coderpage/mine/tally/module/home/TodayExpenseItemBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 40
    invoke-virtual {p0}, Lcom/coderpage/mine/tally/module/home/TodayExpenseItemBindingImpl;->invalidateAll()V

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

    .line 109
    monitor-enter p0

    .line 110
    :try_start_0
    iget-wide p1, p0, Lcom/coderpage/mine/tally/module/home/TodayExpenseItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/coderpage/mine/tally/module/home/TodayExpenseItemBindingImpl;->mDirtyFlags:J

    .line 111
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
.method protected executeBindings()V
    .locals 17

    move-object/from16 v1, p0

    .line 120
    monitor-enter p0

    .line 121
    :try_start_0
    iget-wide v2, v1, Lcom/coderpage/mine/tally/module/home/TodayExpenseItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 122
    iput-wide v4, v1, Lcom/coderpage/mine/tally/module/home/TodayExpenseItemBindingImpl;->mDirtyFlags:J

    .line 123
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    iget-object v0, v1, Lcom/coderpage/mine/tally/module/home/TodayExpenseItemBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;

    .line 130
    iget-object v6, v1, Lcom/coderpage/mine/tally/module/home/TodayExpenseItemBindingImpl;->mData:Lcom/coderpage/mine/app/tally/module/home/model/HomeTodayDayRecordsModel;

    const-wide/16 v7, 0x1b

    and-long v9, v2, v7

    const-wide/16 v11, 0x20

    const/4 v13, 0x0

    cmp-long v15, v9, v4

    if-eqz v15, :cond_3

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;->getNeedFingerprint()Landroidx/databinding/ObservableBoolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 141
    :goto_0
    invoke-virtual {v1, v13, v0}, Lcom/coderpage/mine/tally/module/home/TodayExpenseItemBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v0, :cond_1

    .line 146
    invoke-virtual {v0}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    cmp-long v15, v9, v4

    if-eqz v15, :cond_4

    if-eqz v0, :cond_2

    const-wide/16 v9, 0x40

    or-long/2addr v2, v9

    goto :goto_2

    :cond_2
    or-long/2addr v2, v11

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_2
    and-long v9, v2, v11

    const/4 v11, 0x1

    const/4 v12, 0x3

    const v15, 0x7f0e00da

    cmp-long v14, v9, v4

    if-eqz v14, :cond_6

    if-eqz v6, :cond_5

    .line 165
    invoke-virtual {v6}, Lcom/coderpage/mine/app/tally/module/home/model/HomeTodayDayRecordsModel;->getDisplayBudgetAmount()Ljava/lang/String;

    move-result-object v14

    .line 166
    invoke-virtual {v6}, Lcom/coderpage/mine/app/tally/module/home/model/HomeTodayDayRecordsModel;->getDisplayExpenseAmount()Ljava/lang/String;

    move-result-object v15

    .line 167
    invoke-virtual {v6}, Lcom/coderpage/mine/app/tally/module/home/model/HomeTodayDayRecordsModel;->getDisplayIncomeAmount()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_5
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v6, 0x0

    .line 172
    :goto_3
    iget-object v10, v1, Lcom/coderpage/mine/tally/module/home/TodayExpenseItemBindingImpl;->mboundView1:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    new-array v9, v12, [Ljava/lang/Object;

    aput-object v14, v9, v13

    aput-object v15, v9, v11

    const/4 v14, 0x2

    aput-object v6, v9, v14

    const v12, 0x7f0e00da

    invoke-virtual {v10, v12, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_6
    const/4 v6, 0x0

    :goto_4
    and-long/2addr v7, v2

    cmp-long v9, v7, v4

    if-eqz v9, :cond_8

    if-eqz v0, :cond_7

    .line 178
    iget-object v0, v1, Lcom/coderpage/mine/tally/module/home/TodayExpenseItemBindingImpl;->mboundView1:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v12, 0x3

    new-array v6, v12, [Ljava/lang/Object;

    const-string v9, "***"

    aput-object v9, v6, v13

    const-string v9, "***"

    aput-object v9, v6, v11

    const-string v9, "***"

    const/4 v14, 0x2

    aput-object v9, v6, v14

    const v15, 0x7f0e00da

    invoke-virtual {v0, v15, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    goto :goto_5

    :cond_7
    move-object v14, v6

    goto :goto_5

    :cond_8
    const/4 v14, 0x0

    :goto_5
    const-wide/16 v9, 0x10

    and-long/2addr v2, v9

    cmp-long v0, v2, v4

    if-eqz v0, :cond_9

    .line 184
    iget-object v0, v1, Lcom/coderpage/mine/tally/module/home/TodayExpenseItemBindingImpl;->mboundView1:Landroid/widget/TextView;

    sget-object v2, Lcom/coderpage/mine/common/Font;->QUICKSAND_BOLD:Lcom/coderpage/mine/common/Font;

    invoke-static {v0, v2}, Lcom/coderpage/mine/app/tally/databinding/CommonBindAdapter;->setTypeFace(Landroid/widget/TextView;Lcom/coderpage/mine/common/Font;)V

    :cond_9
    cmp-long v0, v7, v4

    if-eqz v0, :cond_a

    .line 189
    iget-object v0, v1, Lcom/coderpage/mine/tally/module/home/TodayExpenseItemBindingImpl;->mboundView1:Landroid/widget/TextView;

    invoke-static {v0, v14}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_a
    return-void

    :catchall_0
    move-exception v0

    .line 123
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 53
    monitor-enter p0

    .line 54
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/tally/module/home/TodayExpenseItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 55
    monitor-exit p0

    return v0

    .line 57
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

    .line 45
    monitor-enter p0

    const-wide/16 v0, 0x10

    .line 46
    :try_start_0
    iput-wide v0, p0, Lcom/coderpage/mine/tally/module/home/TodayExpenseItemBindingImpl;->mDirtyFlags:J

    .line 47
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    invoke-virtual {p0}, Lcom/coderpage/mine/tally/module/home/TodayExpenseItemBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 47
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

    .line 103
    :cond_0
    check-cast p2, Landroidx/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lcom/coderpage/mine/tally/module/home/TodayExpenseItemBindingImpl;->onChangeVmNeedFingerprint(Landroidx/databinding/ObservableBoolean;I)Z

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

    .line 88
    iput-object p1, p0, Lcom/coderpage/mine/tally/module/home/TodayExpenseItemBindingImpl;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public setData(Lcom/coderpage/mine/app/tally/module/home/model/HomeTodayDayRecordsModel;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "Data"
        }
    .end annotation

    .line 91
    iput-object p1, p0, Lcom/coderpage/mine/tally/module/home/TodayExpenseItemBindingImpl;->mData:Lcom/coderpage/mine/app/tally/module/home/model/HomeTodayDayRecordsModel;

    .line 92
    monitor-enter p0

    .line 93
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/tally/module/home/TodayExpenseItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coderpage/mine/tally/module/home/TodayExpenseItemBindingImpl;->mDirtyFlags:J

    .line 94
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x5

    .line 95
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/tally/module/home/TodayExpenseItemBindingImpl;->notifyPropertyChanged(I)V

    .line 96
    invoke-super {p0}, Lcom/coderpage/mine/tally/module/home/TodayExpenseItemBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 94
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

    .line 65
    check-cast p2, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;

    invoke-virtual {p0, p2}, Lcom/coderpage/mine/tally/module/home/TodayExpenseItemBindingImpl;->setVm(Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;)V

    goto :goto_0

    :cond_0
    if-ne v0, p1, :cond_1

    .line 68
    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p0, p2}, Lcom/coderpage/mine/tally/module/home/TodayExpenseItemBindingImpl;->setActivity(Landroid/app/Activity;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    if-ne v1, p1, :cond_2

    .line 71
    check-cast p2, Lcom/coderpage/mine/app/tally/module/home/model/HomeTodayDayRecordsModel;

    invoke-virtual {p0, p2}, Lcom/coderpage/mine/tally/module/home/TodayExpenseItemBindingImpl;->setData(Lcom/coderpage/mine/app/tally/module/home/model/HomeTodayDayRecordsModel;)V

    goto :goto_0

    :cond_2
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

    .line 80
    iput-object p1, p0, Lcom/coderpage/mine/tally/module/home/TodayExpenseItemBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;

    .line 81
    monitor-enter p0

    .line 82
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/tally/module/home/TodayExpenseItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coderpage/mine/tally/module/home/TodayExpenseItemBindingImpl;->mDirtyFlags:J

    .line 83
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0xd

    .line 84
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/tally/module/home/TodayExpenseItemBindingImpl;->notifyPropertyChanged(I)V

    .line 85
    invoke-super {p0}, Lcom/coderpage/mine/tally/module/home/TodayExpenseItemBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 83
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
