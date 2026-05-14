.class public Lcom/coderpage/mine/tally/module/records/RecordDateTitleItemBindingImpl;
.super Lcom/coderpage/mine/tally/module/records/RecordDateTitleItemBinding;
.source "RecordDateTitleItemBindingImpl.java"

# interfaces
.implements Lcom/coderpage/mine/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private final mCallback1:Landroid/view/View$OnClickListener;

.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/FrameLayout;


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
    sget-object v0, Lcom/coderpage/mine/tally/module/records/RecordDateTitleItemBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/coderpage/mine/tally/module/records/RecordDateTitleItemBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x2

    invoke-static {p1, p2, v2, v0, v1}, Lcom/coderpage/mine/tally/module/records/RecordDateTitleItemBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/coderpage/mine/tally/module/records/RecordDateTitleItemBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 5
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
    aget-object v1, p3, v0

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/coderpage/mine/tally/module/records/RecordDateTitleItemBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;)V

    const-wide/16 v3, -0x1

    .line 178
    iput-wide v3, p0, Lcom/coderpage/mine/tally/module/records/RecordDateTitleItemBindingImpl;->mDirtyFlags:J

    .line 35
    aget-object p1, p3, v2

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/coderpage/mine/tally/module/records/RecordDateTitleItemBindingImpl;->mboundView0:Landroid/widget/FrameLayout;

    const/4 p3, 0x0

    .line 36
    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 37
    iget-object p1, p0, Lcom/coderpage/mine/tally/module/records/RecordDateTitleItemBindingImpl;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 38
    invoke-virtual {p0, p2}, Lcom/coderpage/mine/tally/module/records/RecordDateTitleItemBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 40
    new-instance p1, Lcom/coderpage/mine/generated/callback/OnClickListener;

    invoke-direct {p1, p0, v0}, Lcom/coderpage/mine/generated/callback/OnClickListener;-><init>(Lcom/coderpage/mine/generated/callback/OnClickListener$Listener;I)V

    iput-object p1, p0, Lcom/coderpage/mine/tally/module/records/RecordDateTitleItemBindingImpl;->mCallback1:Landroid/view/View$OnClickListener;

    .line 41
    invoke-virtual {p0}, Lcom/coderpage/mine/tally/module/records/RecordDateTitleItemBindingImpl;->invalidateAll()V

    return-void
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

    .line 160
    iget-object p1, p0, Lcom/coderpage/mine/tally/module/records/RecordDateTitleItemBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/records/RecordItemViewModel;

    .line 162
    iget-object p2, p0, Lcom/coderpage/mine/tally/module/records/RecordDateTitleItemBindingImpl;->mActivity:Landroid/app/Activity;

    .line 164
    iget-object v0, p0, Lcom/coderpage/mine/tally/module/records/RecordDateTitleItemBindingImpl;->mData:Lcom/coderpage/mine/app/tally/module/records/RecordsDateTitle;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 174
    invoke-virtual {p1, p2, v0}, Lcom/coderpage/mine/app/tally/module/records/RecordItemViewModel;->onItemDateTitleClick(Landroid/app/Activity;Lcom/coderpage/mine/app/tally/module/records/RecordsDateTitle;)V

    :cond_1
    return-void
.end method

.method protected executeBindings()V
    .locals 12

    .line 115
    monitor-enter p0

    .line 116
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/tally/module/records/RecordDateTitleItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 117
    iput-wide v2, p0, Lcom/coderpage/mine/tally/module/records/RecordDateTitleItemBindingImpl;->mDirtyFlags:J

    .line 118
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    iget-object v4, p0, Lcom/coderpage/mine/tally/module/records/RecordDateTitleItemBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/records/RecordItemViewModel;

    .line 121
    iget-object v4, p0, Lcom/coderpage/mine/tally/module/records/RecordDateTitleItemBindingImpl;->mActivity:Landroid/app/Activity;

    .line 123
    iget-object v4, p0, Lcom/coderpage/mine/tally/module/records/RecordDateTitleItemBindingImpl;->mData:Lcom/coderpage/mine/app/tally/module/records/RecordsDateTitle;

    const/4 v5, 0x0

    const-wide/16 v6, 0xc

    and-long/2addr v6, v0

    cmp-long v8, v6, v2

    if-eqz v8, :cond_1

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 132
    invoke-virtual {v4}, Lcom/coderpage/mine/app/tally/module/records/RecordsDateTitle;->getYear()I

    move-result v8

    .line 134
    invoke-virtual {v4}, Lcom/coderpage/mine/app/tally/module/records/RecordsDateTitle;->getMonth()I

    move-result v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 139
    :goto_0
    iget-object v9, p0, Lcom/coderpage/mine/tally/module/records/RecordDateTitleItemBindingImpl;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e00a0

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v11, v5

    const/4 v5, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v11, v5

    invoke-virtual {v9, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    :cond_1
    const-wide/16 v8, 0x8

    and-long/2addr v0, v8

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    .line 145
    iget-object v0, p0, Lcom/coderpage/mine/tally/module/records/RecordDateTitleItemBindingImpl;->mboundView0:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/coderpage/mine/tally/module/records/RecordDateTitleItemBindingImpl;->mCallback1:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    cmp-long v0, v6, v2

    if-eqz v0, :cond_3

    .line 150
    iget-object v0, p0, Lcom/coderpage/mine/tally/module/records/RecordDateTitleItemBindingImpl;->tvMonth:Landroid/widget/TextView;

    invoke-static {v0, v5}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    .line 118
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 54
    monitor-enter p0

    .line 55
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/tally/module/records/RecordDateTitleItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 56
    monitor-exit p0

    return v0

    .line 58
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

    .line 46
    monitor-enter p0

    const-wide/16 v0, 0x8

    .line 47
    :try_start_0
    iput-wide v0, p0, Lcom/coderpage/mine/tally/module/records/RecordDateTitleItemBindingImpl;->mDirtyFlags:J

    .line 48
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    invoke-virtual {p0}, Lcom/coderpage/mine/tally/module/records/RecordDateTitleItemBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 48
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

    .line 89
    iput-object p1, p0, Lcom/coderpage/mine/tally/module/records/RecordDateTitleItemBindingImpl;->mActivity:Landroid/app/Activity;

    .line 90
    monitor-enter p0

    .line 91
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/tally/module/records/RecordDateTitleItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coderpage/mine/tally/module/records/RecordDateTitleItemBindingImpl;->mDirtyFlags:J

    .line 92
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 93
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/tally/module/records/RecordDateTitleItemBindingImpl;->notifyPropertyChanged(I)V

    .line 94
    invoke-super {p0}, Lcom/coderpage/mine/tally/module/records/RecordDateTitleItemBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 92
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setData(Lcom/coderpage/mine/app/tally/module/records/RecordsDateTitle;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "Data"
        }
    .end annotation

    .line 97
    iput-object p1, p0, Lcom/coderpage/mine/tally/module/records/RecordDateTitleItemBindingImpl;->mData:Lcom/coderpage/mine/app/tally/module/records/RecordsDateTitle;

    .line 98
    monitor-enter p0

    .line 99
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/tally/module/records/RecordDateTitleItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coderpage/mine/tally/module/records/RecordDateTitleItemBindingImpl;->mDirtyFlags:J

    .line 100
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x5

    .line 101
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/tally/module/records/RecordDateTitleItemBindingImpl;->notifyPropertyChanged(I)V

    .line 102
    invoke-super {p0}, Lcom/coderpage/mine/tally/module/records/RecordDateTitleItemBinding;->requestRebind()V

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

    .line 66
    check-cast p2, Lcom/coderpage/mine/app/tally/module/records/RecordItemViewModel;

    invoke-virtual {p0, p2}, Lcom/coderpage/mine/tally/module/records/RecordDateTitleItemBindingImpl;->setVm(Lcom/coderpage/mine/app/tally/module/records/RecordItemViewModel;)V

    goto :goto_0

    :cond_0
    if-ne v0, p1, :cond_1

    .line 69
    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p0, p2}, Lcom/coderpage/mine/tally/module/records/RecordDateTitleItemBindingImpl;->setActivity(Landroid/app/Activity;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    if-ne v1, p1, :cond_2

    .line 72
    check-cast p2, Lcom/coderpage/mine/app/tally/module/records/RecordsDateTitle;

    invoke-virtual {p0, p2}, Lcom/coderpage/mine/tally/module/records/RecordDateTitleItemBindingImpl;->setData(Lcom/coderpage/mine/app/tally/module/records/RecordsDateTitle;)V

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

    .line 81
    iput-object p1, p0, Lcom/coderpage/mine/tally/module/records/RecordDateTitleItemBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/records/RecordItemViewModel;

    .line 82
    monitor-enter p0

    .line 83
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/tally/module/records/RecordDateTitleItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coderpage/mine/tally/module/records/RecordDateTitleItemBindingImpl;->mDirtyFlags:J

    .line 84
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0xd

    .line 85
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/tally/module/records/RecordDateTitleItemBindingImpl;->notifyPropertyChanged(I)V

    .line 86
    invoke-super {p0}, Lcom/coderpage/mine/tally/module/records/RecordDateTitleItemBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 84
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
