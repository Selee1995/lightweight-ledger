.class public Lcom/coderpage/base/utils/StatusBarUtils;
.super Ljava/lang/Object;
.source "StatusBarUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setStatusBarColor(Landroid/app/Activity;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "colorResId"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 97
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 98
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/coderpage/base/utils/ResUtils;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_0

    .line 100
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    .line 101
    new-instance v0, Lcom/coderpage/base/utils/SystemBarTintManager;

    invoke-direct {v0, p0}, Lcom/coderpage/base/utils/SystemBarTintManager;-><init>(Landroid/app/Activity;)V

    const/4 p0, 0x1

    .line 102
    invoke-virtual {v0, p0}, Lcom/coderpage/base/utils/SystemBarTintManager;->setStatusBarTintEnabled(Z)V

    .line 103
    invoke-virtual {v0, p1}, Lcom/coderpage/base/utils/SystemBarTintManager;->setStatusBarTintResource(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static setStatusBarColor(Landroid/view/Window;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "window",
            "colorResId"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 85
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 86
    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/coderpage/base/utils/ResUtils;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_1
    return-void
.end method

.method public static setStatusBarDarkMode(Landroid/view/Window;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "window",
            "statusBarColor"
        }
    .end annotation

    .line 57
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    return-void

    .line 63
    :cond_0
    invoke-static {}, Lcom/coderpage/base/utils/FitUtils;->getBrand()Lcom/coderpage/base/utils/FitUtils$Brand;

    move-result-object v0

    .line 64
    sget-object v1, Lcom/coderpage/base/utils/FitUtils$Brand;->XIAO_MI:Lcom/coderpage/base/utils/FitUtils$Brand;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 66
    invoke-static {p0, v2}, Lcom/coderpage/base/utils/StatusBarUtils;->setStatusBarLightModeMIUI(Landroid/view/Window;Z)Z

    goto :goto_0

    .line 67
    :cond_1
    sget-object v1, Lcom/coderpage/base/utils/FitUtils$Brand;->MEI_ZU:Lcom/coderpage/base/utils/FitUtils$Brand;

    if-ne v0, v1, :cond_2

    .line 69
    invoke-static {p0, v2}, Lcom/coderpage/base/utils/StatusBarUtils;->setStatusBarLightModeFlyMe(Landroid/view/Window;Z)Z

    goto :goto_0

    .line 72
    :cond_2
    invoke-static {p0, v2}, Lcom/coderpage/base/utils/StatusBarUtils;->setStatusBarLightModeOrigin(Landroid/view/Window;Z)V

    .line 75
    :goto_0
    invoke-static {p0, p1}, Lcom/coderpage/base/utils/StatusBarUtils;->setStatusBarColor(Landroid/view/Window;I)V

    return-void
.end method

.method public static setStatusBarLightMode(Landroid/view/Window;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "window",
            "statusBarColor"
        }
    .end annotation

    .line 26
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    return-void

    .line 32
    :cond_0
    invoke-static {}, Lcom/coderpage/base/utils/FitUtils;->getBrand()Lcom/coderpage/base/utils/FitUtils$Brand;

    move-result-object v0

    .line 33
    sget-object v1, Lcom/coderpage/base/utils/FitUtils$Brand;->XIAO_MI:Lcom/coderpage/base/utils/FitUtils$Brand;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 35
    invoke-static {p0, v2}, Lcom/coderpage/base/utils/StatusBarUtils;->setStatusBarLightModeMIUI(Landroid/view/Window;Z)Z

    move-result v2

    goto :goto_0

    .line 36
    :cond_1
    sget-object v1, Lcom/coderpage/base/utils/FitUtils$Brand;->MEI_ZU:Lcom/coderpage/base/utils/FitUtils$Brand;

    if-ne v0, v1, :cond_2

    .line 38
    invoke-static {p0, v2}, Lcom/coderpage/base/utils/StatusBarUtils;->setStatusBarLightModeFlyMe(Landroid/view/Window;Z)Z

    move-result v2

    goto :goto_0

    .line 41
    :cond_2
    invoke-static {p0, v2}, Lcom/coderpage/base/utils/StatusBarUtils;->setStatusBarLightModeOrigin(Landroid/view/Window;Z)V

    :goto_0
    if-eqz v2, :cond_3

    .line 46
    invoke-static {p0, p1}, Lcom/coderpage/base/utils/StatusBarUtils;->setStatusBarColor(Landroid/view/Window;I)V

    :cond_3
    return-void
.end method

.method private static setStatusBarLightModeFlyMe(Landroid/view/Window;Z)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "window",
            "lightMode"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    .line 119
    :try_start_0
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 120
    const-class v2, Landroid/view/WindowManager$LayoutParams;

    const-string v3, "MEIZU_FLAG_DARK_STATUS_BAR_ICON"

    .line 121
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 122
    const-class v3, Landroid/view/WindowManager$LayoutParams;

    const-string v4, "meizuFlags"

    .line 123
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 124
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 125
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v4, 0x0

    .line 126
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    .line 127
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    if-eqz p1, :cond_0

    or-int p1, v4, v2

    goto :goto_0

    :cond_0
    xor-int/lit8 p1, v2, -0x1

    and-int/2addr p1, v4

    .line 133
    :goto_0
    invoke-virtual {v3, v1, p1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 134
    invoke-virtual {p0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 137
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method private static setStatusBarLightModeMIUI(Landroid/view/Window;Z)Z
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "window",
            "lightMode"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    .line 152
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    :try_start_0
    const-string v3, "android.view.MiuiWindowManager$LayoutParams"

    .line 155
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "EXTRA_FLAG_STATUS_BAR_DARK_MODE"

    .line 156
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 157
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    const-string v4, "setExtraFlags"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    .line 158
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v0

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz p1, :cond_0

    new-array v4, v5, [Ljava/lang/Object;

    .line 160
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v0

    invoke-virtual {v2, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-array v4, v5, [Ljava/lang/Object;

    .line 162
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v0

    invoke-virtual {v2, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 167
    :goto_0
    :try_start_1
    invoke-static {p0, p1}, Lcom/coderpage/base/utils/StatusBarUtils;->setStatusBarLightModeOrigin(Landroid/view/Window;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    const/4 v0, 0x0

    .line 169
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_2
    return v0
.end method

.method private static setStatusBarLightModeOrigin(Landroid/view/Window;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "window",
            "lightMode"
        }
    .end annotation

    .line 177
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    return-void

    .line 180
    :cond_0
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    .line 181
    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    if-eqz p1, :cond_1

    and-int/lit16 v1, v0, 0x2000

    if-nez v1, :cond_1

    or-int/lit16 v0, v0, 0x2000

    :cond_1
    if-nez p1, :cond_2

    and-int/lit16 p1, v0, 0x2000

    if-eqz p1, :cond_2

    xor-int/lit16 v0, v0, 0x2000

    .line 192
    :cond_2
    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method
