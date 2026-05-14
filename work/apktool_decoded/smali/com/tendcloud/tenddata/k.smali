.class public Lcom/tendcloud/tenddata/k;
.super Ljava/lang/Object;
.source "td"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tendcloud/tenddata/k$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

.field public static final b:Ljava/lang/String; = "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_min_freq"

.field public static final c:Ljava/lang/String; = "/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq"

.field private static final d:I = 0x36ee80

.field private static final e:Ljava/util/regex/Pattern;

.field private static final f:Ljava/util/regex/Pattern;

.field private static g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static h:Z

.field private static i:[I

.field private static final j:Ljava/io/FileFilter;

.field private static k:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "([0-9]+)"

    .line 54
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/tendcloud/tenddata/k;->e:Ljava/util/regex/Pattern;

    const-string v0, "\\s*([0-9]+)"

    .line 55
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/tendcloud/tenddata/k;->f:Ljava/util/regex/Pattern;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/k;->g:Ljava/util/List;

    const/4 v0, 0x0

    .line 58
    sput-boolean v0, Lcom/tendcloud/tenddata/k;->h:Z

    .line 590
    new-instance v0, Lcom/tendcloud/tenddata/k$1;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/k$1;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/k;->j:Ljava/io/FileFilter;

    .line 723
    new-instance v0, Lcom/tendcloud/tenddata/k$2;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/k$2;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/k;->k:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 5

    .line 543
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 549
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 550
    :try_start_1
    new-instance p0, Ljava/io/BufferedReader;

    invoke-direct {p0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 551
    :try_start_2
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 552
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/high16 v4, 0x6400000

    if-gt v3, v4, :cond_1

    .line 555
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 561
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 568
    :catchall_0
    :goto_0
    :try_start_4
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    goto :goto_3

    .line 553
    :cond_1
    :try_start_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v3, "Input stream more than 100 MB size limit"

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_1
    move-object p0, v0

    :catchall_2
    move-object v0, v2

    goto :goto_1

    :catchall_3
    move-object p0, v0

    :goto_1
    if-eqz v0, :cond_2

    .line 561
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_2

    :catchall_4
    nop

    :cond_2
    :goto_2
    if-eqz p0, :cond_3

    goto :goto_0

    :catchall_5
    :cond_3
    :goto_3
    return v1
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Android+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    .line 94
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "get"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 95
    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    .line 96
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 97
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    return-object p0

    :catchall_0
    move-exception p0

    .line 102
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object p1
.end method

.method private static a(Landroid/content/Context;I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 305
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 307
    :try_start_0
    invoke-static {p0}, Lcom/tendcloud/tenddata/k;->d(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const/4 v1, 0x0

    .line 317
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 319
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "pm list packages"

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 320
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 322
    :goto_0
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v4, 0x3a

    .line 323
    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 324
    invoke-virtual {p0, v1, p1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 325
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 327
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 333
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    goto :goto_2

    :catchall_1
    move-object v1, v3

    goto :goto_1

    :catchall_2
    nop

    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    :cond_1
    :goto_2
    return-object v0
.end method

.method public static a(Landroid/content/Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 6

    const-string v0, "*"

    .line 424
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 426
    iget v1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 427
    iget v2, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    const-string v3, "pixel"

    .line 428
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 430
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 428
    invoke-virtual {p1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "densityDpi"

    .line 431
    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-object p1
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2

    const/16 v0, 0x11

    const/4 v1, 0x0

    .line 204
    :try_start_0
    invoke-static {v0}, Lcom/tendcloud/tenddata/y;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "adb_enabled"

    .line 205
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez p0, :cond_0

    const/4 v1, 0x1

    :catchall_0
    :cond_0
    return v1
.end method

.method private static a([I)[I
    .locals 5

    const/4 v0, 0x2

    .line 697
    :try_start_0
    new-instance v1, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 698
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v3

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    div-int/lit16 v4, v4, 0x200

    mul-int v3, v3, v4

    div-int/2addr v3, v0

    aput v3, p0, v2

    const/4 v2, 0x1

    .line 699
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    div-int/lit16 v1, v1, 0x200

    mul-int v3, v3, v1

    div-int/2addr v3, v0

    aput v3, p0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 706
    :catchall_0
    :try_start_1
    new-instance v1, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 707
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v2

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    div-int/lit16 v3, v3, 0x200

    mul-int v2, v2, v3

    div-int/2addr v2, v0

    aput v2, p0, v0

    const/4 v2, 0x3

    .line 708
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    div-int/lit16 v1, v1, 0x200

    mul-int v3, v3, v1

    div-int/2addr v3, v0

    aput v3, p0, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    return-object p0
.end method

.method private static b(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, ""

    .line 781
    sget-object v2, Lcom/tendcloud/tenddata/k;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 782
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 783
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->toMatchResult()Ljava/util/regex/MatchResult;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 786
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 380
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "unknown"

    .line 381
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "alps"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "android"

    .line 382
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "sprd"

    .line 383
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "spreadtrum"

    .line 384
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "rockchip"

    .line 385
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "wondermedia"

    .line 386
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "mtk"

    .line 387
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "mt65"

    .line 388
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "nvidia"

    .line 389
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "brcm"

    .line 390
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "marvell"

    .line 391
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 392
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :catchall_0
    :cond_1
    :goto_0
    return-object v0
.end method

.method public static b(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 3

    .line 220
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "nfcStatus"

    .line 221
    invoke-static {p0}, Lcom/tendcloud/tenddata/k;->c(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "appsRegistedHCE"

    .line 222
    invoke-static {p0}, Lcom/tendcloud/tenddata/k;->t(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ssMode"

    .line 223
    invoke-static {p0}, Lcom/tendcloud/tenddata/k;->u(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1

    :try_start_0
    const-string v0, "brightness"

    .line 441
    invoke-static {p0}, Lcom/tendcloud/tenddata/k;->s(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-object p1
.end method

.method public static b()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.huawei.system.BuildEx"

    .line 72
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getOsBrand"

    new-array v3, v0, [Ljava/lang/Class;

    .line 73
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    const-string v2, "harmony"

    .line 77
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "SA.HasHarmonyOS"

    aput-object v3, v2, v0

    const/4 v3, 0x1

    .line 79
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v2}, Lcom/tendcloud/tenddata/h;->iForInternal([Ljava/lang/String;)V

    return v0
.end method

.method public static c(Landroid/content/Context;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/16 v1, 0xa

    .line 239
    :try_start_0
    invoke-static {v1}, Lcom/tendcloud/tenddata/y;->a(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "nfc"

    .line 240
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/NfcManager;

    .line 241
    invoke-virtual {v1}, Landroid/nfc/NfcManager;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 243
    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p0, 0x1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/16 v1, 0x13

    .line 246
    invoke-static {v1}, Lcom/tendcloud/tenddata/y;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "android.hardware.nfc.hce"

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_2

    const/4 p0, 0x3

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const/4 p0, 0x2

    const/4 v0, 0x2

    :catchall_0
    :cond_3
    :goto_0
    return v0
.end method

.method public static c()Ljava/lang/String;
    .locals 2

    const-string v0, "hw_sc.build.platform.version"

    const/4 v1, 0x0

    .line 89
    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/k;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 810
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 814
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p0, 0x400

    :try_start_1
    new-array v2, p0, [C

    .line 817
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v1, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    :goto_0
    const/4 v4, -0x1

    const/4 v5, 0x0

    .line 820
    invoke-virtual {v3, v2, v5, p0}, Ljava/io/BufferedReader;->read([CII)I

    move-result v6

    if-eq v4, v6, :cond_0

    .line 821
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2, v5, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 823
    :cond_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 824
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 831
    :catch_0
    :catchall_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d()Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    .line 116
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "uname -r"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 117
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 118
    :goto_0
    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v5, 0x200

    invoke-direct {v3, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 119
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 120
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 121
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 122
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v2, :cond_1

    .line 129
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 132
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 138
    :cond_1
    :goto_1
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    .line 141
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-object v4

    :catchall_2
    move-exception v1

    goto :goto_3

    :catchall_3
    move-exception v1

    move-object v3, v0

    goto :goto_3

    :catchall_4
    move-exception v1

    move-object v2, v0

    move-object v3, v2

    .line 125
    :goto_3
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    if-eqz v2, :cond_2

    .line 129
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception v1

    .line 132
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_4
    if-eqz v3, :cond_3

    .line 138
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    goto :goto_5

    :catchall_6
    move-exception v1

    .line 141
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_5
    return-object v0

    :catchall_7
    move-exception v0

    if-eqz v2, :cond_4

    .line 129
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    goto :goto_6

    :catchall_8
    move-exception v1

    .line 132
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_6
    if-eqz v3, :cond_5

    .line 138
    :try_start_9
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    goto :goto_7

    :catchall_9
    move-exception v1

    .line 141
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 142
    :cond_5
    :goto_7
    throw v0
.end method

.method public static declared-synchronized d(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/tendcloud/tenddata/k;

    monitor-enter v0

    .line 359
    :try_start_0
    sget-boolean v1, Lcom/tendcloud/tenddata/ab;->T:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    .line 360
    monitor-exit v0

    return-object p0

    .line 362
    :cond_0
    :try_start_1
    sget-boolean v1, Lcom/tendcloud/tenddata/k;->h:Z

    if-eqz v1, :cond_1

    .line 363
    sget-object p0, Lcom/tendcloud/tenddata/k;->g:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v0

    return-object p0

    .line 369
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x5

    .line 370
    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object p0

    sput-object p0, Lcom/tendcloud/tenddata/k;->g:Ljava/util/List;

    const/4 p0, 0x1

    .line 371
    sput-boolean p0, Lcom/tendcloud/tenddata/k;->h:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 375
    :catchall_0
    :try_start_3
    sget-object p0, Lcom/tendcloud/tenddata/k;->g:Ljava/util/List;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    .line 150
    :try_start_0
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const-string v0, ""

    return-object v0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const-string v0, "*"

    .line 450
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 452
    iget v1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 453
    iget v2, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 454
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 456
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static f(Landroid/content/Context;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_1

    .line 734
    :try_start_0
    sget-object p0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    if-eqz p0, :cond_0

    .line 735
    sget-object p0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    goto :goto_0

    :cond_0
    return v0

    .line 740
    :cond_1
    :goto_0
    sget-object v1, Lcom/tendcloud/tenddata/k;->k:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 745
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "level"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 747
    :goto_1
    sget-object v2, Lcom/tendcloud/tenddata/k;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    return v0
.end method

.method public static f()Ljava/lang/String;
    .locals 1

    .line 158
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static g(Landroid/content/Context;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_1

    .line 758
    :try_start_0
    sget-object p0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    if-eqz p0, :cond_0

    .line 759
    sget-object p0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    goto :goto_0

    :cond_0
    return v0

    .line 764
    :cond_1
    :goto_0
    sget-object v1, Lcom/tendcloud/tenddata/k;->k:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "status"

    .line 768
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 770
    :goto_1
    sget-object v2, Lcom/tendcloud/tenddata/k;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    return v0
.end method

.method public static g()Ljava/lang/String;
    .locals 1

    .line 162
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static h()Ljava/lang/String;
    .locals 1

    .line 166
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static h(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 3

    .line 862
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "mobile"

    .line 863
    invoke-static {p0}, Lcom/tendcloud/tenddata/k;->o(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "wifi"

    .line 864
    invoke-static {p0}, Lcom/tendcloud/tenddata/k;->k(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "gps"

    .line 865
    invoke-static {p0}, Lcom/tendcloud/tenddata/k;->j(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "telephone"

    .line 866
    invoke-static {p0}, Lcom/tendcloud/tenddata/k;->n(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "nfc"

    .line 867
    invoke-static {p0}, Lcom/tendcloud/tenddata/k;->m(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "bluetooth"

    .line 868
    invoke-static {p0}, Lcom/tendcloud/tenddata/k;->l(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "otg"

    .line 869
    invoke-static {p0}, Lcom/tendcloud/tenddata/k;->i(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static i()I
    .locals 2

    .line 170
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    const v1, 0x36ee80

    div-int/2addr v0, v1

    return v0
.end method

.method public static i(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_1

    .line 883
    sget-object p0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    if-eqz p0, :cond_0

    .line 884
    sget-object p0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    goto :goto_0

    :cond_0
    return v0

    .line 890
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string v1, "android.hardware.usb.host"

    .line 891
    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    const/4 v0, 0x1

    :catchall_0
    :cond_2
    return v0
.end method

.method public static j()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    .line 175
    :try_start_0
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 176
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/tendcloud/tenddata/k;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 177
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 178
    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/tendcloud/tenddata/k;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 180
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    if-nez v2, :cond_1

    move-object v2, v0

    :cond_1
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-object v0
.end method

.method public static j(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_1

    .line 904
    sget-object p0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    if-eqz p0, :cond_0

    .line 905
    sget-object p0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    goto :goto_0

    :cond_0
    return v0

    .line 911
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string v1, "android.hardware.location.gps"

    .line 912
    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    const/4 v0, 0x1

    :catchall_0
    :cond_2
    return v0
.end method

.method public static k()Ljava/lang/String;
    .locals 2

    const-string v0, "unknown"

    const/16 v1, 0xe

    .line 191
    :try_start_0
    invoke-static {v1}, Lcom/tendcloud/tenddata/y;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    invoke-static {}, Landroid/os/Build;->getRadioVersion()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-object v0
.end method

.method public static k(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_1

    .line 925
    sget-object p0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    if-eqz p0, :cond_0

    .line 926
    sget-object p0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    goto :goto_0

    :cond_0
    return v0

    .line 932
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string v1, "android.hardware.wifi"

    .line 933
    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    const/4 v0, 0x1

    :catchall_0
    :cond_2
    return v0
.end method

.method public static l()I
    .locals 1

    .line 407
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public static l(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_1

    .line 946
    sget-object p0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    if-eqz p0, :cond_0

    .line 947
    sget-object p0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    goto :goto_0

    :cond_0
    return v0

    .line 953
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string v1, "android.hardware.bluetooth"

    .line 954
    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    const/4 v0, 0x1

    :catchall_0
    :cond_2
    return v0
.end method

.method public static m()Ljava/lang/String;
    .locals 1

    .line 411
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static m(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_1

    .line 967
    sget-object p0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    if-eqz p0, :cond_0

    .line 968
    sget-object p0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    goto :goto_0

    :cond_0
    return v0

    .line 974
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string v1, "android.hardware.nfc"

    .line 975
    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    const/4 v0, 0x1

    :catchall_0
    :cond_2
    return v0
.end method

.method public static n()Ljava/lang/String;
    .locals 1

    .line 415
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static n(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_1

    .line 988
    sget-object p0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    if-eqz p0, :cond_0

    .line 989
    sget-object p0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    :try_start_0
    const-string v1, "phone"

    .line 995
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_2

    .line 997
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    :catchall_0
    :cond_2
    return v0
.end method

.method public static o()Ljava/lang/String;
    .locals 1

    .line 419
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static o(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_1

    .line 1009
    sget-object p0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    if-eqz p0, :cond_0

    .line 1010
    sget-object p0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    goto :goto_0

    :cond_0
    return v0

    .line 1016
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "android.hardware.telephony"

    .line 1017
    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return v0
.end method

.method public static p(Landroid/content/Context;)I
    .locals 1

    const/4 v0, -0x1

    if-nez p0, :cond_1

    .line 1027
    :try_start_0
    sget-object p0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    if-eqz p0, :cond_0

    .line 1028
    sget-object p0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    goto :goto_0

    :cond_0
    return v0

    .line 1033
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 1035
    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    :cond_2
    return v0
.end method

.method public static p()[Ljava/lang/String;
    .locals 12

    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    const-string v4, ""

    .line 468
    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 472
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 476
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/proc/cpuinfo"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 477
    new-instance v4, Ljava/io/BufferedReader;

    const/16 v5, 0x400

    invoke-direct {v4, v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_1
    const/4 v5, 0x1

    .line 479
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 480
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 481
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    const/high16 v7, 0x6400000

    if-gt v6, v7, :cond_1

    goto :goto_1

    .line 482
    :cond_1
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "List size more than 104857600 limit"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 490
    :cond_2
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 491
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catch_0
    const/4 v3, 0x1

    goto :goto_2

    .line 490
    :catchall_0
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 491
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_1
    const/4 v3, 0x0

    :goto_2
    const/4 v4, 0x3

    :try_start_4
    new-array v6, v4, [Ljava/lang/String;

    const-string v7, "Processor\\s*:\\s*(.*)"

    aput-object v7, v6, v2

    const-string v7, "CPU\\s*variant\\s*:\\s*0x(.*)"

    aput-object v7, v6, v5

    const/4 v7, 0x2

    const-string v8, "Hardware\\s*:\\s*(.*)"

    aput-object v8, v6, v7

    if-eqz v3, :cond_5

    .line 503
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v4, :cond_5

    .line 505
    aget-object v8, v6, v7

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v3, :cond_4

    .line 507
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 508
    invoke-virtual {v8, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 509
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 510
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->toMatchResult()Ljava/util/regex/MatchResult;

    move-result-object v10

    invoke-interface {v10, v5}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v1, v7

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_5
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    .line 516
    invoke-static {v0}, Lcom/tendcloud/tenddata/k;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    return-object v1
.end method

.method public static q(Landroid/content/Context;)I
    .locals 1

    const/4 v0, -0x1

    if-nez p0, :cond_1

    .line 1046
    :try_start_0
    sget-object p0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    if-eqz p0, :cond_0

    .line 1047
    sget-object p0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    goto :goto_0

    :cond_0
    return v0

    .line 1052
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 1054
    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    :cond_2
    return v0
.end method

.method public static q()Lorg/json/JSONObject;
    .locals 4

    .line 525
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "name"

    .line 526
    invoke-static {}, Lcom/tendcloud/tenddata/k;->p()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "coreNum"

    .line 527
    invoke-static {}, Lcom/tendcloud/tenddata/k;->r()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "maxFreq"

    const-string v2, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    .line 528
    invoke-static {v2}, Lcom/tendcloud/tenddata/k;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "minFreq"

    const-string v2, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_min_freq"

    .line 529
    invoke-static {v2}, Lcom/tendcloud/tenddata/k;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "curFreq"

    const-string v2, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq"

    .line 530
    invoke-static {v2}, Lcom/tendcloud/tenddata/k;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static r()I
    .locals 3

    const/4 v0, 0x1

    .line 580
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/devices/system/cpu/"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/tendcloud/tenddata/k;->j:Ljava/io/FileFilter;

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 582
    array-length v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return v0
.end method

.method public static r(Landroid/content/Context;)I
    .locals 1

    const/4 v0, -0x1

    if-nez p0, :cond_1

    .line 1065
    :try_start_0
    sget-object p0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    if-eqz p0, :cond_0

    .line 1066
    sget-object p0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    goto :goto_0

    :cond_0
    return v0

    .line 1071
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 1073
    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    :cond_2
    return v0
.end method

.method public static s(Landroid/content/Context;)I
    .locals 2

    const/4 v0, -0x1

    if-nez p0, :cond_1

    .line 1084
    sget-object p0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    if-eqz p0, :cond_0

    .line 1085
    sget-object p0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    goto :goto_0

    :cond_0
    return v0

    .line 1091
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "screen_brightness"

    invoke-static {p0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return v0
.end method

.method public static s()[I
    .locals 7

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 614
    fill-array-data v1, :array_0

    .line 618
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    .line 619
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 620
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 621
    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 622
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    .line 623
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockCount()I

    move-result v4

    .line 624
    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    const/4 v5, 0x0

    .line 626
    div-int/lit16 v6, v2, 0x200

    mul-int v4, v4, v6

    div-int/2addr v4, v0

    aput v4, v1, v5

    const/4 v4, 0x1

    .line 627
    div-int/lit16 v2, v2, 0x200

    mul-int v3, v3, v2

    div-int/2addr v3, v0

    aput v3, v1, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-object v1

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private static t(Landroid/content/Context;)Lorg/json/JSONArray;
    .locals 11

    const/16 v0, 0x13

    .line 262
    invoke-static {v0}, Lcom/tendcloud/tenddata/y;->a(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 266
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const/4 v2, 0x4

    .line 267
    invoke-static {p0, v2}, Lcom/tendcloud/tenddata/k;->a(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 269
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    if-nez v3, :cond_2

    goto :goto_0

    .line 273
    :cond_2
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-eqz v4, :cond_1

    .line 275
    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 277
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    new-instance v9, Landroid/content/ComponentName;

    iget-object v10, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v9, v10, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0x80

    invoke-virtual {v8, v9, v7}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz v7, :cond_3

    const-string v8, "android.nfc.cardemulation.host_apdu_service"

    .line 280
    invoke-virtual {v7, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 281
    iget-object v7, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    return-object v0

    :catchall_1
    return-object v1
.end method

.method public static t()[I
    .locals 11

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 639
    fill-array-data v1, :array_0

    const/4 v2, 0x4

    new-array v3, v2, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_0

    .line 646
    aput v4, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 649
    :cond_0
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/proc/meminfo"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 650
    new-instance v6, Ljava/io/BufferedReader;

    const/16 v7, 0x400

    invoke-direct {v6, v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v2, :cond_2

    .line 653
    :try_start_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 654
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    const/high16 v10, 0x6400000

    if-gt v9, v10, :cond_1

    .line 657
    invoke-static {v8}, Lcom/tendcloud/tenddata/k;->b(Ljava/lang/String;)I

    move-result v8

    aput v8, v3, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 655
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Input stream more than 100 MB size limit"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 659
    :cond_2
    aget v2, v3, v4

    aput v2, v1, v4

    const/4 v2, 0x1

    .line 660
    aget v4, v3, v2

    aget v0, v3, v0

    add-int/2addr v4, v0

    const/4 v0, 0x3

    aget v0, v3, v0

    add-int/2addr v4, v0

    aput v4, v1, v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 667
    :catch_0
    :try_start_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 668
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 667
    :try_start_3
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 668
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 674
    :catch_1
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_2
    :catchall_1
    :goto_2
    return-object v1

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private static u(Landroid/content/Context;)I
    .locals 2

    const/16 v0, 0x13

    const/4 v1, -0x1

    .line 344
    :try_start_0
    invoke-static {v0}, Lcom/tendcloud/tenddata/y;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "nfc"

    .line 345
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/nfc/NfcManager;

    .line 346
    invoke-virtual {p0}, Landroid/nfc/NfcManager;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 348
    invoke-static {p0}, Landroid/nfc/cardemulation/CardEmulation;->getInstance(Landroid/nfc/NfcAdapter;)Landroid/nfc/cardemulation/CardEmulation;

    move-result-object p0

    const-string v0, "payment"

    .line 349
    invoke-virtual {p0, v0}, Landroid/nfc/cardemulation/CardEmulation;->getSelectionModeForCategory(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, p0

    :catchall_0
    :cond_0
    return v1
.end method

.method public static u()[I
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 684
    sget-object v1, Lcom/tendcloud/tenddata/k;->i:[I

    if-eqz v1, :cond_0

    array-length v1, v1

    if-gtz v1, :cond_1

    .line 685
    :cond_0
    invoke-static {v0}, Lcom/tendcloud/tenddata/k;->a([I)[I

    move-result-object v0

    sput-object v0, Lcom/tendcloud/tenddata/k;->i:[I

    .line 690
    :cond_1
    sget-object v0, Lcom/tendcloud/tenddata/k;->i:[I

    return-object v0
.end method

.method public static v()I
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "/sys/class/power_supply/battery/full_bat"

    .line 795
    invoke-static {v1}, Lcom/tendcloud/tenddata/k;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 796
    sget-object v2, Lcom/tendcloud/tenddata/k;->f:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 797
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 798
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->toMatchResult()Ljava/util/regex/MatchResult;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 802
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return v0
.end method
