.class Lcom/coderpage/mine/app/tally/module/about/AboutActivity$1;
.super Lcom/coderpage/lib/update/Updater$NewVersionCheckCallBack;
.source "AboutActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coderpage/mine/app/tally/module/about/AboutActivity;->lambda$new$6(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coderpage/mine/app/tally/module/about/AboutActivity;


# direct methods
.method constructor <init>(Lcom/coderpage/mine/app/tally/module/about/AboutActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 88
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/about/AboutActivity$1;->this$0:Lcom/coderpage/mine/app/tally/module/about/AboutActivity;

    invoke-direct {p0}, Lcom/coderpage/lib/update/Updater$NewVersionCheckCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onFindNewVersion(Lcom/coderpage/lib/update/ApkModel;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "apkModel"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/about/AboutActivity$1;->this$0:Lcom/coderpage/mine/app/tally/module/about/AboutActivity;

    invoke-static {v0}, Lcom/coderpage/mine/app/tally/module/about/AboutActivity;->access$000(Lcom/coderpage/mine/app/tally/module/about/AboutActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/about/AboutActivity$1;->this$0:Lcom/coderpage/mine/app/tally/module/about/AboutActivity;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 92
    invoke-interface {p1}, Lcom/coderpage/lib/update/ApkModel;->getVersion()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-interface {p1}, Lcom/coderpage/lib/update/ApkModel;->getBuildCode()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const p1, 0x7f0e00a6

    .line 91
    invoke-virtual {v1, p1, v2}, Lcom/coderpage/mine/app/tally/module/about/AboutActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/about/AboutActivity$1;->this$0:Lcom/coderpage/mine/app/tally/module/about/AboutActivity;

    invoke-static {p1}, Lcom/coderpage/mine/app/tally/module/about/AboutActivity;->access$000(Lcom/coderpage/mine/app/tally/module/about/AboutActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/about/AboutActivity$1;->this$0:Lcom/coderpage/mine/app/tally/module/about/AboutActivity;

    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/about/AboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060081

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
