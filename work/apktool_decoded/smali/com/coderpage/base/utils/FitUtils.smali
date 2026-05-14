.class public Lcom/coderpage/base/utils/FitUtils;
.super Ljava/lang/Object;
.source "FitUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coderpage/base/utils/FitUtils$Brand;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBrand()Lcom/coderpage/base/utils/FitUtils$Brand;
    .locals 3

    .line 42
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 43
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    sget-object v0, Lcom/coderpage/base/utils/FitUtils$Brand;->UNKNOWN:Lcom/coderpage/base/utils/FitUtils$Brand;

    return-object v0

    .line 46
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "samsung"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_1
    const-string v2, "nokia"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_2
    const-string v2, "meizu"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_3
    const-string v2, "vivo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_4
    const-string v2, "oppo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_5
    const-string v2, "xiaomi"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_6
    const-string v2, "huawei"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_7
    const-string v2, "google"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 72
    sget-object v0, Lcom/coderpage/base/utils/FitUtils$Brand;->UNKNOWN:Lcom/coderpage/base/utils/FitUtils$Brand;

    return-object v0

    .line 63
    :pswitch_0
    sget-object v0, Lcom/coderpage/base/utils/FitUtils$Brand;->SAMSUNG:Lcom/coderpage/base/utils/FitUtils$Brand;

    return-object v0

    .line 69
    :pswitch_1
    sget-object v0, Lcom/coderpage/base/utils/FitUtils$Brand;->NOKIA:Lcom/coderpage/base/utils/FitUtils$Brand;

    return-object v0

    .line 60
    :pswitch_2
    sget-object v0, Lcom/coderpage/base/utils/FitUtils$Brand;->MEI_ZU:Lcom/coderpage/base/utils/FitUtils$Brand;

    return-object v0

    .line 54
    :pswitch_3
    sget-object v0, Lcom/coderpage/base/utils/FitUtils$Brand;->VIVO:Lcom/coderpage/base/utils/FitUtils$Brand;

    return-object v0

    .line 57
    :pswitch_4
    sget-object v0, Lcom/coderpage/base/utils/FitUtils$Brand;->OPPO:Lcom/coderpage/base/utils/FitUtils$Brand;

    return-object v0

    .line 51
    :pswitch_5
    sget-object v0, Lcom/coderpage/base/utils/FitUtils$Brand;->XIAO_MI:Lcom/coderpage/base/utils/FitUtils$Brand;

    return-object v0

    .line 48
    :pswitch_6
    sget-object v0, Lcom/coderpage/base/utils/FitUtils$Brand;->HUAWEI:Lcom/coderpage/base/utils/FitUtils$Brand;

    return-object v0

    .line 66
    :pswitch_7
    sget-object v0, Lcom/coderpage/base/utils/FitUtils$Brand;->NEXUS:Lcom/coderpage/base/utils/FitUtils$Brand;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x49eca1c7 -> :sswitch_7
        -0x47e95e19 -> :sswitch_6
        -0x2d450b45 -> :sswitch_5
        0x3427a0 -> :sswitch_4
        0x373cac -> :sswitch_3
        0x62f84cc -> :sswitch_2
        0x6422d62 -> :sswitch_1
        0x6f28bffa -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isWindowHasFringe(Landroid/content/Context;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 78
    invoke-static {}, Lcom/coderpage/base/utils/FitUtils;->getBrand()Lcom/coderpage/base/utils/FitUtils$Brand;

    move-result-object v0

    .line 80
    sget-object v1, Lcom/coderpage/base/utils/FitUtils$1;->$SwitchMap$com$coderpage$base$utils$FitUtils$Brand:[I

    invoke-virtual {v0}, Lcom/coderpage/base/utils/FitUtils$Brand;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 91
    :cond_0
    invoke-static {p0}, Lcom/coderpage/base/utils/FitUtils;->isWindowHasFringeHuawei(Landroid/content/Context;)Z

    move-result p0

    return p0

    .line 88
    :cond_1
    invoke-static {}, Lcom/coderpage/base/utils/FitUtils;->isWindowHasFringeVivo()Z

    move-result p0

    return p0

    .line 85
    :cond_2
    invoke-static {p0}, Lcom/coderpage/base/utils/FitUtils;->isWindowHasFringeOppo(Landroid/content/Context;)Z

    move-result p0

    return p0

    .line 82
    :cond_3
    invoke-static {}, Lcom/coderpage/base/utils/FitUtils;->isWindowHasFringeXiaoMi()Z

    move-result p0

    return p0
.end method

.method private static isWindowHasFringeHuawei(Landroid/content/Context;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 v0, 0x0

    .line 152
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const-string v1, "com.huawei.android.util.HwNotchSizeUtil"

    .line 153
    invoke-virtual {p0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v1, "hasNotchInScreen"

    new-array v2, v0, [Ljava/lang/Class;

    .line 154
    invoke-virtual {p0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    .line 155
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method private static isWindowHasFringeOppo(Landroid/content/Context;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 138
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.oppo.feature.screen.heteromorphism"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isWindowHasFringeVivo()Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.util.FtFeature"

    .line 122
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "isFeatureSupport"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 123
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v4, 0x20

    .line 124
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v0
.end method

.method private static isWindowHasFringeXiaoMi()Z
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.os.SystemProperties"

    .line 104
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getInt"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    .line 105
    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "ro.miui.notch"

    aput-object v4, v3, v0

    .line 106
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v6, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method
