.class public Lcom/coderpage/mine/module/edit/category/CategoryEditActivityBindingImpl;
.super Lcom/coderpage/mine/module/edit/category/CategoryEditActivityBinding;
.source "CategoryEditActivityBindingImpl.java"

# interfaces
.implements Lcom/coderpage/mine/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private etCategoryNameandroidTextAttrChanged:Landroidx/databinding/InverseBindingListener;

.field private final mCallback31:Landroid/view/View$OnClickListener;

.field private mDirtyFlags:J

.field private final mboundView0:Landroid/support/constraint/ConstraintLayout;

.field private final mboundView3:Landroid/support/v7/widget/AppCompatImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/coderpage/mine/module/edit/category/CategoryEditActivityBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09009c

    const/4 v2, 0x5

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0900d0

    const/4 v2, 0x6

    .line 18
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

    .line 70
    sget-object v0, Lcom/coderpage/mine/module/edit/category/CategoryEditActivityBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/coderpage/mine/module/edit/category/CategoryEditActivityBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x7

    invoke-static {p1, p2, v2, v0, v1}, Lcom/coderpage/mine/module/edit/category/CategoryEditActivityBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/coderpage/mine/module/edit/category/CategoryEditActivityBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 11
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

    .line 73
    aget-object v1, p3, v0

    move-object v6, v1

    check-cast v6, Landroid/widget/EditText;

    const/4 v1, 0x2

    aget-object v1, p3, v1

    move-object v7, v1

    check-cast v7, Landroid/widget/FrameLayout;

    const/4 v1, 0x5

    aget-object v1, p3, v1

    move-object v8, v1

    check-cast v8, Landroid/support/constraint/ConstraintLayout;

    const/4 v1, 0x6

    aget-object v1, p3, v1

    move-object v9, v1

    check-cast v9, Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x4

    aget-object v1, p3, v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    const/4 v5, 0x3

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v10}, Lcom/coderpage/mine/module/edit/category/CategoryEditActivityBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/EditText;Landroid/widget/FrameLayout;Landroid/support/constraint/ConstraintLayout;Landroid/support/v7/widget/RecyclerView;Landroid/widget/TextView;)V

    .line 31
    new-instance p1, Lcom/coderpage/mine/module/edit/category/CategoryEditActivityBindingImpl$1;

    invoke-direct {p1, p0}, Lcom/coderpage/mine/module/edit/category/CategoryEditActivityBindingImpl$1;-><init>(Lcom/coderpage/mine/module/edit/category/CategoryEditActivityBindingImpl;)V

    iput-object p1, p0, Lcom/coderpage/mine/module/edit/category/CategoryEditActivityBindingImpl;->etCategoryNameandroidTextAttrChanged:Landroidx/databinding/InverseBindingListener;

    const-wide/16 v1, -0x1

    .line 294
    iput-wide v1, p0, Lcom/coderpage/mine/module/edit/category/CategoryEditActivityBindingImpl;->mDirtyFlags:J

    .line 80
    iget-object p1, p0, Lcom/coderpage/mine/module/edit/category/CategoryEditActivityBindingImpl;->etCategoryName:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 81
    iget-object p1, p0, Lcom/coderpage/mine/module/edit/category/CategoryEditActivityBindingImpl;->lySelectCategoryIcon:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 82
    aget-object p1, p3, p1

    check-cast p1, Landroid/support/constraint/ConstraintLayout;

    iput-object p1, p0, Lcom/coderpage/mine/module/edit/category/CategoryEditActivityBindingImpl;->mboundView0:Landroid/support/constraint/ConstraintLayout;

    .line 83
    invoke-virtual {p1, v1}, Landroid/support/constraint/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x3

    .line 84
    aget-object p1, p3, p1

    check-cast p1, Landroid/support/v7/widget/AppCompatImageView;

    iput-object p1, p0, Lcom/coderpage/mine/module/edit/category/CategoryEditActivityBindingImpl;->mboundView3:Landroid/support/v7/widget/AppCompatImageView;

    .line 85
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/AppCompatImageView;->setTag(Ljava/lang/Object;)V

    .line 86
    iget-object p1, p0, Lcom/coderpage/mine/module/edit/category/CategoryEditActivityBindingImpl;->tvSubmit:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 87
    invoke-virtual {p0, p2}, Lcom/coderpage/mine/module/edit/category/CategoryEditActivityBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 89
    new-instance p1, Lcom/coderpage/mine/generated/callback/OnClickListener;

    invoke-direct {p1, p0, v0}, Lcom/coderpage/mine/generated/callback/OnClickListener;-><init>(Lcom/coderpage/mine/generated/callback/OnClickListener$Listener;I)V

    iput-object p1, p0, Lcom/coderpage/mine/module/edit/category/CategoryEditActivityBindingImpl;->mCallback31:Landroid/view/View$OnClickListener;

    .line 90
    invoke-virtual {p0}, Lcom/coderpage/mine/module/edit/category/CategoryEditActivityBindingImpl;->invalidateAll()V

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

    .line 146
    monitor-enter p0

    .line 147
    :try_start_0
    iget-wide p1, p0, Lcom/coderpage/mine/module/edit/category/CategoryEditActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/coderpage/mine/module/edit/category/CategoryEditActivityBindingImpl;->mDirtyFlags:J

    .line 148
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

.method private onChangeVmCategoryName(Landroidx/databinding/ObservableField;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "VmCategoryName",
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

    .line 164
    monitor-enter p0

    .line 165
    :try_start_0
    iget-wide p1, p0, Lcom/coderpage/mine/module/edit/category/CategoryEditActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x4

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/coderpage/mine/module/edit/category/CategoryEditActivityBindingImpl;->mDirtyFlags:J

    .line 166
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

    .line 155
    monitor-enter p0

    .line 156
    :try_start_0
    iget-wide p1, p0, Lcom/coderpage/mine/module/edit/category/CategoryEditActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/coderpage/mine/module/edit/category/CategoryEditActivityBindingImpl;->mDirtyFlags:J

    .line 157
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
    .locals 0
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

    .line 282
    iget-object p1, p0, Lcom/coderpage/mine/module/edit/category/CategoryEditActivityBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 290
    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;->onSubmitClick()V

    :cond_1
    return-void
.end method

.method protected executeBindings()V
    .locals 19

    move-object/from16 v1, p0

    .line 175
    monitor-enter p0

    .line 176
    :try_start_0
    iget-wide v2, v1, Lcom/coderpage/mine/module/edit/category/CategoryEditActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 177
    iput-wide v4, v1, Lcom/coderpage/mine/module/edit/category/CategoryEditActivityBindingImpl;->mDirtyFlags:J

    .line 178
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    iget-object v0, v1, Lcom/coderpage/mine/module/edit/category/CategoryEditActivityBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;

    const-wide/16 v6, 0x1f

    and-long/2addr v6, v2

    const-wide/16 v8, 0x1a

    const-wide/16 v10, 0x19

    const-wide/16 v12, 0x1c

    const/4 v14, 0x1

    const/4 v15, 0x0

    cmp-long v16, v6, v4

    if-eqz v16, :cond_b

    and-long v6, v2, v10

    const/4 v10, 0x0

    cmp-long v11, v6, v4

    if-eqz v11, :cond_1

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;->getCategoryIcon()Landroidx/databinding/ObservableField;

    move-result-object v6

    goto :goto_0

    :cond_0
    move-object v6, v15

    .line 198
    :goto_0
    invoke-virtual {v1, v10, v6}, Lcom/coderpage/mine/module/edit/category/CategoryEditActivityBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v6, :cond_1

    .line 203
    invoke-virtual {v6}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v6, v15

    :goto_1
    and-long v17, v2, v8

    cmp-long v7, v17, v4

    if-eqz v7, :cond_8

    if-eqz v0, :cond_2

    .line 210
    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;->getType()Landroidx/databinding/ObservableInt;

    move-result-object v7

    goto :goto_2

    :cond_2
    move-object v7, v15

    .line 212
    :goto_2
    invoke-virtual {v1, v14, v7}, Lcom/coderpage/mine/module/edit/category/CategoryEditActivityBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v7, :cond_3

    .line 217
    invoke-virtual {v7}, Landroidx/databinding/ObservableInt;->get()I

    move-result v7

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    :goto_3
    if-nez v7, :cond_4

    const/4 v10, 0x1

    :cond_4
    cmp-long v7, v17, v4

    if-eqz v7, :cond_6

    if-eqz v10, :cond_5

    const-wide/16 v17, 0x40

    goto :goto_4

    :cond_5
    const-wide/16 v17, 0x20

    :goto_4
    or-long v2, v2, v17

    .line 234
    :cond_6
    iget-object v7, v1, Lcom/coderpage/mine/module/edit/category/CategoryEditActivityBindingImpl;->lySelectCategoryIcon:Landroid/widget/FrameLayout;

    if-eqz v10, :cond_7

    const v10, 0x7f08006b

    goto :goto_5

    :cond_7
    const v10, 0x7f08006e

    :goto_5
    invoke-static {v7, v10}, Lcom/coderpage/mine/module/edit/category/CategoryEditActivityBindingImpl;->getDrawableFromResource(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto :goto_6

    :cond_8
    move-object v7, v15

    :goto_6
    and-long v10, v2, v12

    cmp-long v17, v10, v4

    if-eqz v17, :cond_a

    if-eqz v0, :cond_9

    .line 240
    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;->getCategoryName()Landroidx/databinding/ObservableField;

    move-result-object v0

    goto :goto_7

    :cond_9
    move-object v0, v15

    :goto_7
    const/4 v10, 0x2

    .line 242
    invoke-virtual {v1, v10, v0}, Lcom/coderpage/mine/module/edit/category/CategoryEditActivityBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v0, :cond_a

    .line 247
    invoke-virtual {v0}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_8

    :cond_a
    move-object v0, v15

    goto :goto_8

    :cond_b
    move-object v0, v15

    move-object v6, v0

    move-object v7, v6

    :goto_8
    and-long v10, v2, v12

    cmp-long v12, v10, v4

    if-eqz v12, :cond_c

    .line 255
    iget-object v10, v1, Lcom/coderpage/mine/module/edit/category/CategoryEditActivityBindingImpl;->etCategoryName:Landroid/widget/EditText;

    invoke-static {v10, v0}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_c
    const-wide/16 v10, 0x10

    and-long/2addr v10, v2

    cmp-long v0, v10, v4

    if-eqz v0, :cond_d

    .line 260
    iget-object v0, v1, Lcom/coderpage/mine/module/edit/category/CategoryEditActivityBindingImpl;->etCategoryName:Landroid/widget/EditText;

    move-object v10, v15

    check-cast v10, Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;

    move-object v11, v15

    check-cast v11, Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;

    check-cast v15, Landroidx/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;

    iget-object v12, v1, Lcom/coderpage/mine/module/edit/category/CategoryEditActivityBindingImpl;->etCategoryNameandroidTextAttrChanged:Landroidx/databinding/InverseBindingListener;

    invoke-static {v0, v10, v11, v15, v12}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setTextWatcher(Landroid/widget/TextView;Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;Landroidx/databinding/InverseBindingListener;)V

    .line 261
    iget-object v0, v1, Lcom/coderpage/mine/module/edit/category/CategoryEditActivityBindingImpl;->lySelectCategoryIcon:Landroid/widget/FrameLayout;

    invoke-static {v0, v14}, Lcom/coderpage/mine/app/tally/databinding/CommonBindAdapter;->setViewSelect(Landroid/view/View;Z)V

    .line 262
    iget-object v0, v1, Lcom/coderpage/mine/module/edit/category/CategoryEditActivityBindingImpl;->tvSubmit:Landroid/widget/TextView;

    iget-object v10, v1, Lcom/coderpage/mine/module/edit/category/CategoryEditActivityBindingImpl;->mCallback31:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_d
    and-long/2addr v8, v2

    cmp-long v0, v8, v4

    if-eqz v0, :cond_e

    .line 267
    iget-object v0, v1, Lcom/coderpage/mine/module/edit/category/CategoryEditActivityBindingImpl;->lySelectCategoryIcon:Landroid/widget/FrameLayout;

    invoke-static {v0, v7}, Landroidx/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_e
    const-wide/16 v7, 0x19

    and-long/2addr v2, v7

    cmp-long v0, v2, v4

    if-eqz v0, :cond_f

    .line 272
    iget-object v0, v1, Lcom/coderpage/mine/module/edit/category/CategoryEditActivityBindingImpl;->mboundView3:Landroid/support/v7/widget/AppCompatImageView;

    invoke-static {v0, v6}, Lcom/coderpage/mine/app/tally/databinding/CommonBindAdapter;->setCategoryIcon(Landroid/widget/ImageView;Ljava/lang/String;)V

    :cond_f
    return-void

    :catchall_0
    move-exception v0

    .line 178
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 103
    monitor-enter p0

    .line 104
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/module/edit/category/CategoryEditActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 105
    monitor-exit p0

    return v0

    .line 107
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

    .line 95
    monitor-enter p0

    const-wide/16 v0, 0x10

    .line 96
    :try_start_0
    iput-wide v0, p0, Lcom/coderpage/mine/module/edit/category/CategoryEditActivityBindingImpl;->mDirtyFlags:J

    .line 97
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    invoke-virtual {p0}, Lcom/coderpage/mine/module/edit/category/CategoryEditActivityBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 97
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

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 140
    :cond_0
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lcom/coderpage/mine/module/edit/category/CategoryEditActivityBindingImpl;->onChangeVmCategoryName(Landroidx/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 138
    :cond_1
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/coderpage/mine/module/edit/category/CategoryEditActivityBindingImpl;->onChangeVmType(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 136
    :cond_2
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lcom/coderpage/mine/module/edit/category/CategoryEditActivityBindingImpl;->onChangeVmCategoryIcon(Landroidx/databinding/ObservableField;I)Z

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

    .line 115
    check-cast p2, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;

    invoke-virtual {p0, p2}, Lcom/coderpage/mine/module/edit/category/CategoryEditActivityBindingImpl;->setVm(Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
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

    .line 124
    iput-object p1, p0, Lcom/coderpage/mine/module/edit/category/CategoryEditActivityBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;

    .line 125
    monitor-enter p0

    .line 126
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/module/edit/category/CategoryEditActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coderpage/mine/module/edit/category/CategoryEditActivityBindingImpl;->mDirtyFlags:J

    .line 127
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0xd

    .line 128
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/module/edit/category/CategoryEditActivityBindingImpl;->notifyPropertyChanged(I)V

    .line 129
    invoke-super {p0}, Lcom/coderpage/mine/module/edit/category/CategoryEditActivityBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 127
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
