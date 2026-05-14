.class public final synthetic Lcom/coderpage/mine/app/tally/module/edit/record/-$$Lambda$RecordEditFragment$E4b7l-6to4gjgbiGUQc5qxY_y4c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/arch/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/coderpage/mine/app/tally/module/edit/record/RecordEditFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/coderpage/mine/app/tally/module/edit/record/RecordEditFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/record/-$$Lambda$RecordEditFragment$E4b7l-6to4gjgbiGUQc5qxY_y4c;->f$0:Lcom/coderpage/mine/app/tally/module/edit/record/RecordEditFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/-$$Lambda$RecordEditFragment$E4b7l-6to4gjgbiGUQc5qxY_y4c;->f$0:Lcom/coderpage/mine/app/tally/module/edit/record/RecordEditFragment;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/coderpage/mine/app/tally/module/edit/record/RecordEditFragment;->lambda$subscribeUi$0$RecordEditFragment(Ljava/util/List;)V

    return-void
.end method
