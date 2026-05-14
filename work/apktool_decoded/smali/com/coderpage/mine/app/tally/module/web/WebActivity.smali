.class public Lcom/coderpage/mine/app/tally/module/web/WebActivity;
.super Lcom/coderpage/mine/ui/BaseActivity;
.source "WebActivity.java"


# instance fields
.field private mBinding:Lcom/coderpage/mine/module/web/WebActivityBinding;

.field private mTitle:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;

.field private mWebView:Lcom/coderpage/mine/ui/widget/MWebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/coderpage/mine/ui/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/coderpage/mine/app/tally/module/web/WebActivity;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/module/web/WebActivity;->setupWebTitle()V

    return-void
.end method

.method static synthetic access$100(Lcom/coderpage/mine/app/tally/module/web/WebActivity;)Lcom/coderpage/mine/module/web/WebActivityBinding;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/coderpage/mine/app/tally/module/web/WebActivity;->mBinding:Lcom/coderpage/mine/module/web/WebActivityBinding;

    return-object p0
.end method

.method private initData()V
    .locals 3

    .line 64
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/web/WebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/coderpage/mine/app/tally/common/router/TallyRouter;->retrieveParamsAsJson(Landroid/content/Intent;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const-string v1, "url"

    .line 65
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/coderpage/mine/app/tally/module/web/WebActivity;->mUrl:Ljava/lang/String;

    const-string v1, "title"

    .line 66
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/module/web/WebActivity;->mTitle:Ljava/lang/String;

    .line 67
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/web/WebActivity;->mUrl:Ljava/lang/String;

    const-string v2, ""

    if-nez v1, :cond_0

    move-object v1, v2

    :cond_0
    iput-object v1, p0, Lcom/coderpage/mine/app/tally/module/web/WebActivity;->mUrl:Ljava/lang/String;

    if-nez v0, :cond_1

    move-object v0, v2

    .line 68
    :cond_1
    iput-object v0, p0, Lcom/coderpage/mine/app/tally/module/web/WebActivity;->mTitle:Ljava/lang/String;

    return-void
.end method

.method private initView()V
    .locals 3

    .line 72
    new-instance v0, Lcom/coderpage/mine/app/tally/module/web/-$$Lambda$WebActivity$I4cdqxZKo13o8Ix5OEkqc6Hady4;

    invoke-direct {v0, p0}, Lcom/coderpage/mine/app/tally/module/web/-$$Lambda$WebActivity$I4cdqxZKo13o8Ix5OEkqc6Hady4;-><init>(Lcom/coderpage/mine/app/tally/module/web/WebActivity;)V

    invoke-virtual {p0, v0}, Lcom/coderpage/mine/app/tally/module/web/WebActivity;->setToolbarAsBack(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/web/WebActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/coderpage/mine/app/tally/module/web/WebActivity;->setToolbarTitle(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/web/WebActivity;->mBinding:Lcom/coderpage/mine/module/web/WebActivityBinding;

    iget-object v0, v0, Lcom/coderpage/mine/module/web/WebActivityBinding;->progressView:Lcom/coderpage/mine/ui/widget/ProgressView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coderpage/mine/ui/widget/ProgressView;->setAutoInvisibleOnFinish(Z)V

    .line 76
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/web/WebActivity;->mBinding:Lcom/coderpage/mine/module/web/WebActivityBinding;

    iget-object v0, v0, Lcom/coderpage/mine/module/web/WebActivityBinding;->progressView:Lcom/coderpage/mine/ui/widget/ProgressView;

    const v1, 0x7f0600af

    invoke-static {p0, v1}, Lcom/coderpage/base/utils/ResUtils;->getColor(Landroid/content/Context;I)I

    move-result v1

    const v2, 0x7f060059

    .line 77
    invoke-static {p0, v2}, Lcom/coderpage/base/utils/ResUtils;->getColor(Landroid/content/Context;I)I

    move-result v2

    .line 76
    invoke-virtual {v0, v1, v2}, Lcom/coderpage/mine/ui/widget/ProgressView;->setColor(II)V

    .line 78
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/web/WebActivity;->mBinding:Lcom/coderpage/mine/module/web/WebActivityBinding;

    iget-object v0, v0, Lcom/coderpage/mine/module/web/WebActivityBinding;->webView:Lcom/coderpage/mine/ui/widget/MWebView;

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/module/web/WebActivity;->mWebView:Lcom/coderpage/mine/ui/widget/MWebView;

    .line 79
    invoke-virtual {v0}, Lcom/coderpage/mine/ui/widget/MWebView;->setupDefaultSetting()V

    .line 80
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/web/WebActivity;->mWebView:Lcom/coderpage/mine/ui/widget/MWebView;

    new-instance v1, Lcom/coderpage/mine/app/tally/module/web/WebActivity$1;

    invoke-direct {v1, p0}, Lcom/coderpage/mine/app/tally/module/web/WebActivity$1;-><init>(Lcom/coderpage/mine/app/tally/module/web/WebActivity;)V

    invoke-virtual {v0, v1}, Lcom/coderpage/mine/ui/widget/MWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 99
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/web/WebActivity;->mWebView:Lcom/coderpage/mine/ui/widget/MWebView;

    new-instance v1, Lcom/coderpage/mine/app/tally/module/web/WebActivity$2;

    invoke-direct {v1, p0}, Lcom/coderpage/mine/app/tally/module/web/WebActivity$2;-><init>(Lcom/coderpage/mine/app/tally/module/web/WebActivity;)V

    invoke-virtual {v0, v1}, Lcom/coderpage/mine/ui/widget/MWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 128
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/web/WebActivity;->mWebView:Lcom/coderpage/mine/ui/widget/MWebView;

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/web/WebActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/coderpage/mine/ui/widget/MWebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public static open(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "title",
            "url"
        }
    .end annotation

    .line 55
    new-instance v0, Lcom/coderpage/mine/app/tally/common/router/NavBean;

    const-string v1, "/app/web"

    invoke-direct {v0, v1}, Lcom/coderpage/mine/app/tally/common/router/NavBean;-><init>(Ljava/lang/String;)V

    .line 56
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONObject;-><init>(I)V

    const-string v2, "title"

    .line 57
    invoke-virtual {v1, v2, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "url"

    .line 58
    invoke-virtual {v1, p1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/coderpage/mine/app/tally/common/router/NavBean;->setParams(Ljava/lang/String;)V

    .line 60
    invoke-static {p0, v0}, Lcom/coderpage/mine/app/tally/common/router/TallyRouter;->nav(Landroid/content/Context;Lcom/coderpage/mine/app/tally/common/router/NavBean;)V

    return-void
.end method

.method private setupWebTitle()V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/web/WebActivity;->mWebView:Lcom/coderpage/mine/ui/widget/MWebView;

    invoke-virtual {v0}, Lcom/coderpage/mine/ui/widget/MWebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 134
    :goto_0
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/web/WebActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$initView$0$WebActivity(Landroid/view/View;)V
    .locals 0

    .line 72
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/web/WebActivity;->finish()V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/web/WebActivity;->mWebView:Lcom/coderpage/mine/ui/widget/MWebView;

    invoke-virtual {v0}, Lcom/coderpage/mine/ui/widget/MWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/web/WebActivity;->mWebView:Lcom/coderpage/mine/ui/widget/MWebView;

    invoke-virtual {v0}, Lcom/coderpage/mine/ui/widget/MWebView;->goBack()V

    return-void

    .line 155
    :cond_0
    invoke-super {p0}, Lcom/coderpage/mine/ui/BaseActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 41
    invoke-super {p0, p1}, Lcom/coderpage/mine/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b003e

    .line 42
    invoke-static {p0, p1}, Landroidx/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/coderpage/mine/module/web/WebActivityBinding;

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/web/WebActivity;->mBinding:Lcom/coderpage/mine/module/web/WebActivityBinding;

    .line 43
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/module/web/WebActivity;->initData()V

    .line 44
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/module/web/WebActivity;->initView()V

    return-void
.end method

.method protected onDestroy()V
    .locals 6

    .line 160
    invoke-super {p0}, Lcom/coderpage/mine/ui/BaseActivity;->onDestroy()V

    .line 162
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/web/WebActivity;->mWebView:Lcom/coderpage/mine/ui/widget/MWebView;

    const/4 v1, 0x0

    const-string v2, ""

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/coderpage/mine/ui/widget/MWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/web/WebActivity;->mWebView:Lcom/coderpage/mine/ui/widget/MWebView;

    invoke-virtual {v0}, Lcom/coderpage/mine/ui/widget/MWebView;->clearHistory()V

    .line 165
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/web/WebActivity;->mWebView:Lcom/coderpage/mine/ui/widget/MWebView;

    invoke-virtual {v0}, Lcom/coderpage/mine/ui/widget/MWebView;->stopLoading()V

    .line 166
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/web/WebActivity;->mWebView:Lcom/coderpage/mine/ui/widget/MWebView;

    invoke-virtual {v0}, Lcom/coderpage/mine/ui/widget/MWebView;->removeAllViews()V

    .line 167
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/web/WebActivity;->mWebView:Lcom/coderpage/mine/ui/widget/MWebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coderpage/mine/ui/widget/MWebView;->clearCache(Z)V

    .line 168
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/web/WebActivity;->mWebView:Lcom/coderpage/mine/ui/widget/MWebView;

    invoke-virtual {v0}, Lcom/coderpage/mine/ui/widget/MWebView;->destroy()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 145
    invoke-super {p0}, Lcom/coderpage/mine/ui/BaseActivity;->onPause()V

    .line 146
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/web/WebActivity;->mWebView:Lcom/coderpage/mine/ui/widget/MWebView;

    invoke-virtual {v0}, Lcom/coderpage/mine/ui/widget/MWebView;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 139
    invoke-super {p0}, Lcom/coderpage/mine/ui/BaseActivity;->onResume()V

    .line 140
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/web/WebActivity;->mWebView:Lcom/coderpage/mine/ui/widget/MWebView;

    invoke-virtual {v0}, Lcom/coderpage/mine/ui/widget/MWebView;->onResume()V

    return-void
.end method
