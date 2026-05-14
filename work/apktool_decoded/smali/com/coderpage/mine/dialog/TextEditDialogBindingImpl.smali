.class public Lcom/coderpage/mine/dialog/TextEditDialogBindingImpl;
.super Lcom/coderpage/mine/dialog/TextEditDialogBinding;
.source "TextEditDialogBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private final mboundView0:Landroid/support/constraint/ConstraintLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/coderpage/mine/dialog/TextEditDialogBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090130

    const/4 v2, 0x3

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f090137

    const/4 v2, 0x4

    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f090064

    const/4 v2, 0x5

    .line 19
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

    .line 30
    sget-object v0, Lcom/coderpage/mine/dialog/TextEditDialogBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/coderpage/mine/dialog/TextEditDialogBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x6

    invoke-static {p1, p2, v2, v0, v1}, Lcom/coderpage/mine/dialog/TextEditDialogBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/coderpage/mine/dialog/TextEditDialogBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 10
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

    .line 33
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/EditText;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroid/support/constraint/Guideline;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroid/widget/TextView;

    const/4 v0, 0x1

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Landroid/widget/TextView;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v9}, Lcom/coderpage/mine/dialog/TextEditDialogBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/EditText;Landroid/support/constraint/Guideline;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    const-wide/16 v0, -0x1

    .line 154
    iput-wide v0, p0, Lcom/coderpage/mine/dialog/TextEditDialogBindingImpl;->mDirtyFlags:J

    .line 40
    iget-object p1, p0, Lcom/coderpage/mine/dialog/TextEditDialogBindingImpl;->etContent:Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 41
    aget-object p1, p3, p1

    check-cast p1, Landroid/support/constraint/ConstraintLayout;

    iput-object p1, p0, Lcom/coderpage/mine/dialog/TextEditDialogBindingImpl;->mboundView0:Landroid/support/constraint/ConstraintLayout;

    .line 42
    invoke-virtual {p1, v0}, Landroid/support/constraint/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    .line 43
    iget-object p1, p0, Lcom/coderpage/mine/dialog/TextEditDialogBindingImpl;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 44
    invoke-virtual {p0, p2}, Lcom/coderpage/mine/dialog/TextEditDialogBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 46
    invoke-virtual {p0}, Lcom/coderpage/mine/dialog/TextEditDialogBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .locals 13

    .line 120
    monitor-enter p0

    .line 121
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/dialog/TextEditDialogBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 122
    iput-wide v2, p0, Lcom/coderpage/mine/dialog/TextEditDialogBindingImpl;->mDirtyFlags:J

    .line 123
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    iget-object v4, p0, Lcom/coderpage/mine/dialog/TextEditDialogBindingImpl;->mContent:Ljava/lang/String;

    .line 125
    iget-object v5, p0, Lcom/coderpage/mine/dialog/TextEditDialogBindingImpl;->mTitle:Ljava/lang/String;

    .line 126
    iget-object v6, p0, Lcom/coderpage/mine/dialog/TextEditDialogBindingImpl;->mHint:Ljava/lang/String;

    const-wide/16 v7, 0x9

    and-long/2addr v7, v0

    const-wide/16 v9, 0xa

    and-long/2addr v9, v0

    const-wide/16 v11, 0xc

    and-long/2addr v0, v11

    cmp-long v11, v0, v2

    if-eqz v11, :cond_0

    .line 138
    iget-object v0, p0, Lcom/coderpage/mine/dialog/TextEditDialogBindingImpl;->etContent:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_0
    cmp-long v0, v7, v2

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/coderpage/mine/dialog/TextEditDialogBindingImpl;->etContent:Landroid/widget/EditText;

    invoke-static {v0, v4}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_1
    cmp-long v0, v9, v2

    if-eqz v0, :cond_2

    .line 148
    iget-object v0, p0, Lcom/coderpage/mine/dialog/TextEditDialogBindingImpl;->tvTitle:Landroid/widget/TextView;

    invoke-static {v0, v5}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 123
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
    iget-wide v0, p0, Lcom/coderpage/mine/dialog/TextEditDialogBindingImpl;->mDirtyFlags:J

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

    const-wide/16 v0, 0x8

    .line 52
    :try_start_0
    iput-wide v0, p0, Lcom/coderpage/mine/dialog/TextEditDialogBindingImpl;->mDirtyFlags:J

    .line 53
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    invoke-virtual {p0}, Lcom/coderpage/mine/dialog/TextEditDialogBindingImpl;->requestRebind()V

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

.method public setContent(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "Content"
        }
    .end annotation

    .line 86
    iput-object p1, p0, Lcom/coderpage/mine/dialog/TextEditDialogBindingImpl;->mContent:Ljava/lang/String;

    .line 87
    monitor-enter p0

    .line 88
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/dialog/TextEditDialogBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coderpage/mine/dialog/TextEditDialogBindingImpl;->mDirtyFlags:J

    .line 89
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x4

    .line 90
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/dialog/TextEditDialogBindingImpl;->notifyPropertyChanged(I)V

    .line 91
    invoke-super {p0}, Lcom/coderpage/mine/dialog/TextEditDialogBinding;->requestRebind()V

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

.method public setHint(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "Hint"
        }
    .end annotation

    .line 102
    iput-object p1, p0, Lcom/coderpage/mine/dialog/TextEditDialogBindingImpl;->mHint:Ljava/lang/String;

    .line 103
    monitor-enter p0

    .line 104
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/dialog/TextEditDialogBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coderpage/mine/dialog/TextEditDialogBindingImpl;->mDirtyFlags:J

    .line 105
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x6

    .line 106
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/dialog/TextEditDialogBindingImpl;->notifyPropertyChanged(I)V

    .line 107
    invoke-super {p0}, Lcom/coderpage/mine/dialog/TextEditDialogBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 105
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "Title"
        }
    .end annotation

    .line 94
    iput-object p1, p0, Lcom/coderpage/mine/dialog/TextEditDialogBindingImpl;->mTitle:Ljava/lang/String;

    .line 95
    monitor-enter p0

    .line 96
    :try_start_0
    iget-wide v0, p0, Lcom/coderpage/mine/dialog/TextEditDialogBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coderpage/mine/dialog/TextEditDialogBindingImpl;->mDirtyFlags:J

    .line 97
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0xb

    .line 98
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/dialog/TextEditDialogBindingImpl;->notifyPropertyChanged(I)V

    .line 99
    invoke-super {p0}, Lcom/coderpage/mine/dialog/TextEditDialogBinding;->requestRebind()V

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

    const/4 v0, 0x4

    if-ne v0, p1, :cond_0

    .line 71
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/coderpage/mine/dialog/TextEditDialogBindingImpl;->setContent(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0xb

    if-ne v0, p1, :cond_1

    .line 74
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/coderpage/mine/dialog/TextEditDialogBindingImpl;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x6

    if-ne v0, p1, :cond_2

    .line 77
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/coderpage/mine/dialog/TextEditDialogBindingImpl;->setHint(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
