.class public Lcom/coderpage/mine/app/tally/module/about/AboutActivity;
.super Lcom/coderpage/mine/ui/BaseActivity;
.source "AboutActivity.java"


# static fields
.field private static final BASE_H5_URL:Ljava/lang/String; = "http://h5.coderpage.com"

.field private static final URL_APP_PROTOCOL_PRIVACY:Ljava/lang/String; = "https://selee1995.github.io/lightweight-ledger/privacy.html"

.field private static final URL_APP_PROTOCOL_USER:Ljava/lang/String; = "https://selee1995.github.io/lightweight-ledger/user_agreement.html"


# instance fields
.field private mNewVersionTv:Landroid/widget/TextView;

.field private mOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/coderpage/mine/ui/BaseActivity;-><init>()V

    .line 83
    new-instance v0, Lcom/coderpage/mine/app/tally/module/about/-$$Lambda$AboutActivity$CfKiHcDyeZDCZQyOZ56YM6L11yA;

    invoke-direct {v0, p0}, Lcom/coderpage/mine/app/tally/module/about/-$$Lambda$AboutActivity$CfKiHcDyeZDCZQyOZ56YM6L11yA;-><init>(Lcom/coderpage/mine/app/tally/module/about/AboutActivity;)V

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/module/about/AboutActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/coderpage/mine/app/tally/module/about/AboutActivity;)Landroid/widget/TextView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/coderpage/mine/app/tally/module/about/AboutActivity;->mNewVersionTv:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic lambda$new$4(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 112
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private openAliPayByQrCode(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "qrCode"
        }
    .end annotation

    :try_start_0
    const-string v0, "UTF-8"

    .line 201
    invoke-static {p2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "alipays://platformapi/startapp?saId=10000007&qrcode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    .line 203
    invoke-static {p2, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p2

    const-string v1, "android.intent.category.BROWSABLE"

    .line 204
    invoke-virtual {p2, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 205
    invoke-virtual {p2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 206
    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p2

    .line 209
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 210
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v0
.end method

.method public static openByPackageName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "packageName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 183
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 184
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 188
    instance-of p1, p0, Landroid/app/Activity;

    if-nez p1, :cond_0

    const/high16 p1, 0x10000000

    .line 189
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 191
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 186
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "can\'t launch intent for package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static openByScheme(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "uri"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 169
    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 170
    instance-of p1, p0, Landroid/app/Activity;

    if-nez p1, :cond_0

    const/high16 p1, 0x10000000

    .line 171
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 173
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static openWeChart(Landroid/content/Context;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    const-string v1, "weixin://"

    .line 147
    invoke-static {p0, v1}, Lcom/coderpage/mine/app/tally/module/about/AboutActivity;->openByScheme(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    .line 150
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :try_start_1
    const-string v1, "com.tencent.mm"

    .line 154
    invoke-static {p0, v1}, Lcom/coderpage/mine/app/tally/module/about/AboutActivity;->openByPackageName(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return v0

    :catch_1
    move-exception p0

    .line 157
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public copyWeChatNumber()V
    .locals 6

    const-string v0, "clipboard"

    .line 131
    invoke-virtual {p0, v0}, Lcom/coderpage/mine/app/tally/module/about/AboutActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    if-nez v0, :cond_0

    return-void

    .line 135
    :cond_0
    new-instance v1, Landroid/content/ClipData$Item;

    const-string v2, "MINE\u5e94\u7528"

    invoke-direct {v1, v2}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    .line 136
    new-instance v2, Landroid/content/ClipData;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "text/plain"

    aput-object v5, v3, v4

    const-string v4, "\u5fae\u4fe1\u516c\u4f17\u53f7"

    invoke-direct {v2, v4, v3, v1}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    .line 137
    invoke-virtual {v0, v2}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    return-void
.end method

.method public synthetic lambda$new$5$AboutActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 114
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 115
    invoke-static {p0}, Lcom/coderpage/mine/app/tally/module/about/AboutActivity;->openWeChart(Landroid/content/Context;)Z

    return-void
.end method

.method public synthetic lambda$new$6$AboutActivity(Landroid/view/View;)V
    .locals 2

    .line 84
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    :try_start_0
    const-string p1, "clipboard"

    .line 101
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/module/about/AboutActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0e001e

    invoke-virtual {p0, v1}, Lcom/coderpage/mine/app/tally/module/about/AboutActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u516c\u4f17\u53f7"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mineapp"

    invoke-static {v0, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 103
    invoke-virtual {p1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    new-instance p1, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;

    invoke-direct {p1, p0}, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;-><init>(Landroid/app/Activity;)V

    const-string v0, "\u5173\u6ce8\u5fae\u4fe1\u516c\u4f17\u53f7:mineapp"

    .line 110
    invoke-virtual {p1, v0}, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/coderpage/mine/ui/widget/TipDialog$Builder;

    move-result-object p1

    const-string v0, "\u5fae\u4fe1\u516c\u4f17\u53f7\u5df2\u7ecf\u590d\u5236\u5230\u526a\u5207\u677f\uff0c\u8981\u73b0\u5728\u6253\u5f00\u5fae\u4fe1\u5173\u6ce8\u5417\uff1f"

    .line 111
    invoke-virtual {p1, v0}, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/coderpage/mine/ui/widget/TipDialog$Builder;

    move-result-object p1

    sget-object v0, Lcom/coderpage/mine/app/tally/module/about/-$$Lambda$AboutActivity$9VucraM0zcRtEbv_yGirQW2ML9s;->INSTANCE:Lcom/coderpage/mine/app/tally/module/about/-$$Lambda$AboutActivity$9VucraM0zcRtEbv_yGirQW2ML9s;

    const-string v1, "\u7a0d\u540e"

    .line 112
    invoke-virtual {p1, v1, v0}, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/coderpage/mine/ui/widget/TipDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/coderpage/mine/app/tally/module/about/-$$Lambda$AboutActivity$KFD29er8VuA3DT6nrmjvQutPt4A;

    invoke-direct {v0, p0}, Lcom/coderpage/mine/app/tally/module/about/-$$Lambda$AboutActivity$KFD29er8VuA3DT6nrmjvQutPt4A;-><init>(Lcom/coderpage/mine/app/tally/module/about/AboutActivity;)V

    const-string v1, "\u6253\u5f00\u5fae\u4fe1"

    .line 113
    invoke-virtual {p1, v1, v0}, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/coderpage/mine/ui/widget/TipDialog$Builder;

    move-result-object p1

    .line 116
    invoke-virtual {p1}, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;->build()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :catch_0
    move-exception p1

    .line 105
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    :sswitch_1
    const-string p1, "https://qr.alipay.com/tsx005864y75ldsauxrry3a"

    .line 121
    invoke-direct {p0, p0, p1}, Lcom/coderpage/mine/app/tally/module/about/AboutActivity;->openAliPayByQrCode(Landroid/app/Activity;Ljava/lang/String;)Z

    goto :goto_0

    .line 88
    :sswitch_2
    new-instance p1, Lcom/coderpage/mine/app/tally/module/about/AboutActivity$1;

    invoke-direct {p1, p0}, Lcom/coderpage/mine/app/tally/module/about/AboutActivity$1;-><init>(Lcom/coderpage/mine/app/tally/module/about/AboutActivity;)V

    invoke-static {p0, p1}, Lcom/coderpage/mine/app/tally/update/UpdateUtils;->startNewClientVersionCheck(Landroid/content/Context;Lcom/coderpage/lib/update/Updater$NewVersionCheckCallBack;)V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09008e -> :sswitch_2
        0x7f09008f -> :sswitch_1
        0x7f09009d -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic lambda$onCreate$0$AboutActivity(Landroid/view/View;)Z
    .locals 1

    const-string p1, "vivo"

    const/4 v0, 0x0

    .line 67
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const/4 p1, 0x1

    return p1
.end method

.method public synthetic lambda$onCreate$1$AboutActivity(Landroid/view/View;)V
    .locals 1

    const-string p1, ""

    const-string v0, "https://selee1995.github.io/lightweight-ledger/user_agreement.html"

    .line 73
    invoke-static {p0, p1, v0}, Lcom/coderpage/mine/app/tally/module/web/WebActivity;->open(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$onCreate$2$AboutActivity(Landroid/view/View;)V
    .locals 1

    const-string p1, ""

    const-string v0, "https://selee1995.github.io/lightweight-ledger/privacy.html"

    .line 74
    invoke-static {p0, p1, v0}, Lcom/coderpage/mine/app/tally/module/web/WebActivity;->open(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$onPostCreate$3$AboutActivity(Landroid/view/View;)V
    .locals 0

    .line 80
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/about/AboutActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 47
    invoke-super {p0, p1}, Lcom/coderpage/mine/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b001d

    .line 48
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/module/about/AboutActivity;->setContentView(I)V

    const p1, 0x7f090121

    .line 51
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/module/about/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 52
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "0.7.4"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/16 v3, 0x4a

    .line 53
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "%s (%d)"

    .line 52
    invoke-static {v0, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f090135

    .line 57
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/module/about/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/about/AboutActivity;->mNewVersionTv:Landroid/widget/TextView;

    .line 58
    invoke-static {p0}, Lcom/coderpage/lib/update/Updater;->hasNewVersion(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 59
    invoke-static {p0}, Lcom/coderpage/lib/update/Updater;->getNewVersionApkModelPersisted(Landroid/content/Context;)Lcom/coderpage/lib/update/ApkModel;

    move-result-object p1

    .line 60
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/about/AboutActivity;->mNewVersionTv:Landroid/widget/TextView;

    const v2, 0x7f0e00a6

    new-array v1, v1, [Ljava/lang/Object;

    .line 61
    invoke-interface {p1}, Lcom/coderpage/lib/update/ApkModel;->getVersion()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-interface {p1}, Lcom/coderpage/lib/update/ApkModel;->getBuildCode()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v5

    .line 60
    invoke-virtual {p0, v2, v1}, Lcom/coderpage/mine/app/tally/module/about/AboutActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/about/AboutActivity;->mNewVersionTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/about/AboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060081

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    const p1, 0x7f09008e

    .line 65
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/module/about/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/about/AboutActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/module/about/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/coderpage/mine/app/tally/module/about/-$$Lambda$AboutActivity$Ps9Q8Tud5vt4YM6O_MRD2ZNLJ2E;

    invoke-direct {v0, p0}, Lcom/coderpage/mine/app/tally/module/about/-$$Lambda$AboutActivity$Ps9Q8Tud5vt4YM6O_MRD2ZNLJ2E;-><init>(Lcom/coderpage/mine/app/tally/module/about/AboutActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const p1, 0x7f09017c

    .line 73
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/module/about/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/coderpage/mine/app/tally/module/about/-$$Lambda$AboutActivity$JjJQVzO-qVdewc7i71GLr9FBySo;

    invoke-direct {v0, p0}, Lcom/coderpage/mine/app/tally/module/about/-$$Lambda$AboutActivity$JjJQVzO-qVdewc7i71GLr9FBySo;-><init>(Lcom/coderpage/mine/app/tally/module/about/AboutActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09017b

    .line 74
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/module/about/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/coderpage/mine/app/tally/module/about/-$$Lambda$AboutActivity$O56NCDj_9ENpno1w5cWtJ8q-R3I;

    invoke-direct {v0, p0}, Lcom/coderpage/mine/app/tally/module/about/-$$Lambda$AboutActivity$O56NCDj_9ENpno1w5cWtJ8q-R3I;-><init>(Lcom/coderpage/mine/app/tally/module/about/AboutActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 79
    invoke-super {p0, p1}, Lcom/coderpage/mine/ui/BaseActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 80
    new-instance p1, Lcom/coderpage/mine/app/tally/module/about/-$$Lambda$AboutActivity$ToD2R1c3EfvHH5Z6ZLDG20PWLgo;

    invoke-direct {p1, p0}, Lcom/coderpage/mine/app/tally/module/about/-$$Lambda$AboutActivity$ToD2R1c3EfvHH5Z6ZLDG20PWLgo;-><init>(Lcom/coderpage/mine/app/tally/module/about/AboutActivity;)V

    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/module/about/AboutActivity;->setToolbarAsBack(Landroid/view/View$OnClickListener;)V

    return-void
.end method
