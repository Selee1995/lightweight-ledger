.class final Lcom/coderpage/lib/permission/PermissionUtils$PermissionActivityImpl;
.super Lcom/coderpage/ui/activity/TransActivity$Delegate;
.source "PermissionUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coderpage/lib/permission/PermissionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PermissionActivityImpl"
.end annotation


# static fields
.field private static INSTANCE:Lcom/coderpage/lib/permission/PermissionUtils$PermissionActivityImpl; = null

.field private static final TYPE:Ljava/lang/String; = "TYPE"

.field private static final TYPE_DRAW_OVERLAYS:I = 0x3

.field private static final TYPE_RUNTIME:I = 0x1

.field private static final TYPE_WRITE_SETTINGS:I = 0x2

.field private static currentRequestCode:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 395
    new-instance v0, Lcom/coderpage/lib/permission/PermissionUtils$PermissionActivityImpl;

    invoke-direct {v0}, Lcom/coderpage/lib/permission/PermissionUtils$PermissionActivityImpl;-><init>()V

    sput-object v0, Lcom/coderpage/lib/permission/PermissionUtils$PermissionActivityImpl;->INSTANCE:Lcom/coderpage/lib/permission/PermissionUtils$PermissionActivityImpl;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 386
    invoke-direct {p0}, Lcom/coderpage/ui/activity/TransActivity$Delegate;-><init>()V

    return-void
.end method

.method static synthetic access$500(Lcom/coderpage/lib/permission/PermissionUtils$PermissionActivityImpl;Lcom/coderpage/ui/activity/TransActivity;)V
    .locals 0

    .line 386
    invoke-direct {p0, p1}, Lcom/coderpage/lib/permission/PermissionUtils$PermissionActivityImpl;->requestPermissions(Lcom/coderpage/ui/activity/TransActivity;)V

    return-void
.end method

.method private checkRequestCallback(Landroid/content/Context;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "requestCode"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    .line 498
    invoke-static {}, Lcom/coderpage/lib/permission/PermissionUtils;->access$1000()Lcom/coderpage/lib/permission/PermissionUtils$SimpleCallback;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 499
    :cond_0
    invoke-static {p1}, Lcom/coderpage/lib/permission/PermissionUtils;->isGrantedWriteSettings(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 500
    invoke-static {}, Lcom/coderpage/lib/permission/PermissionUtils;->access$1000()Lcom/coderpage/lib/permission/PermissionUtils$SimpleCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/coderpage/lib/permission/PermissionUtils$SimpleCallback;->onGranted()V

    goto :goto_0

    .line 502
    :cond_1
    invoke-static {}, Lcom/coderpage/lib/permission/PermissionUtils;->access$1000()Lcom/coderpage/lib/permission/PermissionUtils$SimpleCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/coderpage/lib/permission/PermissionUtils$SimpleCallback;->onDenied()V

    .line 504
    :goto_0
    invoke-static {v0}, Lcom/coderpage/lib/permission/PermissionUtils;->access$1002(Lcom/coderpage/lib/permission/PermissionUtils$SimpleCallback;)Lcom/coderpage/lib/permission/PermissionUtils$SimpleCallback;

    goto :goto_2

    :cond_2
    const/4 v1, 0x3

    if-ne p2, v1, :cond_5

    .line 506
    invoke-static {}, Lcom/coderpage/lib/permission/PermissionUtils;->access$1100()Lcom/coderpage/lib/permission/PermissionUtils$SimpleCallback;

    move-result-object p2

    if-nez p2, :cond_3

    return-void

    .line 507
    :cond_3
    invoke-static {p1}, Lcom/coderpage/lib/permission/PermissionUtils;->isGrantedDrawOverlays(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 508
    invoke-static {}, Lcom/coderpage/lib/permission/PermissionUtils;->access$1100()Lcom/coderpage/lib/permission/PermissionUtils$SimpleCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/coderpage/lib/permission/PermissionUtils$SimpleCallback;->onGranted()V

    goto :goto_1

    .line 510
    :cond_4
    invoke-static {}, Lcom/coderpage/lib/permission/PermissionUtils;->access$1100()Lcom/coderpage/lib/permission/PermissionUtils$SimpleCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/coderpage/lib/permission/PermissionUtils$SimpleCallback;->onDenied()V

    .line 512
    :goto_1
    invoke-static {v0}, Lcom/coderpage/lib/permission/PermissionUtils;->access$1102(Lcom/coderpage/lib/permission/PermissionUtils$SimpleCallback;)Lcom/coderpage/lib/permission/PermissionUtils$SimpleCallback;

    :cond_5
    :goto_2
    return-void
.end method

.method static synthetic lambda$start$0(ILandroid/content/Intent;)V
    .locals 1

    const-string v0, "TYPE"

    .line 398
    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-void
.end method

.method private requestPermissions(Lcom/coderpage/ui/activity/TransActivity;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "activity"
        }
    .end annotation

    .line 453
    invoke-static {}, Lcom/coderpage/lib/permission/PermissionUtils;->access$000()Lcom/coderpage/lib/permission/PermissionUtils;

    move-result-object v0

    new-instance v1, Lcom/coderpage/lib/permission/PermissionUtils$PermissionActivityImpl$2;

    invoke-direct {v1, p0, p1}, Lcom/coderpage/lib/permission/PermissionUtils$PermissionActivityImpl$2;-><init>(Lcom/coderpage/lib/permission/PermissionUtils$PermissionActivityImpl;Lcom/coderpage/ui/activity/TransActivity;)V

    invoke-static {v0, p1, v1}, Lcom/coderpage/lib/permission/PermissionUtils;->access$800(Lcom/coderpage/lib/permission/PermissionUtils;Lcom/coderpage/ui/activity/TransActivity;Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 461
    :cond_0
    invoke-static {}, Lcom/coderpage/lib/permission/PermissionUtils;->access$000()Lcom/coderpage/lib/permission/PermissionUtils;

    move-result-object v0

    invoke-static {v0}, Lcom/coderpage/lib/permission/PermissionUtils;->access$200(Lcom/coderpage/lib/permission/PermissionUtils;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/coderpage/ui/activity/TransActivity;->requestPermissions([Ljava/lang/String;I)V

    return-void
.end method

.method public static start(Landroid/content/Context;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "context",
            "type"
        }
    .end annotation

    .line 398
    new-instance v0, Lcom/coderpage/lib/permission/-$$Lambda$PermissionUtils$PermissionActivityImpl$Lm_iRrcYcnR3eIKk7Og9NvbPY8Y;

    invoke-direct {v0, p1}, Lcom/coderpage/lib/permission/-$$Lambda$PermissionUtils$PermissionActivityImpl$Lm_iRrcYcnR3eIKk7Og9NvbPY8Y;-><init>(I)V

    sget-object p1, Lcom/coderpage/lib/permission/PermissionUtils$PermissionActivityImpl;->INSTANCE:Lcom/coderpage/lib/permission/PermissionUtils$PermissionActivityImpl;

    invoke-static {p0, v0, p1}, Lcom/coderpage/ui/activity/TransActivity;->start(Landroid/content/Context;Lcom/coderpage/ui/activity/TransActivity$Consumer;Lcom/coderpage/ui/activity/TransActivity$Delegate;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Lcom/coderpage/ui/activity/TransActivity;Landroid/view/MotionEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "ev"
        }
    .end annotation

    .line 478
    invoke-virtual {p1}, Lcom/coderpage/ui/activity/TransActivity;->finish()V

    const/4 p1, 0x1

    return p1
.end method

.method public onActivityResult(Lcom/coderpage/ui/activity/TransActivity;IILandroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "requestCode",
            "resultCode",
            "data"
        }
    .end annotation

    .line 493
    invoke-virtual {p1}, Lcom/coderpage/ui/activity/TransActivity;->finish()V

    return-void
.end method

.method public onCreated(Lcom/coderpage/ui/activity/TransActivity;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "activity",
            "savedInstanceState"
        }
    .end annotation

    .line 403
    invoke-virtual {p1}, Lcom/coderpage/ui/activity/TransActivity;->getWindow()Landroid/view/Window;

    move-result-object p2

    const v0, 0x40010

    invoke-virtual {p2, v0}, Landroid/view/Window;->addFlags(I)V

    .line 405
    invoke-virtual {p1}, Lcom/coderpage/ui/activity/TransActivity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    const-string v0, "TYPE"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_5

    .line 407
    invoke-static {}, Lcom/coderpage/lib/permission/PermissionUtils;->access$000()Lcom/coderpage/lib/permission/PermissionUtils;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p2, "sInstance is null."

    .line 408
    invoke-static {p2}, Lcom/coderpage/lib/permission/PermissionUtils;->access$100(Ljava/lang/String;)V

    .line 409
    invoke-virtual {p1}, Lcom/coderpage/ui/activity/TransActivity;->finish()V

    return-void

    .line 412
    :cond_0
    invoke-static {}, Lcom/coderpage/lib/permission/PermissionUtils;->access$000()Lcom/coderpage/lib/permission/PermissionUtils;

    move-result-object p2

    invoke-static {p2}, Lcom/coderpage/lib/permission/PermissionUtils;->access$200(Lcom/coderpage/lib/permission/PermissionUtils;)Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_1

    const-string p2, "mPermissionsRequest is null."

    .line 413
    invoke-static {p2}, Lcom/coderpage/lib/permission/PermissionUtils;->access$100(Ljava/lang/String;)V

    .line 414
    invoke-virtual {p1}, Lcom/coderpage/ui/activity/TransActivity;->finish()V

    return-void

    .line 417
    :cond_1
    invoke-static {}, Lcom/coderpage/lib/permission/PermissionUtils;->access$000()Lcom/coderpage/lib/permission/PermissionUtils;

    move-result-object p2

    invoke-static {p2}, Lcom/coderpage/lib/permission/PermissionUtils;->access$200(Lcom/coderpage/lib/permission/PermissionUtils;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-gtz p2, :cond_2

    const-string p2, "mPermissionsRequest\'s size is no more than 0."

    .line 418
    invoke-static {p2}, Lcom/coderpage/lib/permission/PermissionUtils;->access$100(Ljava/lang/String;)V

    .line 419
    invoke-virtual {p1}, Lcom/coderpage/ui/activity/TransActivity;->finish()V

    return-void

    .line 422
    :cond_2
    invoke-static {}, Lcom/coderpage/lib/permission/PermissionUtils;->access$000()Lcom/coderpage/lib/permission/PermissionUtils;

    move-result-object p2

    invoke-static {p2}, Lcom/coderpage/lib/permission/PermissionUtils;->access$300(Lcom/coderpage/lib/permission/PermissionUtils;)Lcom/coderpage/lib/permission/PermissionUtils$ThemeCallback;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 423
    invoke-static {}, Lcom/coderpage/lib/permission/PermissionUtils;->access$000()Lcom/coderpage/lib/permission/PermissionUtils;

    move-result-object p2

    invoke-static {p2}, Lcom/coderpage/lib/permission/PermissionUtils;->access$300(Lcom/coderpage/lib/permission/PermissionUtils;)Lcom/coderpage/lib/permission/PermissionUtils$ThemeCallback;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/coderpage/lib/permission/PermissionUtils$ThemeCallback;->onActivityCreate(Landroid/app/Activity;)V

    .line 425
    :cond_3
    invoke-static {}, Lcom/coderpage/lib/permission/PermissionUtils;->access$000()Lcom/coderpage/lib/permission/PermissionUtils;

    move-result-object p2

    invoke-static {p2}, Lcom/coderpage/lib/permission/PermissionUtils;->access$400(Lcom/coderpage/lib/permission/PermissionUtils;)Lcom/coderpage/lib/permission/PermissionUtils$OnExplainListener;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 426
    invoke-static {}, Lcom/coderpage/lib/permission/PermissionUtils;->access$000()Lcom/coderpage/lib/permission/PermissionUtils;

    move-result-object p2

    invoke-static {p2}, Lcom/coderpage/lib/permission/PermissionUtils;->access$400(Lcom/coderpage/lib/permission/PermissionUtils;)Lcom/coderpage/lib/permission/PermissionUtils$OnExplainListener;

    move-result-object p2

    invoke-static {}, Lcom/coderpage/lib/permission/PermissionUtils;->access$000()Lcom/coderpage/lib/permission/PermissionUtils;

    move-result-object v0

    invoke-static {v0}, Lcom/coderpage/lib/permission/PermissionUtils;->access$200(Lcom/coderpage/lib/permission/PermissionUtils;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/coderpage/lib/permission/PermissionUtils$PermissionActivityImpl$1;

    invoke-direct {v1, p0, p1}, Lcom/coderpage/lib/permission/PermissionUtils$PermissionActivityImpl$1;-><init>(Lcom/coderpage/lib/permission/PermissionUtils$PermissionActivityImpl;Lcom/coderpage/ui/activity/TransActivity;)V

    invoke-interface {p2, p1, v0, v1}, Lcom/coderpage/lib/permission/PermissionUtils$OnExplainListener;->explain(Lcom/coderpage/ui/activity/TransActivity;Ljava/util/List;Lcom/coderpage/lib/permission/PermissionUtils$OnExplainListener$ShouldRequest;)V

    .line 436
    invoke-static {}, Lcom/coderpage/lib/permission/PermissionUtils;->access$000()Lcom/coderpage/lib/permission/PermissionUtils;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/coderpage/lib/permission/PermissionUtils;->access$402(Lcom/coderpage/lib/permission/PermissionUtils;Lcom/coderpage/lib/permission/PermissionUtils$OnExplainListener;)Lcom/coderpage/lib/permission/PermissionUtils$OnExplainListener;

    return-void

    .line 439
    :cond_4
    invoke-direct {p0, p1}, Lcom/coderpage/lib/permission/PermissionUtils$PermissionActivityImpl;->requestPermissions(Lcom/coderpage/ui/activity/TransActivity;)V

    goto :goto_0

    :cond_5
    const/4 v0, 0x2

    if-ne p2, v0, :cond_6

    .line 441
    sput v0, Lcom/coderpage/lib/permission/PermissionUtils$PermissionActivityImpl;->currentRequestCode:I

    .line 442
    invoke-static {p1, v0}, Lcom/coderpage/lib/permission/PermissionUtils;->access$600(Landroid/app/Activity;I)V

    goto :goto_0

    :cond_6
    const/4 v0, 0x3

    if-ne p2, v0, :cond_7

    .line 444
    sput v0, Lcom/coderpage/lib/permission/PermissionUtils$PermissionActivityImpl;->currentRequestCode:I

    .line 445
    invoke-static {p1, v0}, Lcom/coderpage/lib/permission/PermissionUtils;->access$700(Landroid/app/Activity;I)V

    goto :goto_0

    .line 447
    :cond_7
    invoke-virtual {p1}, Lcom/coderpage/ui/activity/TransActivity;->finish()V

    const-string p1, "type is wrong."

    .line 448
    invoke-static {p1}, Lcom/coderpage/lib/permission/PermissionUtils;->access$100(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onDestroy(Lcom/coderpage/ui/activity/TransActivity;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "activity"
        }
    .end annotation

    .line 484
    sget v0, Lcom/coderpage/lib/permission/PermissionUtils$PermissionActivityImpl;->currentRequestCode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 485
    invoke-direct {p0, p1, v0}, Lcom/coderpage/lib/permission/PermissionUtils$PermissionActivityImpl;->checkRequestCallback(Landroid/content/Context;I)V

    .line 486
    sput v1, Lcom/coderpage/lib/permission/PermissionUtils$PermissionActivityImpl;->currentRequestCode:I

    .line 488
    :cond_0
    invoke-super {p0, p1}, Lcom/coderpage/ui/activity/TransActivity$Delegate;->onDestroy(Lcom/coderpage/ui/activity/TransActivity;)V

    return-void
.end method

.method public onRequestPermissionsResult(Lcom/coderpage/ui/activity/TransActivity;I[Ljava/lang/String;[I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "requestCode",
            "permissions",
            "grantResults"
        }
    .end annotation

    .line 469
    invoke-virtual {p1}, Lcom/coderpage/ui/activity/TransActivity;->finish()V

    .line 470
    invoke-static {}, Lcom/coderpage/lib/permission/PermissionUtils;->access$000()Lcom/coderpage/lib/permission/PermissionUtils;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/coderpage/lib/permission/PermissionUtils;->access$000()Lcom/coderpage/lib/permission/PermissionUtils;

    move-result-object p2

    invoke-static {p2}, Lcom/coderpage/lib/permission/PermissionUtils;->access$200(Lcom/coderpage/lib/permission/PermissionUtils;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 471
    invoke-static {}, Lcom/coderpage/lib/permission/PermissionUtils;->access$000()Lcom/coderpage/lib/permission/PermissionUtils;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/coderpage/lib/permission/PermissionUtils;->access$900(Lcom/coderpage/lib/permission/PermissionUtils;Landroid/app/Activity;)V

    :cond_0
    return-void
.end method
