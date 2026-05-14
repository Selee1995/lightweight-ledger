.class public Lcom/coderpage/mine/module/edit/category/ItemManagerCategoryBindingImpl;
.super Lcom/coderpage/mine/module/edit/category/ItemManagerCategoryBinding;
.source "ItemManagerCategoryBindingImpl.java"

# interfaces
.implements Lcom/coderpage/mine/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private final mCallback20:Landroid/view/View$OnClickListener;

.field private mDirtyFlags:J

.field private final mboundView0:Landroid/support/constraint/ConstraintLayout;

.field private final mboundView3:Landroid/widget/TextView;

.field private final mboundView4:Landroid/support/v7/widget/AppCompatImageView;


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
    sget-object v0, Lcom/coderpage/mine/module/edit/category/ItemManagerCategoryBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/coderpage/mine/module/edit/category/ItemManagerCategoryBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x5

    invoke-static {p1, p2, v2, v0, v1}, Lcom/coderpage/mine/module/edit/category/ItemManagerCategoryBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/coderpage/mine/module/edit/category/ItemManagerCategoryBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 7
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

    move-object v5, v0

    check-cast v5, Landroid/support/v7/widget/AppCompatImageView;

    const/4 v0, 0x1

    aget-object v1, p3, v0

    move-object v6, v1

    check-cast v6, Landroid/widget/FrameLayout;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/coderpage/mine/module/edit/category/ItemManagerCategoryBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/support/v7/widget/AppCompatImageView;Landroid/widget/FrameLayout;)V

    const-wide/16 v1, -0x1

    .line 193
    iput-wide v1, p0, Lcom/coderpage/mine/module/edit/category/ItemManagerCategoryBindingImpl;->mDirtyFlags:J

    .line 40
    iget-object p1, p0, Lcom/coderpage/mine/module/edit/category/ItemManagerCategoryBindingImpl;->ivCategoryIcon:Landroid/support/v7/widget/AppCompatImageView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/AppCompatImageView;->setTag(Ljava/lang/Object;)V

    .line 41
    iget-object p1, p0, Lcom/coderpage/mine/module/edit/category/ItemManagerCategoryBindingImpl;->lyCategoryIcon:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 42
    aget-object p1, p3, p1

    check-cast p1, Landroid/support/constraint/ConstraintLayout;

    iput-object p1, p0, Lcom/coderpage/mine/module/edit/category/ItemManagerCategoryBindingImpl;->mboundView0:Landroid/support/constraint/ConstraintLayout;

    .line 43
    invoke-virtual {p1, v1}, Landroid/support/constraint/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x3

    .line 44
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coderpage/mine/module/edit/category/ItemManagerCategoryBindingImpl;->mboundView3:Landroid/widget/TextView;

    .line 45
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x4

    .line 46
    aget-object p1, p3, p1

    check-cast p1, Landroid/support/v7/widget/AppCompatImageView;

    iput-object p1, p0, Lcom/coderpage/mine/module/edit/category/ItemManagerCategoryBindingImpl;->mboundView4:Landroid/support/v7/widget/AppCompatImageView;

    .line 47
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/AppCompatImageView;->setTag(Ljava/lang/Object;)V

    .line 48
    invoke-virtual {p0, p2}, Lcom/coderpage/mine/module/edit/category/ItemManagerCategoryBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 50
    new-instance p1, Lcom/coderpage/mine/generated/callback/OnClickListener;

    invoke-direct {p1, p0, v0}, Lcom/coderpage/mine/generated/callback/OnClickListener;-><init>(Lcom/coderpage/mine/generated/callback/OnClickListener$Listener;I)V

    iput-object p1, p0, Lcom/coderpage/mine/module/edit/category/ItemManagerCategoryBindingImpl;->mCallback20:Landroid/view/View$OnClickListener;

    .line 51
    invoke-virtual {p0}, Lcom/coderpage/mine/module/edit/category/ItemManagerCategoryBindingImpl;->invalidateAll()V

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

    .line 177
    iget-object p1, p0, Lcom/coderpage/mine/module/edit/category/ItemManagerCategoryBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;

    .line 179
    iget-object v0, p0, Lcom/coderpage/mine/module/edit/category/ItemManagerCategoryBindingImpl;->mData:Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 189
    invoke-virtual {p1, p2, v0}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;->onItemMenuClick(Landroid/view/View;Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;)V

    :cond_1
    return-void
.end method

.method protected executeBindings()V
    .locals 14

    .line 114
    monitor-enter p0

    .line 115
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/module/edit/category/ItemManagerCategoryBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 116
    iput-wide v2, p0, Lcom/coderpage/mine/module/edit/category/ItemManagerCategoryBindingImpl;->mDirtyFlags:J

    .line 117
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    iget-object v4, p0, Lcom/coderpage/mine/module/edit/category/ItemManagerCategoryBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;

    .line 123
    iget-object v4, p0, Lcom/coderpage/mine/module/edit/category/ItemManagerCategoryBindingImpl;->mData:Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;

    const-wide/16 v5, 0x6

    and-long v7, v0, v5

    const/4 v9, 0x1

    const/4 v10, 0x0

    cmp-long v11, v7, v2

    if-eqz v11, :cond_5

    const/4 v11, 0x0

    if-eqz v4, :cond_0

    .line 132
    invoke-virtual {v4}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->getName()Ljava/lang/String;

    move-result-object v10

    .line 134
    invoke-virtual {v4}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->getType()I

    move-result v12

    .line 136
    invoke-virtual {v4}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->getIcon()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v10

    const/4 v12, 0x0

    :goto_0
    if-nez v12, :cond_1

    const/4 v11, 0x1

    :cond_1
    cmp-long v12, v7, v2

    if-eqz v12, :cond_3

    if-eqz v11, :cond_2

    const-wide/16 v7, 0x10

    goto :goto_1

    :cond_2
    const-wide/16 v7, 0x8

    :goto_1
    or-long/2addr v0, v7

    .line 153
    :cond_3
    iget-object v7, p0, Lcom/coderpage/mine/module/edit/category/ItemManagerCategoryBindingImpl;->lyCategoryIcon:Landroid/widget/FrameLayout;

    if-eqz v11, :cond_4

    const v8, 0x7f08006b

    goto :goto_2

    :cond_4
    const v8, 0x7f08006e

    :goto_2
    invoke-static {v7, v8}, Lcom/coderpage/mine/module/edit/category/ItemManagerCategoryBindingImpl;->getDrawableFromResource(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    move-object v13, v10

    move-object v10, v4

    move-object v4, v13

    goto :goto_3

    :cond_5
    move-object v4, v10

    move-object v7, v4

    :goto_3
    and-long/2addr v5, v0

    cmp-long v8, v5, v2

    if-eqz v8, :cond_6

    .line 159
    iget-object v5, p0, Lcom/coderpage/mine/module/edit/category/ItemManagerCategoryBindingImpl;->ivCategoryIcon:Landroid/support/v7/widget/AppCompatImageView;

    invoke-static {v5, v10}, Lcom/coderpage/mine/app/tally/databinding/CommonBindAdapter;->setCategoryIcon(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 160
    iget-object v5, p0, Lcom/coderpage/mine/module/edit/category/ItemManagerCategoryBindingImpl;->lyCategoryIcon:Landroid/widget/FrameLayout;

    invoke-static {v5, v7}, Landroidx/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 161
    iget-object v5, p0, Lcom/coderpage/mine/module/edit/category/ItemManagerCategoryBindingImpl;->mboundView3:Landroid/widget/TextView;

    invoke-static {v5, v4}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_6
    const-wide/16 v4, 0x4

    and-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-eqz v4, :cond_7

    .line 166
    iget-object v0, p0, Lcom/coderpage/mine/module/edit/category/ItemManagerCategoryBindingImpl;->lyCategoryIcon:Landroid/widget/FrameLayout;

    invoke-static {v0, v9}, Lcom/coderpage/mine/app/tally/databinding/CommonBindAdapter;->setViewSelect(Landroid/view/View;Z)V

    .line 167
    iget-object v0, p0, Lcom/coderpage/mine/module/edit/category/ItemManagerCategoryBindingImpl;->mboundView4:Landroid/support/v7/widget/AppCompatImageView;

    iget-object v1, p0, Lcom/coderpage/mine/module/edit/category/ItemManagerCategoryBindingImpl;->mCallback20:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    return-void

    :catchall_0
    move-exception v0

    .line 117
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 64
    monitor-enter p0

    .line 65
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/module/edit/category/ItemManagerCategoryBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 66
    monitor-exit p0

    return v0

    .line 68
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

    .line 56
    monitor-enter p0

    const-wide/16 v0, 0x4

    .line 57
    :try_start_0
    iput-wide v0, p0, Lcom/coderpage/mine/module/edit/category/ItemManagerCategoryBindingImpl;->mDirtyFlags:J

    .line 58
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    invoke-virtual {p0}, Lcom/coderpage/mine/module/edit/category/ItemManagerCategoryBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 58
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

.method public setData(Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "Data"
        }
    .end annotation

    .line 96
    iput-object p1, p0, Lcom/coderpage/mine/module/edit/category/ItemManagerCategoryBindingImpl;->mData:Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;

    .line 97
    monitor-enter p0

    .line 98
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/module/edit/category/ItemManagerCategoryBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coderpage/mine/module/edit/category/ItemManagerCategoryBindingImpl;->mDirtyFlags:J

    .line 99
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x5

    .line 100
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/module/edit/category/ItemManagerCategoryBindingImpl;->notifyPropertyChanged(I)V

    .line 101
    invoke-super {p0}, Lcom/coderpage/mine/module/edit/category/ItemManagerCategoryBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 99
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

    .line 76
    check-cast p2, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;

    invoke-virtual {p0, p2}, Lcom/coderpage/mine/module/edit/category/ItemManagerCategoryBindingImpl;->setVm(Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    if-ne v0, p1, :cond_1

    .line 79
    check-cast p2, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;

    invoke-virtual {p0, p2}, Lcom/coderpage/mine/module/edit/category/ItemManagerCategoryBindingImpl;->setData(Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public setVm(Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "Vm"
        }
    .end annotation

    .line 88
    iput-object p1, p0, Lcom/coderpage/mine/module/edit/category/ItemManagerCategoryBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;

    .line 89
    monitor-enter p0

    .line 90
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/module/edit/category/ItemManagerCategoryBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coderpage/mine/module/edit/category/ItemManagerCategoryBindingImpl;->mDirtyFlags:J

    .line 91
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0xd

    .line 92
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/module/edit/category/ItemManagerCategoryBindingImpl;->notifyPropertyChanged(I)V

    .line 93
    invoke-super {p0}, Lcom/coderpage/mine/module/edit/category/ItemManagerCategoryBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 91
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
