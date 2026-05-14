.class Lcom/coderpage/mine/app/tally/module/web/WebActivity$1;
.super Landroid/webkit/WebChromeClient;
.source "WebActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coderpage/mine/app/tally/module/web/WebActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coderpage/mine/app/tally/module/web/WebActivity;


# direct methods
.method constructor <init>(Lcom/coderpage/mine/app/tally/module/web/WebActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 80
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/web/WebActivity$1;->this$0:Lcom/coderpage/mine/app/tally/module/web/WebActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseWindow(Landroid/webkit/WebView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "window"
        }
    .end annotation

    .line 83
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onCloseWindow(Landroid/webkit/WebView;)V

    .line 84
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/web/WebActivity$1;->this$0:Lcom/coderpage/mine/app/tally/module/web/WebActivity;

    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/module/web/WebActivity;->finish()V

    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "newProgress"
        }
    .end annotation

    .line 95
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 96
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/web/WebActivity$1;->this$0:Lcom/coderpage/mine/app/tally/module/web/WebActivity;

    invoke-static {p1}, Lcom/coderpage/mine/app/tally/module/web/WebActivity;->access$100(Lcom/coderpage/mine/app/tally/module/web/WebActivity;)Lcom/coderpage/mine/module/web/WebActivityBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/coderpage/mine/module/web/WebActivityBinding;->progressView:Lcom/coderpage/mine/ui/widget/ProgressView;

    invoke-virtual {p1, p2}, Lcom/coderpage/mine/ui/widget/ProgressView;->setProgress(I)V

    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "title"
        }
    .end annotation

    .line 89
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 90
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/web/WebActivity$1;->this$0:Lcom/coderpage/mine/app/tally/module/web/WebActivity;

    invoke-static {p1}, Lcom/coderpage/mine/app/tally/module/web/WebActivity;->access$000(Lcom/coderpage/mine/app/tally/module/web/WebActivity;)V

    return-void
.end method
