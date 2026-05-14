.class public final synthetic Lcom/coderpage/mine/ui/-$$Lambda$BaseActivity$02ZmEWpan3TgZjLO59nlueAYRc4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/coderpage/base/utils/FunctionUtils$Task;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/coderpage/mine/ui/-$$Lambda$BaseActivity$02ZmEWpan3TgZjLO59nlueAYRc4;->f$0:I

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/coderpage/mine/ui/-$$Lambda$BaseActivity$02ZmEWpan3TgZjLO59nlueAYRc4;->f$0:I

    check-cast p1, Landroid/support/v7/app/ActionBar;

    invoke-static {v0, p1}, Lcom/coderpage/mine/ui/BaseActivity;->lambda$setToolbarSubTitle$2(ILandroid/support/v7/app/ActionBar;)V

    return-void
.end method
