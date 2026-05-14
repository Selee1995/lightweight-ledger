.class Lcom/coderpage/mine/app/tally/module/home/HomeViewModel$1;
.super Landroid/text/style/ClickableSpan;
.source "HomeViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;->lambda$initPrivacyAuth$8(Lcom/coderpage/mine/app/tally/module/home/HomeActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;

.field final synthetic val$activity:Lcom/coderpage/mine/app/tally/module/home/HomeActivity;


# direct methods
.method constructor <init>(Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;Lcom/coderpage/mine/app/tally/module/home/HomeActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$activity"
        }
    .end annotation

    .line 262
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel$1;->this$0:Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;

    iput-object p2, p0, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel$1;->val$activity:Lcom/coderpage/mine/app/tally/module/home/HomeActivity;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "widget"
        }
    .end annotation

    .line 265
    invoke-static {p1}, Lcom/coderpage/base/utils/CommonUtils;->isViewFastDoubleClick(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 268
    :cond_0
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel$1;->val$activity:Lcom/coderpage/mine/app/tally/module/home/HomeActivity;

    const-string v0, ""

    const-string v1, "https://selee1995.github.io/lightweight-ledger/user_agreement.html"

    invoke-static {p1, v0, v1}, Lcom/coderpage/mine/app/tally/module/web/WebActivity;->open(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
