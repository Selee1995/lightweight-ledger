.class public Lcom/coderpage/base/utils/SystemBarTintManager;
.super Ljava/lang/Object;
.source "SystemBarTintManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coderpage/base/utils/SystemBarTintManager$SystemBarConfig;
    }
.end annotation


# static fields
.field public static final DEFAULT_TINT_COLOR:I = -0x67000000

.field private static sNavBarOverride:Ljava/lang/String;


# instance fields
.field private final mConfig:Lcom/coderpage/base/utils/SystemBarTintManager$SystemBarConfig;

.field private mNavBarAvailable:Z

.field private mNavBarTintEnabled:Z

.field private mNavBarTintView:Landroid/view/View;

.field private mStatusBarAvailable:Z

.field private mStatusBarTintEnabled:Z

.field private mStatusBarTintView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 50
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.os.SystemProperties"

    .line 52
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "get"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 53
    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 54
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "qemu.hw.mainkeys"

    aput-object v3, v2, v6

    .line 55
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sput-object v1, Lcom/coderpage/base/utils/SystemBarTintManager;->sNavBarOverride:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 57
    :catchall_0
    sput-object v0, Lcom/coderpage/base/utils/SystemBarTintManager;->sNavBarOverride:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 91
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x0

    const/16 v4, 0x13

    if-lt v2, v4, :cond_1

    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 93
    fill-array-data v2, :array_0

    .line 95
    invoke-virtual {p1, v2}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 97
    :try_start_0
    invoke-virtual {v2, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/coderpage/base/utils/SystemBarTintManager;->mStatusBarAvailable:Z

    const/4 v4, 0x1

    .line 98
    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/coderpage/base/utils/SystemBarTintManager;->mNavBarAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 104
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/high16 v2, 0x4000000

    .line 106
    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v2, v5

    if-eqz v2, :cond_0

    .line 107
    iput-boolean v4, p0, Lcom/coderpage/base/utils/SystemBarTintManager;->mStatusBarAvailable:Z

    :cond_0
    const/high16 v2, 0x8000000

    .line 110
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    .line 111
    iput-boolean v4, p0, Lcom/coderpage/base/utils/SystemBarTintManager;->mNavBarAvailable:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 100
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 101
    throw p1

    .line 115
    :cond_1
    :goto_0
    new-instance v0, Lcom/coderpage/base/utils/SystemBarTintManager$SystemBarConfig;

    iget-boolean v2, p0, Lcom/coderpage/base/utils/SystemBarTintManager;->mStatusBarAvailable:Z

    iget-boolean v4, p0, Lcom/coderpage/base/utils/SystemBarTintManager;->mNavBarAvailable:Z

    const/4 v5, 0x0

    invoke-direct {v0, p1, v2, v4, v5}, Lcom/coderpage/base/utils/SystemBarTintManager$SystemBarConfig;-><init>(Landroid/app/Activity;ZZLcom/coderpage/base/utils/SystemBarTintManager$1;)V

    iput-object v0, p0, Lcom/coderpage/base/utils/SystemBarTintManager;->mConfig:Lcom/coderpage/base/utils/SystemBarTintManager$SystemBarConfig;

    .line 117
    invoke-virtual {v0}, Lcom/coderpage/base/utils/SystemBarTintManager$SystemBarConfig;->hasNavigtionBar()Z

    move-result v0

    if-nez v0, :cond_2

    .line 118
    iput-boolean v3, p0, Lcom/coderpage/base/utils/SystemBarTintManager;->mNavBarAvailable:Z

    .line 121
    :cond_2
    iget-boolean v0, p0, Lcom/coderpage/base/utils/SystemBarTintManager;->mStatusBarAvailable:Z

    if-eqz v0, :cond_3

    .line 122
    invoke-direct {p0, p1, v1}, Lcom/coderpage/base/utils/SystemBarTintManager;->setupStatusBarView(Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 124
    :cond_3
    iget-boolean v0, p0, Lcom/coderpage/base/utils/SystemBarTintManager;->mNavBarAvailable:Z

    if-eqz v0, :cond_4

    .line 125
    invoke-direct {p0, p1, v1}, Lcom/coderpage/base/utils/SystemBarTintManager;->setupNavBarView(Landroid/content/Context;Landroid/view/ViewGroup;)V

    :cond_4
    return-void

    nop

    :array_0
    .array-data 4
        0x10103ef
        0x10103f0
    .end array-data
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 44
    sget-object v0, Lcom/coderpage/base/utils/SystemBarTintManager;->sNavBarOverride:Ljava/lang/String;

    return-object v0
.end method

.method private setupNavBarView(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "decorViewGroup"
        }
    .end annotation

    .line 335
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coderpage/base/utils/SystemBarTintManager;->mNavBarTintView:Landroid/view/View;

    .line 337
    iget-object p1, p0, Lcom/coderpage/base/utils/SystemBarTintManager;->mConfig:Lcom/coderpage/base/utils/SystemBarTintManager$SystemBarConfig;

    invoke-virtual {p1}, Lcom/coderpage/base/utils/SystemBarTintManager$SystemBarConfig;->isNavigationAtBottom()Z

    move-result p1

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    .line 338
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/coderpage/base/utils/SystemBarTintManager;->mConfig:Lcom/coderpage/base/utils/SystemBarTintManager$SystemBarConfig;

    invoke-virtual {v1}, Lcom/coderpage/base/utils/SystemBarTintManager$SystemBarConfig;->getNavigationBarHeight()I

    move-result v1

    invoke-direct {p1, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x50

    .line 339
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 341
    :cond_0
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/coderpage/base/utils/SystemBarTintManager;->mConfig:Lcom/coderpage/base/utils/SystemBarTintManager$SystemBarConfig;

    invoke-virtual {v1}, Lcom/coderpage/base/utils/SystemBarTintManager$SystemBarConfig;->getNavigationBarWidth()I

    move-result v1

    invoke-direct {p1, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v0, 0x5

    .line 342
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 344
    :goto_0
    iget-object v0, p0, Lcom/coderpage/base/utils/SystemBarTintManager;->mNavBarTintView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 345
    iget-object p1, p0, Lcom/coderpage/base/utils/SystemBarTintManager;->mNavBarTintView:Landroid/view/View;

    const/high16 v0, -0x67000000

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 346
    iget-object p1, p0, Lcom/coderpage/base/utils/SystemBarTintManager;->mNavBarTintView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 347
    iget-object p1, p0, Lcom/coderpage/base/utils/SystemBarTintManager;->mNavBarTintView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private setupStatusBarView(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "decorViewGroup"
        }
    .end annotation

    .line 322
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coderpage/base/utils/SystemBarTintManager;->mStatusBarTintView:Landroid/view/View;

    .line 323
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lcom/coderpage/base/utils/SystemBarTintManager;->mConfig:Lcom/coderpage/base/utils/SystemBarTintManager$SystemBarConfig;

    invoke-virtual {v0}, Lcom/coderpage/base/utils/SystemBarTintManager$SystemBarConfig;->getStatusBarHeight()I

    move-result v0

    const/4 v1, -0x1

    invoke-direct {p1, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x30

    .line 324
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 325
    iget-boolean v0, p0, Lcom/coderpage/base/utils/SystemBarTintManager;->mNavBarAvailable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coderpage/base/utils/SystemBarTintManager;->mConfig:Lcom/coderpage/base/utils/SystemBarTintManager$SystemBarConfig;

    invoke-virtual {v0}, Lcom/coderpage/base/utils/SystemBarTintManager$SystemBarConfig;->isNavigationAtBottom()Z

    move-result v0

    if-nez v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/coderpage/base/utils/SystemBarTintManager;->mConfig:Lcom/coderpage/base/utils/SystemBarTintManager$SystemBarConfig;

    invoke-virtual {v0}, Lcom/coderpage/base/utils/SystemBarTintManager$SystemBarConfig;->getNavigationBarWidth()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/coderpage/base/utils/SystemBarTintManager;->mStatusBarTintView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 329
    iget-object p1, p0, Lcom/coderpage/base/utils/SystemBarTintManager;->mStatusBarTintView:Landroid/view/View;

    const/high16 v0, -0x67000000

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 330
    iget-object p1, p0, Lcom/coderpage/base/utils/SystemBarTintManager;->mStatusBarTintView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 331
    iget-object p1, p0, Lcom/coderpage/base/utils/SystemBarTintManager;->mStatusBarTintView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getConfig()Lcom/coderpage/base/utils/SystemBarTintManager$SystemBarConfig;
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/coderpage/base/utils/SystemBarTintManager;->mConfig:Lcom/coderpage/base/utils/SystemBarTintManager$SystemBarConfig;

    return-object v0
.end method

.method public isNavBarTintEnabled()Z
    .locals 1

    .line 318
    iget-boolean v0, p0, Lcom/coderpage/base/utils/SystemBarTintManager;->mNavBarTintEnabled:Z

    return v0
.end method

.method public isStatusBarTintEnabled()Z
    .locals 1

    .line 309
    iget-boolean v0, p0, Lcom/coderpage/base/utils/SystemBarTintManager;->mStatusBarTintEnabled:Z

    return v0
.end method

.method public setNavigationBarAlpha(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alpha"
        }
    .end annotation

    .line 289
    iget-boolean v0, p0, Lcom/coderpage/base/utils/SystemBarTintManager;->mNavBarAvailable:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 290
    iget-object v0, p0, Lcom/coderpage/base/utils/SystemBarTintManager;->mNavBarTintView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public setNavigationBarTintColor(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 254
    iget-boolean v0, p0, Lcom/coderpage/base/utils/SystemBarTintManager;->mNavBarAvailable:Z

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/coderpage/base/utils/SystemBarTintManager;->mNavBarTintView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public setNavigationBarTintDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawable"
        }
    .end annotation

    .line 277
    iget-boolean v0, p0, Lcom/coderpage/base/utils/SystemBarTintManager;->mNavBarAvailable:Z

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/coderpage/base/utils/SystemBarTintManager;->mNavBarTintView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setNavigationBarTintEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 156
    iput-boolean p1, p0, Lcom/coderpage/base/utils/SystemBarTintManager;->mNavBarTintEnabled:Z

    .line 157
    iget-boolean v0, p0, Lcom/coderpage/base/utils/SystemBarTintManager;->mNavBarAvailable:Z

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/coderpage/base/utils/SystemBarTintManager;->mNavBarTintView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setNavigationBarTintResource(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "res"
        }
    .end annotation

    .line 265
    iget-boolean v0, p0, Lcom/coderpage/base/utils/SystemBarTintManager;->mNavBarAvailable:Z

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/coderpage/base/utils/SystemBarTintManager;->mNavBarTintView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method public setStatusBarAlpha(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alpha"
        }
    .end annotation

    .line 243
    iget-boolean v0, p0, Lcom/coderpage/base/utils/SystemBarTintManager;->mStatusBarAvailable:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 244
    iget-object v0, p0, Lcom/coderpage/base/utils/SystemBarTintManager;->mStatusBarTintView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public setStatusBarTintColor(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 208
    iget-boolean v0, p0, Lcom/coderpage/base/utils/SystemBarTintManager;->mStatusBarAvailable:Z

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/coderpage/base/utils/SystemBarTintManager;->mStatusBarTintView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public setStatusBarTintDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawable"
        }
    .end annotation

    .line 231
    iget-boolean v0, p0, Lcom/coderpage/base/utils/SystemBarTintManager;->mStatusBarAvailable:Z

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/coderpage/base/utils/SystemBarTintManager;->mStatusBarTintView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setStatusBarTintEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 140
    iput-boolean p1, p0, Lcom/coderpage/base/utils/SystemBarTintManager;->mStatusBarTintEnabled:Z

    .line 141
    iget-boolean v0, p0, Lcom/coderpage/base/utils/SystemBarTintManager;->mStatusBarAvailable:Z

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/coderpage/base/utils/SystemBarTintManager;->mStatusBarTintView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setStatusBarTintResource(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "res"
        }
    .end annotation

    .line 219
    iget-boolean v0, p0, Lcom/coderpage/base/utils/SystemBarTintManager;->mStatusBarAvailable:Z

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/coderpage/base/utils/SystemBarTintManager;->mStatusBarTintView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method public setTintAlpha(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alpha"
        }
    .end annotation

    .line 198
    invoke-virtual {p0, p1}, Lcom/coderpage/base/utils/SystemBarTintManager;->setStatusBarAlpha(F)V

    .line 199
    invoke-virtual {p0, p1}, Lcom/coderpage/base/utils/SystemBarTintManager;->setNavigationBarAlpha(F)V

    return-void
.end method

.method public setTintColor(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 168
    invoke-virtual {p0, p1}, Lcom/coderpage/base/utils/SystemBarTintManager;->setStatusBarTintColor(I)V

    .line 169
    invoke-virtual {p0, p1}, Lcom/coderpage/base/utils/SystemBarTintManager;->setNavigationBarTintColor(I)V

    return-void
.end method

.method public setTintDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawable"
        }
    .end annotation

    .line 188
    invoke-virtual {p0, p1}, Lcom/coderpage/base/utils/SystemBarTintManager;->setStatusBarTintDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 189
    invoke-virtual {p0, p1}, Lcom/coderpage/base/utils/SystemBarTintManager;->setNavigationBarTintDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setTintResource(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "res"
        }
    .end annotation

    .line 178
    invoke-virtual {p0, p1}, Lcom/coderpage/base/utils/SystemBarTintManager;->setStatusBarTintResource(I)V

    .line 179
    invoke-virtual {p0, p1}, Lcom/coderpage/base/utils/SystemBarTintManager;->setNavigationBarTintResource(I)V

    return-void
.end method
