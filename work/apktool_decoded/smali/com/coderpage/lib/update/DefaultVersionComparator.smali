.class public Lcom/coderpage/lib/update/DefaultVersionComparator;
.super Ljava/lang/Object;
.source "DefaultVersionComparator.java"

# interfaces
.implements Lcom/coderpage/lib/update/VersionComparator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/content/Context;Lcom/coderpage/lib/update/ApkModel;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "apkModel"
        }
    .end annotation

    const/4 v0, 0x0

    .line 18
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 19
    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long v1, p1

    .line 20
    invoke-interface {p2}, Lcom/coderpage/lib/update/ApkModel;->getBuildCode()J

    move-result-wide p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v3, v1, p1

    if-gez v3, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method
