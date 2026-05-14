.class Lcom/coderpage/mine/app/tally/module/home/HomeAdapter$1;
.super Landroid/support/v7/util/DiffUtil$Callback;
.source "HomeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coderpage/mine/app/tally/module/home/HomeAdapter;->setDataList(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coderpage/mine/app/tally/module/home/HomeAdapter;

.field final synthetic val$dataList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/coderpage/mine/app/tally/module/home/HomeAdapter;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$dataList"
        }
    .end annotation

    .line 46
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/home/HomeAdapter$1;->this$0:Lcom/coderpage/mine/app/tally/module/home/HomeAdapter;

    iput-object p2, p0, Lcom/coderpage/mine/app/tally/module/home/HomeAdapter$1;->val$dataList:Ljava/util/List;

    invoke-direct {p0}, Landroid/support/v7/util/DiffUtil$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public areContentsTheSame(II)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "oldItemPosition",
            "newItemPosition"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public areItemsTheSame(II)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "oldItemPosition",
            "newItemPosition"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomeAdapter$1;->this$0:Lcom/coderpage/mine/app/tally/module/home/HomeAdapter;

    invoke-static {v0}, Lcom/coderpage/mine/app/tally/module/home/HomeAdapter;->access$000(Lcom/coderpage/mine/app/tally/module/home/HomeAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coderpage/mine/app/tally/module/home/model/HomeDisplayData;

    .line 60
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomeAdapter$1;->val$dataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/coderpage/mine/app/tally/module/home/model/HomeDisplayData;

    .line 62
    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/module/home/model/HomeDisplayData;->getType()I

    move-result v0

    invoke-virtual {p2}, Lcom/coderpage/mine/app/tally/module/home/model/HomeDisplayData;->getType()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 66
    :cond_0
    invoke-virtual {p2}, Lcom/coderpage/mine/app/tally/module/home/model/HomeDisplayData;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    const/4 p1, 0x4

    if-eq v0, p1, :cond_3

    return v2

    .line 73
    :cond_1
    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/module/home/model/HomeDisplayData;->getInternal()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coderpage/mine/app/tally/persistence/model/Record;

    .line 74
    invoke-virtual {p2}, Lcom/coderpage/mine/app/tally/module/home/model/HomeDisplayData;->getInternal()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/coderpage/mine/app/tally/persistence/model/Record;

    .line 75
    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->getId()J

    move-result-wide v3

    invoke-virtual {p2}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->getId()J

    move-result-wide p1

    cmp-long v0, v3, p1

    if-nez v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2

    :cond_3
    return v1
.end method

.method public getNewListSize()I
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomeAdapter$1;->val$dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getOldListSize()I
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomeAdapter$1;->this$0:Lcom/coderpage/mine/app/tally/module/home/HomeAdapter;

    invoke-static {v0}, Lcom/coderpage/mine/app/tally/module/home/HomeAdapter;->access$000(Lcom/coderpage/mine/app/tally/module/home/HomeAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
