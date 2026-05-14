.class public Lcom/coderpage/mine/app/tally/common/router/TallyRouter;
.super Ljava/lang/Object;
.source "TallyRouter.java"


# static fields
.field public static final ABOUT:Ljava/lang/String; = "/app/tally/about"

.field public static final BACKUP_FILE:Ljava/lang/String; = "/app/tally/backUpFile"

.field public static final BACKUP_FILE_MANAGER:Ljava/lang/String; = "/app/tally/backUpFileManager"

.field public static final CHART:Ljava/lang/String; = "/app/tally/chart"

.field public static final RECORDS:Ljava/lang/String; = "/app/tally/records"

.field public static final SETTING:Ljava/lang/String; = "/app/tally/setting"

.field public static final WEB:Ljava/lang/String; = "/app/web"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static nav(Landroid/content/Context;Lcom/coderpage/mine/app/tally/common/router/NavBean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "navBean"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 48
    :cond_0
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object v0

    .line 49
    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/common/router/NavBean;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/arouter/launcher/ARouter;->build(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object v0

    .line 50
    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/common/router/NavBean;->getParams()Ljava/lang/String;

    move-result-object p1

    const-string v1, "params"

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/android/arouter/facade/Postcard;->withString(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p1

    .line 51
    invoke-virtual {p1, p0}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation(Landroid/content/Context;)Ljava/lang/Object;

    return-void
.end method

.method public static nav(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "path"
        }
    .end annotation

    const-string v0, ""

    .line 37
    invoke-static {p0, p1, v0}, Lcom/coderpage/mine/app/tally/common/router/TallyRouter;->nav(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static nav(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "path",
            "params"
        }
    .end annotation

    .line 41
    new-instance v0, Lcom/coderpage/mine/app/tally/common/router/NavBean;

    invoke-direct {v0, p1, p2}, Lcom/coderpage/mine/app/tally/common/router/NavBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/coderpage/mine/app/tally/common/router/TallyRouter;->nav(Landroid/content/Context;Lcom/coderpage/mine/app/tally/common/router/NavBean;)V

    return-void
.end method

.method public static retrieveParams(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string v0, "params"

    .line 59
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static retrieveParamsAsJson(Landroid/content/Intent;)Lcom/alibaba/fastjson/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 65
    new-instance p0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/JSONObject;-><init>(I)V

    return-object p0

    :cond_0
    :try_start_0
    const-string v1, "params"

    .line 68
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 69
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p0

    if-nez p0, :cond_1

    .line 71
    new-instance p0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/JSONObject;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object p0

    .line 75
    :catch_0
    new-instance p0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/JSONObject;-><init>(I)V

    return-object p0
.end method
