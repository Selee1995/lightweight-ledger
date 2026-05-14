.class public Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;
.super Lcom/coderpage/mine/tall/module/edit/EditFragmentBinding;
.source "EditFragmentBindingImpl.java"

# interfaces
.implements Lcom/coderpage/mine/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private final mCallback10:Landroid/view/View$OnClickListener;

.field private final mCallback11:Landroid/view/View$OnClickListener;

.field private final mCallback12:Landroid/view/View$OnClickListener;

.field private final mCallback13:Landroid/view/View$OnClickListener;

.field private final mCallback14:Landroid/view/View$OnClickListener;

.field private final mCallback15:Landroid/view/View$OnClickListener;

.field private final mCallback16:Landroid/view/View$OnClickListener;

.field private final mCallback17:Landroid/view/View$OnClickListener;

.field private final mCallback2:Landroid/view/View$OnClickListener;

.field private final mCallback3:Landroid/view/View$OnClickListener;

.field private final mCallback4:Landroid/view/View$OnClickListener;

.field private final mCallback5:Landroid/view/View$OnClickListener;

.field private final mCallback6:Landroid/view/View$OnClickListener;

.field private final mCallback7:Landroid/view/View$OnClickListener;

.field private final mCallback8:Landroid/view/View$OnClickListener;

.field private final mCallback9:Landroid/view/View$OnClickListener;

.field private mDirtyFlags:J

.field private final mboundView2:Landroid/support/v7/widget/AppCompatImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090097

    const/16 v2, 0x16

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f090184

    const/16 v2, 0x17

    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f09002c

    const/16 v2, 0x18

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f09005e

    const/16 v2, 0x19

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

    .line 63
    sget-object v0, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0x1a

    invoke-static {p1, p2, v2, v0, v1}, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 30
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

    move-object/from16 v3, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/16 v4, 0x18

    .line 66
    aget-object v4, p3, v4

    check-cast v4, Lcom/coderpage/mine/app/tally/module/edit/widget/CategoryViewPager;

    const/4 v15, 0x5

    aget-object v5, p3, v15

    check-cast v5, Landroid/widget/TextView;

    const/16 v6, 0x19

    aget-object v6, p3, v6

    check-cast v6, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;

    const/16 v14, 0xb

    aget-object v7, p3, v14

    check-cast v7, Landroid/support/v7/widget/AppCompatImageView;

    const/16 v8, 0x16

    aget-object v8, p3, v8

    check-cast v8, Landroid/support/constraint/ConstraintLayout;

    const/4 v13, 0x1

    aget-object v9, p3, v13

    check-cast v9, Landroid/widget/FrameLayout;

    const/4 v10, 0x0

    aget-object v10, p3, v10

    check-cast v10, Landroid/support/constraint/ConstraintLayout;

    const/4 v12, 0x3

    aget-object v11, p3, v12

    check-cast v11, Landroid/widget/TextView;

    const/16 v16, 0x12

    aget-object v16, p3, v16

    check-cast v16, Landroid/widget/TextView;

    move-object/from16 v12, v16

    const/4 v3, 0x7

    aget-object v16, p3, v3

    check-cast v16, Landroid/widget/TextView;

    move-object/from16 v13, v16

    const/4 v3, 0x6

    aget-object v16, p3, v3

    check-cast v16, Landroid/widget/TextView;

    move-object/from16 v14, v16

    const/16 v16, 0x14

    aget-object v16, p3, v16

    check-cast v16, Landroid/widget/TextView;

    move-object/from16 v15, v16

    const/4 v3, 0x4

    aget-object v16, p3, v3

    check-cast v16, Landroid/widget/TextView;

    const/16 v17, 0x13

    aget-object v17, p3, v17

    check-cast v17, Landroid/widget/TextView;

    const/16 v3, 0x8

    aget-object v18, p3, v3

    check-cast v18, Landroid/widget/TextView;

    const/16 v3, 0x9

    aget-object v19, p3, v3

    check-cast v19, Landroid/widget/TextView;

    const/16 v3, 0xa

    aget-object v20, p3, v3

    check-cast v20, Landroid/widget/TextView;

    const/16 v3, 0xc

    aget-object v21, p3, v3

    check-cast v21, Landroid/widget/TextView;

    const/16 v3, 0xd

    aget-object v22, p3, v3

    check-cast v22, Landroid/widget/TextView;

    const/16 v3, 0xe

    aget-object v23, p3, v3

    check-cast v23, Landroid/widget/TextView;

    const/16 v3, 0xf

    aget-object v24, p3, v3

    check-cast v24, Landroid/widget/TextView;

    const/16 v3, 0x10

    aget-object v25, p3, v3

    check-cast v25, Landroid/widget/TextView;

    const/16 v26, 0x11

    aget-object v26, p3, v26

    check-cast v26, Landroid/widget/TextView;

    const/16 v27, 0x15

    aget-object v27, p3, v27

    check-cast v27, Landroid/widget/TextView;

    const/16 v28, 0x17

    aget-object v28, p3, v28

    check-cast v28, Landroid/view/View;

    const/16 v29, 0x5

    move/from16 v3, v29

    invoke-direct/range {v0 .. v28}, Lcom/coderpage/mine/tall/module/edit/EditFragmentBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/coderpage/mine/app/tally/module/edit/widget/CategoryViewPager;Landroid/widget/TextView;Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;Landroid/support/v7/widget/AppCompatImageView;Landroid/support/constraint/ConstraintLayout;Landroid/widget/FrameLayout;Landroid/support/constraint/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;)V

    const-wide/16 v0, -0x1

    move-object/from16 v2, p0

    .line 758
    iput-wide v0, v2, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->mDirtyFlags:J

    .line 93
    iget-object v0, v2, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->etAmount:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 94
    iget-object v0, v2, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->ivDelete:Landroid/support/v7/widget/AppCompatImageView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatImageView;->setTag(Ljava/lang/Object;)V

    .line 95
    iget-object v0, v2, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->lySelectCategoryIcon:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 96
    iget-object v0, v2, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->mainContent:Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x2

    .line 97
    aget-object v3, p3, v0

    check-cast v3, Landroid/support/v7/widget/AppCompatImageView;

    iput-object v3, v2, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->mboundView2:Landroid/support/v7/widget/AppCompatImageView;

    .line 98
    invoke-virtual {v3, v1}, Landroid/support/v7/widget/AppCompatImageView;->setTag(Ljava/lang/Object;)V

    .line 99
    iget-object v3, v2, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->tvCategoryName:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 100
    iget-object v3, v2, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->tvClear:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 101
    iget-object v3, v2, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->tvDate:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 102
    iget-object v3, v2, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->tvDesc:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 103
    iget-object v3, v2, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->tvDot:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 104
    iget-object v3, v2, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->tvMoneyUnit:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 105
    iget-object v3, v2, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->tvNum0:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 106
    iget-object v3, v2, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->tvNum1:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 107
    iget-object v3, v2, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->tvNum2:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 108
    iget-object v3, v2, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->tvNum3:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 109
    iget-object v3, v2, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->tvNum4:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 110
    iget-object v3, v2, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->tvNum5:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 111
    iget-object v3, v2, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->tvNum6:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 112
    iget-object v3, v2, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->tvNum7:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 113
    iget-object v3, v2, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->tvNum8:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 114
    iget-object v3, v2, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->tvNum9:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 115
    iget-object v3, v2, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->tvOk:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    move-object/from16 v1, p2

    .line 116
    invoke-virtual {v2, v1}, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 118
    new-instance v1, Lcom/coderpage/mine/generated/callback/OnClickListener;

    const/16 v3, 0xe

    invoke-direct {v1, v2, v3}, Lcom/coderpage/mine/generated/callback/OnClickListener;-><init>(Lcom/coderpage/mine/generated/callback/OnClickListener$Listener;I)V

    iput-object v1, v2, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->mCallback15:Landroid/view/View$OnClickListener;

    .line 119
    new-instance v1, Lcom/coderpage/mine/generated/callback/OnClickListener;

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Lcom/coderpage/mine/generated/callback/OnClickListener;-><init>(Lcom/coderpage/mine/generated/callback/OnClickListener$Listener;I)V

    iput-object v1, v2, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->mCallback11:Landroid/view/View$OnClickListener;

    .line 120
    new-instance v1, Lcom/coderpage/mine/generated/callback/OnClickListener;

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/coderpage/mine/generated/callback/OnClickListener;-><init>(Lcom/coderpage/mine/generated/callback/OnClickListener$Listener;I)V

    iput-object v1, v2, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->mCallback6:Landroid/view/View$OnClickListener;

    .line 121
    new-instance v1, Lcom/coderpage/mine/generated/callback/OnClickListener;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/coderpage/mine/generated/callback/OnClickListener;-><init>(Lcom/coderpage/mine/generated/callback/OnClickListener$Listener;I)V

    iput-object v1, v2, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->mCallback2:Landroid/view/View$OnClickListener;

    .line 122
    new-instance v1, Lcom/coderpage/mine/generated/callback/OnClickListener;

    const/16 v3, 0xf

    invoke-direct {v1, v2, v3}, Lcom/coderpage/mine/generated/callback/OnClickListener;-><init>(Lcom/coderpage/mine/generated/callback/OnClickListener$Listener;I)V

    iput-object v1, v2, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->mCallback16:Landroid/view/View$OnClickListener;

    .line 123
    new-instance v1, Lcom/coderpage/mine/generated/callback/OnClickListener;

    const/16 v3, 0xb

    invoke-direct {v1, v2, v3}, Lcom/coderpage/mine/generated/callback/OnClickListener;-><init>(Lcom/coderpage/mine/generated/callback/OnClickListener$Listener;I)V

    iput-object v1, v2, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->mCallback12:Landroid/view/View$OnClickListener;

    .line 124
    new-instance v1, Lcom/coderpage/mine/generated/callback/OnClickListener;

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Lcom/coderpage/mine/generated/callback/OnClickListener;-><init>(Lcom/coderpage/mine/generated/callback/OnClickListener$Listener;I)V

    iput-object v1, v2, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->mCallback9:Landroid/view/View$OnClickListener;

    .line 125
    new-instance v1, Lcom/coderpage/mine/generated/callback/OnClickListener;

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/coderpage/mine/generated/callback/OnClickListener;-><init>(Lcom/coderpage/mine/generated/callback/OnClickListener$Listener;I)V

    iput-object v1, v2, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->mCallback5:Landroid/view/View$OnClickListener;

    .line 126
    new-instance v1, Lcom/coderpage/mine/generated/callback/OnClickListener;

    const/16 v3, 0x10

    invoke-direct {v1, v2, v3}, Lcom/coderpage/mine/generated/callback/OnClickListener;-><init>(Lcom/coderpage/mine/generated/callback/OnClickListener$Listener;I)V

    iput-object v1, v2, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->mCallback17:Landroid/view/View$OnClickListener;

    .line 127
    new-instance v1, Lcom/coderpage/mine/generated/callback/OnClickListener;

    const/16 v3, 0xc

    invoke-direct {v1, v2, v3}, Lcom/coderpage/mine/generated/callback/OnClickListener;-><init>(Lcom/coderpage/mine/generated/callback/OnClickListener$Listener;I)V

    iput-object v1, v2, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->mCallback13:Landroid/view/View$OnClickListener;

    .line 128
    new-instance v1, Lcom/coderpage/mine/generated/callback/OnClickListener;

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lcom/coderpage/mine/generated/callback/OnClickListener;-><init>(Lcom/coderpage/mine/generated/callback/OnClickListener$Listener;I)V

    iput-object v1, v2, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->mCallback8:Landroid/view/View$OnClickListener;

    .line 129
    new-instance v1, Lcom/coderpage/mine/generated/callback/OnClickListener;

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/coderpage/mine/generated/callback/OnClickListener;-><init>(Lcom/coderpage/mine/generated/callback/OnClickListener$Listener;I)V

    iput-object v1, v2, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->mCallback4:Landroid/view/View$OnClickListener;

    .line 130
    new-instance v1, Lcom/coderpage/mine/generated/callback/OnClickListener;

    const/16 v3, 0xd

    invoke-direct {v1, v2, v3}, Lcom/coderpage/mine/generated/callback/OnClickListener;-><init>(Lcom/coderpage/mine/generated/callback/OnClickListener$Listener;I)V

    iput-object v1, v2, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->mCallback14:Landroid/view/View$OnClickListener;

    .line 131
    new-instance v1, Lcom/coderpage/mine/generated/callback/OnClickListener;

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Lcom/coderpage/mine/generated/callback/OnClickListener;-><init>(Lcom/coderpage/mine/generated/callback/OnClickListener$Listener;I)V

    iput-object v1, v2, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->mCallback10:Landroid/view/View$OnClickListener;

    .line 132
    new-instance v1, Lcom/coderpage/mine/generated/callback/OnClickListener;

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lcom/coderpage/mine/generated/callback/OnClickListener;-><init>(Lcom/coderpage/mine/generated/callback/OnClickListener$Listener;I)V

    iput-object v1, v2, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->mCallback7:Landroid/view/View$OnClickListener;

    .line 133
    new-instance v1, Lcom/coderpage/mine/generated/callback/OnClickListener;

    invoke-direct {v1, v2, v0}, Lcom/coderpage/mine/generated/callback/OnClickListener;-><init>(Lcom/coderpage/mine/generated/callback/OnClickListener$Listener;I)V

    iput-object v1, v2, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->mCallback3:Landroid/view/View$OnClickListener;

    .line 134
    invoke-virtual/range {p0 .. p0}, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->invalidateAll()V

    return-void
.end method

.method private onChangeCategory(Lcom/coderpage/mine/app/tally/module/edit/model/Category;I)Z
    .locals 2
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

    if-nez p2, :cond_0

    .line 237
    monitor-enter p0

    .line 238
    :try_start_0
    iget-wide p1, p0, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->mDirtyFlags:J

    .line 239
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

.method private onChangeVmAmountText(Landroidx/databinding/ObservableField;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "VmAmountText",
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

    .line 255
    monitor-enter p0

    .line 256
    :try_start_0
    iget-wide p1, p0, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x8

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->mDirtyFlags:J

    .line 257
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

.method private onChangeVmAmountUnit(Landroidx/databinding/ObservableField;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "VmAmountUnit",
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

    .line 246
    monitor-enter p0

    .line 247
    :try_start_0
    iget-wide p1, p0, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x4

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->mDirtyFlags:J

    .line 248
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

.method private onChangeVmDateText(Landroidx/databinding/ObservableField;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "VmDateText",
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

    .line 228
    monitor-enter p0

    .line 229
    :try_start_0
    iget-wide p1, p0, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->mDirtyFlags:J

    .line 230
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

.method private onChangeVmDesc(Landroidx/databinding/ObservableField;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "VmDesc",
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

    .line 264
    monitor-enter p0

    .line 265
    :try_start_0
    iget-wide p1, p0, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x10

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->mDirtyFlags:J

    .line 266
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

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_10

    .line 616
    :pswitch_0
    iget-object p1, p0, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_10

    .line 625
    invoke-virtual {p1, p2}, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->onEnterClick(Landroid/view/View;)V

    goto/16 :goto_10

    .line 545
    :pswitch_1
    iget-object p1, p0, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_10

    .line 553
    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->onDotClick()V

    goto/16 :goto_10

    .line 471
    :pswitch_2
    iget-object p1, p0, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_10

    const-string p2, "0"

    .line 480
    invoke-virtual {p1, p2}, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->onNumberClick(Ljava/lang/String;)V

    goto/16 :goto_10

    .line 688
    :pswitch_3
    iget-object p1, p0, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_10

    .line 696
    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->onClearClick()V

    goto/16 :goto_10

    .line 634
    :pswitch_4
    iget-object p1, p0, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;

    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_10

    const-string p2, "9"

    .line 643
    invoke-virtual {p1, p2}, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->onNumberClick(Ljava/lang/String;)V

    goto/16 :goto_10

    .line 562
    :pswitch_5
    iget-object p1, p0, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;

    if-eqz p1, :cond_5

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_10

    const-string p2, "8"

    .line 571
    invoke-virtual {p1, p2}, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->onNumberClick(Ljava/lang/String;)V

    goto/16 :goto_10

    .line 489
    :pswitch_6
    iget-object p1, p0, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;

    if-eqz p1, :cond_6

    goto :goto_6

    :cond_6
    const/4 v0, 0x0

    :goto_6
    if-eqz v0, :cond_10

    const-string p2, "7"

    .line 498
    invoke-virtual {p1, p2}, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->onNumberClick(Ljava/lang/String;)V

    goto/16 :goto_10

    .line 705
    :pswitch_7
    iget-object p1, p0, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;

    if-eqz p1, :cond_7

    goto :goto_7

    :cond_7
    const/4 v0, 0x0

    :goto_7
    if-eqz v0, :cond_10

    const-string p2, "6"

    .line 714
    invoke-virtual {p1, p2}, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->onNumberClick(Ljava/lang/String;)V

    goto/16 :goto_10

    .line 580
    :pswitch_8
    iget-object p1, p0, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;

    if-eqz p1, :cond_8

    goto :goto_8

    :cond_8
    const/4 v0, 0x0

    :goto_8
    if-eqz v0, :cond_10

    const-string p2, "5"

    .line 589
    invoke-virtual {p1, p2}, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->onNumberClick(Ljava/lang/String;)V

    goto/16 :goto_10

    .line 652
    :pswitch_9
    iget-object p1, p0, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;

    if-eqz p1, :cond_9

    goto :goto_9

    :cond_9
    const/4 v0, 0x0

    :goto_9
    if-eqz v0, :cond_10

    const-string p2, "4"

    .line 661
    invoke-virtual {p1, p2}, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->onNumberClick(Ljava/lang/String;)V

    goto :goto_10

    .line 723
    :pswitch_a
    iget-object p1, p0, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;

    if-eqz p1, :cond_a

    goto :goto_a

    :cond_a
    const/4 v0, 0x0

    :goto_a
    if-eqz v0, :cond_10

    .line 731
    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->onDeleteClick()V

    goto :goto_10

    .line 507
    :pswitch_b
    iget-object p1, p0, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;

    if-eqz p1, :cond_b

    goto :goto_b

    :cond_b
    const/4 v0, 0x0

    :goto_b
    if-eqz v0, :cond_10

    const-string p2, "3"

    .line 516
    invoke-virtual {p1, p2}, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->onNumberClick(Ljava/lang/String;)V

    goto :goto_10

    .line 598
    :pswitch_c
    iget-object p1, p0, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;

    if-eqz p1, :cond_c

    goto :goto_c

    :cond_c
    const/4 v0, 0x0

    :goto_c
    if-eqz v0, :cond_10

    const-string p2, "2"

    .line 607
    invoke-virtual {p1, p2}, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->onNumberClick(Ljava/lang/String;)V

    goto :goto_10

    .line 670
    :pswitch_d
    iget-object p1, p0, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;

    if-eqz p1, :cond_d

    goto :goto_d

    :cond_d
    const/4 v0, 0x0

    :goto_d
    if-eqz v0, :cond_10

    const-string p2, "1"

    .line 679
    invoke-virtual {p1, p2}, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->onNumberClick(Ljava/lang/String;)V

    goto :goto_10

    .line 740
    :pswitch_e
    iget-object p1, p0, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;

    .line 742
    iget-object p2, p0, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->mActivity:Landroid/app/Activity;

    if-eqz p1, :cond_e

    goto :goto_e

    :cond_e
    const/4 v0, 0x0

    :goto_e
    if-eqz v0, :cond_10

    .line 751
    invoke-virtual {p1, p2}, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->onDateClick(Landroid/app/Activity;)V

    goto :goto_10

    .line 525
    :pswitch_f
    iget-object p1, p0, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;

    .line 527
    iget-object p2, p0, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->mActivity:Landroid/app/Activity;

    if-eqz p1, :cond_f

    goto :goto_f

    :cond_f
    const/4 v0, 0x0

    :goto_f
    if-eqz v0, :cond_10

    .line 536
    invoke-virtual {p1, p2}, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->onDescClick(Landroid/app/Activity;)V

    :cond_10
    :goto_10
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected executeBindings()V
    .locals 30

    move-object/from16 v1, p0

    .line 275
    monitor-enter p0

    .line 276
    :try_start_0
    iget-wide v2, v1, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 277
    iput-wide v4, v1, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->mDirtyFlags:J

    .line 278
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    iget-object v0, v1, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;

    .line 281
    iget-object v6, v1, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->mCategory:Lcom/coderpage/mine/app/tally/module/edit/model/Category;

    .line 287
    iget-object v7, v1, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->mType:Lcom/coderpage/mine/app/tally/common/RecordType;

    .line 288
    iget-object v8, v1, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->mActivity:Landroid/app/Activity;

    const-wide/16 v8, 0x13d

    and-long/2addr v8, v2

    const-wide/16 v10, 0x130

    const/4 v12, 0x0

    const-wide/16 v13, 0x128

    const-wide/16 v15, 0x124

    const-wide/16 v17, 0x121

    const/16 v19, 0x0

    cmp-long v20, v8, v4

    if-eqz v20, :cond_8

    and-long v8, v2, v17

    cmp-long v20, v8, v4

    if-eqz v20, :cond_1

    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->getDateText()Landroidx/databinding/ObservableField;

    move-result-object v8

    goto :goto_0

    :cond_0
    move-object/from16 v8, v19

    .line 306
    :goto_0
    invoke-virtual {v1, v12, v8}, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v8, :cond_1

    .line 311
    invoke-virtual {v8}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v8, v19

    :goto_1
    and-long v20, v2, v15

    cmp-long v9, v20, v4

    if-eqz v9, :cond_3

    if-eqz v0, :cond_2

    .line 318
    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->getAmountUnit()Landroidx/databinding/ObservableField;

    move-result-object v9

    goto :goto_2

    :cond_2
    move-object/from16 v9, v19

    :goto_2
    const/4 v12, 0x2

    .line 320
    invoke-virtual {v1, v12, v9}, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v9, :cond_3

    .line 325
    invoke-virtual {v9}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v9, v19

    :goto_3
    and-long v21, v2, v13

    cmp-long v12, v21, v4

    if-eqz v12, :cond_5

    if-eqz v0, :cond_4

    .line 332
    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->getAmountText()Landroidx/databinding/ObservableField;

    move-result-object v12

    goto :goto_4

    :cond_4
    move-object/from16 v12, v19

    :goto_4
    const/4 v15, 0x3

    .line 334
    invoke-virtual {v1, v15, v12}, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v12, :cond_5

    .line 339
    invoke-virtual {v12}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v12, v19

    :goto_5
    and-long v15, v2, v10

    cmp-long v23, v15, v4

    if-eqz v23, :cond_7

    if-eqz v0, :cond_6

    .line 346
    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->getDesc()Landroidx/databinding/ObservableField;

    move-result-object v0

    goto :goto_6

    :cond_6
    move-object/from16 v0, v19

    :goto_6
    const/4 v15, 0x4

    .line 348
    invoke-virtual {v1, v15, v0}, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v0, :cond_7

    .line 353
    invoke-virtual {v0}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v0, v19

    goto :goto_7

    :cond_8
    move-object/from16 v0, v19

    move-object v8, v0

    move-object v9, v8

    move-object v12, v9

    :goto_7
    const-wide/16 v15, 0x102

    and-long v23, v2, v15

    cmp-long v25, v23, v4

    if-eqz v25, :cond_a

    if-eqz v6, :cond_9

    .line 363
    invoke-virtual {v6}, Lcom/coderpage/mine/app/tally/module/edit/model/Category;->getInternal()Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;

    move-result-object v6

    goto :goto_8

    :cond_9
    move-object/from16 v6, v19

    :goto_8
    if-eqz v6, :cond_a

    .line 369
    invoke-virtual {v6}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->getName()Ljava/lang/String;

    move-result-object v23

    .line 371
    invoke-virtual {v6}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->getIcon()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v10, v23

    goto :goto_9

    :cond_a
    move-object/from16 v6, v19

    move-object v10, v6

    :goto_9
    const-wide/16 v25, 0x140

    and-long v27, v2, v25

    const/4 v11, 0x1

    cmp-long v29, v27, v4

    if-eqz v29, :cond_f

    .line 379
    sget-object v15, Lcom/coderpage/mine/app/tally/common/RecordType;->EXPENSE:Lcom/coderpage/mine/app/tally/common/RecordType;

    if-ne v7, v15, :cond_b

    const/16 v20, 0x1

    goto :goto_a

    :cond_b
    const/16 v20, 0x0

    :goto_a
    cmp-long v7, v27, v4

    if-eqz v7, :cond_d

    if-eqz v20, :cond_c

    const-wide/16 v15, 0x400

    goto :goto_b

    :cond_c
    const-wide/16 v15, 0x200

    :goto_b
    or-long/2addr v2, v15

    .line 391
    :cond_d
    iget-object v7, v1, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->lySelectCategoryIcon:Landroid/widget/FrameLayout;

    if-eqz v20, :cond_e

    const v15, 0x7f08006b

    goto :goto_c

    :cond_e
    const v15, 0x7f08006e

    :goto_c
    invoke-static {v7, v15}, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->getDrawableFromResource(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    move-object/from16 v19, v7

    :cond_f
    move-object/from16 v7, v19

    const-wide/16 v15, 0x100

    and-long/2addr v15, v2

    cmp-long v19, v15, v4

    if-eqz v19, :cond_10

    .line 397
    iget-object v15, v1, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->etAmount:Landroid/widget/TextView;

    sget-object v4, Lcom/coderpage/mine/common/Font;->QUICKSAND_MEDIUM:Lcom/coderpage/mine/common/Font;

    invoke-static {v15, v4}, Lcom/coderpage/mine/app/tally/databinding/CommonBindAdapter;->setTypeFace(Landroid/widget/TextView;Lcom/coderpage/mine/common/Font;)V

    .line 398
    iget-object v4, v1, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->ivDelete:Landroid/support/v7/widget/AppCompatImageView;

    iget-object v5, v1, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->mCallback7:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/AppCompatImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 399
    iget-object v4, v1, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->lySelectCategoryIcon:Landroid/widget/FrameLayout;

    invoke-static {v4, v11}, Lcom/coderpage/mine/app/tally/databinding/CommonBindAdapter;->setViewSelect(Landroid/view/View;Z)V

    .line 400
    iget-object v4, v1, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->tvClear:Landroid/widget/TextView;

    sget-object v5, Lcom/coderpage/mine/common/Font;->QUICKSAND_MEDIUM:Lcom/coderpage/mine/common/Font;

    invoke-static {v4, v5}, Lcom/coderpage/mine/app/tally/databinding/CommonBindAdapter;->setTypeFace(Landroid/widget/TextView;Lcom/coderpage/mine/common/Font;)V

    .line 401
    iget-object v4, v1, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->tvClear:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->mCallback14:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    iget-object v4, v1, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->tvDate:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->mCallback3:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 403
    iget-object v4, v1, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->tvDesc:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->mCallback2:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 404
    iget-object v4, v1, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->tvDot:Landroid/widget/TextView;

    sget-object v5, Lcom/coderpage/mine/common/Font;->QUICKSAND_MEDIUM:Lcom/coderpage/mine/common/Font;

    invoke-static {v4, v5}, Lcom/coderpage/mine/app/tally/databinding/CommonBindAdapter;->setTypeFace(Landroid/widget/TextView;Lcom/coderpage/mine/common/Font;)V

    .line 405
    iget-object v4, v1, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->tvDot:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->mCallback16:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 406
    iget-object v4, v1, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->tvMoneyUnit:Landroid/widget/TextView;

    sget-object v5, Lcom/coderpage/mine/common/Font;->QUICKSAND_MEDIUM:Lcom/coderpage/mine/common/Font;

    invoke-static {v4, v5}, Lcom/coderpage/mine/app/tally/databinding/CommonBindAdapter;->setTypeFace(Landroid/widget/TextView;Lcom/coderpage/mine/common/Font;)V

    .line 407
    iget-object v4, v1, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->tvNum0:Landroid/widget/TextView;

    sget-object v5, Lcom/coderpage/mine/common/Font;->QUICKSAND_MEDIUM:Lcom/coderpage/mine/common/Font;

    invoke-static {v4, v5}, Lcom/coderpage/mine/app/tally/databinding/CommonBindAdapter;->setTypeFace(Landroid/widget/TextView;Lcom/coderpage/mine/common/Font;)V

    .line 408
    iget-object v4, v1, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->tvNum0:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->mCallback15:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 409
    iget-object v4, v1, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->tvNum1:Landroid/widget/TextView;

    sget-object v5, Lcom/coderpage/mine/common/Font;->QUICKSAND_MEDIUM:Lcom/coderpage/mine/common/Font;

    invoke-static {v4, v5}, Lcom/coderpage/mine/app/tally/databinding/CommonBindAdapter;->setTypeFace(Landroid/widget/TextView;Lcom/coderpage/mine/common/Font;)V

    .line 410
    iget-object v4, v1, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->tvNum1:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->mCallback4:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 411
    iget-object v4, v1, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->tvNum2:Landroid/widget/TextView;

    sget-object v5, Lcom/coderpage/mine/common/Font;->QUICKSAND_MEDIUM:Lcom/coderpage/mine/common/Font;

    invoke-static {v4, v5}, Lcom/coderpage/mine/app/tally/databinding/CommonBindAdapter;->setTypeFace(Landroid/widget/TextView;Lcom/coderpage/mine/common/Font;)V

    .line 412
    iget-object v4, v1, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->tvNum2:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->mCallback5:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 413
    iget-object v4, v1, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->tvNum3:Landroid/widget/TextView;

    sget-object v5, Lcom/coderpage/mine/common/Font;->QUICKSAND_MEDIUM:Lcom/coderpage/mine/common/Font;

    invoke-static {v4, v5}, Lcom/coderpage/mine/app/tally/databinding/CommonBindAdapter;->setTypeFace(Landroid/widget/TextView;Lcom/coderpage/mine/common/Font;)V

    .line 414
    iget-object v4, v1, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->tvNum3:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->mCallback6:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 415
    iget-object v4, v1, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->tvNum4:Landroid/widget/TextView;

    sget-object v5, Lcom/coderpage/mine/common/Font;->QUICKSAND_MEDIUM:Lcom/coderpage/mine/common/Font;

    invoke-static {v4, v5}, Lcom/coderpage/mine/app/tally/databinding/CommonBindAdapter;->setTypeFace(Landroid/widget/TextView;Lcom/coderpage/mine/common/Font;)V

    .line 416
    iget-object v4, v1, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->tvNum4:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->mCallback8:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 417
    iget-object v4, v1, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->tvNum5:Landroid/widget/TextView;

    sget-object v5, Lcom/coderpage/mine/common/Font;->QUICKSAND_MEDIUM:Lcom/coderpage/mine/common/Font;

    invoke-static {v4, v5}, Lcom/coderpage/mine/app/tally/databinding/CommonBindAdapter;->setTypeFace(Landroid/widget/TextView;Lcom/coderpage/mine/common/Font;)V

    .line 418
    iget-object v4, v1, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->tvNum5:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->mCallback9:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 419
    iget-object v4, v1, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->tvNum6:Landroid/widget/TextView;

    sget-object v5, Lcom/coderpage/mine/common/Font;->QUICKSAND_MEDIUM:Lcom/coderpage/mine/common/Font;

    invoke-static {v4, v5}, Lcom/coderpage/mine/app/tally/databinding/CommonBindAdapter;->setTypeFace(Landroid/widget/TextView;Lcom/coderpage/mine/common/Font;)V

    .line 420
    iget-object v4, v1, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->tvNum6:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->mCallback10:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 421
    iget-object v4, v1, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->tvNum7:Landroid/widget/TextView;

    sget-object v5, Lcom/coderpage/mine/common/Font;->QUICKSAND_MEDIUM:Lcom/coderpage/mine/common/Font;

    invoke-static {v4, v5}, Lcom/coderpage/mine/app/tally/databinding/CommonBindAdapter;->setTypeFace(Landroid/widget/TextView;Lcom/coderpage/mine/common/Font;)V

    .line 422
    iget-object v4, v1, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->tvNum7:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->mCallback11:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 423
    iget-object v4, v1, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->tvNum8:Landroid/widget/TextView;

    sget-object v5, Lcom/coderpage/mine/common/Font;->QUICKSAND_MEDIUM:Lcom/coderpage/mine/common/Font;

    invoke-static {v4, v5}, Lcom/coderpage/mine/app/tally/databinding/CommonBindAdapter;->setTypeFace(Landroid/widget/TextView;Lcom/coderpage/mine/common/Font;)V

    .line 424
    iget-object v4, v1, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->tvNum8:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->mCallback12:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 425
    iget-object v4, v1, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->tvNum9:Landroid/widget/TextView;

    sget-object v5, Lcom/coderpage/mine/common/Font;->QUICKSAND_MEDIUM:Lcom/coderpage/mine/common/Font;

    invoke-static {v4, v5}, Lcom/coderpage/mine/app/tally/databinding/CommonBindAdapter;->setTypeFace(Landroid/widget/TextView;Lcom/coderpage/mine/common/Font;)V

    .line 426
    iget-object v4, v1, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->tvNum9:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->mCallback13:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 427
    iget-object v4, v1, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->tvOk:Landroid/widget/TextView;

    sget-object v5, Lcom/coderpage/mine/common/Font;->QUICKSAND_MEDIUM:Lcom/coderpage/mine/common/Font;

    invoke-static {v4, v5}, Lcom/coderpage/mine/app/tally/databinding/CommonBindAdapter;->setTypeFace(Landroid/widget/TextView;Lcom/coderpage/mine/common/Font;)V

    .line 428
    iget-object v4, v1, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->tvOk:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->mCallback17:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_10
    and-long v4, v2, v13

    const-wide/16 v13, 0x0

    cmp-long v11, v4, v13

    if-eqz v11, :cond_11

    .line 433
    iget-object v4, v1, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->etAmount:Landroid/widget/TextView;

    invoke-static {v4, v12}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_11
    and-long v4, v2, v25

    cmp-long v11, v4, v13

    if-eqz v11, :cond_12

    .line 438
    iget-object v4, v1, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->lySelectCategoryIcon:Landroid/widget/FrameLayout;

    invoke-static {v4, v7}, Landroidx/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_12
    const-wide/16 v4, 0x102

    and-long/2addr v4, v2

    cmp-long v7, v4, v13

    if-eqz v7, :cond_13

    .line 443
    iget-object v4, v1, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->mboundView2:Landroid/support/v7/widget/AppCompatImageView;

    invoke-static {v4, v6}, Lcom/coderpage/mine/app/tally/databinding/CommonBindAdapter;->setCategoryIcon(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 444
    iget-object v4, v1, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->tvCategoryName:Landroid/widget/TextView;

    invoke-static {v4, v10}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_13
    and-long v4, v2, v17

    cmp-long v6, v4, v13

    if-eqz v6, :cond_14

    .line 449
    iget-object v4, v1, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->tvDate:Landroid/widget/TextView;

    invoke-static {v4, v8}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_14
    const-wide/16 v4, 0x130

    and-long/2addr v4, v2

    cmp-long v6, v4, v13

    if-eqz v6, :cond_15

    .line 454
    iget-object v4, v1, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->tvDesc:Landroid/widget/TextView;

    invoke-static {v4, v0}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_15
    const-wide/16 v4, 0x124

    and-long/2addr v2, v4

    cmp-long v0, v2, v13

    if-eqz v0, :cond_16

    .line 459
    iget-object v0, v1, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->tvMoneyUnit:Landroid/widget/TextView;

    invoke-static {v0, v9}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_16
    return-void

    :catchall_0
    move-exception v0

    .line 278
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 147
    monitor-enter p0

    .line 148
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 149
    monitor-exit p0

    return v0

    .line 151
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

    .line 139
    monitor-enter p0

    const-wide/16 v0, 0x100

    .line 140
    :try_start_0
    iput-wide v0, p0, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->mDirtyFlags:J

    .line 141
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    invoke-virtual {p0}, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 141
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

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 222
    :cond_0
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->onChangeVmDesc(Landroidx/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 220
    :cond_1
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->onChangeVmAmountText(Landroidx/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 218
    :cond_2
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->onChangeVmAmountUnit(Landroidx/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 216
    :cond_3
    check-cast p2, Lcom/coderpage/mine/app/tally/module/edit/model/Category;

    invoke-direct {p0, p2, p3}, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->onChangeCategory(Lcom/coderpage/mine/app/tally/module/edit/model/Category;I)Z

    move-result p1

    return p1

    .line 214
    :cond_4
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->onChangeVmDateText(Landroidx/databinding/ObservableField;I)Z

    move-result p1

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

    .line 202
    iput-object p1, p0, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->mActivity:Landroid/app/Activity;

    .line 203
    monitor-enter p0

    .line 204
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->mDirtyFlags:J

    .line 205
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 206
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->notifyPropertyChanged(I)V

    .line 207
    invoke-super {p0}, Lcom/coderpage/mine/tall/module/edit/EditFragmentBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 205
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
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

    const/4 v0, 0x1

    .line 185
    invoke-virtual {p0, v0, p1}, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    .line 186
    iput-object p1, p0, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->mCategory:Lcom/coderpage/mine/app/tally/module/edit/model/Category;

    .line 187
    monitor-enter p0

    .line 188
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->mDirtyFlags:J

    .line 189
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x2

    .line 190
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->notifyPropertyChanged(I)V

    .line 191
    invoke-super {p0}, Lcom/coderpage/mine/tall/module/edit/EditFragmentBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 189
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setType(Lcom/coderpage/mine/app/tally/common/RecordType;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "Type"
        }
    .end annotation

    .line 194
    iput-object p1, p0, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->mType:Lcom/coderpage/mine/app/tally/common/RecordType;

    .line 195
    monitor-enter p0

    .line 196
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->mDirtyFlags:J

    .line 197
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0xc

    .line 198
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->notifyPropertyChanged(I)V

    .line 199
    invoke-super {p0}, Lcom/coderpage/mine/tall/module/edit/EditFragmentBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 197
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

    .line 159
    check-cast p2, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;

    invoke-virtual {p0, p2}, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->setVm(Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v1, p1, :cond_1

    .line 162
    check-cast p2, Lcom/coderpage/mine/app/tally/module/edit/model/Category;

    invoke-virtual {p0, p2}, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->setCategory(Lcom/coderpage/mine/app/tally/module/edit/model/Category;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0xc

    if-ne v1, p1, :cond_2

    .line 165
    check-cast p2, Lcom/coderpage/mine/app/tally/common/RecordType;

    invoke-virtual {p0, p2}, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->setType(Lcom/coderpage/mine/app/tally/common/RecordType;)V

    goto :goto_0

    :cond_2
    if-ne v0, p1, :cond_3

    .line 168
    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p0, p2}, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->setActivity(Landroid/app/Activity;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
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

    .line 177
    iput-object p1, p0, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->mVm:Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;

    .line 178
    monitor-enter p0

    .line 179
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->mDirtyFlags:J

    .line 180
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0xd

    .line 181
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/tall/module/edit/EditFragmentBindingImpl;->notifyPropertyChanged(I)V

    .line 182
    invoke-super {p0}, Lcom/coderpage/mine/tall/module/edit/EditFragmentBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 180
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
