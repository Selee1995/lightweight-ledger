.class public Lcom/coderpage/mine/app/tally/common/share/ShareProxy;
.super Ljava/lang/Object;
.source "ShareProxy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fileUriForShare(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "file"
        }
    .end annotation

    .line 21
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const-string v0, "com.lightweightledger.app.fileProvider"

    .line 22
    invoke-static {p0, v0, p1}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 24
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public shareFile(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "uri",
            "mime"
        }
    .end annotation

    .line 44
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.STREAM"

    .line 45
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 46
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p2, 0x3

    .line 47
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    .line 48
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p3, "\u5206\u4eab"

    .line 49
    invoke-static {v0, p3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p3

    .line 50
    invoke-virtual {p3, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 51
    invoke-virtual {p1, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 53
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public shareFile(Landroid/content/Context;Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "file"
        }
    .end annotation

    .line 31
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const-string v0, "com.lightweightledger.app.fileProvider"

    .line 32
    invoke-static {p1, v0, p2}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 34
    :cond_0
    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 36
    :goto_0
    invoke-static {p2}, Lcom/coderpage/mine/utils/MimeUtils;->getMimeBySuffix(Ljava/io/File;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/coderpage/mine/app/tally/common/share/ShareProxy;->shareFile(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 38
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
