.class public final synthetic Lcom/coderpage/mine/app/tally/ui/dialog/-$$Lambda$MenuDialogViewModel$2LfKhjofbRvK_8ooUd8vENLX4xI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogItem;

.field public final synthetic f$1:Landroid/support/v4/app/DialogFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogItem;Landroid/support/v4/app/DialogFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/ui/dialog/-$$Lambda$MenuDialogViewModel$2LfKhjofbRvK_8ooUd8vENLX4xI;->f$0:Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogItem;

    iput-object p2, p0, Lcom/coderpage/mine/app/tally/ui/dialog/-$$Lambda$MenuDialogViewModel$2LfKhjofbRvK_8ooUd8vENLX4xI;->f$1:Landroid/support/v4/app/DialogFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/ui/dialog/-$$Lambda$MenuDialogViewModel$2LfKhjofbRvK_8ooUd8vENLX4xI;->f$0:Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogItem;

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/ui/dialog/-$$Lambda$MenuDialogViewModel$2LfKhjofbRvK_8ooUd8vENLX4xI;->f$1:Landroid/support/v4/app/DialogFragment;

    invoke-static {v0, v1}, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogViewModel;->lambda$onMenuClick$0(Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogItem;Landroid/support/v4/app/DialogFragment;)V

    return-void
.end method
