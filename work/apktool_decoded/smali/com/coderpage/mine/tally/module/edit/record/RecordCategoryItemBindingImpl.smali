.class public Lcom/coderpage/mine/tally/module/edit/record/RecordCategoryItemBindingImpl;
.super Lcom/coderpage/mine/tally/module/edit/record/RecordCategoryItemBinding;
.source "RecordCategoryItemBindingImpl.java"

# interfaces
.implements Lcom/coderpage/mine/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private final mCallback42:Landroid/view/View$OnClickListener;

.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/LinearLayout;

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
    sget-object v0, Lcom/coderpage/mine/tally/module/edit/record/RecordCategoryItemBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/coderpage/mine/tally/module/edit/record/RecordCategoryItemBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x4

    invoke-static {p1, p2, v2, v0, v1}, Lcom/coderpage/mine/tally/module/edit/record/RecordCategoryItemBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/coderpage/mine/tally/module/edit/record/RecordCategoryItemBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

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

    const/4 v0, 0x3

    .line 36
    aget-object v0, p3, v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/coderpage/mine/tally/module/edit/record/RecordCategoryItemBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;)V

    const-wide/16 v2, -0x1

    .line 227
    iput-wide v2, p0, Lcom/coderpage/mine/tally/module/edit/record/RecordCategoryItemBindingImpl;->mDirtyFlags:J

    const/4 p1, 0x0

    .line 39
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/coderpage/mine/tally/module/edit/record/RecordCategoryItemBindingImpl;->mboundView0:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    .line 40
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 41
    aget-object p1, p3, v1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/coderpage/mine/tally/module/edit/record/RecordCategoryItemBindingImpl;->mboundView1:Landroid/widget/FrameLayout;

    .line 42
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x2

    .line 43
    aget-object p1, p3, p1

    check-cast p1, Landroid/support/v7/widget/AppCompatImageView;

    iput-object p1, p0, Lcom/coderpage/mine/tally/module/edit/record/RecordCategoryItemBindingImpl;->mboundView2:Landroid/support/v7/widget/AppCompatImageView;

    .line 44
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/AppCompatImageView;->setTag(Ljava/lang/Object;)V

    .line 45
    iget-object p1, p0, Lcom/coderpage/mine/tally/module/edit/record/RecordCategoryItemBindingImpl;->tvName:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 46
    invoke-virtual {p0, p2}, Lcom/coderpage/mine/tally/module/edit/record/RecordCategoryItemBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 48
    new-instance p1, Lcom/coderpage/mine/generated/callback/OnClickListener;

    invoke-direct {p1, p0, v1}, Lcom/coderpage/mine/generated/callback/OnClickListener;-><init>(Lcom/coderpage/mine/generated/callback/OnClickListener$Listener;I)V

    iput-object p1, p0, Lcom/coderpage/mine/tally/module/edit/record/RecordCategoryItemBindingImpl;->mCallback42:Landroid/view/View$OnClickListener;

    .line 49
    invoke-virtual {p0}, Lcom/coderpage/mine/tally/module/edit/record/RecordCategoryItemBindingImpl;->invalidateAll()V

    return-void
.end method

.method private onChangeCategory(Lcom/coderpage/mine/app/tally/module/edit/model/Category;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "Category",
            "fieldId"
        }
    .end annotation

    const/4 p1, 0x1

    if-nez p2, :cond_0

    .line 113
    monitor-enter p0

    .line 114
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/tally/module/edit/record/RecordCategoryItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coderpage/mine/tally/module/edit/record/RecordCategoryItemBindingImpl;->mDirtyFlags:J

    .line 115
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/16 v0, 0x8

    if-ne p2, v0, :cond_1

    .line 119
    monitor-enter p0

    .line 120
    :try_start_1
    iget-wide v0, p0, Lcom/coderpage/mine/tally/module/edit/record/RecordCategoryItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coderpage/mine/tally/module/edit/record/RecordCategoryItemBindingImpl;->mDirtyFlags:J

    .line 121
    monitor-exit p0

    return p1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_1
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

    .line 212
    iget-object p1, p0, Lcom/coderpage/mine/tally/module/edit/record/RecordCategoryItemBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;

    .line 214
    iget-object p2, p0, Lcom/coderpage/mine/tally/module/edit/record/RecordCategoryItemBindingImpl;->mCategory:Lcom/coderpage/mine/app/tally/module/edit/model/Category;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 223
    invoke-virtual {p1, p2}, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->onCategoryClick(Lcom/coderpage/mine/app/tally/module/edit/model/Category;)V

    :cond_1
    return-void
.end method

.method protected executeBindings()V
    .locals 15

    .line 130
    monitor-enter p0

    .line 131
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/tally/module/edit/record/RecordCategoryItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 132
    iput-wide v2, p0, Lcom/coderpage/mine/tally/module/edit/record/RecordCategoryItemBindingImpl;->mDirtyFlags:J

    .line 133
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    iget-object v4, p0, Lcom/coderpage/mine/tally/module/edit/record/RecordCategoryItemBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;

    .line 141
    iget-object v4, p0, Lcom/coderpage/mine/tally/module/edit/record/RecordCategoryItemBindingImpl;->mCategory:Lcom/coderpage/mine/app/tally/module/edit/model/Category;

    const-wide/16 v5, 0xd

    and-long v7, v0, v5

    const-wide/16 v9, 0x9

    const/4 v11, 0x0

    const/4 v12, 0x0

    cmp-long v13, v7, v2

    if-eqz v13, :cond_8

    if-eqz v4, :cond_0

    .line 150
    invoke-virtual {v4}, Lcom/coderpage/mine/app/tally/module/edit/model/Category;->isSelect()Z

    move-result v7

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    and-long v13, v0, v9

    cmp-long v8, v13, v2

    if-eqz v8, :cond_7

    if-eqz v4, :cond_1

    .line 156
    invoke-virtual {v4}, Lcom/coderpage/mine/app/tally/module/edit/model/Category;->getInternal()Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v12

    :goto_1
    if-eqz v4, :cond_2

    .line 162
    invoke-virtual {v4}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->getType()I

    move-result v8

    .line 164
    invoke-virtual {v4}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->getName()Ljava/lang/String;

    move-result-object v12

    .line 166
    invoke-virtual {v4}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->getIcon()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_2
    move-object v4, v12

    const/4 v8, 0x0

    :goto_2
    if-nez v8, :cond_3

    const/4 v11, 0x1

    :cond_3
    cmp-long v8, v13, v2

    if-eqz v8, :cond_5

    if-eqz v11, :cond_4

    const-wide/16 v13, 0x20

    goto :goto_3

    :cond_4
    const-wide/16 v13, 0x10

    :goto_3
    or-long/2addr v0, v13

    .line 183
    :cond_5
    iget-object v8, p0, Lcom/coderpage/mine/tally/module/edit/record/RecordCategoryItemBindingImpl;->mboundView1:Landroid/widget/FrameLayout;

    if-eqz v11, :cond_6

    const v11, 0x7f08006b

    goto :goto_4

    :cond_6
    const v11, 0x7f08006e

    :goto_4
    invoke-static {v8, v11}, Lcom/coderpage/mine/tally/module/edit/record/RecordCategoryItemBindingImpl;->getDrawableFromResource(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    move v11, v7

    move-object v7, v12

    move-object v12, v8

    goto :goto_5

    :cond_7
    move v11, v7

    :cond_8
    move-object v4, v12

    move-object v7, v4

    :goto_5
    const-wide/16 v13, 0x8

    and-long/2addr v13, v0

    cmp-long v8, v13, v2

    if-eqz v8, :cond_9

    .line 190
    iget-object v8, p0, Lcom/coderpage/mine/tally/module/edit/record/RecordCategoryItemBindingImpl;->mboundView0:Landroid/widget/LinearLayout;

    iget-object v13, p0, Lcom/coderpage/mine/tally/module/edit/record/RecordCategoryItemBindingImpl;->mCallback42:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v13}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    and-long/2addr v5, v0

    cmp-long v8, v5, v2

    if-eqz v8, :cond_a

    .line 195
    iget-object v5, p0, Lcom/coderpage/mine/tally/module/edit/record/RecordCategoryItemBindingImpl;->mboundView1:Landroid/widget/FrameLayout;

    invoke-static {v5, v11}, Lcom/coderpage/mine/app/tally/databinding/CommonBindAdapter;->setViewSelect(Landroid/view/View;Z)V

    :cond_a
    and-long/2addr v0, v9

    cmp-long v5, v0, v2

    if-eqz v5, :cond_b

    .line 200
    iget-object v0, p0, Lcom/coderpage/mine/tally/module/edit/record/RecordCategoryItemBindingImpl;->mboundView1:Landroid/widget/FrameLayout;

    invoke-static {v0, v12}, Landroidx/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 201
    iget-object v0, p0, Lcom/coderpage/mine/tally/module/edit/record/RecordCategoryItemBindingImpl;->mboundView2:Landroid/support/v7/widget/AppCompatImageView;

    invoke-static {v0, v4}, Lcom/coderpage/mine/app/tally/databinding/CommonBindAdapter;->setCategoryIcon(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/coderpage/mine/tally/module/edit/record/RecordCategoryItemBindingImpl;->tvName:Landroid/widget/TextView;

    invoke-static {v0, v7}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_b
    return-void

    :catchall_0
    move-exception v0

    .line 133
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
    iget-wide v0, p0, Lcom/coderpage/mine/tally/module/edit/record/RecordCategoryItemBindingImpl;->mDirtyFlags:J

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

    const-wide/16 v0, 0x8

    .line 55
    :try_start_0
    iput-wide v0, p0, Lcom/coderpage/mine/tally/module/edit/record/RecordCategoryItemBindingImpl;->mDirtyFlags:J

    .line 56
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    invoke-virtual {p0}, Lcom/coderpage/mine/tally/module/edit/record/RecordCategoryItemBindingImpl;->requestRebind()V

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

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 107
    :cond_0
    check-cast p2, Lcom/coderpage/mine/app/tally/module/edit/model/Category;

    invoke-direct {p0, p2, p3}, Lcom/coderpage/mine/tally/module/edit/record/RecordCategoryItemBindingImpl;->onChangeCategory(Lcom/coderpage/mine/app/tally/module/edit/model/Category;I)Z

    move-result p1

    return p1
.end method

.method public setCategory(Lcom/coderpage/mine/app/tally/module/edit/model/Category;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "Category"
        }
    .end annotation

    const/4 v0, 0x0

    .line 94
    invoke-virtual {p0, v0, p1}, Lcom/coderpage/mine/tally/module/edit/record/RecordCategoryItemBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    .line 95
    iput-object p1, p0, Lcom/coderpage/mine/tally/module/edit/record/RecordCategoryItemBindingImpl;->mCategory:Lcom/coderpage/mine/app/tally/module/edit/model/Category;

    .line 96
    monitor-enter p0

    .line 97
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/tally/module/edit/record/RecordCategoryItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coderpage/mine/tally/module/edit/record/RecordCategoryItemBindingImpl;->mDirtyFlags:J

    .line 98
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x2

    .line 99
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/tally/module/edit/record/RecordCategoryItemBindingImpl;->notifyPropertyChanged(I)V

    .line 100
    invoke-super {p0}, Lcom/coderpage/mine/tally/module/edit/record/RecordCategoryItemBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 98
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
    check-cast p2, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;

    invoke-virtual {p0, p2}, Lcom/coderpage/mine/tally/module/edit/record/RecordCategoryItemBindingImpl;->setVm(Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne v0, p1, :cond_1

    .line 77
    check-cast p2, Lcom/coderpage/mine/app/tally/module/edit/model/Category;

    invoke-virtual {p0, p2}, Lcom/coderpage/mine/tally/module/edit/record/RecordCategoryItemBindingImpl;->setCategory(Lcom/coderpage/mine/app/tally/module/edit/model/Category;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public setVm(Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;)V
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
    iput-object p1, p0, Lcom/coderpage/mine/tally/module/edit/record/RecordCategoryItemBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;

    .line 87
    monitor-enter p0

    .line 88
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/tally/module/edit/record/RecordCategoryItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coderpage/mine/tally/module/edit/record/RecordCategoryItemBindingImpl;->mDirtyFlags:J

    .line 89
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0xd

    .line 90
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/tally/module/edit/record/RecordCategoryItemBindingImpl;->notifyPropertyChanged(I)V

    .line 91
    invoke-super {p0}, Lcom/coderpage/mine/tally/module/edit/record/RecordCategoryItemBinding;->requestRebind()V

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
