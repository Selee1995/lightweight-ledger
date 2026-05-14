.class Lcom/coderpage/mine/app/tally/module/records/RecordsAdapter$DateTitleViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "RecordsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coderpage/mine/app/tally/module/records/RecordsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DateTitleViewHolder"
.end annotation


# instance fields
.field private mBinding:Lcom/coderpage/mine/tally/module/records/RecordDateTitleItemBinding;

.field final synthetic this$0:Lcom/coderpage/mine/app/tally/module/records/RecordsAdapter;


# direct methods
.method constructor <init>(Lcom/coderpage/mine/app/tally/module/records/RecordsAdapter;Lcom/coderpage/mine/tally/module/records/RecordDateTitleItemBinding;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            "this$0",
            "binding"
        }
    .end annotation

    .line 105
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsAdapter$DateTitleViewHolder;->this$0:Lcom/coderpage/mine/app/tally/module/records/RecordsAdapter;

    .line 106
    invoke-virtual {p2}, Lcom/coderpage/mine/tally/module/records/RecordDateTitleItemBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 107
    iput-object p2, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsAdapter$DateTitleViewHolder;->mBinding:Lcom/coderpage/mine/tally/module/records/RecordDateTitleItemBinding;

    return-void
.end method


# virtual methods
.method bind(Lcom/coderpage/mine/app/tally/module/records/RecordsDateTitle;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsAdapter$DateTitleViewHolder;->mBinding:Lcom/coderpage/mine/tally/module/records/RecordDateTitleItemBinding;

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsAdapter$DateTitleViewHolder;->this$0:Lcom/coderpage/mine/app/tally/module/records/RecordsAdapter;

    invoke-static {v1}, Lcom/coderpage/mine/app/tally/module/records/RecordsAdapter;->access$000(Lcom/coderpage/mine/app/tally/module/records/RecordsAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coderpage/mine/tally/module/records/RecordDateTitleItemBinding;->setActivity(Landroid/app/Activity;)V

    .line 112
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsAdapter$DateTitleViewHolder;->mBinding:Lcom/coderpage/mine/tally/module/records/RecordDateTitleItemBinding;

    invoke-virtual {v0, p1}, Lcom/coderpage/mine/tally/module/records/RecordDateTitleItemBinding;->setData(Lcom/coderpage/mine/app/tally/module/records/RecordsDateTitle;)V

    .line 113
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsAdapter$DateTitleViewHolder;->mBinding:Lcom/coderpage/mine/tally/module/records/RecordDateTitleItemBinding;

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsAdapter$DateTitleViewHolder;->this$0:Lcom/coderpage/mine/app/tally/module/records/RecordsAdapter;

    invoke-static {v0}, Lcom/coderpage/mine/app/tally/module/records/RecordsAdapter;->access$100(Lcom/coderpage/mine/app/tally/module/records/RecordsAdapter;)Lcom/coderpage/mine/app/tally/module/records/RecordItemViewModel;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coderpage/mine/tally/module/records/RecordDateTitleItemBinding;->setVm(Lcom/coderpage/mine/app/tally/module/records/RecordItemViewModel;)V

    .line 114
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsAdapter$DateTitleViewHolder;->mBinding:Lcom/coderpage/mine/tally/module/records/RecordDateTitleItemBinding;

    invoke-virtual {p1}, Lcom/coderpage/mine/tally/module/records/RecordDateTitleItemBinding;->executePendingBindings()V

    return-void
.end method
