.class public Lcom/coderpage/mine/persistence/database/MineDatabase_Impl;
.super Lcom/coderpage/mine/persistence/database/MineDatabase;
.source "MineDatabase_Impl.java"


# instance fields
.field private volatile _keyValueDao:Lcom/coderpage/mine/persistence/dao/KeyValueDao;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/coderpage/mine/persistence/database/MineDatabase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/coderpage/mine/persistence/database/MineDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/coderpage/mine/persistence/database/MineDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coderpage/mine/persistence/database/MineDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/coderpage/mine/persistence/database/MineDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/coderpage/mine/persistence/database/MineDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/coderpage/mine/persistence/database/MineDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$302(Lcom/coderpage/mine/persistence/database/MineDatabase_Impl;Landroid/arch/persistence/db/SupportSQLiteDatabase;)Landroid/arch/persistence/db/SupportSQLiteDatabase;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/coderpage/mine/persistence/database/MineDatabase_Impl;->mDatabase:Landroid/arch/persistence/db/SupportSQLiteDatabase;

    return-object p1
.end method

.method static synthetic access$400(Lcom/coderpage/mine/persistence/database/MineDatabase_Impl;Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/persistence/database/MineDatabase_Impl;->internalInitInvalidationTracker(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    return-void
.end method

.method static synthetic access$500(Lcom/coderpage/mine/persistence/database/MineDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/coderpage/mine/persistence/database/MineDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Lcom/coderpage/mine/persistence/database/MineDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/coderpage/mine/persistence/database/MineDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$700(Lcom/coderpage/mine/persistence/database/MineDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/coderpage/mine/persistence/database/MineDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public clearAllTables()V
    .locals 4

    const-string v0, "VACUUM"

    const-string v1, "PRAGMA wal_checkpoint(FULL)"

    .line 97
    invoke-super {p0}, Lcom/coderpage/mine/persistence/database/MineDatabase;->assertNotMainThread()V

    .line 98
    invoke-super {p0}, Lcom/coderpage/mine/persistence/database/MineDatabase;->getOpenHelper()Landroid/arch/persistence/db/SupportSQLiteOpenHelper;

    move-result-object v2

    invoke-interface {v2}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object v2

    .line 100
    :try_start_0
    invoke-super {p0}, Lcom/coderpage/mine/persistence/database/MineDatabase;->beginTransaction()V

    const-string v3, "DELETE FROM `key_value`"

    .line 101
    invoke-interface {v2, v3}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 102
    invoke-super {p0}, Lcom/coderpage/mine/persistence/database/MineDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    invoke-super {p0}, Lcom/coderpage/mine/persistence/database/MineDatabase;->endTransaction()V

    .line 105
    invoke-interface {v2, v1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 106
    invoke-interface {v2}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v1

    if-nez v1, :cond_0

    .line 107
    invoke-interface {v2, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v3

    .line 104
    invoke-super {p0}, Lcom/coderpage/mine/persistence/database/MineDatabase;->endTransaction()V

    .line 105
    invoke-interface {v2, v1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 106
    invoke-interface {v2}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v1

    if-nez v1, :cond_1

    .line 107
    invoke-interface {v2, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 109
    :cond_1
    throw v3
.end method

.method protected createInvalidationTracker()Landroid/arch/persistence/room/InvalidationTracker;
    .locals 4

    .line 92
    new-instance v0, Landroid/arch/persistence/room/InvalidationTracker;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "key_value"

    aput-object v3, v1, v2

    invoke-direct {v0, p0, v1}, Landroid/arch/persistence/room/InvalidationTracker;-><init>(Landroid/arch/persistence/room/RoomDatabase;[Ljava/lang/String;)V

    return-object v0
.end method

.method protected createOpenHelper(Landroid/arch/persistence/room/DatabaseConfiguration;)Landroid/arch/persistence/db/SupportSQLiteOpenHelper;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "configuration"
        }
    .end annotation

    .line 31
    new-instance v0, Landroid/arch/persistence/room/RoomOpenHelper;

    new-instance v1, Lcom/coderpage/mine/persistence/database/MineDatabase_Impl$1;

    const/16 v2, 0x3c

    invoke-direct {v1, p0, v2}, Lcom/coderpage/mine/persistence/database/MineDatabase_Impl$1;-><init>(Lcom/coderpage/mine/persistence/database/MineDatabase_Impl;I)V

    const-string v2, "e7db2ba079b7311bebba971a5cc69e61"

    const-string v3, "e2adc0e8217b3ab193a15d860415f7ec"

    invoke-direct {v0, p1, v1, v2, v3}, Landroid/arch/persistence/room/RoomOpenHelper;-><init>(Landroid/arch/persistence/room/DatabaseConfiguration;Landroid/arch/persistence/room/RoomOpenHelper$Delegate;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v1, p1, Landroid/arch/persistence/room/DatabaseConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration;->builder(Landroid/content/Context;)Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    iget-object v2, p1, Landroid/arch/persistence/room/DatabaseConfiguration;->name:Ljava/lang/String;

    .line 83
    invoke-virtual {v1, v2}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;->name(Ljava/lang/String;)Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    .line 84
    invoke-virtual {v1, v0}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;->callback(Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;)Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;->build()Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration;

    move-result-object v0

    .line 86
    iget-object p1, p1, Landroid/arch/persistence/room/DatabaseConfiguration;->sqliteOpenHelperFactory:Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Factory;

    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Factory;->create(Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration;)Landroid/arch/persistence/db/SupportSQLiteOpenHelper;

    move-result-object p1

    return-object p1
.end method

.method public keyValueDao()Lcom/coderpage/mine/persistence/dao/KeyValueDao;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/coderpage/mine/persistence/database/MineDatabase_Impl;->_keyValueDao:Lcom/coderpage/mine/persistence/dao/KeyValueDao;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/coderpage/mine/persistence/database/MineDatabase_Impl;->_keyValueDao:Lcom/coderpage/mine/persistence/dao/KeyValueDao;

    return-object v0

    .line 117
    :cond_0
    monitor-enter p0

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/coderpage/mine/persistence/database/MineDatabase_Impl;->_keyValueDao:Lcom/coderpage/mine/persistence/dao/KeyValueDao;

    if-nez v0, :cond_1

    .line 119
    new-instance v0, Lcom/coderpage/mine/persistence/dao/KeyValueDao_Impl;

    invoke-direct {v0, p0}, Lcom/coderpage/mine/persistence/dao/KeyValueDao_Impl;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/coderpage/mine/persistence/database/MineDatabase_Impl;->_keyValueDao:Lcom/coderpage/mine/persistence/dao/KeyValueDao;

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/coderpage/mine/persistence/database/MineDatabase_Impl;->_keyValueDao:Lcom/coderpage/mine/persistence/dao/KeyValueDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 122
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
