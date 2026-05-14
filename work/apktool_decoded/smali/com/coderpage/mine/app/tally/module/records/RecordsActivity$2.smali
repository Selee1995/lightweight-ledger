.class Lcom/coderpage/mine/app/tally/module/records/RecordsActivity$2;
.super Lcom/lcodecore/tkrefreshlayout/RefreshListenerAdapter;
.source "RecordsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coderpage/mine/app/tally/module/records/RecordsActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coderpage/mine/app/tally/module/records/RecordsActivity;


# direct methods
.method constructor <init>(Lcom/coderpage/mine/app/tally/module/records/RecordsActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 99
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsActivity$2;->this$0:Lcom/coderpage/mine/app/tally/module/records/RecordsActivity;

    invoke-direct {p0}, Lcom/lcodecore/tkrefreshlayout/RefreshListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "refreshLayout"
        }
    .end annotation

    .line 107
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsActivity$2;->this$0:Lcom/coderpage/mine/app/tally/module/records/RecordsActivity;

    invoke-static {p1}, Lcom/coderpage/mine/app/tally/module/records/RecordsActivity;->access$000(Lcom/coderpage/mine/app/tally/module/records/RecordsActivity;)Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;->loadMore()V

    return-void
.end method

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

    .line 102
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/records/RecordsActivity$2;->this$0:Lcom/coderpage/mine/app/tally/module/records/RecordsActivity;

    invoke-static {p1}, Lcom/coderpage/mine/app/tally/module/records/RecordsActivity;->access$000(Lcom/coderpage/mine/app/tally/module/records/RecordsActivity;)Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;->refresh()V

    return-void
.end method
