.class Lcom/coderpage/mine/app/tally/module/search/SearchActivity$1;
.super Lcom/coderpage/base/widget/LoadingLayout$BaseUserActionListener;
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

    .line 67
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/search/SearchActivity$1;->this$0:Lcom/coderpage/mine/app/tally/module/search/SearchActivity;

    invoke-direct {p0}, Lcom/coderpage/base/widget/LoadingLayout$BaseUserActionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onIconClick(Lcom/coderpage/base/widget/LoadingLayout;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "layout",
            "view"
        }
    .end annotation

    .line 77
    invoke-virtual {p1}, Lcom/coderpage/base/widget/LoadingLayout;->getStatus()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    .line 78
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/search/SearchActivity$1;->this$0:Lcom/coderpage/mine/app/tally/module/search/SearchActivity;

    invoke-static {p1}, Lcom/coderpage/mine/app/tally/module/search/SearchActivity;->access$000(Lcom/coderpage/mine/app/tally/module/search/SearchActivity;)Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;->load()V

    :cond_0
    return-void
.end method

.method public onPositiveButtonClick(Lcom/coderpage/base/widget/LoadingLayout;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "layout",
            "view"
        }
    .end annotation

    .line 70
    invoke-virtual {p1}, Lcom/coderpage/base/widget/LoadingLayout;->getStatus()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    .line 71
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/search/SearchActivity$1;->this$0:Lcom/coderpage/mine/app/tally/module/search/SearchActivity;

    invoke-static {p1}, Lcom/coderpage/mine/app/tally/module/search/SearchActivity;->access$000(Lcom/coderpage/mine/app/tally/module/search/SearchActivity;)Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;->load()V

    :cond_0
    return-void
.end method
