.class public Lcom/coderpage/mine/app/tally/module/records/RecordsAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "RecordsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coderpage/mine/app/tally/module/records/RecordsAdapter$DateTitleViewHolder;,
        Lcom/coderpage/mine/app/tally/module/records/RecordsAdapter$RecordsViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final ITEM_TYPE_DATE_TITLE:I = 0x2

.field private static final ITEM_TYPE_RECORD:I = 0x1


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mViewModel:Lcom/coderpage/mine/app/tally/module/records/RecordItemViewModel;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsAdapter;->mDataList:Ljava/util/List;

    .line 38
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsAdapter;->mActivity:Landroid/app/Activity;

    .line 39
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 40
    new-instance p1, Lcom/coderpage/mine/app/tally/module/records/RecordItemViewModel;

    invoke-static {}, Lcom/coderpage/mine/MineApp;->getAppContext()Lcom/coderpage/mine/MineApp;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/coderpage/mine/app/tally/module/records/RecordItemViewModel;-><init>(Landroid/app/Application;)V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsAdapter;->mViewModel:Lcom/coderpage/mine/app/tally/module/records/RecordItemViewModel;

    return-void
.end method

.method static synthetic access$000(Lcom/coderpage/mine/app/tally/module/records/RecordsAdapter;)Landroid/app/Activity;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsAdapter;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coderpage/mine/app/tally/module/records/RecordsAdapter;)Lcom/coderpage/mine/app/tally/module/records/RecordItemViewModel;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsAdapter;->mViewModel:Lcom/coderpage/mine/app/tally/module/records/RecordItemViewModel;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsAdapter;->mDataList:Ljava/util/List;

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

    .line 56
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 57
    instance-of p1, p1, Lcom/coderpage/mine/app/tally/persistence/model/Record;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    return p1
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2
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

    .line 73
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    .line 74
    instance-of v0, p1, Lcom/coderpage/mine/app/tally/module/records/RecordsAdapter$RecordsViewHolder;

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/coderpage/mine/app/tally/persistence/model/Record;

    if-eqz v0, :cond_0

    .line 75
    move-object v0, p1

    check-cast v0, Lcom/coderpage/mine/app/tally/module/records/RecordsAdapter$RecordsViewHolder;

    move-object v1, p2

    check-cast v1, Lcom/coderpage/mine/app/tally/persistence/model/Record;

    invoke-virtual {v0, v1}, Lcom/coderpage/mine/app/tally/module/records/RecordsAdapter$RecordsViewHolder;->bind(Lcom/coderpage/mine/app/tally/persistence/model/Record;)V

    .line 77
    :cond_0
    instance-of v0, p1, Lcom/coderpage/mine/app/tally/module/records/RecordsAdapter$DateTitleViewHolder;

    if-eqz v0, :cond_1

    instance-of v0, p2, Lcom/coderpage/mine/app/tally/module/records/RecordsDateTitle;

    if-eqz v0, :cond_1

    .line 78
    check-cast p1, Lcom/coderpage/mine/app/tally/module/records/RecordsAdapter$DateTitleViewHolder;

    check-cast p2, Lcom/coderpage/mine/app/tally/module/records/RecordsDateTitle;

    invoke-virtual {p1, p2}, Lcom/coderpage/mine/app/tally/module/records/RecordsAdapter$DateTitleViewHolder;->bind(Lcom/coderpage/mine/app/tally/module/records/RecordsDateTitle;)V

    :cond_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3
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

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 63
    new-instance p2, Lcom/coderpage/mine/app/tally/module/records/RecordsAdapter$RecordsViewHolder;

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0b0058

    invoke-static {v1, v2, p1, v0}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/coderpage/mine/tally/module/records/RecordItemBinding;

    invoke-direct {p2, p0, p1}, Lcom/coderpage/mine/app/tally/module/records/RecordsAdapter$RecordsViewHolder;-><init>(Lcom/coderpage/mine/app/tally/module/records/RecordsAdapter;Lcom/coderpage/mine/tally/module/records/RecordItemBinding;)V

    return-object p2

    .line 67
    :cond_0
    new-instance p2, Lcom/coderpage/mine/app/tally/module/records/RecordsAdapter$DateTitleViewHolder;

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0b0059

    invoke-static {v1, v2, p1, v0}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/coderpage/mine/tally/module/records/RecordDateTitleItemBinding;

    invoke-direct {p2, p0, p1}, Lcom/coderpage/mine/app/tally/module/records/RecordsAdapter$DateTitleViewHolder;-><init>(Lcom/coderpage/mine/app/tally/module/records/RecordsAdapter;Lcom/coderpage/mine/tally/module/records/RecordDateTitleItemBinding;)V

    return-object p2
.end method

.method public setDataList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 45
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 46
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/records/RecordsAdapter;->notifyDataSetChanged()V

    return-void
.end method
