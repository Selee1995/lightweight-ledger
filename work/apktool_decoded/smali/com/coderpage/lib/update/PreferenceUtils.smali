.class public Lcom/coderpage/lib/update/PreferenceUtils;
.super Ljava/lang/Object;
.source "PreferenceUtils.java"


# static fields
.field private static final FILE_NAME:Ljava/lang/String; = "lib_client_update_preference"

.field private static final PRE_DO_NOT_REMIND_AGAIN:Ljava/lang/String; = "pre_do_not_remind_again"

.field private static final PRE_NEW_VERSION:Ljava/lang/String; = "pre_new_version"

.field private static final PRE_NEW_VERSION_APK_DOWNLOAD_URL:Ljava/lang/String; = "pre_new_version_apk_download_url"

.field private static final PRE_NEW_VERSION_APK_NAME:Ljava/lang/String; = "pre_new_version_apk_name"

.field private static final PRE_NEW_VERSION_APK_SIZE:Ljava/lang/String; = "pre_new_version_apk_size"

.field private static final PRE_NEW_VERSION_BUILD_CODE:Ljava/lang/String; = "pre_new_version_code"

.field private static final PRE_NEW_VERSION_CHANGELOG:Ljava/lang/String; = "pre_new_version_changelog"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNewVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 77
    invoke-static {p0}, Lcom/coderpage/lib/update/PreferenceUtils;->getPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "pre_new_version"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getNewVersionBuildCode(Landroid/content/Context;)J
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 81
    invoke-static {p0}, Lcom/coderpage/lib/update/PreferenceUtils;->getPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "pre_new_version_code"

    const-wide/16 v1, 0x0

    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-string v0, "lib_client_update_preference"

    const/4 v1, 0x0

    .line 100
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static isRemindAgain(Landroid/content/Context;Ljava/lang/String;J)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "versionName",
            "versionCode"
        }
    .end annotation

    .line 87
    invoke-static {p0}, Lcom/coderpage/lib/update/PreferenceUtils;->getPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pre_do_not_remind_again"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static refreshNewVersionApkInfo(Landroid/content/Context;Lcom/coderpage/lib/update/ApkModel;)V
    .locals 3
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

    .line 46
    invoke-static {p0}, Lcom/coderpage/lib/update/PreferenceUtils;->getPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 47
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 48
    invoke-interface {p1}, Lcom/coderpage/lib/update/ApkModel;->getVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pre_new_version"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 49
    invoke-interface {p1}, Lcom/coderpage/lib/update/ApkModel;->getBuildCode()J

    move-result-wide v0

    const-string v2, "pre_new_version_code"

    invoke-interface {p0, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 50
    invoke-interface {p1}, Lcom/coderpage/lib/update/ApkModel;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pre_new_version_apk_name"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 51
    invoke-interface {p1}, Lcom/coderpage/lib/update/ApkModel;->getApkSizeBytes()J

    move-result-wide v0

    const-string v2, "pre_new_version_apk_size"

    invoke-interface {p0, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 52
    invoke-interface {p1}, Lcom/coderpage/lib/update/ApkModel;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pre_new_version_apk_download_url"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 53
    invoke-interface {p1}, Lcom/coderpage/lib/update/ApkModel;->getChangelog()Ljava/lang/String;

    move-result-object p1

    const-string v0, "pre_new_version_changelog"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 54
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static restoreApkModel(Landroid/content/Context;)Lcom/coderpage/lib/update/ApkModel;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 58
    invoke-static {p0}, Lcom/coderpage/lib/update/PreferenceUtils;->getPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "pre_new_version_code"

    const-wide/16 v1, 0x0

    .line 59
    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    const-string v0, "pre_new_version_apk_size"

    .line 60
    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-string v2, "pre_new_version"

    const-string v5, ""

    .line 61
    invoke-interface {p0, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "pre_new_version_apk_name"

    .line 62
    invoke-interface {p0, v6, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "pre_new_version_apk_download_url"

    .line 63
    invoke-interface {p0, v7, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "pre_new_version_changelog"

    .line 64
    invoke-interface {p0, v8, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 66
    new-instance v5, Lcom/coderpage/lib/update/ApkModelImpl;

    invoke-direct {v5}, Lcom/coderpage/lib/update/ApkModelImpl;-><init>()V

    .line 67
    invoke-virtual {v5, v3, v4}, Lcom/coderpage/lib/update/ApkModelImpl;->setBuildCode(J)V

    .line 68
    invoke-virtual {v5, v0, v1}, Lcom/coderpage/lib/update/ApkModelImpl;->setApkSizeBytes(J)V

    .line 69
    invoke-virtual {v5, v2}, Lcom/coderpage/lib/update/ApkModelImpl;->setVersion(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v5, v6}, Lcom/coderpage/lib/update/ApkModelImpl;->setName(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v5, v7}, Lcom/coderpage/lib/update/ApkModelImpl;->setDownloadUrl(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v5, p0}, Lcom/coderpage/lib/update/ApkModelImpl;->setChangelog(Ljava/lang/String;)V

    return-object v5
.end method

.method public static setRemindAgain(Landroid/content/Context;Ljava/lang/String;JZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "versionName",
            "versionCode",
            "remindAgain"
        }
    .end annotation

    .line 95
    invoke-static {p0}, Lcom/coderpage/lib/update/PreferenceUtils;->getPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pre_do_not_remind_again"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 96
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
