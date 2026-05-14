.class Lcom/coderpage/mine/app/tally/module/home/HomeActivity$1;
.super Lcom/lcodecore/tkrefreshlayout/RefreshListenerAdapter;
.source "HomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coderpage/mine/app/tally/module/home/HomeActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coderpage/mine/app/tally/module/home/HomeActivity;


# direct methods
.method constructor <init>(Lcom/coderpage/mine/app/tally/module/home/HomeActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/home/HomeActivity$1;->this$0:Lcom/coderpage/mine/app/tally/module/home/HomeActivity;

    invoke-direct {p0}, Lcom/lcodecore/tkrefreshlayout/RefreshListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "refreshLayout"
        }
    .end annotation

    .line 65
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/home/HomeActivity$1;->this$0:Lcom/coderpage/mine/app/tally/module/home/HomeActivity;

    invoke-static {p1}, Lcom/coderpage/mine/app/tally/module/home/HomeActivity;->access$000(Lcom/coderpage/mine/app/tally/module/home/HomeActivity;)Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;->refresh()V

    return-void
.end method
