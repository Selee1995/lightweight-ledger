.class public Lcom/coderpage/mine/module/search/ItemSearchHistoryBindingImpl;
.super Lcom/coderpage/mine/module/search/ItemSearchHistoryBinding;
.source "ItemSearchHistoryBindingImpl.java"

# interfaces
.implements Lcom/coderpage/mine/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private final mCallback43:Landroid/view/View$OnClickListener;

.field private final mCallback44:Landroid/view/View$OnClickListener;

.field private mDirtyFlags:J

.field private final mboundView0:Landroid/support/constraint/ConstraintLayout;


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

    .line 31
    sget-object v0, Lcom/coderpage/mine/module/search/ItemSearchHistoryBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/coderpage/mine/module/search/ItemSearchHistoryBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x3

    invoke-static {p1, p2, v2, v0, v1}, Lcom/coderpage/mine/module/search/ItemSearchHistoryBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/coderpage/mine/module/search/ItemSearchHistoryBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 8
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

    const/4 v0, 0x2

    .line 34
    aget-object v1, p3, v0

    move-object v6, v1

    check-cast v6, Landroid/support/v7/widget/AppCompatImageView;

    const/4 v1, 0x1

    aget-object v2, p3, v1

    move-object v7, v2

    check-cast v7, Landroid/widget/TextView;

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v7}, Lcom/coderpage/mine/module/search/ItemSearchHistoryBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/support/v7/widget/AppCompatImageView;Landroid/widget/TextView;)V

    const-wide/16 v2, -0x1

    .line 178
    iput-wide v2, p0, Lcom/coderpage/mine/module/search/ItemSearchHistoryBindingImpl;->mDirtyFlags:J

    .line 38
    iget-object p1, p0, Lcom/coderpage/mine/module/search/ItemSearchHistoryBindingImpl;->ivRemove:Landroid/support/v7/widget/AppCompatImageView;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/support/v7/widget/AppCompatImageView;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 39
    aget-object p1, p3, p1

    check-cast p1, Landroid/support/constraint/ConstraintLayout;

    iput-object p1, p0, Lcom/coderpage/mine/module/search/ItemSearchHistoryBindingImpl;->mboundView0:Landroid/support/constraint/ConstraintLayout;

    .line 40
    invoke-virtual {p1, v2}, Landroid/support/constraint/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    .line 41
    iget-object p1, p0, Lcom/coderpage/mine/module/search/ItemSearchHistoryBindingImpl;->tvKeyword:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 42
    invoke-virtual {p0, p2}, Lcom/coderpage/mine/module/search/ItemSearchHistoryBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 44
    new-instance p1, Lcom/coderpage/mine/generated/callback/OnClickListener;

    invoke-direct {p1, p0, v1}, Lcom/coderpage/mine/generated/callback/OnClickListener;-><init>(Lcom/coderpage/mine/generated/callback/OnClickListener$Listener;I)V

    iput-object p1, p0, Lcom/coderpage/mine/module/search/ItemSearchHistoryBindingImpl;->mCallback43:Landroid/view/View$OnClickListener;

    .line 45
    new-instance p1, Lcom/coderpage/mine/generated/callback/OnClickListener;

    invoke-direct {p1, p0, v0}, Lcom/coderpage/mine/generated/callback/OnClickListener;-><init>(Lcom/coderpage/mine/generated/callback/OnClickListener$Listener;I)V

    iput-object p1, p0, Lcom/coderpage/mine/module/search/ItemSearchHistoryBindingImpl;->mCallback44:Landroid/view/View$OnClickListener;

    .line 46
    invoke-virtual {p0}, Lcom/coderpage/mine/module/search/ItemSearchHistoryBindingImpl;->invalidateAll()V

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

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 160
    :cond_0
    iget-object p1, p0, Lcom/coderpage/mine/module/search/ItemSearchHistoryBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;

    .line 162
    iget-object v1, p0, Lcom/coderpage/mine/module/search/ItemSearchHistoryBindingImpl;->mText:Ljava/lang/String;

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    :cond_1
    if-eqz p2, :cond_4

    .line 171
    invoke-virtual {p1, v1}, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;->onRemoveHistoryItemClick(Ljava/lang/String;)V

    goto :goto_0

    .line 140
    :cond_2
    iget-object p1, p0, Lcom/coderpage/mine/module/search/ItemSearchHistoryBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;

    .line 142
    iget-object v1, p0, Lcom/coderpage/mine/module/search/ItemSearchHistoryBindingImpl;->mText:Ljava/lang/String;

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    :cond_3
    if-eqz p2, :cond_4

    .line 151
    invoke-virtual {p1, v1}, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;->onSearchHistoryItemClick(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method protected executeBindings()V
    .locals 9

    .line 109
    monitor-enter p0

    .line 110
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/module/search/ItemSearchHistoryBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 111
    iput-wide v2, p0, Lcom/coderpage/mine/module/search/ItemSearchHistoryBindingImpl;->mDirtyFlags:J

    .line 112
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    iget-object v4, p0, Lcom/coderpage/mine/module/search/ItemSearchHistoryBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;

    .line 114
    iget-object v4, p0, Lcom/coderpage/mine/module/search/ItemSearchHistoryBindingImpl;->mText:Ljava/lang/String;

    const-wide/16 v5, 0x6

    and-long/2addr v5, v0

    const-wide/16 v7, 0x4

    and-long/2addr v0, v7

    cmp-long v7, v0, v2

    if-eqz v7, :cond_0

    .line 122
    iget-object v0, p0, Lcom/coderpage/mine/module/search/ItemSearchHistoryBindingImpl;->ivRemove:Landroid/support/v7/widget/AppCompatImageView;

    iget-object v1, p0, Lcom/coderpage/mine/module/search/ItemSearchHistoryBindingImpl;->mCallback44:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v0, p0, Lcom/coderpage/mine/module/search/ItemSearchHistoryBindingImpl;->tvKeyword:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/coderpage/mine/module/search/ItemSearchHistoryBindingImpl;->mCallback43:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    cmp-long v0, v5, v2

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/coderpage/mine/module/search/ItemSearchHistoryBindingImpl;->tvKeyword:Landroid/widget/TextView;

    invoke-static {v0, v4}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 112
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 59
    monitor-enter p0

    .line 60
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/module/search/ItemSearchHistoryBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 61
    monitor-exit p0

    return v0

    .line 63
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

    .line 51
    monitor-enter p0

    const-wide/16 v0, 0x4

    .line 52
    :try_start_0
    iput-wide v0, p0, Lcom/coderpage/mine/module/search/ItemSearchHistoryBindingImpl;->mDirtyFlags:J

    .line 53
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    invoke-virtual {p0}, Lcom/coderpage/mine/module/search/ItemSearchHistoryBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 53
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

.method public setText(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "Text"
        }
    .end annotation

    .line 91
    iput-object p1, p0, Lcom/coderpage/mine/module/search/ItemSearchHistoryBindingImpl;->mText:Ljava/lang/String;

    .line 92
    monitor-enter p0

    .line 93
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/module/search/ItemSearchHistoryBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coderpage/mine/module/search/ItemSearchHistoryBindingImpl;->mDirtyFlags:J

    .line 94
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0xa

    .line 95
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/module/search/ItemSearchHistoryBindingImpl;->notifyPropertyChanged(I)V

    .line 96
    invoke-super {p0}, Lcom/coderpage/mine/module/search/ItemSearchHistoryBinding;->requestRebind()V

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

    .line 71
    check-cast p2, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;

    invoke-virtual {p0, p2}, Lcom/coderpage/mine/module/search/ItemSearchHistoryBindingImpl;->setVm(Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    if-ne v0, p1, :cond_1

    .line 74
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/coderpage/mine/module/search/ItemSearchHistoryBindingImpl;->setText(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
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

    .line 83
    iput-object p1, p0, Lcom/coderpage/mine/module/search/ItemSearchHistoryBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;

    .line 84
    monitor-enter p0

    .line 85
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/module/search/ItemSearchHistoryBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coderpage/mine/module/search/ItemSearchHistoryBindingImpl;->mDirtyFlags:J

    .line 86
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0xd

    .line 87
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/module/search/ItemSearchHistoryBindingImpl;->notifyPropertyChanged(I)V

    .line 88
    invoke-super {p0}, Lcom/coderpage/mine/module/search/ItemSearchHistoryBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 86
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
