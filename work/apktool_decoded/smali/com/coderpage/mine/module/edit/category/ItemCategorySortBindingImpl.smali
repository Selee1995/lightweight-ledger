.class public Lcom/coderpage/mine/module/edit/category/ItemCategorySortBindingImpl;
.super Lcom/coderpage/mine/module/edit/category/ItemCategorySortBinding;
.source "ItemCategorySortBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private final mboundView0:Landroid/support/constraint/ConstraintLayout;

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

    .line 29
    sget-object v0, Lcom/coderpage/mine/module/edit/category/ItemCategorySortBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/coderpage/mine/module/edit/category/ItemCategorySortBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x4

    invoke-static {p1, p2, v2, v0, v1}, Lcom/coderpage/mine/module/edit/category/ItemCategorySortBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/coderpage/mine/module/edit/category/ItemCategorySortBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

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

    .line 32
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/support/v7/widget/AppCompatImageView;

    const/4 v0, 0x1

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroid/widget/FrameLayout;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/coderpage/mine/module/edit/category/ItemCategorySortBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/support/v7/widget/AppCompatImageView;Landroid/widget/FrameLayout;)V

    const-wide/16 v0, -0x1

    .line 159
    iput-wide v0, p0, Lcom/coderpage/mine/module/edit/category/ItemCategorySortBindingImpl;->mDirtyFlags:J

    .line 36
    iget-object p1, p0, Lcom/coderpage/mine/module/edit/category/ItemCategorySortBindingImpl;->ivCategoryIcon:Landroid/support/v7/widget/AppCompatImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/AppCompatImageView;->setTag(Ljava/lang/Object;)V

    .line 37
    iget-object p1, p0, Lcom/coderpage/mine/module/edit/category/ItemCategorySortBindingImpl;->lyCategoryIcon:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 38
    aget-object p1, p3, p1

    check-cast p1, Landroid/support/constraint/ConstraintLayout;

    iput-object p1, p0, Lcom/coderpage/mine/module/edit/category/ItemCategorySortBindingImpl;->mboundView0:Landroid/support/constraint/ConstraintLayout;

    .line 39
    invoke-virtual {p1, v0}, Landroid/support/constraint/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x3

    .line 40
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coderpage/mine/module/edit/category/ItemCategorySortBindingImpl;->mboundView3:Landroid/widget/TextView;

    .line 41
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 42
    invoke-virtual {p0, p2}, Lcom/coderpage/mine/module/edit/category/ItemCategorySortBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 44
    invoke-virtual {p0}, Lcom/coderpage/mine/module/edit/category/ItemCategorySortBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .locals 14

    .line 102
    monitor-enter p0

    .line 103
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/module/edit/category/ItemCategorySortBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 104
    iput-wide v2, p0, Lcom/coderpage/mine/module/edit/category/ItemCategorySortBindingImpl;->mDirtyFlags:J

    .line 105
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    iget-object v4, p0, Lcom/coderpage/mine/module/edit/category/ItemCategorySortBindingImpl;->mData:Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;

    const-wide/16 v5, 0x6

    and-long v7, v0, v5

    const/4 v9, 0x1

    const/4 v10, 0x0

    cmp-long v11, v7, v2

    if-eqz v11, :cond_5

    const/4 v11, 0x0

    if-eqz v4, :cond_0

    .line 119
    invoke-virtual {v4}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->getName()Ljava/lang/String;

    move-result-object v10

    .line 121
    invoke-virtual {v4}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->getType()I

    move-result v12

    .line 123
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

    .line 140
    :cond_3
    iget-object v7, p0, Lcom/coderpage/mine/module/edit/category/ItemCategorySortBindingImpl;->lyCategoryIcon:Landroid/widget/FrameLayout;

    if-eqz v11, :cond_4

    const v8, 0x7f08006b

    goto :goto_2

    :cond_4
    const v8, 0x7f08006e

    :goto_2
    invoke-static {v7, v8}, Lcom/coderpage/mine/module/edit/category/ItemCategorySortBindingImpl;->getDrawableFromResource(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

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

    .line 146
    iget-object v5, p0, Lcom/coderpage/mine/module/edit/category/ItemCategorySortBindingImpl;->ivCategoryIcon:Landroid/support/v7/widget/AppCompatImageView;

    invoke-static {v5, v10}, Lcom/coderpage/mine/app/tally/databinding/CommonBindAdapter;->setCategoryIcon(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 147
    iget-object v5, p0, Lcom/coderpage/mine/module/edit/category/ItemCategorySortBindingImpl;->lyCategoryIcon:Landroid/widget/FrameLayout;

    invoke-static {v5, v7}, Landroidx/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 148
    iget-object v5, p0, Lcom/coderpage/mine/module/edit/category/ItemCategorySortBindingImpl;->mboundView3:Landroid/widget/TextView;

    invoke-static {v5, v4}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_6
    const-wide/16 v4, 0x4

    and-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-eqz v4, :cond_7

    .line 153
    iget-object v0, p0, Lcom/coderpage/mine/module/edit/category/ItemCategorySortBindingImpl;->lyCategoryIcon:Landroid/widget/FrameLayout;

    invoke-static {v0, v9}, Lcom/coderpage/mine/app/tally/databinding/CommonBindAdapter;->setViewSelect(Landroid/view/View;Z)V

    :cond_7
    return-void

    :catchall_0
    move-exception v0

    .line 105
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 57
    monitor-enter p0

    .line 58
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/module/edit/category/ItemCategorySortBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 59
    monitor-exit p0

    return v0

    .line 61
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

    .line 49
    monitor-enter p0

    const-wide/16 v0, 0x4

    .line 50
    :try_start_0
    iput-wide v0, p0, Lcom/coderpage/mine/module/edit/category/ItemCategorySortBindingImpl;->mDirtyFlags:J

    .line 51
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    invoke-virtual {p0}, Lcom/coderpage/mine/module/edit/category/ItemCategorySortBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 51
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

    .line 84
    iput-object p1, p0, Lcom/coderpage/mine/module/edit/category/ItemCategorySortBindingImpl;->mData:Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;

    .line 85
    monitor-enter p0

    .line 86
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/module/edit/category/ItemCategorySortBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coderpage/mine/module/edit/category/ItemCategorySortBindingImpl;->mDirtyFlags:J

    .line 87
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x5

    .line 88
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/module/edit/category/ItemCategorySortBindingImpl;->notifyPropertyChanged(I)V

    .line 89
    invoke-super {p0}, Lcom/coderpage/mine/module/edit/category/ItemCategorySortBinding;->requestRebind()V

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

    const/16 v0, 0xd

    if-ne v0, p1, :cond_0

    .line 69
    check-cast p2, Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortViewModel;

    invoke-virtual {p0, p2}, Lcom/coderpage/mine/module/edit/category/ItemCategorySortBindingImpl;->setVm(Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortViewModel;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    if-ne v0, p1, :cond_1

    .line 72
    check-cast p2, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;

    invoke-virtual {p0, p2}, Lcom/coderpage/mine/module/edit/category/ItemCategorySortBindingImpl;->setData(Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public setVm(Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "Vm"
        }
    .end annotation

    .line 81
    iput-object p1, p0, Lcom/coderpage/mine/module/edit/category/ItemCategorySortBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortViewModel;

    return-void
.end method
