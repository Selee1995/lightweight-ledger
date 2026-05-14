.class Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$MonthRecyclerAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "MonthSelectDialog.java"

# interfaces
.implements Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$OnMonthSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MonthRecyclerAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$MonthViewHolder;",
        ">;",
        "Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$OnMonthSelectedListener;"
    }
.end annotation


# instance fields
.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/module/chart/data/Month;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;


# direct methods
.method private constructor <init>(Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            "this$0",
            "dataList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/module/chart/data/Month;",
            ">;)V"
        }
    .end annotation

    .line 209
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$MonthRecyclerAdapter;->this$0:Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$MonthRecyclerAdapter;->mDataList:Ljava/util/List;

    .line 210
    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$MonthRecyclerAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 211
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$MonthRecyclerAdapter;->mDataList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 212
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$MonthRecyclerAdapter;->mDataList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;Ljava/util/List;Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$1;)V
    .locals 0

    .line 202
    invoke-direct {p0, p1, p2}, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$MonthRecyclerAdapter;-><init>(Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$600(Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$MonthRecyclerAdapter;Ljava/util/List;)V
    .locals 0

    .line 202
    invoke-direct {p0, p1}, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$MonthRecyclerAdapter;->refreshData(Ljava/util/List;)V

    return-void
.end method

.method private currentSelectedMonthPosition()I
    .locals 3

    const/4 v0, 0x0

    .line 258
    :goto_0
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$MonthRecyclerAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 259
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$MonthRecyclerAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coderpage/mine/app/tally/module/chart/data/Month;

    .line 260
    iget-object v2, p0, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$MonthRecyclerAdapter;->this$0:Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;

    invoke-static {v2}, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;->access$1000(Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;)Lcom/coderpage/mine/app/tally/module/chart/data/Month;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/coderpage/base/utils/CommonUtils;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private refreshData(Ljava/util/List;)V
    .locals 1
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
            "Lcom/coderpage/mine/app/tally/module/chart/data/Month;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$MonthRecyclerAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 218
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$MonthRecyclerAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 219
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$MonthRecyclerAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$MonthRecyclerAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    int-to-long v0, p1

    return-wide v0
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

    .line 202
    check-cast p1, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$MonthViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$MonthRecyclerAdapter;->onBindViewHolder(Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$MonthViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$MonthViewHolder;I)V
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

    .line 240
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$MonthRecyclerAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/coderpage/mine/app/tally/module/chart/data/Month;

    .line 241
    invoke-static {p1, p2}, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$MonthViewHolder;->access$800(Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$MonthViewHolder;Lcom/coderpage/mine/app/tally/module/chart/data/Month;)V

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

    .line 202
    invoke-virtual {p0, p1, p2}, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$MonthRecyclerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$MonthViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$MonthViewHolder;
    .locals 4
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

    .line 234
    new-instance p2, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$MonthViewHolder;

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$MonthRecyclerAdapter;->this$0:Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$MonthRecyclerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0b0073

    const/4 v3, 0x0

    .line 235
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {p2, v0, p1, p0, v1}, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$MonthViewHolder;-><init>(Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;Landroid/view/View;Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$OnMonthSelectedListener;Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$1;)V

    return-object p2
.end method

.method public onMonthSelected(Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$MonthViewHolder;Lcom/coderpage/mine/app/tally/module/chart/data/Month;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "month"
        }
    .end annotation

    .line 246
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$MonthRecyclerAdapter;->currentSelectedMonthPosition()I

    move-result v0

    .line 248
    invoke-static {p1}, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$MonthViewHolder;->access$900(Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$MonthViewHolder;)Landroid/view/View;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 249
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$MonthRecyclerAdapter;->this$0:Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;

    invoke-static {p1, p2}, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;->access$1002(Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;Lcom/coderpage/mine/app/tally/module/chart/data/Month;)Lcom/coderpage/mine/app/tally/module/chart/data/Month;

    .line 250
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$MonthRecyclerAdapter;->this$0:Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;

    invoke-static {p1}, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;->access$200(Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;)Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$DateSelectListener;

    move-result-object p1

    iget-object p2, p0, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$MonthRecyclerAdapter;->this$0:Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;

    invoke-static {p2}, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;->access$1000(Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;)Lcom/coderpage/mine/app/tally/module/chart/data/Month;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$DateSelectListener;->onMonthSelect(Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;Lcom/coderpage/mine/app/tally/module/chart/data/Month;)V

    const/4 p1, -0x1

    if-eq v0, p1, :cond_0

    .line 253
    invoke-virtual {p0, v0}, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$MonthRecyclerAdapter;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method
