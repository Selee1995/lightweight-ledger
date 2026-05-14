.class Lcom/coderpage/mine/app/tally/module/records/RecordsAdapter$RecordsViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "RecordsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coderpage/mine/app/tally/module/records/RecordsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecordsViewHolder"
.end annotation


# instance fields
.field private mBinding:Lcom/coderpage/mine/tally/module/records/RecordItemBinding;

.field final synthetic this$0:Lcom/coderpage/mine/app/tally/module/records/RecordsAdapter;


# direct methods
.method constructor <init>(Lcom/coderpage/mine/app/tally/module/records/RecordsAdapter;Lcom/coderpage/mine/tally/module/records/RecordItemBinding;)V
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

    .line 87
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsAdapter$RecordsViewHolder;->this$0:Lcom/coderpage/mine/app/tally/module/records/RecordsAdapter;

    .line 88
    invoke-virtual {p2}, Lcom/coderpage/mine/tally/module/records/RecordItemBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 89
    iput-object p2, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsAdapter$RecordsViewHolder;->mBinding:Lcom/coderpage/mine/tally/module/records/RecordItemBinding;

    return-void
.end method


# virtual methods
.method bind(Lcom/coderpage/mine/app/tally/persistence/model/Record;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "record"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsAdapter$RecordsViewHolder;->mBinding:Lcom/coderpage/mine/tally/module/records/RecordItemBinding;

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsAdapter$RecordsViewHolder;->this$0:Lcom/coderpage/mine/app/tally/module/records/RecordsAdapter;

    invoke-static {v1}, Lcom/coderpage/mine/app/tally/module/records/RecordsAdapter;->access$000(Lcom/coderpage/mine/app/tally/module/records/RecordsAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coderpage/mine/tally/module/records/RecordItemBinding;->setActivity(Landroid/app/Activity;)V

    .line 94
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsAdapter$RecordsViewHolder;->mBinding:Lcom/coderpage/mine/tally/module/records/RecordItemBinding;

    invoke-virtual {v0, p1}, Lcom/coderpage/mine/tally/module/records/RecordItemBinding;->setData(Lcom/coderpage/mine/app/tally/persistence/model/Record;)V

    .line 95
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsAdapter$RecordsViewHolder;->mBinding:Lcom/coderpage/mine/tally/module/records/RecordItemBinding;

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsAdapter$RecordsViewHolder;->this$0:Lcom/coderpage/mine/app/tally/module/records/RecordsAdapter;

    invoke-static {v0}, Lcom/coderpage/mine/app/tally/module/records/RecordsAdapter;->access$100(Lcom/coderpage/mine/app/tally/module/records/RecordsAdapter;)Lcom/coderpage/mine/app/tally/module/records/RecordItemViewModel;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coderpage/mine/tally/module/records/RecordItemBinding;->setVm(Lcom/coderpage/mine/app/tally/module/records/RecordItemViewModel;)V

    .line 96
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsAdapter$RecordsViewHolder;->mBinding:Lcom/coderpage/mine/tally/module/records/RecordItemBinding;

    invoke-virtual {p1}, Lcom/coderpage/mine/tally/module/records/RecordItemBinding;->executePendingBindings()V

    return-void
.end method
