.class public Lcom/coderpage/lib/permission/PermissionUtils;
.super Ljava/lang/Object;
.source "PermissionUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coderpage/lib/permission/PermissionUtils$ThemeCallback;,
        Lcom/coderpage/lib/permission/PermissionUtils$FullCallback;,
        Lcom/coderpage/lib/permission/PermissionUtils$SimpleCallback;,
        Lcom/coderpage/lib/permission/PermissionUtils$SingleCallback;,
        Lcom/coderpage/lib/permission/PermissionUtils$OnRationaleListener;,
        Lcom/coderpage/lib/permission/PermissionUtils$OnExplainListener;,
        Lcom/coderpage/lib/permission/PermissionUtils$PermissionActivityImpl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MPermission"

.field private static sInstance:Lcom/coderpage/lib/permission/PermissionUtils;

.field private static sSimpleCallback4DrawOverlays:Lcom/coderpage/lib/permission/PermissionUtils$SimpleCallback;

.field private static sSimpleCallback4WriteSettings:Lcom/coderpage/lib/permission/PermissionUtils$SimpleCallback;


# instance fields
.field private mFullCallback:Lcom/coderpage/lib/permission/PermissionUtils$FullCallback;

.field private mOnExplainListener:Lcom/coderpage/lib/permission/PermissionUtils$OnExplainListener;

.field private mOnRationaleListener:Lcom/coderpage/lib/permission/PermissionUtils$OnRationaleListener;

.field private mPermissionsDenied:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPermissionsDeniedForever:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPermissionsGranted:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPermissionsParam:[Ljava/lang/String;

.field private mPermissionsRequest:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSimpleCallback:Lcom/coderpage/lib/permission/PermissionUtils$SimpleCallback;

.field private mSingleCallback:Lcom/coderpage/lib/permission/PermissionUtils$SingleCallback;

.field private mThemeCallback:Lcom/coderpage/lib/permission/PermissionUtils$ThemeCallback;


# direct methods
.method private varargs constructor <init>([Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "permissions"
        }
    .end annotation

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput-object p1, p0, Lcom/coderpage/lib/permission/PermissionUtils;->mPermissionsParam:[Ljava/lang/String;

    .line 195
    sput-object p0, Lcom/coderpage/lib/permission/PermissionUtils;->sInstance:Lcom/coderpage/lib/permission/PermissionUtils;

    return-void
.end method

.method static synthetic access$000()Lcom/coderpage/lib/permission/PermissionUtils;
    .locals 1

    .line 31
    sget-object v0, Lcom/coderpage/lib/permission/PermissionUtils;->sInstance:Lcom/coderpage/lib/permission/PermissionUtils;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-static {p0}, Lcom/coderpage/lib/permission/PermissionUtils;->logE(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000()Lcom/coderpage/lib/permission/PermissionUtils$SimpleCallback;
    .locals 1

    .line 31
    sget-object v0, Lcom/coderpage/lib/permission/PermissionUtils;->sSimpleCallback4WriteSettings:Lcom/coderpage/lib/permission/PermissionUtils$SimpleCallback;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/coderpage/lib/permission/PermissionUtils$SimpleCallback;)Lcom/coderpage/lib/permission/PermissionUtils$SimpleCallback;
    .locals 0

    .line 31
    sput-object p0, Lcom/coderpage/lib/permission/PermissionUtils;->sSimpleCallback4WriteSettings:Lcom/coderpage/lib/permission/PermissionUtils$SimpleCallback;

    return-object p0
.end method

.method static synthetic access$1100()Lcom/coderpage/lib/permission/PermissionUtils$SimpleCallback;
    .locals 1

    .line 31
    sget-object v0, Lcom/coderpage/lib/permission/PermissionUtils;->sSimpleCallback4DrawOverlays:Lcom/coderpage/lib/permission/PermissionUtils$SimpleCallback;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/coderpage/lib/permission/PermissionUtils$SimpleCallback;)Lcom/coderpage/lib/permission/PermissionUtils$SimpleCallback;
    .locals 0

    .line 31
    sput-object p0, Lcom/coderpage/lib/permission/PermissionUtils;->sSimpleCallback4DrawOverlays:Lcom/coderpage/lib/permission/PermissionUtils$SimpleCallback;

    return-object p0
.end method

.method static synthetic access$200(Lcom/coderpage/lib/permission/PermissionUtils;)Ljava/util/List;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/coderpage/lib/permission/PermissionUtils;->mPermissionsRequest:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/coderpage/lib/permission/PermissionUtils;)Lcom/coderpage/lib/permission/PermissionUtils$ThemeCallback;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/coderpage/lib/permission/PermissionUtils;->mThemeCallback:Lcom/coderpage/lib/permission/PermissionUtils$ThemeCallback;

    return-object p0
.end method

.method static synthetic access$400(Lcom/coderpage/lib/permission/PermissionUtils;)Lcom/coderpage/lib/permission/PermissionUtils$OnExplainListener;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/coderpage/lib/permission/PermissionUtils;->mOnExplainListener:Lcom/coderpage/lib/permission/PermissionUtils$OnExplainListener;

    return-object p0
.end method

.method static synthetic access$402(Lcom/coderpage/lib/permission/PermissionUtils;Lcom/coderpage/lib/permission/PermissionUtils$OnExplainListener;)Lcom/coderpage/lib/permission/PermissionUtils$OnExplainListener;
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/coderpage/lib/permission/PermissionUtils;->mOnExplainListener:Lcom/coderpage/lib/permission/PermissionUtils$OnExplainListener;

    return-object p1
.end method

.method static synthetic access$600(Landroid/app/Activity;I)V
    .locals 0

    .line 31
    invoke-static {p0, p1}, Lcom/coderpage/lib/permission/PermissionUtils;->startWriteSettingsActivity(Landroid/app/Activity;I)V

    return-void
.end method

.method static synthetic access$700(Landroid/app/Activity;I)V
    .locals 0

    .line 31
    invoke-static {p0, p1}, Lcom/coderpage/lib/permission/PermissionUtils;->startOverlayPermissionActivity(Landroid/app/Activity;I)V

    return-void
.end method

.method static synthetic access$800(Lcom/coderpage/lib/permission/PermissionUtils;Lcom/coderpage/ui/activity/TransActivity;Ljava/lang/Runnable;)Z
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/coderpage/lib/permission/PermissionUtils;->shouldRationale(Lcom/coderpage/ui/activity/TransActivity;Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/coderpage/lib/permission/PermissionUtils;Landroid/app/Activity;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/coderpage/lib/permission/PermissionUtils;->onRequestPermissionsResult(Landroid/app/Activity;)V

    return-void
.end method

.method private static getLaunchAppDetailsSettingsIntent(Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "pkgName",
            "isNewTask"
        }
    .end annotation

    .line 175
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/high16 p1, 0x10000000

    .line 177
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 179
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "package:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object v0
.end method

.method public static getPermissions(Landroid/app/Application;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "app"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 59
    invoke-virtual {p0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 61
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x1000

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez p0, :cond_0

    .line 62
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 63
    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 65
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 66
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private getPermissionsStatus(Landroid/app/Activity;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "activity"
        }
    .end annotation

    .line 339
    iget-object v0, p0, Lcom/coderpage/lib/permission/PermissionUtils;->mPermissionsRequest:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 340
    invoke-static {p1, v1}, Lcom/coderpage/lib/permission/PermissionUtils;->isGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 341
    iget-object v2, p0, Lcom/coderpage/lib/permission/PermissionUtils;->mPermissionsGranted:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 343
    :cond_1
    iget-object v2, p0, Lcom/coderpage/lib/permission/PermissionUtils;->mPermissionsDenied:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    invoke-virtual {p1, v1}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 345
    iget-object v2, p0, Lcom/coderpage/lib/permission/PermissionUtils;->mPermissionsDeniedForever:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static isGranted(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "context",
            "permission"
        }
    .end annotation

    .line 86
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 88
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static varargs isGranted(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "context",
            "permissions"
        }
    .end annotation

    .line 77
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 78
    invoke-static {p0, v3}, Lcom/coderpage/lib/permission/PermissionUtils;->isGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static isGrantedDrawOverlays(Landroid/content/Context;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 141
    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isGrantedWriteSettings(Landroid/content/Context;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 98
    invoke-static {p0}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private static isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "context",
            "intent"
        }
    .end annotation

    .line 129
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v0, 0x10000

    .line 130
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 131
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static launchAppDetailsSettings(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 169
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/coderpage/lib/permission/PermissionUtils;->getLaunchAppDetailsSettingsIntent(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 170
    invoke-static {p0, v0}, Lcom/coderpage/lib/permission/PermissionUtils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 171
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static logE(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    const-string v0, "MPermission"

    .line 561
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onRequestPermissionsResult(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "activity"
        }
    .end annotation

    .line 381
    invoke-direct {p0, p1}, Lcom/coderpage/lib/permission/PermissionUtils;->getPermissionsStatus(Landroid/app/Activity;)V

    .line 382
    invoke-direct {p0}, Lcom/coderpage/lib/permission/PermissionUtils;->requestCallback()V

    return-void
.end method

.method public static varargs permission([Ljava/lang/String;)Lcom/coderpage/lib/permission/PermissionUtils;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "permissions"
        }
    .end annotation

    .line 190
    new-instance v0, Lcom/coderpage/lib/permission/PermissionUtils;

    invoke-direct {v0, p0}, Lcom/coderpage/lib/permission/PermissionUtils;-><init>([Ljava/lang/String;)V

    return-object v0
.end method

.method private rationalInner(Lcom/coderpage/ui/activity/TransActivity;Ljava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "activity",
            "againRunnable"
        }
    .end annotation

    .line 324
    invoke-direct {p0, p1}, Lcom/coderpage/lib/permission/PermissionUtils;->getPermissionsStatus(Landroid/app/Activity;)V

    .line 325
    iget-object v0, p0, Lcom/coderpage/lib/permission/PermissionUtils;->mOnRationaleListener:Lcom/coderpage/lib/permission/PermissionUtils$OnRationaleListener;

    new-instance v1, Lcom/coderpage/lib/permission/-$$Lambda$PermissionUtils$P8TrqfdeWn4sLBlC92HY_NqzeXw;

    invoke-direct {v1, p0, p2, p1}, Lcom/coderpage/lib/permission/-$$Lambda$PermissionUtils$P8TrqfdeWn4sLBlC92HY_NqzeXw;-><init>(Lcom/coderpage/lib/permission/PermissionUtils;Ljava/lang/Runnable;Lcom/coderpage/ui/activity/TransActivity;)V

    invoke-interface {v0, p1, v1}, Lcom/coderpage/lib/permission/PermissionUtils$OnRationaleListener;->rationale(Lcom/coderpage/ui/activity/TransActivity;Lcom/coderpage/lib/permission/PermissionUtils$OnRationaleListener$ShouldRequest;)V

    return-void
.end method

.method private requestCallback()V
    .locals 6

    .line 352
    iget-object v0, p0, Lcom/coderpage/lib/permission/PermissionUtils;->mSingleCallback:Lcom/coderpage/lib/permission/PermissionUtils$SingleCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 353
    iget-object v2, p0, Lcom/coderpage/lib/permission/PermissionUtils;->mPermissionsDenied:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    iget-object v3, p0, Lcom/coderpage/lib/permission/PermissionUtils;->mPermissionsGranted:Ljava/util/List;

    iget-object v4, p0, Lcom/coderpage/lib/permission/PermissionUtils;->mPermissionsDeniedForever:Ljava/util/List;

    iget-object v5, p0, Lcom/coderpage/lib/permission/PermissionUtils;->mPermissionsDenied:Ljava/util/List;

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/coderpage/lib/permission/PermissionUtils$SingleCallback;->callback(ZLjava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 355
    iput-object v1, p0, Lcom/coderpage/lib/permission/PermissionUtils;->mSingleCallback:Lcom/coderpage/lib/permission/PermissionUtils$SingleCallback;

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/coderpage/lib/permission/PermissionUtils;->mSimpleCallback:Lcom/coderpage/lib/permission/PermissionUtils$SimpleCallback;

    if-eqz v0, :cond_2

    .line 358
    iget-object v0, p0, Lcom/coderpage/lib/permission/PermissionUtils;->mPermissionsDenied:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 359
    iget-object v0, p0, Lcom/coderpage/lib/permission/PermissionUtils;->mSimpleCallback:Lcom/coderpage/lib/permission/PermissionUtils$SimpleCallback;

    invoke-interface {v0}, Lcom/coderpage/lib/permission/PermissionUtils$SimpleCallback;->onGranted()V

    goto :goto_0

    .line 361
    :cond_1
    iget-object v0, p0, Lcom/coderpage/lib/permission/PermissionUtils;->mSimpleCallback:Lcom/coderpage/lib/permission/PermissionUtils$SimpleCallback;

    invoke-interface {v0}, Lcom/coderpage/lib/permission/PermissionUtils$SimpleCallback;->onDenied()V

    .line 363
    :goto_0
    iput-object v1, p0, Lcom/coderpage/lib/permission/PermissionUtils;->mSimpleCallback:Lcom/coderpage/lib/permission/PermissionUtils$SimpleCallback;

    .line 365
    :cond_2
    iget-object v0, p0, Lcom/coderpage/lib/permission/PermissionUtils;->mFullCallback:Lcom/coderpage/lib/permission/PermissionUtils$FullCallback;

    if-eqz v0, :cond_6

    .line 366
    iget-object v0, p0, Lcom/coderpage/lib/permission/PermissionUtils;->mPermissionsRequest:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coderpage/lib/permission/PermissionUtils;->mPermissionsGranted:Ljava/util/List;

    .line 367
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 368
    :cond_3
    iget-object v0, p0, Lcom/coderpage/lib/permission/PermissionUtils;->mFullCallback:Lcom/coderpage/lib/permission/PermissionUtils$FullCallback;

    iget-object v2, p0, Lcom/coderpage/lib/permission/PermissionUtils;->mPermissionsGranted:Ljava/util/List;

    invoke-interface {v0, v2}, Lcom/coderpage/lib/permission/PermissionUtils$FullCallback;->onGranted(Ljava/util/List;)V

    .line 370
    :cond_4
    iget-object v0, p0, Lcom/coderpage/lib/permission/PermissionUtils;->mPermissionsDenied:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 371
    iget-object v0, p0, Lcom/coderpage/lib/permission/PermissionUtils;->mFullCallback:Lcom/coderpage/lib/permission/PermissionUtils$FullCallback;

    iget-object v2, p0, Lcom/coderpage/lib/permission/PermissionUtils;->mPermissionsDeniedForever:Ljava/util/List;

    iget-object v3, p0, Lcom/coderpage/lib/permission/PermissionUtils;->mPermissionsDenied:Ljava/util/List;

    invoke-interface {v0, v2, v3}, Lcom/coderpage/lib/permission/PermissionUtils$FullCallback;->onDenied(Ljava/util/List;Ljava/util/List;)V

    .line 373
    :cond_5
    iput-object v1, p0, Lcom/coderpage/lib/permission/PermissionUtils;->mFullCallback:Lcom/coderpage/lib/permission/PermissionUtils$FullCallback;

    .line 375
    :cond_6
    iput-object v1, p0, Lcom/coderpage/lib/permission/PermissionUtils;->mOnRationaleListener:Lcom/coderpage/lib/permission/PermissionUtils$OnRationaleListener;

    .line 376
    iput-object v1, p0, Lcom/coderpage/lib/permission/PermissionUtils;->mThemeCallback:Lcom/coderpage/lib/permission/PermissionUtils$ThemeCallback;

    return-void
.end method

.method public static requestDrawOverlays(Landroid/content/Context;Lcom/coderpage/lib/permission/PermissionUtils$SimpleCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "context",
            "callback"
        }
    .end annotation

    .line 146
    invoke-static {p0}, Lcom/coderpage/lib/permission/PermissionUtils;->isGrantedDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 147
    invoke-interface {p1}, Lcom/coderpage/lib/permission/PermissionUtils$SimpleCallback;->onGranted()V

    :cond_0
    return-void

    .line 150
    :cond_1
    sput-object p1, Lcom/coderpage/lib/permission/PermissionUtils;->sSimpleCallback4DrawOverlays:Lcom/coderpage/lib/permission/PermissionUtils$SimpleCallback;

    const/4 p1, 0x3

    .line 151
    invoke-static {p0, p1}, Lcom/coderpage/lib/permission/PermissionUtils$PermissionActivityImpl;->start(Landroid/content/Context;I)V

    return-void
.end method

.method public static requestWriteSettings(Landroid/content/Context;Lcom/coderpage/lib/permission/PermissionUtils$SimpleCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "context",
            "callback"
        }
    .end annotation

    .line 103
    invoke-static {p0}, Lcom/coderpage/lib/permission/PermissionUtils;->isGrantedWriteSettings(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 104
    invoke-interface {p1}, Lcom/coderpage/lib/permission/PermissionUtils$SimpleCallback;->onGranted()V

    :cond_0
    return-void

    .line 107
    :cond_1
    sput-object p1, Lcom/coderpage/lib/permission/PermissionUtils;->sSimpleCallback4WriteSettings:Lcom/coderpage/lib/permission/PermissionUtils$SimpleCallback;

    const/4 p1, 0x2

    .line 108
    invoke-static {p0, p1}, Lcom/coderpage/lib/permission/PermissionUtils$PermissionActivityImpl;->start(Landroid/content/Context;I)V

    return-void
.end method

.method private shouldRationale(Lcom/coderpage/ui/activity/TransActivity;Ljava/lang/Runnable;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "activity",
            "againRunnable"
        }
    .end annotation

    .line 309
    iget-object v0, p0, Lcom/coderpage/lib/permission/PermissionUtils;->mOnRationaleListener:Lcom/coderpage/lib/permission/PermissionUtils$OnRationaleListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 310
    iget-object v0, p0, Lcom/coderpage/lib/permission/PermissionUtils;->mPermissionsRequest:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 311
    invoke-virtual {p1, v2}, Lcom/coderpage/ui/activity/TransActivity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 312
    invoke-direct {p0, p1, p2}, Lcom/coderpage/lib/permission/PermissionUtils;->rationalInner(Lcom/coderpage/ui/activity/TransActivity;Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    const/4 v1, 0x1

    :cond_1
    const/4 p1, 0x0

    .line 317
    iput-object p1, p0, Lcom/coderpage/lib/permission/PermissionUtils;->mOnRationaleListener:Lcom/coderpage/lib/permission/PermissionUtils$OnRationaleListener;

    :cond_2
    return v1
.end method

.method private static startOverlayPermissionActivity(Landroid/app/Activity;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "activity",
            "requestCode"
        }
    .end annotation

    .line 156
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 158
    invoke-static {p0, v0}, Lcom/coderpage/lib/permission/PermissionUtils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 159
    invoke-static {p0}, Lcom/coderpage/lib/permission/PermissionUtils;->launchAppDetailsSettings(Landroid/content/Context;)V

    return-void

    .line 162
    :cond_0
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private startPermissionActivity(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 v0, 0x1

    .line 302
    invoke-static {p1, v0}, Lcom/coderpage/lib/permission/PermissionUtils$PermissionActivityImpl;->start(Landroid/content/Context;I)V

    return-void
.end method

.method private static startWriteSettingsActivity(Landroid/app/Activity;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "activity",
            "requestCode"
        }
    .end annotation

    .line 113
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.action.MANAGE_WRITE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 115
    invoke-static {p0, v0}, Lcom/coderpage/lib/permission/PermissionUtils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 116
    invoke-static {p0}, Lcom/coderpage/lib/permission/PermissionUtils;->launchAppDetailsSettings(Landroid/content/Context;)V

    return-void

    .line 119
    :cond_0
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public callback(Lcom/coderpage/lib/permission/PermissionUtils$FullCallback;)Lcom/coderpage/lib/permission/PermissionUtils;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "callback"
        }
    .end annotation

    .line 249
    iput-object p1, p0, Lcom/coderpage/lib/permission/PermissionUtils;->mFullCallback:Lcom/coderpage/lib/permission/PermissionUtils$FullCallback;

    return-object p0
.end method

.method public callback(Lcom/coderpage/lib/permission/PermissionUtils$SimpleCallback;)Lcom/coderpage/lib/permission/PermissionUtils;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "callback"
        }
    .end annotation

    .line 238
    iput-object p1, p0, Lcom/coderpage/lib/permission/PermissionUtils;->mSimpleCallback:Lcom/coderpage/lib/permission/PermissionUtils$SimpleCallback;

    return-object p0
.end method

.method public callback(Lcom/coderpage/lib/permission/PermissionUtils$SingleCallback;)Lcom/coderpage/lib/permission/PermissionUtils;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "callback"
        }
    .end annotation

    .line 227
    iput-object p1, p0, Lcom/coderpage/lib/permission/PermissionUtils;->mSingleCallback:Lcom/coderpage/lib/permission/PermissionUtils$SingleCallback;

    return-object p0
.end method

.method public explain(Lcom/coderpage/lib/permission/PermissionUtils$OnExplainListener;)Lcom/coderpage/lib/permission/PermissionUtils;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "listener"
        }
    .end annotation

    .line 205
    iput-object p1, p0, Lcom/coderpage/lib/permission/PermissionUtils;->mOnExplainListener:Lcom/coderpage/lib/permission/PermissionUtils$OnExplainListener;

    return-object p0
.end method

.method public synthetic lambda$rationalInner$0$PermissionUtils(Ljava/lang/Runnable;Lcom/coderpage/ui/activity/TransActivity;Z)V
    .locals 0

    if-eqz p3, :cond_0

    .line 327
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/coderpage/lib/permission/PermissionUtils;->mPermissionsDenied:Ljava/util/List;

    .line 328
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/coderpage/lib/permission/PermissionUtils;->mPermissionsDeniedForever:Ljava/util/List;

    .line 329
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 331
    :cond_0
    invoke-virtual {p2}, Lcom/coderpage/ui/activity/TransActivity;->finish()V

    .line 332
    invoke-direct {p0}, Lcom/coderpage/lib/permission/PermissionUtils;->requestCallback()V

    :goto_0
    return-void
.end method

.method public rationale(Lcom/coderpage/lib/permission/PermissionUtils$OnRationaleListener;)Lcom/coderpage/lib/permission/PermissionUtils;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "listener"
        }
    .end annotation

    .line 216
    iput-object p1, p0, Lcom/coderpage/lib/permission/PermissionUtils;->mOnRationaleListener:Lcom/coderpage/lib/permission/PermissionUtils$OnRationaleListener;

    return-object p0
.end method

.method public request(Landroid/content/Context;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lcom/coderpage/lib/permission/PermissionUtils;->mPermissionsParam:[Ljava/lang/String;

    if-eqz v0, :cond_5

    array-length v0, v0

    if-gtz v0, :cond_0

    goto :goto_3

    .line 273
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coderpage/lib/permission/PermissionUtils;->mPermissionsRequest:Ljava/util/List;

    .line 274
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coderpage/lib/permission/PermissionUtils;->mPermissionsGranted:Ljava/util/List;

    .line 275
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coderpage/lib/permission/PermissionUtils;->mPermissionsDenied:Ljava/util/List;

    .line 276
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coderpage/lib/permission/PermissionUtils;->mPermissionsDeniedForever:Ljava/util/List;

    .line 279
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1

    .line 280
    iget-object p1, p0, Lcom/coderpage/lib/permission/PermissionUtils;->mPermissionsGranted:Ljava/util/List;

    iget-object v0, p0, Lcom/coderpage/lib/permission/PermissionUtils;->mPermissionsParam:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 281
    invoke-direct {p0}, Lcom/coderpage/lib/permission/PermissionUtils;->requestCallback()V

    goto :goto_2

    .line 285
    :cond_1
    iget-object v0, p0, Lcom/coderpage/lib/permission/PermissionUtils;->mPermissionsParam:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 286
    invoke-static {p1, v3}, Lcom/coderpage/lib/permission/PermissionUtils;->isGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 287
    iget-object v4, p0, Lcom/coderpage/lib/permission/PermissionUtils;->mPermissionsGranted:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 289
    :cond_2
    iget-object v4, p0, Lcom/coderpage/lib/permission/PermissionUtils;->mPermissionsRequest:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 292
    :cond_3
    iget-object v0, p0, Lcom/coderpage/lib/permission/PermissionUtils;->mPermissionsRequest:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 293
    invoke-direct {p0}, Lcom/coderpage/lib/permission/PermissionUtils;->requestCallback()V

    goto :goto_2

    .line 295
    :cond_4
    invoke-direct {p0, p1}, Lcom/coderpage/lib/permission/PermissionUtils;->startPermissionActivity(Landroid/content/Context;)V

    :goto_2
    return-void

    :cond_5
    :goto_3
    const-string p1, "PermissionUtils"

    const-string v0, "No permissions to request."

    .line 269
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public theme(Lcom/coderpage/lib/permission/PermissionUtils$ThemeCallback;)Lcom/coderpage/lib/permission/PermissionUtils;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "callback"
        }
    .end annotation

    .line 260
    iput-object p1, p0, Lcom/coderpage/lib/permission/PermissionUtils;->mThemeCallback:Lcom/coderpage/lib/permission/PermissionUtils$ThemeCallback;

    return-object p0
.end method
