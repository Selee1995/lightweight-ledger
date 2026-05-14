.class public Lcom/coderpage/mine/persistence/kv/KvCache;
.super Ljava/lang/Object;
.source "KvCache.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAgreePrivacyProtocolVersion()Ljava/lang/String;
    .locals 3

    .line 202
    invoke-static {}, Lcom/coderpage/mine/persistence/kv/KvCache;->getKv()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "app.privacy.agree.version"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurBookName()Ljava/lang/String;
    .locals 3

    .line 112
    invoke-static {}, Lcom/coderpage/mine/persistence/kv/KvCache;->getKv()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "app.cur_book_name"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurBookTid()J
    .locals 4

    .line 102
    invoke-static {}, Lcom/coderpage/mine/persistence/kv/KvCache;->getKv()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "app.cur_book_tid"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/mmkv/MMKV;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getCurrencyCode()Ljava/lang/String;
    .locals 3

    .line 122
    invoke-static {}, Lcom/coderpage/mine/persistence/kv/KvCache;->getKv()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "app.currency.code"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrencySymbol()Ljava/lang/String;
    .locals 3

    .line 132
    invoke-static {}, Lcom/coderpage/mine/persistence/kv/KvCache;->getKv()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "app.currency.symbol"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDataBackupPassword()Ljava/lang/String;
    .locals 3

    .line 82
    invoke-static {}, Lcom/coderpage/mine/persistence/kv/KvCache;->getKv()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "app.backup.password"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDataBackupPasswordHint()Ljava/lang/String;
    .locals 3

    .line 92
    invoke-static {}, Lcom/coderpage/mine/persistence/kv/KvCache;->getKv()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "app.backup.password_hint"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceId()Ljava/lang/String;
    .locals 3

    .line 182
    invoke-static {}, Lcom/coderpage/mine/persistence/kv/KvCache;->getKv()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "app.device.id"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getKv()Lcom/tencent/mmkv/MMKV;
    .locals 1

    const-string v0, "default.cache"

    .line 225
    invoke-static {v0}, Lcom/tencent/mmkv/MMKV;->mmkvWithID(Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    return-object v0
.end method

.method public static getMonthStart()I
    .locals 3

    .line 162
    invoke-static {}, Lcom/coderpage/mine/persistence/kv/KvCache;->getKv()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "app.month_start"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSysCateSort(JJ)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bookTid",
            "cateTid"
        }
    .end annotation

    .line 221
    invoke-static {}, Lcom/coderpage/mine/persistence/kv/KvCache;->getKv()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cate.sort."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, -0x1

    invoke-virtual {v0, p0, p1}, Lcom/tencent/mmkv/MMKV;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static isAgreePrivacyProtocol()Z
    .locals 3

    .line 192
    invoke-static {}, Lcom/coderpage/mine/persistence/kv/KvCache;->getKv()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "app.privacy.agree"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isAssetEnable()Z
    .locals 3

    .line 152
    invoke-static {}, Lcom/coderpage/mine/persistence/kv/KvCache;->getKv()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "app.asset.enable"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isDataAutoBackup()Z
    .locals 3

    .line 72
    invoke-static {}, Lcom/coderpage/mine/persistence/kv/KvCache;->getKv()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "app.auto_backup.enable"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isDbMigrateSuccess(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "version"
        }
    .end annotation

    .line 172
    invoke-static {}, Lcom/coderpage/mine/persistence/kv/KvCache;->getKv()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "app.db.migrate."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isHideMoney()Z
    .locals 3

    .line 27
    invoke-static {}, Lcom/coderpage/mine/persistence/kv/KvCache;->getKv()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "home.hide_money"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isHomeShowModuleBudget()Z
    .locals 3

    .line 37
    invoke-static {}, Lcom/coderpage/mine/persistence/kv/KvCache;->getKv()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "home.module_budget.visible"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isHomeShowModuleHistoryRecord()Z
    .locals 3

    .line 47
    invoke-static {}, Lcom/coderpage/mine/persistence/kv/KvCache;->getKv()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "home.module_history_record.visible"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isMultiBookEnable()Z
    .locals 3

    .line 142
    invoke-static {}, Lcom/coderpage/mine/persistence/kv/KvCache;->getKv()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "app.multi_book.enable"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isPermissionRefused(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "version"
        }
    .end annotation

    .line 62
    invoke-static {}, Lcom/coderpage/mine/persistence/kv/KvCache;->getKv()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "app.permission_refused."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isShowBackupTip()Z
    .locals 3

    .line 18
    invoke-static {}, Lcom/coderpage/mine/persistence/kv/KvCache;->getKv()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "home.show_backup_tip"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static setAgreePrivacyProtocol(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "agree"
        }
    .end annotation

    .line 197
    invoke-static {}, Lcom/coderpage/mine/persistence/kv/KvCache;->getKv()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "app.privacy.agree"

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public static setAgreePrivacyProtocolVersion(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "version"
        }
    .end annotation

    .line 207
    invoke-static {}, Lcom/coderpage/mine/persistence/kv/KvCache;->getKv()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "app.privacy.agree.version"

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public static setAssetEnable(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 157
    invoke-static {}, Lcom/coderpage/mine/persistence/kv/KvCache;->getKv()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "app.asset.enable"

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public static setCurBookName(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 117
    invoke-static {}, Lcom/coderpage/mine/persistence/kv/KvCache;->getKv()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "app.cur_book_name"

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public static setCurBookTid(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tid"
        }
    .end annotation

    .line 107
    invoke-static {}, Lcom/coderpage/mine/persistence/kv/KvCache;->getKv()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "app.cur_book_tid"

    invoke-virtual {v0, v1, p0, p1}, Lcom/tencent/mmkv/MMKV;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public static setCurrencyCode(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "code"
        }
    .end annotation

    .line 127
    invoke-static {}, Lcom/coderpage/mine/persistence/kv/KvCache;->getKv()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "app.currency.code"

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public static setCurrencySymbol(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "symbol"
        }
    .end annotation

    .line 137
    invoke-static {}, Lcom/coderpage/mine/persistence/kv/KvCache;->getKv()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "app.currency.symbol"

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public static setDataAutoBackup(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "autoBackup"
        }
    .end annotation

    .line 77
    invoke-static {}, Lcom/coderpage/mine/persistence/kv/KvCache;->getKv()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "app.auto_backup.enable"

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public static setDataBackupPassword(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "password"
        }
    .end annotation

    .line 87
    invoke-static {}, Lcom/coderpage/mine/persistence/kv/KvCache;->getKv()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "app.backup.password"

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public static setDataBackupPasswordHint(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "passwordHint"
        }
    .end annotation

    .line 97
    invoke-static {}, Lcom/coderpage/mine/persistence/kv/KvCache;->getKv()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "app.backup.password_hint"

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public static setDbMigrateSuccess(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "version"
        }
    .end annotation

    .line 177
    invoke-static {}, Lcom/coderpage/mine/persistence/kv/KvCache;->getKv()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "app.db.migrate."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public static setDeviceId(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deviceId"
        }
    .end annotation

    .line 187
    invoke-static {}, Lcom/coderpage/mine/persistence/kv/KvCache;->getKv()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "app.device.id"

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public static setHideMoney(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hideMoney"
        }
    .end annotation

    .line 32
    invoke-static {}, Lcom/coderpage/mine/persistence/kv/KvCache;->getKv()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "home.hide_money"

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public static setHomeShowModuleBudget(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "showModuleBudget"
        }
    .end annotation

    .line 42
    invoke-static {}, Lcom/coderpage/mine/persistence/kv/KvCache;->getKv()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "home.module_budget.visible"

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public static setHomeShowModuleHistoryRecord(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "showModuleHistoryRecord"
        }
    .end annotation

    .line 52
    invoke-static {}, Lcom/coderpage/mine/persistence/kv/KvCache;->getKv()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "home.module_history_record.visible"

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public static setMonthStart(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "monthStart"
        }
    .end annotation

    .line 167
    invoke-static {}, Lcom/coderpage/mine/persistence/kv/KvCache;->getKv()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "app.month_start"

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public static setMultiBookEnable(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 147
    invoke-static {}, Lcom/coderpage/mine/persistence/kv/KvCache;->getKv()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "app.multi_book.enable"

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public static setPermissionRefused(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "version"
        }
    .end annotation

    .line 67
    invoke-static {}, Lcom/coderpage/mine/persistence/kv/KvCache;->getKv()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "app.permission_refused."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public static setShowBackupTip(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "show"
        }
    .end annotation

    .line 22
    invoke-static {}, Lcom/coderpage/mine/persistence/kv/KvCache;->getKv()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "home.show_backup_tip"

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public static setSysCateSort(JJI)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bookTid",
            "cateTid",
            "sort"
        }
    .end annotation

    .line 216
    invoke-static {}, Lcom/coderpage/mine/persistence/kv/KvCache;->getKv()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cate.sort."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p4}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    return-void
.end method
