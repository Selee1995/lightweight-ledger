.class Lcom/coderpage/mine/app/tally/module/home/HomeAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "HomeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/coderpage/mine/app/tally/module/home/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/module/home/model/HomeDisplayData;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mMonthInfoViewModel:Lcom/coderpage/mine/app/tally/module/home/HomeMonthInfoViewModel;

.field private mRecordItemViewModel:Lcom/coderpage/mine/app/tally/module/records/RecordItemViewModel;

.field private mViewModel:Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;


# direct methods
.method constructor <init>(Landroid/support/v4/app/FragmentActivity;Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;Lcom/coderpage/mine/app/tally/module/records/RecordItemViewModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "viewModel",
            "recordItemViewModel"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomeAdapter;->mDataList:Ljava/util/List;

    .line 35
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/home/HomeAdapter;->mActivity:Landroid/app/Activity;

    .line 36
    iput-object p2, p0, Lcom/coderpage/mine/app/tally/module/home/HomeAdapter;->mViewModel:Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;

    .line 37
    invoke-static {p1}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object p1

    const-class p2, Lcom/coderpage/mine/app/tally/module/home/HomeMonthInfoViewModel;

    invoke-virtual {p1, p2}, Landroid/arch/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/coderpage/mine/app/tally/module/home/HomeMonthInfoViewModel;

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/home/HomeAdapter;->mMonthInfoViewModel:Lcom/coderpage/mine/app/tally/module/home/HomeMonthInfoViewModel;

    .line 38
    iput-object p3, p0, Lcom/coderpage/mine/app/tally/module/home/HomeAdapter;->mRecordItemViewModel:Lcom/coderpage/mine/app/tally/module/records/RecordItemViewModel;

    .line 39
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/home/HomeAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/home/HomeAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$000(Lcom/coderpage/mine/app/tally/module/home/HomeAdapter;)Ljava/util/List;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/coderpage/mine/app/tally/module/home/HomeAdapter;->mDataList:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomeAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomeAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coderpage/mine/app/tally/module/home/model/HomeDisplayData;

    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/module/home/model/HomeDisplayData;->getType()I

    move-result p1

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 25
    check-cast p1, Lcom/coderpage/mine/app/tally/module/home/BaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/coderpage/mine/app/tally/module/home/HomeAdapter;->onBindViewHolder(Lcom/coderpage/mine/app/tally/module/home/BaseViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/coderpage/mine/app/tally/module/home/BaseViewHolder;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomeAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/coderpage/mine/app/tally/module/home/model/HomeDisplayData;

    invoke-virtual {p1, p2}, Lcom/coderpage/mine/app/tally/module/home/BaseViewHolder;->bindData(Lcom/coderpage/mine/app/tally/module/home/model/HomeDisplayData;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "parent",
            "viewType"
        }
    .end annotation

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/coderpage/mine/app/tally/module/home/HomeAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/coderpage/mine/app/tally/module/home/BaseViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/coderpage/mine/app/tally/module/home/BaseViewHolder;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parent",
            "viewType"
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_4

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 110
    :cond_0
    new-instance p2, Lcom/coderpage/mine/app/tally/module/home/ViewHolderBackupNotice;

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomeAdapter;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/coderpage/mine/app/tally/module/home/HomeAdapter;->mViewModel:Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;

    iget-object v3, p0, Lcom/coderpage/mine/app/tally/module/home/HomeAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0b006c

    .line 111
    invoke-static {v3, v4, p1, v1}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/coderpage/mine/tally/module/home/BackupNoticeItemBinding;

    invoke-direct {p2, v0, v2, p1}, Lcom/coderpage/mine/app/tally/module/home/ViewHolderBackupNotice;-><init>(Landroid/app/Activity;Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;Lcom/coderpage/mine/tally/module/home/BackupNoticeItemBinding;)V

    return-object p2

    .line 125
    :cond_1
    new-instance p2, Lcom/coderpage/mine/app/tally/module/home/ViewHolderRecordItem;

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomeAdapter;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/coderpage/mine/app/tally/module/home/HomeAdapter;->mRecordItemViewModel:Lcom/coderpage/mine/app/tally/module/records/RecordItemViewModel;

    iget-object v3, p0, Lcom/coderpage/mine/app/tally/module/home/HomeAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0b0058

    invoke-static {v3, v4, p1, v1}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/coderpage/mine/tally/module/records/RecordItemBinding;

    invoke-direct {p2, v0, v2, p1}, Lcom/coderpage/mine/app/tally/module/home/ViewHolderRecordItem;-><init>(Landroid/app/Activity;Lcom/coderpage/mine/app/tally/module/records/RecordItemViewModel;Lcom/coderpage/mine/tally/module/records/RecordItemBinding;)V

    return-object p2

    .line 120
    :cond_2
    new-instance p2, Lcom/coderpage/mine/app/tally/module/home/ViewHolderTodayExpense;

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomeAdapter;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/coderpage/mine/app/tally/module/home/HomeAdapter;->mViewModel:Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;

    iget-object v3, p0, Lcom/coderpage/mine/app/tally/module/home/HomeAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0b006f

    .line 121
    invoke-static {v3, v4, p1, v1}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/coderpage/mine/tally/module/home/TodayExpenseItemBinding;

    invoke-direct {p2, v0, v2, p1}, Lcom/coderpage/mine/app/tally/module/home/ViewHolderTodayExpense;-><init>(Landroid/app/Activity;Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;Lcom/coderpage/mine/tally/module/home/TodayExpenseItemBinding;)V

    return-object p2

    .line 115
    :cond_3
    new-instance p2, Lcom/coderpage/mine/app/tally/module/home/ViewHolderMonthInfo;

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomeAdapter;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/coderpage/mine/app/tally/module/home/HomeAdapter;->mMonthInfoViewModel:Lcom/coderpage/mine/app/tally/module/home/HomeMonthInfoViewModel;

    iget-object v3, p0, Lcom/coderpage/mine/app/tally/module/home/HomeAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0b006e

    .line 116
    invoke-static {v3, v4, p1, v1}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBinding;

    invoke-direct {p2, v0, v2, p1}, Lcom/coderpage/mine/app/tally/module/home/ViewHolderMonthInfo;-><init>(Landroid/app/Activity;Lcom/coderpage/mine/app/tally/module/home/HomeMonthInfoViewModel;Lcom/coderpage/mine/tally/module/home/MonthInfoItemBinding;)V

    return-object p2

    .line 130
    :cond_4
    new-instance p2, Lcom/coderpage/mine/app/tally/module/home/ViewHolderBottom;

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomeAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0b006d

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/coderpage/mine/app/tally/module/home/ViewHolderBottom;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method setDataList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/module/home/model/HomeDisplayData;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 46
    :cond_0
    new-instance v0, Lcom/coderpage/mine/app/tally/module/home/HomeAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/coderpage/mine/app/tally/module/home/HomeAdapter$1;-><init>(Lcom/coderpage/mine/app/tally/module/home/HomeAdapter;Ljava/util/List;)V

    invoke-static {v0}, Landroid/support/v7/util/DiffUtil;->calculateDiff(Landroid/support/v7/util/DiffUtil$Callback;)Landroid/support/v7/util/DiffUtil$DiffResult;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/home/HomeAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 89
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/home/HomeAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 90
    invoke-virtual {v0, p0}, Landroid/support/v7/util/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method
