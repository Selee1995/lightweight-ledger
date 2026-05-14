.class public Lcom/coderpage/mine/module/edit/category/ItemCategoryIconBindingImpl;
.super Lcom/coderpage/mine/module/edit/category/ItemCategoryIconBinding;
.source "ItemCategoryIconBindingImpl.java"

# interfaces
.implements Lcom/coderpage/mine/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private final mCallback32:Landroid/view/View$OnClickListener;

.field private mDirtyFlags:J

.field private final mboundView0:Landroid/support/constraint/ConstraintLayout;

.field private final mboundView1:Landroid/widget/FrameLayout;

.field private final mboundView2:Landroid/support/v7/widget/AppCompatImageView;


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
    sget-object v0, Lcom/coderpage/mine/module/edit/category/ItemCategoryIconBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/coderpage/mine/module/edit/category/ItemCategoryIconBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x3

    invoke-static {p1, p2, v2, v0, v1}, Lcom/coderpage/mine/module/edit/category/ItemCategoryIconBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/coderpage/mine/module/edit/category/ItemCategoryIconBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

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

    const/4 v0, 0x2

    .line 36
    invoke-direct {p0, p1, p2, v0}, Lcom/coderpage/mine/module/edit/category/ItemCategoryIconBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 244
    iput-wide v1, p0, Lcom/coderpage/mine/module/edit/category/ItemCategoryIconBindingImpl;->mDirtyFlags:J

    const/4 p1, 0x0

    .line 38
    aget-object p1, p3, p1

    check-cast p1, Landroid/support/constraint/ConstraintLayout;

    iput-object p1, p0, Lcom/coderpage/mine/module/edit/category/ItemCategoryIconBindingImpl;->mboundView0:Landroid/support/constraint/ConstraintLayout;

    const/4 v1, 0x0

    .line 39
    invoke-virtual {p1, v1}, Landroid/support/constraint/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 40
    aget-object v2, p3, p1

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/coderpage/mine/module/edit/category/ItemCategoryIconBindingImpl;->mboundView1:Landroid/widget/FrameLayout;

    .line 41
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 42
    aget-object p3, p3, v0

    check-cast p3, Landroid/support/v7/widget/AppCompatImageView;

    iput-object p3, p0, Lcom/coderpage/mine/module/edit/category/ItemCategoryIconBindingImpl;->mboundView2:Landroid/support/v7/widget/AppCompatImageView;

    .line 43
    invoke-virtual {p3, v1}, Landroid/support/v7/widget/AppCompatImageView;->setTag(Ljava/lang/Object;)V

    .line 44
    invoke-virtual {p0, p2}, Lcom/coderpage/mine/module/edit/category/ItemCategoryIconBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 46
    new-instance p2, Lcom/coderpage/mine/generated/callback/OnClickListener;

    invoke-direct {p2, p0, p1}, Lcom/coderpage/mine/generated/callback/OnClickListener;-><init>(Lcom/coderpage/mine/generated/callback/OnClickListener$Listener;I)V

    iput-object p2, p0, Lcom/coderpage/mine/module/edit/category/ItemCategoryIconBindingImpl;->mCallback32:Landroid/view/View$OnClickListener;

    .line 47
    invoke-virtual {p0}, Lcom/coderpage/mine/module/edit/category/ItemCategoryIconBindingImpl;->invalidateAll()V

    return-void
.end method

.method private onChangeVmCategoryIcon(Landroidx/databinding/ObservableField;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "VmCategoryIcon",
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

    .line 112
    monitor-enter p0

    .line 113
    :try_start_0
    iget-wide p1, p0, Lcom/coderpage/mine/module/edit/category/ItemCategoryIconBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/coderpage/mine/module/edit/category/ItemCategoryIconBindingImpl;->mDirtyFlags:J

    .line 114
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

.method private onChangeVmType(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "VmType",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 121
    monitor-enter p0

    .line 122
    :try_start_0
    iget-wide p1, p0, Lcom/coderpage/mine/module/edit/category/ItemCategoryIconBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/coderpage/mine/module/edit/category/ItemCategoryIconBindingImpl;->mDirtyFlags:J

    .line 123
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

    .line 229
    iget-object p1, p0, Lcom/coderpage/mine/module/edit/category/ItemCategoryIconBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;

    .line 231
    iget-object p2, p0, Lcom/coderpage/mine/module/edit/category/ItemCategoryIconBindingImpl;->mCategoryIcon:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 240
    invoke-virtual {p1, p2}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;->onIconSelect(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected executeBindings()V
    .locals 18

    move-object/from16 v1, p0

    .line 132
    monitor-enter p0

    .line 133
    :try_start_0
    iget-wide v2, v1, Lcom/coderpage/mine/module/edit/category/ItemCategoryIconBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 134
    iput-wide v4, v1, Lcom/coderpage/mine/module/edit/category/ItemCategoryIconBindingImpl;->mDirtyFlags:J

    .line 135
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    iget-object v0, v1, Lcom/coderpage/mine/module/edit/category/ItemCategoryIconBindingImpl;->mCategoryIcon:Ljava/lang/String;

    .line 140
    iget-object v6, v1, Lcom/coderpage/mine/module/edit/category/ItemCategoryIconBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;

    const-wide/16 v7, 0x1d

    and-long v9, v2, v7

    const-wide/16 v11, 0x1f

    and-long/2addr v11, v2

    const-wide/16 v13, 0x1a

    const/4 v15, 0x0

    const/16 v16, 0x0

    cmp-long v17, v11, v4

    if-eqz v17, :cond_a

    cmp-long v11, v9, v4

    if-eqz v11, :cond_2

    if-eqz v6, :cond_0

    .line 155
    invoke-virtual {v6}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;->getCategoryIcon()Landroidx/databinding/ObservableField;

    move-result-object v9

    goto :goto_0

    :cond_0
    move-object/from16 v9, v16

    .line 157
    :goto_0
    invoke-virtual {v1, v15, v9}, Lcom/coderpage/mine/module/edit/category/ItemCategoryIconBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v9, :cond_1

    .line 162
    invoke-virtual {v9}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v9, v16

    .line 167
    :goto_1
    invoke-static {v9, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    :goto_2
    and-long v10, v2, v13

    cmp-long v12, v10, v4

    if-eqz v12, :cond_9

    if-eqz v6, :cond_3

    .line 173
    invoke-virtual {v6}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;->getType()Landroidx/databinding/ObservableInt;

    move-result-object v16

    :cond_3
    move-object/from16 v6, v16

    const/4 v12, 0x1

    .line 175
    invoke-virtual {v1, v12, v6}, Lcom/coderpage/mine/module/edit/category/ItemCategoryIconBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v6, :cond_4

    .line 180
    invoke-virtual {v6}, Landroidx/databinding/ObservableInt;->get()I

    move-result v6

    goto :goto_3

    :cond_4
    const/4 v6, 0x0

    :goto_3
    if-nez v6, :cond_5

    const/4 v15, 0x1

    :cond_5
    cmp-long v6, v10, v4

    if-eqz v6, :cond_7

    if-eqz v15, :cond_6

    const-wide/16 v10, 0x40

    goto :goto_4

    :cond_6
    const-wide/16 v10, 0x20

    :goto_4
    or-long/2addr v2, v10

    .line 197
    :cond_7
    iget-object v6, v1, Lcom/coderpage/mine/module/edit/category/ItemCategoryIconBindingImpl;->mboundView1:Landroid/widget/FrameLayout;

    if-eqz v15, :cond_8

    const v10, 0x7f08006b

    goto :goto_5

    :cond_8
    const v10, 0x7f08006e

    :goto_5
    invoke-static {v6, v10}, Lcom/coderpage/mine/module/edit/category/ItemCategoryIconBindingImpl;->getDrawableFromResource(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object/from16 v16, v6

    :cond_9
    move v15, v9

    :cond_a
    move-object/from16 v6, v16

    const-wide/16 v9, 0x10

    and-long/2addr v9, v2

    cmp-long v11, v9, v4

    if-eqz v11, :cond_b

    .line 204
    iget-object v9, v1, Lcom/coderpage/mine/module/edit/category/ItemCategoryIconBindingImpl;->mboundView0:Landroid/support/constraint/ConstraintLayout;

    iget-object v10, v1, Lcom/coderpage/mine/module/edit/category/ItemCategoryIconBindingImpl;->mCallback32:Landroid/view/View$OnClickListener;

    invoke-virtual {v9, v10}, Landroid/support/constraint/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_b
    and-long/2addr v7, v2

    cmp-long v9, v7, v4

    if-eqz v9, :cond_c

    .line 209
    iget-object v7, v1, Lcom/coderpage/mine/module/edit/category/ItemCategoryIconBindingImpl;->mboundView1:Landroid/widget/FrameLayout;

    invoke-static {v7, v15}, Lcom/coderpage/mine/app/tally/databinding/CommonBindAdapter;->setViewSelect(Landroid/view/View;Z)V

    :cond_c
    and-long v7, v2, v13

    cmp-long v9, v7, v4

    if-eqz v9, :cond_d

    .line 214
    iget-object v7, v1, Lcom/coderpage/mine/module/edit/category/ItemCategoryIconBindingImpl;->mboundView1:Landroid/widget/FrameLayout;

    invoke-static {v7, v6}, Landroidx/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_d
    const-wide/16 v6, 0x14

    and-long/2addr v2, v6

    cmp-long v6, v2, v4

    if-eqz v6, :cond_e

    .line 219
    iget-object v2, v1, Lcom/coderpage/mine/module/edit/category/ItemCategoryIconBindingImpl;->mboundView2:Landroid/support/v7/widget/AppCompatImageView;

    invoke-static {v2, v0}, Lcom/coderpage/mine/app/tally/databinding/CommonBindAdapter;->setCategoryIcon(Landroid/widget/ImageView;Ljava/lang/String;)V

    :cond_e
    return-void

    :catchall_0
    move-exception v0

    .line 135
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 60
    monitor-enter p0

    .line 61
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/module/edit/category/ItemCategoryIconBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 62
    monitor-exit p0

    return v0

    .line 64
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

    .line 52
    monitor-enter p0

    const-wide/16 v0, 0x10

    .line 53
    :try_start_0
    iput-wide v0, p0, Lcom/coderpage/mine/module/edit/category/ItemCategoryIconBindingImpl;->mDirtyFlags:J

    .line 54
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    invoke-virtual {p0}, Lcom/coderpage/mine/module/edit/category/ItemCategoryIconBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 54
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

    .line 106
    :cond_0
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/coderpage/mine/module/edit/category/ItemCategoryIconBindingImpl;->onChangeVmType(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 104
    :cond_1
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lcom/coderpage/mine/module/edit/category/ItemCategoryIconBindingImpl;->onChangeVmCategoryIcon(Landroidx/databinding/ObservableField;I)Z

    move-result p1

    return p1
.end method

.method public setCategoryIcon(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "CategoryIcon"
        }
    .end annotation

    .line 84
    iput-object p1, p0, Lcom/coderpage/mine/module/edit/category/ItemCategoryIconBindingImpl;->mCategoryIcon:Ljava/lang/String;

    .line 85
    monitor-enter p0

    .line 86
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/module/edit/category/ItemCategoryIconBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coderpage/mine/module/edit/category/ItemCategoryIconBindingImpl;->mDirtyFlags:J

    .line 87
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x3

    .line 88
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/module/edit/category/ItemCategoryIconBindingImpl;->notifyPropertyChanged(I)V

    .line 89
    invoke-super {p0}, Lcom/coderpage/mine/module/edit/category/ItemCategoryIconBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 87
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

    const/4 v0, 0x3

    if-ne v0, p1, :cond_0

    .line 72
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/coderpage/mine/module/edit/category/ItemCategoryIconBindingImpl;->setCategoryIcon(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0xd

    if-ne v0, p1, :cond_1

    .line 75
    check-cast p2, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;

    invoke-virtual {p0, p2}, Lcom/coderpage/mine/module/edit/category/ItemCategoryIconBindingImpl;->setVm(Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public setVm(Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "Vm"
        }
    .end annotation

    .line 92
    iput-object p1, p0, Lcom/coderpage/mine/module/edit/category/ItemCategoryIconBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;

    .line 93
    monitor-enter p0

    .line 94
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/module/edit/category/ItemCategoryIconBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coderpage/mine/module/edit/category/ItemCategoryIconBindingImpl;->mDirtyFlags:J

    .line 95
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0xd

    .line 96
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/module/edit/category/ItemCategoryIconBindingImpl;->notifyPropertyChanged(I)V

    .line 97
    invoke-super {p0}, Lcom/coderpage/mine/module/edit/category/ItemCategoryIconBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 95
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
