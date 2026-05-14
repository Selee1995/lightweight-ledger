.class public final synthetic Lcom/coderpage/mine/app/tally/ui/dialog/-$$Lambda$MenuDialog$aDfHparDPXCzhcDVgH_CyYF1ivE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/arch/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/ui/dialog/-$$Lambda$MenuDialog$aDfHparDPXCzhcDVgH_CyYF1ivE;->f$0:Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialog;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/ui/dialog/-$$Lambda$MenuDialog$aDfHparDPXCzhcDVgH_CyYF1ivE;->f$0:Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialog;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialog;->lambda$subscribeUi$0$MenuDialog(Ljava/util/List;)V

    return-void
.end method
