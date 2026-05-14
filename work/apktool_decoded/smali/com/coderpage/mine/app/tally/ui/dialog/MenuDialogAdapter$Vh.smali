.class Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogAdapter$Vh;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "MenuDialogAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Vh"
.end annotation


# instance fields
.field private mBinding:Lcom/coderpage/mine/dialog/MenuDialogItemBinding;

.field final synthetic this$0:Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogAdapter;


# direct methods
.method constructor <init>(Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogAdapter;Lcom/coderpage/mine/dialog/MenuDialogItemBinding;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "binding"
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogAdapter$Vh;->this$0:Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogAdapter;

    .line 57
    invoke-virtual {p2}, Lcom/coderpage/mine/dialog/MenuDialogItemBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 58
    iput-object p2, p0, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogAdapter$Vh;->mBinding:Lcom/coderpage/mine/dialog/MenuDialogItemBinding;

    return-void
.end method


# virtual methods
.method bind(Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogItem;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogAdapter$Vh;->mBinding:Lcom/coderpage/mine/dialog/MenuDialogItemBinding;

    invoke-virtual {v0, p1}, Lcom/coderpage/mine/dialog/MenuDialogItemBinding;->setItem(Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogItem;)V

    .line 63
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogAdapter$Vh;->mBinding:Lcom/coderpage/mine/dialog/MenuDialogItemBinding;

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogAdapter$Vh;->this$0:Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogAdapter;

    invoke-static {v0}, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogAdapter;->access$000(Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogAdapter;)Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogViewModel;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coderpage/mine/dialog/MenuDialogItemBinding;->setVm(Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogViewModel;)V

    .line 64
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogAdapter$Vh;->mBinding:Lcom/coderpage/mine/dialog/MenuDialogItemBinding;

    invoke-virtual {p1}, Lcom/coderpage/mine/dialog/MenuDialogItemBinding;->executePendingBindings()V

    return-void
.end method
