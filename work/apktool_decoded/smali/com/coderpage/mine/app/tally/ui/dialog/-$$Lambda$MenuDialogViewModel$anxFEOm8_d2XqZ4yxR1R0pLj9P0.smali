.class public final synthetic Lcom/coderpage/mine/app/tally/ui/dialog/-$$Lambda$MenuDialogViewModel$anxFEOm8_d2XqZ4yxR1R0pLj9P0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/coderpage/framework/ViewReliedTask;


# instance fields
.field public final synthetic f$0:Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogItem;


# direct methods
.method public synthetic constructor <init>(Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/ui/dialog/-$$Lambda$MenuDialogViewModel$anxFEOm8_d2XqZ4yxR1R0pLj9P0;->f$0:Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogItem;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/ui/dialog/-$$Lambda$MenuDialogViewModel$anxFEOm8_d2XqZ4yxR1R0pLj9P0;->f$0:Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogItem;

    check-cast p1, Landroid/support/v4/app/DialogFragment;

    invoke-static {v0, p1}, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogViewModel;->lambda$onMenuClick$1(Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogItem;Landroid/support/v4/app/DialogFragment;)V

    return-void
.end method
