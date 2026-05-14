.class public Lcom/coderpage/mine/module/search/SearchActivityBindingImpl;
.super Lcom/coderpage/mine/module/search/SearchActivityBinding;
.source "SearchActivityBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private etSearchandroidTextAttrChanged:Landroidx/databinding/InverseBindingListener;

.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/coderpage/mine/module/search/SearchActivityBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0900cc

    const/4 v2, 0x4

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0900d1

    const/4 v2, 0x5

    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0900cf

    const/4 v2, 0x6

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f090115

    const/4 v2, 0x7

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

    .line 68
    sget-object v0, Lcom/coderpage/mine/module/search/SearchActivityBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/coderpage/mine/module/search/SearchActivityBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0x8

    invoke-static {p1, p2, v2, v0, v1}, Lcom/coderpage/mine/module/search/SearchActivityBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/coderpage/mine/module/search/SearchActivityBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 12
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

    const/4 v0, 0x3

    .line 71
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/EditText;

    const/4 v0, 0x2

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Lcom/coderpage/base/widget/LoadingLayout;

    const/4 v0, 0x1

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroid/support/constraint/ConstraintLayout;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroid/support/v7/widget/RecyclerView;

    const/4 v0, 0x6

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Landroid/support/v7/widget/RecyclerView;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    const/4 v0, 0x7

    aget-object v0, p3, v0

    move-object v11, v0

    check-cast v11, Landroid/support/v7/widget/Toolbar;

    const/4 v4, 0x2

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v11}, Lcom/coderpage/mine/module/search/SearchActivityBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/EditText;Lcom/coderpage/base/widget/LoadingLayout;Landroid/support/constraint/ConstraintLayout;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView;Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;Landroid/support/v7/widget/Toolbar;)V

    .line 29
    new-instance p1, Lcom/coderpage/mine/module/search/SearchActivityBindingImpl$1;

    invoke-direct {p1, p0}, Lcom/coderpage/mine/module/search/SearchActivityBindingImpl$1;-><init>(Lcom/coderpage/mine/module/search/SearchActivityBindingImpl;)V

    iput-object p1, p0, Lcom/coderpage/mine/module/search/SearchActivityBindingImpl;->etSearchandroidTextAttrChanged:Landroidx/databinding/InverseBindingListener;

    const-wide/16 v0, -0x1

    .line 242
    iput-wide v0, p0, Lcom/coderpage/mine/module/search/SearchActivityBindingImpl;->mDirtyFlags:J

    .line 80
    iget-object p1, p0, Lcom/coderpage/mine/module/search/SearchActivityBindingImpl;->etSearch:Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 81
    iget-object p1, p0, Lcom/coderpage/mine/module/search/SearchActivityBindingImpl;->loadingLayout:Lcom/coderpage/base/widget/LoadingLayout;

    invoke-virtual {p1, v0}, Lcom/coderpage/base/widget/LoadingLayout;->setTag(Ljava/lang/Object;)V

    .line 82
    iget-object p1, p0, Lcom/coderpage/mine/module/search/SearchActivityBindingImpl;->lySearchHistoryView:Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {p1, v0}, Landroid/support/constraint/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 83
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/coderpage/mine/module/search/SearchActivityBindingImpl;->mboundView0:Landroid/widget/FrameLayout;

    .line 84
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 85
    invoke-virtual {p0, p2}, Lcom/coderpage/mine/module/search/SearchActivityBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 87
    invoke-virtual {p0}, Lcom/coderpage/mine/module/search/SearchActivityBindingImpl;->invalidateAll()V

    return-void
.end method

.method private onChangeVmSearchKeyWord(Landroidx/databinding/ObservableField;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "VmSearchKeyWord",
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

    .line 150
    monitor-enter p0

    .line 151
    :try_start_0
    iget-wide p1, p0, Lcom/coderpage/mine/module/search/SearchActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/coderpage/mine/module/search/SearchActivityBindingImpl;->mDirtyFlags:J

    .line 152
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

.method private onChangeVmShowSearchResult(Landroidx/databinding/ObservableBoolean;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "VmShowSearchResult",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 141
    monitor-enter p0

    .line 142
    :try_start_0
    iget-wide p1, p0, Lcom/coderpage/mine/module/search/SearchActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/coderpage/mine/module/search/SearchActivityBindingImpl;->mDirtyFlags:J

    .line 143
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

    .line 161
    monitor-enter p0

    .line 162
    :try_start_0
    iget-wide v2, v1, Lcom/coderpage/mine/module/search/SearchActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 163
    iput-wide v4, v1, Lcom/coderpage/mine/module/search/SearchActivityBindingImpl;->mDirtyFlags:J

    .line 164
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    iget-object v0, v1, Lcom/coderpage/mine/module/search/SearchActivityBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;

    const-wide/16 v6, 0xf

    and-long/2addr v6, v2

    const-wide/16 v8, 0xd

    const-wide/16 v10, 0xe

    const/4 v12, 0x0

    const/4 v13, 0x0

    cmp-long v14, v6, v4

    if-eqz v14, :cond_9

    and-long v6, v2, v8

    cmp-long v14, v6, v4

    if-eqz v14, :cond_6

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;->getShowSearchResult()Landroidx/databinding/ObservableBoolean;

    move-result-object v14

    goto :goto_0

    :cond_0
    move-object v14, v12

    .line 182
    :goto_0
    invoke-virtual {v1, v13, v14}, Lcom/coderpage/mine/module/search/SearchActivityBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v14, :cond_1

    .line 187
    invoke-virtual {v14}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v14

    goto :goto_1

    :cond_1
    const/4 v14, 0x0

    :goto_1
    cmp-long v15, v6, v4

    if-eqz v15, :cond_3

    if-eqz v14, :cond_2

    const-wide/16 v6, 0x20

    or-long/2addr v2, v6

    const-wide/16 v6, 0x80

    goto :goto_2

    :cond_2
    const-wide/16 v6, 0x10

    or-long/2addr v2, v6

    const-wide/16 v6, 0x40

    :goto_2
    or-long/2addr v2, v6

    :cond_3
    const/16 v6, 0x8

    if-eqz v14, :cond_4

    const/16 v7, 0x8

    goto :goto_3

    :cond_4
    const/4 v7, 0x0

    :goto_3
    if-eqz v14, :cond_5

    goto :goto_4

    :cond_5
    const/16 v13, 0x8

    :goto_4
    move v6, v13

    move v13, v7

    goto :goto_5

    :cond_6
    const/4 v6, 0x0

    :goto_5
    and-long v14, v2, v10

    cmp-long v7, v14, v4

    if-eqz v7, :cond_8

    if-eqz v0, :cond_7

    .line 210
    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;->getSearchKeyWord()Landroidx/databinding/ObservableField;

    move-result-object v0

    goto :goto_6

    :cond_7
    move-object v0, v12

    :goto_6
    const/4 v7, 0x1

    .line 212
    invoke-virtual {v1, v7, v0}, Lcom/coderpage/mine/module/search/SearchActivityBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v0, :cond_8

    .line 217
    invoke-virtual {v0}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_7

    :cond_8
    move-object v0, v12

    :goto_7
    move/from16 v16, v13

    move v13, v6

    move/from16 v6, v16

    goto :goto_8

    :cond_9
    move-object v0, v12

    const/4 v6, 0x0

    :goto_8
    and-long/2addr v10, v2

    cmp-long v7, v10, v4

    if-eqz v7, :cond_a

    .line 225
    iget-object v7, v1, Lcom/coderpage/mine/module/search/SearchActivityBindingImpl;->etSearch:Landroid/widget/EditText;

    invoke-static {v7, v0}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_a
    const-wide/16 v10, 0x8

    and-long/2addr v10, v2

    cmp-long v0, v10, v4

    if-eqz v0, :cond_b

    .line 230
    iget-object v0, v1, Lcom/coderpage/mine/module/search/SearchActivityBindingImpl;->etSearch:Landroid/widget/EditText;

    move-object v7, v12

    check-cast v7, Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;

    move-object v10, v12

    check-cast v10, Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;

    check-cast v12, Landroidx/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;

    iget-object v11, v1, Lcom/coderpage/mine/module/search/SearchActivityBindingImpl;->etSearchandroidTextAttrChanged:Landroidx/databinding/InverseBindingListener;

    invoke-static {v0, v7, v10, v12, v11}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setTextWatcher(Landroid/widget/TextView;Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;Landroidx/databinding/InverseBindingListener;)V

    :cond_b
    and-long/2addr v2, v8

    cmp-long v0, v2, v4

    if-eqz v0, :cond_c

    .line 235
    iget-object v0, v1, Lcom/coderpage/mine/module/search/SearchActivityBindingImpl;->loadingLayout:Lcom/coderpage/base/widget/LoadingLayout;

    invoke-virtual {v0, v13}, Lcom/coderpage/base/widget/LoadingLayout;->setVisibility(I)V

    .line 236
    iget-object v0, v1, Lcom/coderpage/mine/module/search/SearchActivityBindingImpl;->lySearchHistoryView:Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v0, v6}, Landroid/support/constraint/ConstraintLayout;->setVisibility(I)V

    :cond_c
    return-void

    :catchall_0
    move-exception v0

    .line 164
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 100
    monitor-enter p0

    .line 101
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/module/search/SearchActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 102
    monitor-exit p0

    return v0

    .line 104
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

    .line 92
    monitor-enter p0

    const-wide/16 v0, 0x8

    .line 93
    :try_start_0
    iput-wide v0, p0, Lcom/coderpage/mine/module/search/SearchActivityBindingImpl;->mDirtyFlags:J

    .line 94
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    invoke-virtual {p0}, Lcom/coderpage/mine/module/search/SearchActivityBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 94
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

    .line 135
    :cond_0
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lcom/coderpage/mine/module/search/SearchActivityBindingImpl;->onChangeVmSearchKeyWord(Landroidx/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 133
    :cond_1
    check-cast p2, Landroidx/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lcom/coderpage/mine/module/search/SearchActivityBindingImpl;->onChangeVmShowSearchResult(Landroidx/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1
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

    .line 112
    check-cast p2, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;

    invoke-virtual {p0, p2}, Lcom/coderpage/mine/module/search/SearchActivityBindingImpl;->setVm(Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setVm(Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "Vm"
        }
    .end annotation

    .line 121
    iput-object p1, p0, Lcom/coderpage/mine/module/search/SearchActivityBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;

    .line 122
    monitor-enter p0

    .line 123
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/module/search/SearchActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coderpage/mine/module/search/SearchActivityBindingImpl;->mDirtyFlags:J

    .line 124
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0xd

    .line 125
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/module/search/SearchActivityBindingImpl;->notifyPropertyChanged(I)V

    .line 126
    invoke-super {p0}, Lcom/coderpage/mine/module/search/SearchActivityBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 124
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
