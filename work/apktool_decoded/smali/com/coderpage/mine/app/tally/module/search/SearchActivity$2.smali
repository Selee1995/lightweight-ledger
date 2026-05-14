.class Lcom/coderpage/mine/app/tally/module/search/SearchActivity$2;
.super Lcom/lcodecore/tkrefreshlayout/RefreshListenerAdapter;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coderpage/mine/app/tally/module/search/SearchActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coderpage/mine/app/tally/module/search/SearchActivity;


# direct methods
.method constructor <init>(Lcom/coderpage/mine/app/tally/module/search/SearchActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 86
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/search/SearchActivity$2;->this$0:Lcom/coderpage/mine/app/tally/module/search/SearchActivity;

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

    .line 94
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/search/SearchActivity$2;->this$0:Lcom/coderpage/mine/app/tally/module/search/SearchActivity;

    invoke-static {p1}, Lcom/coderpage/mine/app/tally/module/search/SearchActivity;->access$000(Lcom/coderpage/mine/app/tally/module/search/SearchActivity;)Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;->loadMore()V

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

    .line 89
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/search/SearchActivity$2;->this$0:Lcom/coderpage/mine/app/tally/module/search/SearchActivity;

    invoke-static {p1}, Lcom/coderpage/mine/app/tally/module/search/SearchActivity;->access$000(Lcom/coderpage/mine/app/tally/module/search/SearchActivity;)Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;->refresh()V

    return-void
.end method
