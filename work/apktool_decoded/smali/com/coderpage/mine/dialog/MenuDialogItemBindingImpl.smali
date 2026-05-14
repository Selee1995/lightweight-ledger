.class public Lcom/coderpage/mine/dialog/MenuDialogItemBindingImpl;
.super Lcom/coderpage/mine/dialog/MenuDialogItemBinding;
.source "MenuDialogItemBindingImpl.java"

# interfaces
.implements Lcom/coderpage/mine/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private final mCallback52:Landroid/view/View$OnClickListener;

.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/FrameLayout;

.field private final mboundView1:Landroid/support/constraint/ConstraintLayout;

.field private final mboundView3:Landroid/widget/TextView;


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

    .line 33
    sget-object v0, Lcom/coderpage/mine/dialog/MenuDialogItemBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/coderpage/mine/dialog/MenuDialogItemBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x4

    invoke-static {p1, p2, v2, v0, v1}, Lcom/coderpage/mine/dialog/MenuDialogItemBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/coderpage/mine/dialog/MenuDialogItemBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 4
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

    .line 36
    aget-object v0, p3, v0

    check-cast v0, Landroid/support/v7/widget/AppCompatImageView;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/coderpage/mine/dialog/MenuDialogItemBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/support/v7/widget/AppCompatImageView;)V

    const-wide/16 v2, -0x1

    .line 167
    iput-wide v2, p0, Lcom/coderpage/mine/dialog/MenuDialogItemBindingImpl;->mDirtyFlags:J

    .line 39
    iget-object p1, p0, Lcom/coderpage/mine/dialog/MenuDialogItemBindingImpl;->ivIcon:Landroid/support/v7/widget/AppCompatImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/AppCompatImageView;->setTag(Ljava/lang/Object;)V

    .line 40
    aget-object p1, p3, v1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/coderpage/mine/dialog/MenuDialogItemBindingImpl;->mboundView0:Landroid/widget/FrameLayout;

    .line 41
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 42
    aget-object v1, p3, p1

    check-cast v1, Landroid/support/constraint/ConstraintLayout;

    iput-object v1, p0, Lcom/coderpage/mine/dialog/MenuDialogItemBindingImpl;->mboundView1:Landroid/support/constraint/ConstraintLayout;

    .line 43
    invoke-virtual {v1, v0}, Landroid/support/constraint/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x3

    .line 44
    aget-object p3, p3, v1

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/coderpage/mine/dialog/MenuDialogItemBindingImpl;->mboundView3:Landroid/widget/TextView;

    .line 45
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 46
    invoke-virtual {p0, p2}, Lcom/coderpage/mine/dialog/MenuDialogItemBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 48
    new-instance p2, Lcom/coderpage/mine/generated/callback/OnClickListener;

    invoke-direct {p2, p0, p1}, Lcom/coderpage/mine/generated/callback/OnClickListener;-><init>(Lcom/coderpage/mine/generated/callback/OnClickListener$Listener;I)V

    iput-object p2, p0, Lcom/coderpage/mine/dialog/MenuDialogItemBindingImpl;->mCallback52:Landroid/view/View$OnClickListener;

    .line 49
    invoke-virtual {p0}, Lcom/coderpage/mine/dialog/MenuDialogItemBindingImpl;->invalidateAll()V

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

    .line 152
    iget-object p1, p0, Lcom/coderpage/mine/dialog/MenuDialogItemBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogViewModel;

    .line 154
    iget-object p2, p0, Lcom/coderpage/mine/dialog/MenuDialogItemBindingImpl;->mItem:Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogItem;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 163
    invoke-virtual {p1, p2}, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogViewModel;->onMenuClick(Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogItem;)V

    :cond_1
    return-void
.end method

.method protected executeBindings()V
    .locals 10

    .line 112
    monitor-enter p0

    .line 113
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/dialog/MenuDialogItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 114
    iput-wide v2, p0, Lcom/coderpage/mine/dialog/MenuDialogItemBindingImpl;->mDirtyFlags:J

    .line 115
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    iget-object v4, p0, Lcom/coderpage/mine/dialog/MenuDialogItemBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogViewModel;

    .line 118
    iget-object v4, p0, Lcom/coderpage/mine/dialog/MenuDialogItemBindingImpl;->mItem:Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogItem;

    const-wide/16 v5, 0x6

    and-long/2addr v5, v0

    const/4 v7, 0x0

    cmp-long v8, v5, v2

    if-eqz v8, :cond_0

    if-eqz v4, :cond_0

    .line 127
    invoke-virtual {v4}, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogItem;->getName()Ljava/lang/String;

    move-result-object v7

    .line 129
    invoke-virtual {v4}, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object v9, v7

    move-object v7, v4

    move-object v4, v9

    goto :goto_0

    :cond_0
    move-object v4, v7

    :goto_0
    cmp-long v8, v5, v2

    if-eqz v8, :cond_1

    .line 136
    iget-object v5, p0, Lcom/coderpage/mine/dialog/MenuDialogItemBindingImpl;->ivIcon:Landroid/support/v7/widget/AppCompatImageView;

    invoke-static {v5, v7}, Lcom/coderpage/mine/app/tally/databinding/CommonBindAdapter;->setImageViewDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 137
    iget-object v5, p0, Lcom/coderpage/mine/dialog/MenuDialogItemBindingImpl;->mboundView3:Landroid/widget/TextView;

    invoke-static {v5, v4}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_1
    const-wide/16 v4, 0x4

    and-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    .line 142
    iget-object v0, p0, Lcom/coderpage/mine/dialog/MenuDialogItemBindingImpl;->mboundView1:Landroid/support/constraint/ConstraintLayout;

    iget-object v1, p0, Lcom/coderpage/mine/dialog/MenuDialogItemBindingImpl;->mCallback52:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 115
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 62
    monitor-enter p0

    .line 63
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/dialog/MenuDialogItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 64
    monitor-exit p0

    return v0

    .line 66
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

    .line 54
    monitor-enter p0

    const-wide/16 v0, 0x4

    .line 55
    :try_start_0
    iput-wide v0, p0, Lcom/coderpage/mine/dialog/MenuDialogItemBindingImpl;->mDirtyFlags:J

    .line 56
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    invoke-virtual {p0}, Lcom/coderpage/mine/dialog/MenuDialogItemBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 56
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

.method public setItem(Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogItem;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "Item"
        }
    .end annotation

    .line 94
    iput-object p1, p0, Lcom/coderpage/mine/dialog/MenuDialogItemBindingImpl;->mItem:Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogItem;

    .line 95
    monitor-enter p0

    .line 96
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/dialog/MenuDialogItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coderpage/mine/dialog/MenuDialogItemBindingImpl;->mDirtyFlags:J

    .line 97
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x7

    .line 98
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/dialog/MenuDialogItemBindingImpl;->notifyPropertyChanged(I)V

    .line 99
    invoke-super {p0}, Lcom/coderpage/mine/dialog/MenuDialogItemBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 97
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

    .line 74
    check-cast p2, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogViewModel;

    invoke-virtual {p0, p2}, Lcom/coderpage/mine/dialog/MenuDialogItemBindingImpl;->setVm(Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogViewModel;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x7

    if-ne v0, p1, :cond_1

    .line 77
    check-cast p2, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogItem;

    invoke-virtual {p0, p2}, Lcom/coderpage/mine/dialog/MenuDialogItemBindingImpl;->setItem(Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogItem;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public setVm(Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogViewModel;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "Vm"
        }
    .end annotation

    .line 86
    iput-object p1, p0, Lcom/coderpage/mine/dialog/MenuDialogItemBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogViewModel;

    .line 87
    monitor-enter p0

    .line 88
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/dialog/MenuDialogItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coderpage/mine/dialog/MenuDialogItemBindingImpl;->mDirtyFlags:J

    .line 89
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0xd

    .line 90
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/dialog/MenuDialogItemBindingImpl;->notifyPropertyChanged(I)V

    .line 91
    invoke-super {p0}, Lcom/coderpage/mine/dialog/MenuDialogItemBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 89
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
