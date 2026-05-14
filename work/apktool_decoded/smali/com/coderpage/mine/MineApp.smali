.class public Lcom/coderpage/mine/MineApp;
.super Landroid/app/Application;
.source "MineApp.java"


# static fields
.field private static mAppContext:Lcom/coderpage/mine/MineApp;


# instance fields
.field private mActivityCount:I

.field private mActivityLifecycleCallback:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private final mActivityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcom/coderpage/mine/MineApp;->mActivityCount:I

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/coderpage/mine/MineApp;->mActivityList:Ljava/util/List;

    .line 104
    new-instance v0, Lcom/coderpage/mine/MineApp$1;

    invoke-direct {v0, p0}, Lcom/coderpage/mine/MineApp$1;-><init>(Lcom/coderpage/mine/MineApp;)V

    iput-object v0, p0, Lcom/coderpage/mine/MineApp;->mActivityLifecycleCallback:Landroid/app/Application$ActivityLifecycleCallbacks;

    return-void
.end method

.method static synthetic access$000(Lcom/coderpage/mine/MineApp;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/coderpage/mine/MineApp;->mActivityCount:I

    return p0
.end method

.method static synthetic access$008(Lcom/coderpage/mine/MineApp;)I
    .locals 2

    .line 31
    iget v0, p0, Lcom/coderpage/mine/MineApp;->mActivityCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/coderpage/mine/MineApp;->mActivityCount:I

    return v0
.end method

.method static synthetic access$010(Lcom/coderpage/mine/MineApp;)I
    .locals 2

    .line 31
    iget v0, p0, Lcom/coderpage/mine/MineApp;->mActivityCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/coderpage/mine/MineApp;->mActivityCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/coderpage/mine/MineApp;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/coderpage/mine/MineApp;->onAppGoForeground()V

    return-void
.end method

.method static synthetic access$200(Lcom/coderpage/mine/MineApp;)Ljava/util/List;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/coderpage/mine/MineApp;->mActivityList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/coderpage/mine/MineApp;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/coderpage/mine/MineApp;->onAppGoBackground()V

    return-void
.end method

.method public static getAppContext()Lcom/coderpage/mine/MineApp;
    .locals 1

    .line 72
    sget-object v0, Lcom/coderpage/mine/MineApp;->mAppContext:Lcom/coderpage/mine/MineApp;

    return-object v0
.end method

.method private initLoadingLayout()V
    .locals 9

    .line 80
    invoke-static {}, Lcom/coderpage/base/widget/LoadingLayout;->getGlobalConfig()Landroid/util/SparseArray;

    move-result-object v0

    .line 82
    new-instance v1, Lcom/coderpage/base/widget/LoadingLayout$Config;

    invoke-direct {v1}, Lcom/coderpage/base/widget/LoadingLayout$Config;-><init>()V

    const v2, 0x7f080107

    .line 83
    invoke-virtual {v1, v2}, Lcom/coderpage/base/widget/LoadingLayout$Config;->setIconRes(I)Lcom/coderpage/base/widget/LoadingLayout$Config;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    const v5, 0x7f0e005a

    .line 84
    invoke-static {p0, v5, v4}, Lcom/coderpage/base/utils/UIUtils;->getString(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/coderpage/base/widget/LoadingLayout$Config;->setMessage(Ljava/lang/String;)Lcom/coderpage/base/widget/LoadingLayout$Config;

    const v4, 0x7f0f0108

    .line 85
    invoke-virtual {v1, v4}, Lcom/coderpage/base/widget/LoadingLayout$Config;->setMessageTextStyle(I)Lcom/coderpage/base/widget/LoadingLayout$Config;

    const v5, 0x7f080060

    .line 86
    invoke-virtual {v1, v5}, Lcom/coderpage/base/widget/LoadingLayout$Config;->setButtonPositiveBackgroundRes(I)Lcom/coderpage/base/widget/LoadingLayout$Config;

    new-array v6, v3, [Ljava/lang/Object;

    const v7, 0x7f0e0058

    .line 87
    invoke-static {p0, v7, v6}, Lcom/coderpage/base/utils/UIUtils;->getString(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/coderpage/base/widget/LoadingLayout$Config;->setButtonPositiveText(Ljava/lang/String;)Lcom/coderpage/base/widget/LoadingLayout$Config;

    const v6, 0x7f0f0109

    .line 88
    invoke-virtual {v1, v6}, Lcom/coderpage/base/widget/LoadingLayout$Config;->setButtonPositiveTextStyle(I)Lcom/coderpage/base/widget/LoadingLayout$Config;

    .line 90
    new-instance v7, Lcom/coderpage/base/widget/LoadingLayout$Config;

    invoke-direct {v7}, Lcom/coderpage/base/widget/LoadingLayout$Config;-><init>()V

    .line 91
    invoke-virtual {v7, v2}, Lcom/coderpage/base/widget/LoadingLayout$Config;->setIconRes(I)Lcom/coderpage/base/widget/LoadingLayout$Config;

    new-array v2, v3, [Ljava/lang/Object;

    const v8, 0x7f0e005b

    .line 92
    invoke-static {p0, v8, v2}, Lcom/coderpage/base/utils/UIUtils;->getString(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/coderpage/base/widget/LoadingLayout$Config;->setMessage(Ljava/lang/String;)Lcom/coderpage/base/widget/LoadingLayout$Config;

    .line 93
    invoke-virtual {v7, v4}, Lcom/coderpage/base/widget/LoadingLayout$Config;->setMessageTextStyle(I)Lcom/coderpage/base/widget/LoadingLayout$Config;

    .line 94
    invoke-virtual {v7, v5}, Lcom/coderpage/base/widget/LoadingLayout$Config;->setButtonPositiveBackgroundRes(I)Lcom/coderpage/base/widget/LoadingLayout$Config;

    new-array v2, v3, [Ljava/lang/Object;

    const v4, 0x7f0e0059

    .line 95
    invoke-static {p0, v4, v2}, Lcom/coderpage/base/utils/UIUtils;->getString(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/coderpage/base/widget/LoadingLayout$Config;->setButtonPositiveText(Ljava/lang/String;)Lcom/coderpage/base/widget/LoadingLayout$Config;

    .line 96
    invoke-virtual {v7, v6}, Lcom/coderpage/base/widget/LoadingLayout$Config;->setButtonPositiveTextStyle(I)Lcom/coderpage/base/widget/LoadingLayout$Config;

    .line 98
    new-instance v2, Lcom/coderpage/base/widget/LoadingLayout$Config;

    invoke-direct {v2}, Lcom/coderpage/base/widget/LoadingLayout$Config;-><init>()V

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 99
    new-instance v2, Lcom/coderpage/base/widget/LoadingLayout$Config;

    invoke-direct {v2}, Lcom/coderpage/base/widget/LoadingLayout$Config;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/4 v2, 0x2

    .line 100
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/4 v1, 0x3

    .line 101
    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$exit$0(IILjava/lang/ref/WeakReference;)V
    .locals 0

    .line 153
    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    if-eqz p0, :cond_1

    .line 154
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 157
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method private onAppGoBackground()V
    .locals 2

    .line 167
    invoke-static {}, Lcom/coderpage/mine/MineApp;->getAppContext()Lcom/coderpage/mine/MineApp;

    move-result-object v0

    invoke-static {v0}, Lcom/coderpage/mine/app/tally/persistence/preference/SettingPreference;->isFingerprintSecretOpen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    invoke-static {}, Lcom/coderpage/mine/Global;->getInstance()Lcom/coderpage/mine/Global;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coderpage/mine/Global;->setNeedFingerprint(Z)V

    :cond_0
    return-void
.end method

.method private onAppGoForeground()V
    .locals 2

    .line 174
    invoke-static {}, Lcom/coderpage/mine/Global;->getInstance()Lcom/coderpage/mine/Global;

    move-result-object v0

    invoke-static {}, Lcom/coderpage/mine/MineApp;->getAppContext()Lcom/coderpage/mine/MineApp;

    move-result-object v1

    invoke-static {v1}, Lcom/coderpage/mine/app/tally/persistence/preference/SettingPreference;->isFingerprintSecretOpen(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coderpage/mine/Global;->setNeedFingerprint(Z)V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "base"
        }
    .end annotation

    .line 67
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 68
    invoke-static {p0}, Landroid/support/multidex/MultiDex;->install(Landroid/content/Context;)V

    return-void
.end method

.method public exit()V
    .locals 2

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/coderpage/mine/MineApp;->mActivityList:Ljava/util/List;

    sget-object v1, Lcom/coderpage/mine/-$$Lambda$MineApp$iEXN1foaYB6IpdQ69UBmrlD9KRQ;->INSTANCE:Lcom/coderpage/mine/-$$Lambda$MineApp$iEXN1foaYB6IpdQ69UBmrlD9KRQ;

    invoke-static {v0, v1}, Lcom/coderpage/base/utils/ArrayUtils;->forEach(Ljava/util/List;Lcom/coderpage/base/utils/ArrayUtils$Consumer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 160
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public initTd()V
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-static {p0, v0}, Lcom/coderpage/mine/Apm;->init(Landroid/content/Context;Lcom/coderpage/base/common/SimpleCallback;)V

    return-void
.end method

.method public onCreate()V
    .locals 1

    .line 40
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 41
    sput-object p0, Lcom/coderpage/mine/MineApp;->mAppContext:Lcom/coderpage/mine/MineApp;

    .line 42
    invoke-static {p0}, Lcom/coderpage/mine/Global;->init(Landroid/content/Context;)V

    .line 44
    invoke-static {p0}, Lcom/tencent/mmkv/MMKV;->initialize(Landroid/content/Context;)Ljava/lang/String;

    .line 45
    invoke-static {}, Lcom/coderpage/framework/Framework;->onAppOnCreate()V

    .line 51
    invoke-static {}, Lcom/coderpage/mine/persistence/kv/KvCache;->isAgreePrivacyProtocol()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/coderpage/mine/MineApp;->initTd()V

    :cond_0
    const/4 v0, 0x1

    .line 55
    invoke-static {v0}, Landroid/support/v7/app/AppCompatDelegate;->setCompatVectorFromResourcesEnabled(Z)V

    .line 57
    invoke-static {p0}, Lcom/coderpage/mine/app/tally/update/UpdateUtils;->startNewClientVersionCheckBackground(Landroid/content/Context;)V

    .line 59
    invoke-direct {p0}, Lcom/coderpage/mine/MineApp;->initLoadingLayout()V

    .line 61
    invoke-static {p0}, Lcom/alibaba/android/arouter/launcher/ARouter;->init(Landroid/app/Application;)V

    .line 62
    iget-object v0, p0, Lcom/coderpage/mine/MineApp;->mActivityLifecycleCallback:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p0, v0}, Lcom/coderpage/mine/MineApp;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method
