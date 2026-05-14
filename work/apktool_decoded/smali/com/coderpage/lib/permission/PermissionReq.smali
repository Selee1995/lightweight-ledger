.class public Lcom/coderpage/lib/permission/PermissionReq;
.super Ljava/lang/Object;
.source "PermissionReq.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coderpage/lib/permission/PermissionReq$DeniedForeverTip;,
        Lcom/coderpage/lib/permission/PermissionReq$Listener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 31
    invoke-static {p0}, Lcom/coderpage/lib/permission/PermissionReq;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 31
    invoke-static {p0, p1}, Lcom/coderpage/lib/permission/PermissionReq;->getPermissionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getAppName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 182
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 183
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    .line 184
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 186
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method

.method private static getPermissionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "permission"
        }
    .end annotation

    .line 192
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_7

    if-nez p0, :cond_0

    goto :goto_2

    :cond_0
    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 195
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/coderpage/lib/permission/R$string;->libPermissionPhoneState:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 198
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 199
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, "android.permission.CAMERA"

    .line 202
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 203
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/coderpage/lib/permission/R$string;->libPermissionCamera:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 205
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 206
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 207
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    return-object v1

    .line 208
    :cond_5
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/coderpage/lib/permission/R$string;->libPermissionLoc:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 200
    :cond_6
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/coderpage/lib/permission/R$string;->libPermissionStorage:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    :goto_2
    return-object v1
.end method

.method public static varargs isGranted(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "permissionArr"
        }
    .end annotation

    .line 34
    invoke-static {p0, p1}, Lcom/coderpage/lib/permission/PermissionUtils;->isGranted(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$request$0(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/coderpage/ui/activity/TransActivity;Ljava/util/List;Lcom/coderpage/lib/permission/PermissionUtils$OnExplainListener$ShouldRequest;)V
    .locals 0

    .line 60
    invoke-static {p3, p0, p1, p2}, Lcom/coderpage/lib/permission/PermissionReq;->showExplainDesc(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    const/4 p0, 0x1

    .line 61
    invoke-interface {p5, p0}, Lcom/coderpage/lib/permission/PermissionUtils$OnExplainListener$ShouldRequest;->start(Z)V

    return-void
.end method

.method static synthetic lambda$request$1(Lcom/coderpage/ui/activity/TransActivity;Lcom/coderpage/lib/permission/PermissionUtils$OnRationaleListener$ShouldRequest;)V
    .locals 0

    const/4 p0, 0x1

    .line 63
    invoke-interface {p1, p0}, Lcom/coderpage/lib/permission/PermissionUtils$OnRationaleListener$ShouldRequest;->again(Z)V

    return-void
.end method

.method public static request(Landroid/content/Context;[Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/coderpage/lib/permission/PermissionReq$Listener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "context",
            "permission",
            "tipIcon",
            "tipTile",
            "tipDesc",
            "tipRefusedDesc",
            "listener"
        }
    .end annotation

    .line 44
    invoke-static {p1}, Lcom/coderpage/lib/permission/PermissionUtils;->permission([Ljava/lang/String;)Lcom/coderpage/lib/permission/PermissionUtils;

    move-result-object v0

    new-instance v1, Lcom/coderpage/lib/permission/PermissionReq$1;

    invoke-direct {v1, p1, p6, p0, p5}, Lcom/coderpage/lib/permission/PermissionReq$1;-><init>([Ljava/lang/String;Lcom/coderpage/lib/permission/PermissionReq$Listener;Landroid/content/Context;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Lcom/coderpage/lib/permission/PermissionUtils;->callback(Lcom/coderpage/lib/permission/PermissionUtils$FullCallback;)Lcom/coderpage/lib/permission/PermissionUtils;

    move-result-object p1

    new-instance p5, Lcom/coderpage/lib/permission/-$$Lambda$PermissionReq$IFU9sG7brvZrW3Jibz0bMckYj-Q;

    invoke-direct {p5, p2, p3, p4}, Lcom/coderpage/lib/permission/-$$Lambda$PermissionReq$IFU9sG7brvZrW3Jibz0bMckYj-Q;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 59
    invoke-virtual {p1, p5}, Lcom/coderpage/lib/permission/PermissionUtils;->explain(Lcom/coderpage/lib/permission/PermissionUtils$OnExplainListener;)Lcom/coderpage/lib/permission/PermissionUtils;

    move-result-object p1

    sget-object p2, Lcom/coderpage/lib/permission/-$$Lambda$PermissionReq$lXx7K0VC8RxJkvxcTCmUO2Ao7-Y;->INSTANCE:Lcom/coderpage/lib/permission/-$$Lambda$PermissionReq$lXx7K0VC8RxJkvxcTCmUO2Ao7-Y;

    .line 62
    invoke-virtual {p1, p2}, Lcom/coderpage/lib/permission/PermissionUtils;->rationale(Lcom/coderpage/lib/permission/PermissionUtils$OnRationaleListener;)Lcom/coderpage/lib/permission/PermissionUtils;

    move-result-object p1

    .line 64
    invoke-virtual {p1, p0}, Lcom/coderpage/lib/permission/PermissionUtils;->request(Landroid/content/Context;)V

    return-void
.end method

.method private static showExplainDesc(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10,
            0x10
        }
        names = {
            "activity",
            "tipIcon",
            "tipTitle",
            "tipDesc"
        }
    .end annotation

    if-eqz p0, :cond_8

    .line 75
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const v0, 0x1020002

    .line 78
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 79
    instance-of v1, v0, Landroid/widget/FrameLayout;

    if-nez v1, :cond_1

    return-void

    .line 82
    :cond_1
    check-cast v0, Landroid/widget/FrameLayout;

    .line 83
    sget v1, Lcom/coderpage/lib/permission/R$id;->lib_permission_explain_container:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 86
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0x8

    if-nez v2, :cond_7

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    if-nez v1, :cond_3

    .line 94
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget v1, Lcom/coderpage/lib/permission/R$layout;->lib_permission_explain:I

    invoke-virtual {p0, v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    :cond_3
    const/4 p0, 0x4

    .line 96
    invoke-virtual {v1, p0}, Landroid/view/View;->setVisibility(I)V

    .line 98
    sget p0, Lcom/coderpage/lib/permission/R$id;->lib_permission_icon:I

    invoke-virtual {v1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    .line 99
    sget v4, Lcom/coderpage/lib/permission/R$id;->lib_permission_title:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 100
    sget v5, Lcom/coderpage/lib/permission/R$id;->lib_permission_desc:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    .line 102
    :goto_0
    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p1, :cond_5

    .line 104
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 106
    :cond_5
    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    invoke-virtual {v5, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 110
    instance-of p1, p0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p1, :cond_6

    .line 111
    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 p1, 0x30

    iput p1, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 114
    :cond_6
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 117
    sget-object p0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {v1, p0, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 118
    new-instance p1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 p1, 0xc8

    .line 119
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 120
    new-instance p1, Lcom/coderpage/lib/permission/PermissionReq$2;

    invoke-direct {p1, v1}, Lcom/coderpage/lib/permission/PermissionReq$2;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 141
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :cond_7
    :goto_1
    if-eqz v1, :cond_8

    .line 88
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    :goto_2
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
